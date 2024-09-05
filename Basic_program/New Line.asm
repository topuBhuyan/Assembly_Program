.model small  ; akta course segment & akta data segment a6i
.stack 256   ; memory size bujuno hocche
.code         ; sob kiso code convert korbe

main proc   ; main function  proc mean -> procedure
    
   mov ah,1
   int 21h      ;input
   mov bl,al
   
   mov ah,2
   mov dl,bl    ;output
   int 21h
   
   exit:
   mov ah,4ch
   int 21h
   main endp
end main