#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>

int main(int argc, char *argv[])
{
        char l = 1;
        unsigned char buf;
        int fd;
        fd = open(argv[1],0,S_IRUSR);
        while(read(fd,&buf,1)) {
                if(buf == 0 && l == 1) {
                        printf(" \n");
                        l = 0;
                }
                else if(buf) {
                        printf("\\x%02x",buf);
                        l = 1;
                }
        }

        close(fd);
}
