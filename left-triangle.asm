.model small 
.stack 100h
.data 
m db ? 
msg db "Enter any number: $"

.code
main proc  
    mov ax,@data
    mov ds,ax
    
    lea dx,msg
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al 
    sub bl,48 
    mov m,bl
    
    mov ah,2
    mov dx,0dh
    int 21h
    mov dx,0ah  
    int 21h 
    
    mov cx,0
    mov bl,1 
    mov cl,m
    
    top:
    mov cx,bx
    
    l1:
    cmp bl,m
    jg exit
    
    mov ah,2
    mov dl,'*'
    int 21h 
    
     loop l1 
     
     mov ah,2
    mov dx,0dh
    int 21h
    mov dx,0ah  
    int 21h
    
    inc bl  
    loop top
     
    
    
    
    
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main