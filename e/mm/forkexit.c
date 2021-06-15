/*************************************************************************//**
 *****************************************************************************
 * @file   forkexit.c
 * @brief  
 * @author Forrest Y. Yu
 * @date   Tue May  6 00:37:15 2008
 *****************************************************************************
 *****************************************************************************/

#include "type.h"
#include "stdio.h"
#include "const.h"
#include "protect.h"
#include "string.h"
#include "fs.h"
#include "proc.h"
#include "tty.h"
#include "console.h"
#include "global.h"
#include "keyboard.h"
#include "proto.h"


PRIVATE void cleanup(struct proc * proc);

/*****************************************************************************
 *                                do_fork
 *****************************************************************************/
/**
 * Perform the fork() syscall.
 * 
 * @return  Zero if success, otherwise -1.
 *****************************************************************************/
PUBLIC int do_fork()
{
	/* find a free slot in proc_table */
	struct proc* p = proc_table;
	int i;
	for (i = 0; i < NR_TASKS + NR_PROCS; i++,p++)
		if (p->p_flags == FREE_SLOT)
			break;

	int child_pid = i;
	// 我认为，这个条件一定成立。
	assert(p == &proc_table[child_pid]);
	// 1. 空闲进程的pid一定大于任务进程和其他预置用户进程的数量。
	// 2. 举例子来理解，很容易理解。
	// 3. 任务进程的数量是1，pid是0；用户进程的数量是1，pid是1。
	// 4. 下一个进程的pid应该是2，2 >= 1 + 1。
	// 5. 用归纳法理解这类问题。不要再纠结了。
	assert(child_pid >= NR_TASKS + NR_NATIVE_PROCS);
	// 1. 进程表中数组的最大容量。	
	// 2. 例如，有数组 int arr[5]。
	// 3. 显然，一定不存在元素arr[5]，最后一个元素是arr[4]。
	// 4. 所以，如果找到的空闲进程表的pid即在进程表数组中的索引等于进程表数组的容量
	// 	，这个结果是非法的。
	if (i == NR_TASKS + NR_PROCS) /* no free slot */
		return -1;
	// 多余。
	assert(i < NR_TASKS + NR_PROCS);

	/* duplicate the process table */
	// 通过IPC传递过来的的进程pid，将成为新建进程的父进程pid。
	int pid = mm_msg.source;
	// 1. 把空闲进程的成员ldt_sel先记录在一个变量，等用父进程的进程表填充空闲进程表后，
	// 	再把空闲进程表的ldt_sel修改成它的旧值。
	// 2. 每个进程表，在初始化进程的时候，都已经预设了每个成员的值。ldt_sel也是如此。
	// 3. ldt_sel是什么？问它是什么，不如讲讲它的作用是什么。
	// 4. 通过ldt_sel，能在GDT中找到一个描述符。从这个描述符能获取空闲进程的LDT。
	// 5. 每个进程的LDT存在于它的进程表中。
	// 6. 通过LDT中的描述符，能找到进程的CS段和DS段。对，LDT中只有两个描述符。
	// 7. 进程的CS段和DS段也在进程表中吗？不一定。
	// 8. 确定了进程的CS段和DS段后，就要修改进程的LDT中的描述符，让这些描述符指向
	// 	正确的内存。
	u16 child_ldt_sel = p->ldt_sel;
	// 1. 这是非常非常关键的一句，对我来说，是这样。因为，我花了很长时间才理解这句。
	// 2. 不要混淆A: p = &proc_table[pid] 和B: *p = proc_table[pid]。
	// 3. A会更换p的值。p是一个指针，它的值原本是空闲进程表的内存地址。A语句把p的值修改
	// 	为proc_table[pid]的内存地址。显然，这并没有把proc_table[pid]的数据复制到p。
	// 	后续对p的任何修改，实际上都是在修改proc_table[pid]。
	// 4. B没有更换p的值。假设p的值是内存地址0x3。执行B后，p的值仍然是0x3，但0x3中的数据
	// 	变成了proc_table[pid]。假设原本存储proc_table[pid]的内存的内存地址是0x8。现在，
	// 	0x3中的数据和0x8中的数据相同。这就是复制。对0x3中的数据的任何修改，都不会影响
	// 	0x8中的数据。 
	*p = proc_table[pid];
	// 1. 在前面说过，用变量记录空闲进程的ldt_sel，就是为了在复制完父进程的进程表后，再
	// 	把空闲进程表的ldt_sel修改为旧值。
	// 2. 为什么要修改？每个进程，都拥有自己独立的内存空间，而不是使用它的父进程的内存空间。
	p->ldt_sel = child_ldt_sel;
	// 1. 这个pid是调用fork的进程的pid。这个进程，就是新建进程的子进程。
	p->p_parent = pid;
	sprintf(p->name, "%s_%d", proc_table[pid].name, child_pid);

	/* duplicate the process: T, D & S */
	struct descriptor * ppd;

	// 获取父进程的CS、DS的初始地址和界限。
	/* Text segment */
	ppd = &proc_table[pid].ldts[INDEX_LDT_C];
	/* base of T-seg, in bytes */
	int caller_T_base  = reassembly(ppd->base_high, 24,
					ppd->base_mid,  16,
					ppd->base_low);
	/* limit of T-seg, in 1 or 4096 bytes,
	   depending on the G bit of descriptor */
	int caller_T_limit = reassembly(0, 0,
					(ppd->limit_high_attr2 & 0xF), 16,
					ppd->limit_low);
	/* size of T-seg, in bytes */
	int caller_T_size  = ((caller_T_limit + 1) *
			      ((ppd->limit_high_attr2 & (DA_LIMIT_4K >> 8)) ?
			       4096 : 1));

	/* Data & Stack segments */
	ppd = &proc_table[pid].ldts[INDEX_LDT_RW];
	/* base of D&S-seg, in bytes */
	int caller_D_S_base  = reassembly(ppd->base_high, 24,
					  ppd->base_mid,  16,
					  ppd->base_low);
	/* limit of D&S-seg, in 1 or 4096 bytes,
	   depending on the G bit of descriptor */
	int caller_D_S_limit = reassembly((ppd->limit_high_attr2 & 0xF), 16,
					  0, 0,
					  ppd->limit_low);
	/* size of D&S-seg, in bytes */
	int caller_D_S_size  = ((caller_T_limit + 1) *
				((ppd->limit_high_attr2 & (DA_LIMIT_4K >> 8)) ?
				 4096 : 1));

	/* we don't separate T, D & S segments, so we have: */
	assert((caller_T_base  == caller_D_S_base ) &&
	       (caller_T_limit == caller_D_S_limit) &&
	       (caller_T_size  == caller_D_S_size ));

	/* base of child proc, T, D & S segments share the same space,
	   so we allocate memory just once */
	// 1. 为子进程分配内存空间。
	// 2. 怎么分配？
	// 3. 从一个内存地址开始，假设这个内存地址是AD；每个进程的内存不超过L。
	// 4. 第一个新建的进程的内存的初始地址是：AD + 0 * L。
	// 5. 第二个新建的进程的内存的初始地址是：AD + 1 * L。
	// 6. 第三个新建的进程的内存的初始地址是：AD + 2 * L。
	// 7. 怎么判断是第几个进程？
	// 8. 计算方法是：pid - (NR_TASKS + NR_NATIVE_PROCS)。
	int child_base = alloc_mem(child_pid, caller_T_size);

	/* child is a copy of the parent */
	// 为何不复制DS呢？是因为DS、CS指向同一片内存的缘故吗？
	// 复制父进程，除了复制进程表，还要复制内存空间。
	phys_copy((void*)child_base, (void*)caller_T_base, caller_T_size);

	/* child's LDT */
	// 1. 初始化子进程的ldt中的两个描述符。
	// 2. 两个难点：第三个参数和第四个参数。
	// 3. 第三个参数是进程的内存空间的最大界限。这个界限的单位是4K。
	// 4. 这是什么意思？意思是，假如，一个进程的最大界限是4，那么，实际界限应该是 4 * 4K。
	// 5. “界限”是什么意思？界限不是大小，而是大小-1。因为，界限的初始值是0。
	// 6. “界限”是3，意思是，进程的内存空间是 内存地址的初始值 + 0 ~~~ 内存地址的初始值 + 界限。
	// 7. 第四个参数。是描述符的属性：界限的单位、32位、读写、DPL。
	init_desc(&p->ldts[INDEX_LDT_C],
		  child_base,
		  (PROC_IMAGE_SIZE_DEFAULT - 1) >> LIMIT_4K_SHIFT,
		  DA_LIMIT_4K | DA_32 | DA_C | PRIVILEGE_USER << 5);
	init_desc(&p->ldts[INDEX_LDT_RW],
		  child_base,
		  (PROC_IMAGE_SIZE_DEFAULT - 1) >> LIMIT_4K_SHIFT,
		  DA_LIMIT_4K | DA_32 | DA_DRW | PRIVILEGE_USER << 5);

	/* tell FS, see fs_fork() */
	// 新建了一个进程，共享父进程的文件，应该增加文件相关的设置。
	// 1. inode的i_cnt增加1。
	// 2. 文件描述符的共享进程数也应该加1。
	MESSAGE msg2fs;
	msg2fs.type = FORK;
	msg2fs.PID = child_pid;
	send_recv(BOTH, TASK_FS, &msg2fs);

	/* child PID will be returned to the parent proc */
	mm_msg.PID = child_pid;

	/* birth of the child */
	// 子进程也和父进程一样，需要解除阻塞。
	MESSAGE m;
	m.type = SYSCALL_RET;
	m.RETVAL = 0;
	m.PID = 0;
	send_recv(SEND, child_pid, &m);

	return 0;
}

