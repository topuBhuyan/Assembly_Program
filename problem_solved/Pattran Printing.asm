org 100h
msg db "Printing Pattern - $"
newline db 13, 10, '$';

.code
main proc
    mov ax, @data;
    mov ds, ax
    
    mov ah, 9
    lea dx, msg
    int 21h
    
    mov ah, 9
    lea dx, newline
    int 21h
    
    mov cx, 5   ;number of rows
    
    pattern_row:
    mov bx, cx
    
    pattern_star:
    mov dl, '*'
    mov ah, 2
    int 21h
    dec bx
    jnz pattern_star
    
    mov ah, 9
    lea dx, newline
    int 21h
    
    loop pattern_row
    
    mov ah, 4ch
    int 21h 
ret