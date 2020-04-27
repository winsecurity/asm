section .data
	msg: db "hello world",0xa
	length equ $-msg

global _start

section .text

_start:
	mov ecx,10

l1:
	push ecx
	
	mov eax,4
	mov ebx,1
	mov ecx,msg
	mov edx,length
	int 0x80

	pop ecx
	loop l1

	mov eax,1
	mov ebx,0
	int 0x80




