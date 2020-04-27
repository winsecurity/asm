section .data
	var1:	db	"nikhil"
	var1length equ $-var1
	var2:	db	"nikhil2"
	var2length equ $-var2
	var3:	db	"equal"
	var4:	db	"notequal"	

global _start

section .bss
	dest: resb 100

section .text

_start:
	
	mov ecx,var2length
	lea esi,[var1]	
	lea edi,[var2]
	repe cmpsb

	jnz notequal
	mov ecx,var3
	mov edx,5
	jmp print

notequal:
	mov ecx,var4
	mov edx,8

print:
	mov eax,4
	mov ebx,1
	int 0x80

	mov eax,1
	mov ebx,0
	int 0x80

	











