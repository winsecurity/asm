global main

section .data
    command: db "/bin/bash",0x00

section .text

main:
    xor eax,eax
    push ax
    push 0x68
    push 0x7361622f   ;2f 62 61 73
    push 0x6e69622f   ;2f 62 69 6e  
    ; /bin/bash
    
    mov ecx,eax
    mov ebx,esp
    mov al,11   
    int 0x80    ; execve systemcall




