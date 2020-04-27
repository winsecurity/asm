global start

section .data
	var1: db 0x00
	var2: dw 0x0000
	var3: dd 0x00000000

section .text

start:
	mov al,0x12
	mov bl,0x32
	add al,bl

	xor eax,eax
	
	add byte [var1],0x12
	add byte [var2],0x1234

	mov eax,1
	mov ebx,0
	int 0x80



