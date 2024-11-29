; Multiplication

org 100h
.data

num1 dw 2
num2 dw 2
msg db "Multiplication Result: $"

.code
main proc
    mov ax, @data
    mov ds, ax
    
    ;display message
    mov ah, 9
    lea dx, msg
    int 21h
    
    ;multiplaction
    mov ax, num1
    mov bx, num2
    mul bx
    
    ;convert result ASCII and print
    add al, '0' 
    mov dl, al
    mov ah, 2
    int 21h
    
    mov ah, 4ch
    int 21h
    main endp
ret




