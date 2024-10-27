org 100h

mov ah,09h           ;function to display string message
mov dx,offset message; offset of messege string 

int 21h
mov ah,4ch
int 21h

endp          
message db "Hello World!$"

ret




