section .text

global _start

_start:
	jmp short test

realStuff:

    xor eax, eax
    mov al, 0xb

    pop ebx

    xor ecx, ecx
    xor edx, edx

    int 0x80

test:
    call realStuff
    shell: db  '/bin/sh', 0