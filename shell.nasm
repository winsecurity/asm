global start

section .data
	command: db "/bin/bash"

section .text

start:
	mov al,11
	mov bl,command
	mov bl,0
	int 0x80
	
	mov al,1
	mov bl,0
	int 0x80
