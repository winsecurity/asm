global _start

section .data
	msg: db "Hello World",0xa
	length equ $-msg

section .text

_start:
	mov eax,0x6

	jmp loop

loop1:
	xor eax,eax
	xor ebx,ebx


loop:
	push eax
	
	mov eax,4
	mov ebx,1
	mov ecx,msg
	mov edx,length
	int 0x80
	
	pop eax
	dec eax
	jnz loop

	mov eax,1
	mov ebx,0

	int 0x80
	








