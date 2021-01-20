/*************************************************************************//**
 *****************************************************************************
 * @file   lib/exec.c
 * @brief  
 * @author Forrest Y. Yu
 * @date   Tue May  6 14:26:09 2008
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
#include "proto.h"

/*****************************************************************************
 *                                exec
 *****************************************************************************/
/**
 * Executes the program pointed by path.
 * 
 * @param path  The full path of the file to be executed.
 * 
 * @return  Zero if successful, otherwise -1.
 *****************************************************************************/
PUBLIC int exec(const char * path)
{
	MESSAGE msg;
	msg.type	= EXEC;
	msg.PATHNAME	= (void*)path;
	msg.NAME_LEN	= strlen(path);
	msg.BUF		= 0;
	msg.BUF_LEN	= 0;

	send_recv(BOTH, TASK_MM, &msg);
	assert(msg.type == SYSCALL_RET);

	return msg.RETVAL;
}

/*****************************************************************************
 *                                execl
 *****************************************************************************/
PUBLIC int execl(const char *path, const char *arg, ...)
{
	va_list parg = (va_list)(&arg);
	char **p = (char**)parg;
	return execv(path, p);
}

/*****************************************************************************
 *                                execv
 *****************************************************************************/
PUBLIC int execv(const char *path, char * argv[])
{
	// 书中图10.5 argv，是被调用程序echo中main函数所需的完整堆栈。我们这个execv函数提供的堆栈，只是argv部分的。
	// 它完成的，只是指针数组这部分。前面的参数3和后面的那些字符串，都不是这个函数完成的。
	// 字符串数组的二进制形式是：03450(即字符形式的\0)78240(\0)。这是我的猜测。
	char **p = argv;
	char arg_stack[PROC_ORIGIN_STACK];
	int stack_len = 0;

	// 有多少个参数
	while(*p++) {
		assert(stack_len + 2 * sizeof(char*) < PROC_ORIGIN_STACK);
		stack_len += sizeof(char*);
	}

	// 在哪里添加了参数数量在arg_stack？我没有看到啊。
	// 添加参数数量到数组中后，需要加一个0作为字符串的结束标志。
	// 上面的注释，是错误的。
	// 书上的说法，将指针数组的末尾赋零。原因，我不知道。但是，和书上的图能对应起来。
	// 之所以有这么一句，是为了在do_exec中判断参数个数时使用。遇到等于0的arg_stack成员，表示参数已经全部遍历结束了。
	*((int*)(&arg_stack[stack_len])) = 0;
	// 
	stack_len += sizeof(char*);

	char ** q = (char**)arg_stack;
	for (p = argv; *p != 0; p++) {
		// 这句，最难理解。
		// &arg_stack[stack_len] 是内存地址，*q 存储的是内存地址，初始值是arg_stack的初始地址。
		// 更具体，&arg_stack[stack_len] 是 第一个参数的内存地址、第二个参数的内存地址、第三个参数的内存地址。*q 的值依次是前者的内存地址，即 &arg_stack[stack_len] 的值。
		// 阻碍我理解这个函数的问题，先入为主，认为，这个函数构建的供被调用程序echo的main函数调用的栈，应该包含int argc参数。这是错误的。它只构建了包含char **argv的栈。受书中图影响。后来，
		// 我在do_exec中找到了int argc构建。
		// 这么细节的问题，我最终会忘记，面试的时候也无法跟别人说。那么，耗费这么多时间弄清楚它的价值是什么？
		*q++ = &arg_stack[stack_len];

		assert(stack_len + strlen(*p) + 1 < PROC_ORIGIN_STACK);
		// *p是参数字符串，arg_stack[stack_len]是什么？是具体的值吗？对应于汇编中的eax，而&arg_stack[stack_len]是汇编中的[eax]。
		// 所以，这句，我的理解是，把参数字符串复制到&arg_stack[stack_len]这个内存地址（以这个地址开始的一块内存区域）
		// 上面的注释，我有点怀疑它们的正确性。我又认为，*p是个内存地址，把这个内存地址复制到&arg_stack[stack_len]开始的一块内存区域。
		// char * argv[] 是一个指针数组，即，是一块连续的内存区域，在这个区域内，每块内存里存放的是一个值，这个值也是一个内存地址，而这个内存地址的内存里，存放的是参数。
		// 若没有使用分页机制等内存管理机制，可以文件或内存中查看二进制数据，验证上面的推测。
		strcpy(&arg_stack[stack_len], *p);
		// 这块内存的长度
		stack_len += strlen(*p);
		// 由于存储的是字符串，需要在末尾加0，内存长度也要加1个单位，即加1个字节。
		// 上面的注释不正确，存储的是内存地址。不知道为啥要加0。
		// 我写代码的时候，很难写出这句。我不觉得有必要写这句。
		// 我不理解，strcpy(&arg_stack[stack_len], *p) 用 &，这里用arg_stack[stack_len]，后面能不能也用 &arg_stack[stack_len]。
		// 仍不失很理解啊。两者都是给某个内存地址的内存赋值。这是正确的废话。赋值，当然是将数据放到某片内存中。前者，是函数要求那个参数是一个内存地址，而后者，要求直接对内存中的数据进行操作。
		// 就这样。
		// 为啥要加个0，我仍然不明白。存疑存疑！
		arg_stack[stack_len] = 0;
		stack_len++;
	}

	MESSAGE msg;
	msg.type	= EXEC;
	msg.PATHNAME	= (void*)path;
	msg.NAME_LEN	= strlen(path);
	msg.BUF		= (void*)arg_stack;
	msg.BUF_LEN	= stack_len;

	send_recv(BOTH, TASK_MM, &msg);
	assert(msg.type == SYSCALL_RET);

	return msg.RETVAL;
}

