org 100h

num1 db 9
num2 db 5
result db ?
msg db "The result is: $"

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, msg
    int 21h
    
    mov al, num1
    sub al, num2
    mov result, al
    
    add al, '0'
    mov dl, al
    mov ah, 2
    int 21h
    
    mov ah, 4ch
    int 21h
ret