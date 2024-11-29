; String

org 100h
.data

User_string db 100
db 0
db 100 dup('$')
msg db "Enter a string: $"
newline db 13, 10, '$'

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    mov dx, offset msg
    int 21h
    
    mov ah, 0Ah
    lea dx, User_string
    int 21h
    
    mov ah, 9
    mov dx, offset newline
    int 21h
    
    mov ah, 9
    lea dx,[User_string]
    int 21h
    
    mov ah, 4ch
    int 21h

ret




