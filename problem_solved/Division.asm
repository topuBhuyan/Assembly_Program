; Division

org 100h
.data
    dividend dw 12
    divisor dw 2
    msg db "Division result: $"

.code
main proc
    mov ax, @data
    mov ds, ax
    
    ; display message
    mov ah, 9
    lea dx, msg
    int 21h
    
    ; division
    xor dx, dx
    mov ax, dividend
    mov bx, divisor
    div bx
    
    ; convert result to ASCII value and print
    add al, '0'
    mov dl, al
    mov ah, 2
    int 21h

    mov ah, 4ch
    int 21h
ret




