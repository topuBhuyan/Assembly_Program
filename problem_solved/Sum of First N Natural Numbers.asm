; Sum of First N Natural Numbers

org 100h
.data

    N dw 3
    msg db "sum fo first N natural numbers: $"
    
    .code
    main proc
        mov ax, @data
        mov ds, ax
        
        mov ah, 9
        lea dx, msg
        int 21h
        
        mov cx, N
        xor ax, ax
        mov bx, 1
        
    sum_loop:
        add ax, bx
        inc bx
        loop sum_loop
        
        add ax, '0'
        mov dl, al
        mov ah, 2
        int 21h
        
        mov ah, 4ch
        int 21h    

ret