/*****************************************************************************
 *                                do_exit
 *****************************************************************************/
/**
 * Perform the exit() syscall.
 *
 * If proc A calls exit(), then MM will do the following in this routine:
 *     <1> inform FS so that the fd-related things will be cleaned up
 *     <2> free A's memory
 *     <3> set A.exit_status, which is for the parent
 *     <4> depends on parent's status. if parent (say P) is:
 *           (1) WAITING
 *                 - clean P's WAITING bit, and
 *                 - send P a message to unblock it
 *                 - release A's proc_table[] slot
 *           (2) not WAITING
 *                 - set A's HANGING bit
 *     <5> iterate proc_table[], if proc B is found as A's child, then:
 *           (1) make INIT the new parent of B, and
 *           (2) if INIT is WAITING and B is HANGING, then:
 *                 - clean INIT's WAITING bit, and
 *                 - send INIT a message to unblock it
 *                 - release B's proc_table[] slot
 *               else
 *                 if INIT is WAITING but B is not HANGING, then
 *                     - B will call exit()
 *                 if B is HANGING but INIT is not WAITING, then
 *                     - INIT will call wait()
 *
 * TERMs:
 *     - HANGING: everything except the proc_table entry has been cleaned up.
 *     - WAITING: a proc has at least one child, and it is waiting for the
 *                child(ren) to exit()
 *     - zombie: say P has a child A, A will become a zombie if
 *         - A exit(), and
 *         - P does not wait(), neither does it exit(). that is to say, P just
 *           keeps running without terminating itself or its child
 * 
 * @param status  Exiting status for parent.
 * 
 *****************************************************************************/
