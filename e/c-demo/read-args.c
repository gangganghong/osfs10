#include <stdio.h>

int main(int s_argc, char **s_argv)
{
	char rdbuf[200] = "echo Hello,World!";

	int argc = 0;
	char * argv[3];
	char * p = rdbuf;
	char * s;
	int word = 0;
	char ch;
	do {
		ch = *p;
		if (*p != ' ' && *p != 0 && !word) {
			s = p;
			word = 1;
		}
		if ((*p == ' ' || *p == 0) && word) {
			word = 0;
			argv[argc++] = s;
			*p = 0;
		}
		p++;
	} while(ch);
	argv[argc] = 0;


	return 0;
}
