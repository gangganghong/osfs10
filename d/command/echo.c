#include "stdio.h"

int main(int argc, char * argv[])
{
	int i;
	for (i = 1; i < argc; i++)
		printf("%s%s", i == 1 ? "" : " ", argv[i]);
	printf("Do you know?\n%s\n", "Nothing is difficult if you put your heart into it.");
	printf("\n");

	return 0;
}