PUBLIC void do_exit(int status)
{
	int i;
	int pid = mm_msg.source; /* PID of caller */
	int parent_pid = proc_table[pid].p_parent;
	// 让p指向proc_table[pid]。对p的修改实际上是对proc_table[pid]的修改。
	struct proc * p = &proc_table[pid];

	/* tell FS, see fs_exit() */
	// 和fork中创建子进程时对文件的处理相呼应。在do_fork中，增加；在do_exit中，减少。
	MESSAGE msg2fs;
	msg2fs.type = EXIT;
	msg2fs.PID = pid;
	send_recv(BOTH, TASK_FS, &msg2fs);

	free_mem(pid);

	// 退出时，是什么状态？
	p->exit_status = status;

	// 1. 从这里开始到结尾，是exit的核心流程。
	// 2. 我掌握它们的方法是：死记硬背。
	// 3. 其实，我也理解这个流程能实现的功能。但是，总觉得，理解得不透彻。没办法，只能死记硬背。
	// 1. 如果父进程是WATING状态，
	// 2. 把父进程设置成非WAITING状态。
	// 3. 通过IPC机制向父进程发送消息，解除父进程的阻塞。发送了什么消息，能解除父进程的阻塞？
	// 4. 把子进程占用的进程表标记成空闲进程表。
	// 5. 如果父进程不是WAITING状态，把子进程设置成HANGING状态。
	if (proc_table[parent_pid].p_flags & WAITING) { /* parent is waiting */
		proc_table[parent_pid].p_flags &= ~WAITING;
		// 1. 做了两件事：
		// 2. 向父进程发送消息，解除父进程的阻塞。
		// 3. 把退出的子进程的进程表标记成空闲进程表。
		cleanup(&proc_table[pid]);
	}
	else { /* parent is not waiting */
		proc_table[pid].p_flags |= HANGING;
	}
	
	
	/* if the proc has any child, make INIT the new parent */
	// 1. 如果退出的进程有很多子进程，或者说，退出的进程是其他进程的父进程。
	// 2. 把退出进程的子进程过继给Init进程。
	// 3. 过继给Init就结束了吗？并不是。 
	// 4. 如果Init是WAITING状态，并且子进程是HANGING状态，那么，执行退出操作。
	// 5. Init不是WAITING状态时，为什么没有像前面那样把子进程设置成HANGING状态呢？
	// 6. 因为，前面的子进程调用了exit，后面的子进程没有调用exit。
	// 7. 即使没有调用exit，遇到符合执行退出操作的条件的子进程，也应该执行退出操作。
	// 8. 执行退出操作的条件是什么？父进程是WAITING && 子进程是HANGING。
	// 9. 什么是退出操作？
	// 10. 它包含三个操作。
	// 11. 把父进程设置成非WAITING状态。
	// 12. 向父进程发送消息，接触父进程的阻塞。
	// 13. 把子进程使用的进程表标记为空闲进程表。
	for (i = 0; i < NR_TASKS + NR_PROCS; i++) {
		if (proc_table[i].p_parent == pid) { /* is a child */
			proc_table[i].p_parent = INIT;
			if ((proc_table[INIT].p_flags & WAITING) &&
			    (proc_table[i].p_flags & HANGING)) {
				proc_table[INIT].p_flags &= ~WAITING;
				cleanup(&proc_table[i]);
			}
		}
	}
}

