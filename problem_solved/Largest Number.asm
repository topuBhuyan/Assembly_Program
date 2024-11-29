; largest number
org 100h
.data
    num_1 dw 100
    num_2 dw 20
    msg_for_num1 db "number 1 is largest: $"
    msg_for_num2 db "number 2 is largest: $"
    
.code
main proc
    mov ax, @data
    mov ds, ax
    
    ; compare two numbers
    mov ax, num_1
    mov bx, num_2
    cmp ax, bx
    jge num1_largest ; jge = jump if greater or equal (>=)
        
num2_largest:
    ; display message for num2 being largest
    mov ah, 9
    lea dx, msg_for_num2
    int 21h
    jmp exit_program
    
num1_largest:
    ; display message for num1 being largest
    mov ah, 9
    lea dx, msg_for_num1
    int 21h

exit_program:    
    mov ah, 4ch
    int 21h       
ret
