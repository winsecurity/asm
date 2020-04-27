
extern printf
extern exit

section .data
	msg: db "hello world",0xa

global main

section .text

main:
	push msg
	call printf
	add esp,0x4

	call exit

