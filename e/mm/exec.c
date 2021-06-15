/*************************************************************************//**
 *****************************************************************************
 * @file   mm/exec.c
 * @brief  
 * @author Forrest Y. Yu
 * @date   Tue May  6 14:14:02 2008
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
#include "elf.h"


/*****************************************************************************
 *                                do_exec
 *****************************************************************************/
/**
 * Perform the exec() system call.
 * 
 * @return  Zero if successful, otherwise -1.
 *****************************************************************************/
PUBLIC int do_exec()
{
	/* get parameters from the message */
	int name_len = mm_msg.NAME_LEN;	/* length of filename */
	int src = mm_msg.source;	/* caller proc nr. */
	assert(name_len < MAX_PATH);

	char pathname[MAX_PATH];
	phys_copy((void*)va2la(TASK_MM, pathname),
		  (void*)va2la(src, mm_msg.PATHNAME),
		  name_len);
	pathname[name_len] = 0;	/* terminate the string */

	/* get the file size */
	struct stat s;
	int ret = stat(pathname, &s);
	if (ret != 0) {
		printl("{MM} MM::do_exec()::stat() returns error. %s", pathname);
		return -1;
	}

	/* read the file */
	int fd = open(pathname, O_RDWR);
	if (fd == -1)
		return -1;
	assert(s.st_size < MMBUF_SIZE);
	// mmbuf 是缓存，把应用程序例如echo的所有数据读入mmbuf。
	read(fd, mmbuf, s.st_size);
	close(fd);

	/* overwrite the current proc image with the new one */
	Elf32_Ehdr* elf_hdr = (Elf32_Ehdr*)(mmbuf);
	int i;
	for (i = 0; i < elf_hdr->e_phnum; i++) {
		Elf32_Phdr* prog_hdr = (Elf32_Phdr*)(mmbuf + elf_hdr->e_phoff +
			 			(i * elf_hdr->e_phentsize));
		if (prog_hdr->p_type == PT_LOAD) {
			assert(prog_hdr->p_vaddr + prog_hdr->p_memsz <
				PROC_IMAGE_SIZE_DEFAULT);
			// 会覆盖src中的栈吗？
			// 1. prog_hdr->p_vaddr的值是0x1000。
			// 2. 栈的大小是0x400。
			// 3. 栈的起点地址在哪里？
			// 4. 不能这样问。在execv中，用一个数组变量存储栈。真正的栈在哪里、存储
			// 	了什么数据，其实不知道。
			// 5. 本函数对栈的处理，是用数组变量中的数据填充进程栈。
			// 6. 栈并不是从进程的内存的最高地址处开始。在我们的进程的内存空间中，
			// 	从进程的内存空间的最高地址处开始，存储的是栈中内存地址指向的内存
			// 	中的数据。
			// 7. 会覆盖吗？我不知道。执行效果没有问题，证明，目前，没有覆盖。
			phys_copy((void*)va2la(src, (void*)prog_hdr->p_vaddr),
				  (void*)va2la(TASK_MM,
						 mmbuf + prog_hdr->p_offset),
				  prog_hdr->p_filesz);
		}
	}

	/* setup the arg stack */
	// 对栈的处理，是啥意思？
	int orig_stack_len = mm_msg.BUF_LEN;
	char stackcopy[PROC_ORIGIN_STACK];
	phys_copy((void*)va2la(TASK_MM, stackcopy),
		  (void*)va2la(src, mm_msg.BUF),
		  orig_stack_len);

	// 这是什么意思？
	// arig_stack 是栈地址在本进程的内存中的偏移量。偏移量其实就是在进程的内存中的内存地址。
	u8 * orig_stack = (u8*)(PROC_IMAGE_SIZE_DEFAULT - PROC_ORIGIN_STACK);
	// delta 是两个堆栈地址之间的差值。
	int delta = (int)orig_stack - (int)mm_msg.BUF;

	int argc = 0;
	int k = 0;
	if ( k == 0 && orig_stack_len) {	/* has args */
		// 1. 把stackcopy中的元素移动到正确的位置。
		// 2. 哪里才是正确的位置？
		// 3. 旧栈的初始地址从msg.BUF开始，新栈的初始地址从orig_stack开始。
		// 4. 举例子理解。
		// 5. 有一把刻度尺，上面的刻度是：0、1、2、3。
		// 6. 新造了一把刻度尺，初始刻度是4，那么，上面的刻度是4、5、6、7。
		// 7. 用旧刻度尺度量并且分别在刻度0、1、2处放置了一些东西。
		// 8. 现在，要求把在旧刻度0、1、2处放置的那些东西移动到新尺对应的刻度处。
		// 9. 显然，4对应0，5对应1，6对应2。
		// 10.下面的代码实现的功能，和上面的新旧刻度尺问题高度相似。 
		// 1. stackcopy的前面一部分空间存储的数据是后面那部分内存空间的内存地址。
		// 2. stackcopy的后面那部分内存空间中存储的数据是参数。
		// 3. 为啥是这样？在本函数的上游，往mm_msg.BUF填充的数据就是这样的。 
		// 1. 我依然能够用以前体会到的指针使用经验理解这里的指针。
		// 2. 执行 char **q = (char**)stackcopy 后，q 指向stackcopy的初始地址。
		// 3. *q的值是一个内存地址，q的值也是一个内存地址。
		// 4. q++，增加的单位是4个字节。因为内存地址占用4个字节。
		// 5. q 指向stackcopy的初始地址，q++执行后，q指向stackcopy的第4个字节。
		// 6. *q的值是内存地址，*q += delta，是修改q指向的内存空间中的数据即内存空间
		// 	中的内存地址。  
		// 7. *q的旧值是存储在stackcopy的后面的数据的内存地址，修改*q，是因为，那些数据
		// 	的内存地址发生了变化。
		// 8. 为什么栈的地址会发生改变？我不理解。
		// 9. 积累的指针使用经验和这段代码对应的汇编代码是吻合的。
		// 1. 为什么用来执行应用程序的内存空间会发生变化？
		// 2. 因为，把应用程序的指令读入到进程的内存空间占用了内存空间，所以，进程
		// 	的内存空间会发生变化。
		// 3. 进程的内存空间的初始值和界限，不会变。但是，在这片内存中的数据，例如栈，
		// 	的位置会发生变化。
		char **q = (char**)stackcopy;
		// read_virtual_checks(): read beyond limit
		// char **q = (char**)(mm_msg.BUF);
		for (; *q != 0; q++,argc++)
			*q += delta;
		int w = 5;
	}

	phys_copy((void*)va2la(src, orig_stack),
		  (void*)va2la(TASK_MM, stackcopy),
		  orig_stack_len);

	// 对应command/start.asm中的push eax、push ecx。
	// 和中断发生时保存进程的堆栈类似。
	// 总之，为进程准备好堆栈，然后把eip指向进程的指令，就能执行进程了。
	proc_table[src].regs.ecx = argc; /* argc */
	proc_table[src].regs.eax = (u32)orig_stack; /* argv */

	/* setup eip & esp */
	proc_table[src].regs.eip = elf_hdr->e_entry; /* @see _start.asm */
	proc_table[src].regs.esp = PROC_IMAGE_SIZE_DEFAULT - PROC_ORIGIN_STACK;

	strcpy(proc_table[src].name, pathname);

	return 0;
}
