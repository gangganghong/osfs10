#include <stdio.h> 
#include <string.h>
#include <stdlib.h>

struct tar_header{
	char name[100];
	char mode[8];
	char uid[8];
	char gid[8];
	char size[12];
	char mtime[12];
	char chksum[8];
	char typeflag;
	char linkname[100];
	char magic[6];
	char version[2];
	char uname[32];
	char gname[32];
	char devmajor[8];
	char devminor[8];
	char prefix[155];
	char padding[12];
};

int main(int argc, char * argv[])
{
	FILE *fd = fopen("cmd.tar", "r");
	// if(fd == -1){
	if(fd == NULL){
		printf("%s\n", "Open file failed");
		exit(1);
	}

	char buf[512*16];
	memset(buf, 0, 512*16);
	while(1){
		// int len = fread(buf, 512, 1, fd);
		int len = fread(buf, 512, 1, fd);
		if(len != 1)
			break;
		
		// 上面的判断无法正确识别出无文件的情况。
		if(strlen(buf) == 0)
			break;

		struct tar_header *header = (struct tar_header *)buf;
		char filename[30];
		memset(filename, 0, 30);
		strcpy(filename, header->name);

		int size = 0;
		char *p = header->size;
		char is_start = 1;
		while(*p){
			if(is_start && (*p++ - '0') == 0){
				// *p--;
				continue;
			}
			if(is_start == 1){
				*p--;
				is_start = 0;
			}
			size = size * 8 + (*p++ - '0');
		}

		int bytes_left = size;
		int num = (bytes_left - 1)/512 + 1;	
			
		//FILE *fdout = fopen(filename, "w");
		FILE *fdout = fopen(filename, "w+");
		char file_buf[512*16];
		memset(file_buf, 0, 512*16);
		fread(file_buf, 512, num, fd);
		//char file_buf2[] = "hello";
		fwrite(file_buf, strlen(file_buf)+1, 1, fdout);
		fclose(fdout);
	}	

	fclose(fd);
	return 0;
}
