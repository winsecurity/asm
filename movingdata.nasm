global _start

section .data
	sample: db 0xa,0xb,0xc,0xd

section .text

_start:
	mov eax,0x1
	mov ebx,0x3

	mov al,[sample]
	mov bl,[sample]
	mov ah,[sample]
	mov ax,[sample]


	lea eax,[sample]
	
	mov eax,0x3
	mov ebx,0x5

	xchg eax,ebx

	mov eax,1	; exit system call number
	mov ebx,0	; first parameter to exit(0)
	int 0x80


