org 100h

num dw 7
msg_even db "The number is even. $"
msg_odd db "The number is odd. $"

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ax, num
    and ax, 1
    jz even
    
    odd:
        mov ah, 9
        lea dx, msg_odd
        int 21h
        jmp exit
        
     even:
        mov ah, 9
        lea dx, msg_even
        int 21h
        
     exit:
        mov ah, 4ch
        int 21h            

ret