#include <stdio.h>

int main(int argc, char * argv[])
{
	char str[8] = "18";
	int res = 0;
	char *p = str;
	while(*p){
		res = res * 8 + (*p++ - '0');
	}	

	printf("res = %d\n", res);

	return 0;
}
