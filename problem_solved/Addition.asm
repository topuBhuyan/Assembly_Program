org 100h

.model small
.stack 100h
.data

num_1 db 4
num_2 db 2
result db ?
msg db "The result is: $"

.code
main proc
    mov ax, @data
    mov ds, ax  ; initialize data segment
    
    ; Display message
    mov ah, 9   ; DOS function to display a string
    lea dx, msg 
    int 21h  
    
    ; Addition
    mov al, num_1 ; load into AL
    add al, num_2 ; AL = AL + num_2
    mov result, al; Store result in 'result'
    
    ; Convert result to ASCII and display it
    add al, '0' ; convert binary to ASCII
    mov dl, al  ; mov ASCII character to DL
    mov ah, 2   ; DOS function to display character
    int 21h     ; display charater in DL
    
    mov ah, 4ch
    int 21h
ret




