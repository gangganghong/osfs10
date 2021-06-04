#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int min(int a, int b);

int main(int argc, char * argv[])
{
	struct posix_tar_header
{					/* byte offset */
		char name[100];		/*   0 */
		char mode[8];		/* 100 */
		char uid[8];		/* 108 */
	char gid[8];		/* 116 */
	char size[12];		/* 124 */
	char mtime[12];		/* 136 */
	char chksum[8];		/* 148 */
	char typeflag;		/* 156 */
	char linkname[100];	/* 157 */
	char magic[6];		/* 257 */
	char version[2];	/* 263 */
	char uname[32];		/* 265 */
	char gname[32];		/* 297 */
	char devmajor[8];	/* 329 */
	char devminor[8];	/* 337 */
	char prefix[155];	/* 345 */
	/* 500 */
};
	
	// 第一层，死循环，终止条件是，读取到的文件头中size是0
	// 第二层，读取一个文件的内容，终止条件是，读取到的数据超过文件大小
	char *filename = argv[1];
	printf("filename = %s\n", filename);
	FILE *fd = fopen(filename, "rb");
	if(fd == NULL){
		exit(-1);
	}
	printf("opend\n");
	char buf[512*16];
	int chunk = sizeof(buf);
	while(1){
		int bufSize =  fread(buf, 512, 1, fd);
		if(buf[0] == 0){
			break;
		}
		printf("bufSize = %d\n", bufSize);
		struct posix_tar_header *phdr = (struct posix_tar_header *) buf;
		printf("name = %s\n", phdr->name);
		char * p = phdr->size;
		int f_len = 0;
		while (*p)
			f_len = (f_len * 8) + (*p++ - '0'); /* octal */

		int bytes_left = f_len;
		printf("f_len = %d\n", f_len);
		int result = strcmp(phdr->name, "command/");
		char *filename = phdr->name;
		printf("cmp name: %d\n", result);
		if(result == 0){
			printf("跳过文件 %s \n", filename);
			continue;
		}
		char realname[20];
		strcpy(realname, filename + 8);
		printf("realname = %s\n", realname);
		FILE *out = fopen(realname, "ab");
		if(out == NULL){
			printf("创建文件 %s 失败\n", realname);
			continue;
		}
		while (bytes_left) {
			int iobytes = min(chunk, bytes_left);
			int count = (iobytes - 1) / 512 + 1;
			fread(buf, 512, count, fd);
			// printf("cmp name: %d   filename: %s\n", result, phdr->name);	
			//printf("cmp name: %d   filename: %s\n", result, buf->name);	
			fwrite(buf, 512, count, out);
			// FILE *out = fopen(filename, "ab");
			bytes_left -= iobytes;
		}
		fclose(out);
	}
	
	return 0;
}


int min(int a, int b)
{
	int min;
	if(a > b){
		min = b;
	}else{
		min = a;
	}

	return min;
}
