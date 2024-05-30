.model small
.stack 100h  
.data
m db "Hello all of you!!$"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48
    
    mov ah,1
    int 21h
    mov bh,al 
    sub bh,48
    
    add bh,bl
    
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48
    
    add bh,bl
    add bh,48
    
    mov ah,2
    mov dl,bh
    int 21h
    
    mov ah,4ch
    main endp
end main