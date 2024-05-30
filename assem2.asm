  .model small
  .stack 100h
  
  .data
  msg db "its naim $"
  msg1 db 3
  msg3 db ?
  
  .code
  main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,2 
    add msg1,48
    mov dl,msg1
    int 21h