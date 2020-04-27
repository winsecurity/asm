section .data
	var1: db "hello world",0xa
	var1length equ $-var1

section .bss
	dest: resb 100

global start

section .text

start:
	mov ecx,var1length
	lea esi,[var1]
	lea edi,[dest]
;	cld
	rep movsb


	mov eax,4
	mov ebx,1
	mov ecx,dest
	mov edx,100
	int 0x80

	mov eax,1
	mov ebx,0
	int 0x80


