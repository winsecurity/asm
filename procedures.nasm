section .data
	msg: db "Nikhil",0xa
	length equ $-msg

global start

section .text

start:
	mov ecx,10
	jmp l1
printstring:
	mov eax,4
	mov ebx,1
	mov ecx,msg
	mov edx,length
	int 0x80
	ret

l1:
	
	pushad
	call printstring
	popad
	loop l1

	mov eax,1
	mov ebx,0
	int 0x80	


