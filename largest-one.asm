.model small
.stack 100h
.data 
 m db 'output is : $'
.code
main proc 
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov bl,al 
    
      mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    mov ah,1   
    int 21h
    mov bh,al 
    
      mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    mov ah, 1
    int 21h
    mov cl,al
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h 
    
    mov ah,9
    lea d
    x,m
    int 21h
    
    cmp bl,bh
    jge a
    
    b:
    cmp bh,cl
    jge c
    mov ah,2
    mov dl,cl
    int 21h 
    jmp exit
    
    c:
    mov ah,2
    mov dl,bh
    int 21h  
    jmp exit
    
    a:
    cmp bl,cl
    jge d
    mov ah,2
    mov dl,cl
    int 21h 
    jmp exit
    
    d:
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit 
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    