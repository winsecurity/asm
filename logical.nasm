global _start

section .data
	var1: db 0x12
	var2: dw 0x1234
	var3: dd 0x12345678

section .text

_start:
	xor eax,eax
	mov al,0x3
	and al,0xa

	mov eax,0x11111111
	not eax
	
	or byte [var1] , al
	
	mov eax,0x10
	and word [var2],ax

	mov eax,1
	mov ebx,0
	int 0x80

	







