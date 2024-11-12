.model samll 
.stack 100h
.data
a db 'Topu bhuyan$'
.code

main proc

mov ax,@data
mov ds,ax

mov ah,9    ;ah 9 for string
lea dx,a    ;lea = load effcetive area
int 21h

exit:
mov ah,4ch
int 21h

ret




