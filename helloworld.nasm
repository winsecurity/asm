global start
section .data
	s: db "hello world",0xa
	length equ $-s

section .text

start:

	xor eax,eax
	mov eax,4
	mov ebx,1
	mov ecx,s
	mov edx,length	
	int 0x80
	mov eax,1
	mov ebx,0
	int 0x80
