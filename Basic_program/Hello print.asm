org 100h
mov ah, 0eh ;select sub-function

mov al, 'H' ;Ascii code: 72
int 10h     ;print it!

mov al, 'e'
int 10h

mov al, 'l'
int 10h

mov al, 'l'
int 10h

mov al, 'o'
int 10h

mov al, '!'
int 10h

ret