/*****************************************************************************
 *                                cleanup
 *****************************************************************************/
/**
 * Do the last jobs to clean up a proc thoroughly:
 *     - Send proc's parent a message to unblock it, and
 *     - release proc's proc_table[] entry
 * 
 * @param proc  Process to clean up.
 *****************************************************************************/
PRIVATE void cleanup(struct proc * proc)
{
	MESSAGE msg2parent;
	msg2parent.type = SYSCALL_RET;
	msg2parent.PID = proc2pid(proc);
	msg2parent.STATUS = proc->exit_status;
	send_recv(SEND, proc->p_parent, &msg2parent);

	proc->p_flags = FREE_SLOT;
}

/*****************************************************************************
 *                                do_wait
 *****************************************************************************/
/**
 * Perform the wait() syscall.
 *
 * If proc P calls wait(), then MM will do the following in this routine:
 *     <1> iterate proc_table[],
 *         if proc A is found as P's child and it is HANGING
 *           - reply to P (cleanup() will send P a messageto unblock it)
 *           - release A's proc_table[] entry
 *           - return (MM will go on with the next message loop)
 *     <2> if no child of P is HANGING
 *           - set P's WAITING bit
 *     <3> if P has no child at all
 *           - reply to P with error
 *     <4> return (MM will go on with the next message loop)
 *
 *****************************************************************************/
PUBLIC void do_wait()
{
	int pid = mm_msg.source;

	int i;
	int children = 0;
	// 1. 注意这句，是指向，不是复制。对p_proc的修改，就是对proc_table中元素的修改。
	// 2. 因为proc_table是数组，proc_table是首元素的地址，所以可以这么用。
	// 3. 如果要指向第二个元素，应该这样：struct proc* p_proc = &proc_table[1];
	// 4. struct proc* p_proc = proc_table[1]，不合法。
	// 1. 如果父进程的子进程是HANGING状态，执行退出操作。
	// 2. 父进程有很多个子进程，只要遇到一个子进程是HANGING状态，就执行退出操作。
	// 3. 解除了父进程的阻塞，其他状态是HANGING的子进程怎么办？
	// 4. 先弄清楚一个问题：非Init进程，会拥有多个子进程吗？
	struct proc* p_proc = proc_table;
	for (i = 0; i < NR_TASKS + NR_PROCS; i++,p_proc++) {
		if (p_proc->p_parent == pid) {
			children++;
			if (p_proc->p_flags & HANGING) {
				cleanup(p_proc);
				return;
			}
		}
	}

	// 有子进程，但是全都不是HANGING状态，把父进程设置成WAITING，继续阻塞。
	// 一个进程没有子进程，却调用了wait，直接解除对进程的阻塞。
	if (children) {
		/* has children, but no child is HANGING */
		proc_table[pid].p_flags |= WAITING;
	}
	else {
		/* no child at all */
		MESSAGE msg;
		msg.type = SYSCALL_RET;
		msg.PID = NO_TASK;
		send_recv(SEND, pid, &msg);
	}
}
