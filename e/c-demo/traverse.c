#include <stdio.h>
#include <string.h>

int main(int argc, char * argv[])
{
	// world!
	char str[20] = "owlr!";
	char res[20];
	char *p = str;
	int len = strlen(str);
	for(int i = 0; i < len / 2; i++){
		res[2*i+1] = *p++;
		res[2*i] = *p++;
	}
	res[len] = 0;

	printf("str = %s\n", str);
	printf("res = %s\n", res);

	return 0;
}
