

extern scanf
extern exit
extern printf

section .bss
	var1: resb 100

section .data
	prompt: db "enter some number:",0x00
	format: db "%d",0x00

global main

section .text

main:
	push prompt
	call printf
	add esp,0x4

	push var1
	push format
	call scanf
	add esp,0x8

	push var1
	call printf
	add esp,0x4

	call exit



