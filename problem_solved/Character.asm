org 100h

.code 
main proc
    mov ah, 1
    int 21h
    
    mov bl, al
    mov ah, 2
    
    mov dl, bl
    
    int 21h
    mov ah, 4ch
    int 21h

ret




