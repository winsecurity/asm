
global _start

section .data
	s: db "abcd"

section .text

_start:
	mov eax,0x12345678
	mov ebx,0x12345678 
	 mov ecx,0x12345678
	 mov edx,0x12345678
	 
	pushad
	popad

	
	mov eax,1
	mov ebx,0
	int 0x80
