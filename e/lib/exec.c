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
	char **p = argv;
	// 这个栈，不是从内存空间的最高地址处开始的。
	// do_exec中，把初始栈顶设置到进程的内存空间的最高地址。
	// 为啥不在这里就这样做呢？答案是，没有特别合适的语法让我这样做。
	// 以上，都是我的猜想。没有被验证。
	char arg_stack[PROC_ORIGIN_STACK];
	int stack_len = 0;

	// 为参数指针预留空间
	while(*p++) {
		assert(stack_len + 2 * sizeof(char*) < PROC_ORIGIN_STACK);
		stack_len += sizeof(char*);
	}

	// 在参数指针和参数之间设置一个分割符，这个分割符就是内存地址0x0。
	// 只不过是一条使用了指针的语句而已，难不倒我。
	// 1. 假如stack_len = 7，前面的几个元素分别是[0,6)（0~6都是arg_stack的索引)。
	// 2. 紧接着的元素是arg_stack[7]。
	// 3. 这个元素的内存地址是&arg_stack[7]。
	// 4. 把这个内存地址强制转换为int *。
	// 5. 这个转换，会把arg_stack[7]~~arg_stack[10]都当作一个整体来存储一个内存地址。
	// 6. 理解起来，仍有点困难。我还有个杀手锏，看这条语句的汇编代码。
	*((int*)(&arg_stack[stack_len])) = 0;
	stack_len += sizeof(char*);

	char ** q = (char**)arg_stack;
	for (p = argv; *p != 0; p++) {
		// 在arg_stack中存储的0x0前面存储0x0后面的参数的内存地址。
		// 先把内存地址存储起来，此时，内存地址对应的内存中并没有数据。
		*q++ = &arg_stack[stack_len];

		assert(stack_len + strlen(*p) + 1 < PROC_ORIGIN_STACK);
		// 把参数数据复制到0x0后面的内存中。
		strcpy(&arg_stack[stack_len], *p);
		// 内存位置需要移动。
		stack_len += strlen(*p);
		// 因为strlen不统计字符串末尾的0，所以，需要手工添加。
		arg_stack[stack_len] = 0;
		// 0占用的空间。
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

