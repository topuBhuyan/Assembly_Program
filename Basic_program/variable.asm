
 .model samll
 .stack 100h
 .data
 a db 5  ;db data type
 b db ?
 .code
 
 main proc
 
 mov ax,@data
 mov ds,ax
 
 mov ah,1
 int 21h
 mov b,al
 
 mov ah,2
 mov dl,10
 int 21h
 mov dl,13 ;new line
 int 21h
 
 mov ah,2
 mov dl,a
 add dl,48
 int 21h
 
 mov ah,2
 mov dl,b
 int 21h
 
 exit:
 mov ah,4ch
 int 21h
ret