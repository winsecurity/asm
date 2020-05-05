
section .text 

global main 

main:

    xor eax,eax
    xor esi,esi 

    mov al,0xb
    ;2f2f62696e2f7368
    push esi
    push 0x68732f6e
    push 0x69622f2f ;//bin/sh
    mov ebx,esp 

    mov ecx,esi
    mov edx,esi 

    int 0x80




