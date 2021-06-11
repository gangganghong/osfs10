#include <string.h>
#include <stdio.h>

int main(void){
	char a[10] = "hello";
	char b[10] = "hi";

	int result = strcmp(a, b);
	printf("a = %s, b = %s, result = %d\n", a, b, result);

	char a2[20] = "command/echo.c";
        char b2[20] = "command/";

        int result2 = strcmp(a2, b2);
        printf("a2 = %s, b2 = %s, result2 = %d\n", a2, b2, result2);
	
	char *h = "hello";
	char *hi = "hi";
	char *world = "world";
	// char **t = {h, hi, world};
	char * t[3] = {h, hi, world};
	int len = strlen(*t);
	char *str = "";
	strcpy(str, *t);
	printf("a = %d\n", 5);
	

	return 0;

}
