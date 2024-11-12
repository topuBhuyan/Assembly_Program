.model small
.stack 100h
.data
a db 'Enter a number: $'
b db 'The number is : $'
.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a   ;show Enter a number
    int 21h
    
    mov ah,1
    int 21h     ;input
    mov bl,al 
    
    mov ah,2
    mov dl,10
    int 21h    ;new line print
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,b   ;show the number is
    int 21h
    
    mov ah,2
    mov dl,bl  ;output
    int 21h

    exit:
    mov ah,4ch
    int 21h
ret