#include <stdio.h>
#include <string.h>

int main(int argc, char **argv)
{
	char buf[10];
	memset(buf, 0, sizeof(buf));
	strcpy(buf, "Hello");
	printf("\n");
	char **p = (char **)buf;
	printf("buf = %s\n", buf);

	return 0;
}
