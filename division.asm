.model small
.stack 100h
main proc
    mov al,4
    mov bl,2
    
    div bl
    
    mov cl, al
    mov ch, ah
    
    mov ah,2
    mov dl,cl  
    add dl,48
    int 21h;
    
     mov ah,2
    mov dl,0dh
    int 21h 
    mov ah,2
    mov dl,0ah
    int 21h
    
    mov ah,2
    mov dl,ch 
    add dl,48
    int 21h 
    
    
    
    exit:
    mov ah,4ch
    main endp
end main