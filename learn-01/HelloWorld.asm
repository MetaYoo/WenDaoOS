org 0x7c00

mov ax,cs
mov ds,ax
mov es,ax
call Disp
jmp $
Disp:
   mov ax,BootMsg
   mov bp,ax
   mov cx,16
   mov ax,0x1301
   mov bx,0x000c
   mov dl,0
   int 0x10
   
BootMsg: db "Hello, OS World!"
times 510 -($-$$) db 0
dw 0xaa55
   
