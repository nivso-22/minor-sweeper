
.586
IDEAL
MODEL small
STACK 100h
jumps
p186
DATASEG
color dw 4h
tile dw 0
x_flag dw 10
y_flag dw 10
CODESEG
proc draw_pixel
pusha

    xor bh, bh  ; bh = 0
    mov dx, [y_flag]
    mov cx, [x_flag]
    mov ax, [color]
    mov ah, 0ch
    int 10h
popa 
ret
endp draw_pixel

proc drawflag
popa
    mov [color], 4h
    call draw_pixel
    inc [x_flag]
    call draw_pixel
    dec [y_flag]
    call draw_pixel
    mov [color], 14h
    inc [x_flag]
    call draw_pixel
    inc [y_flag]
    call draw_pixel
    inc [y_flag]
    call draw_pixel
    inc [y_flag]
    call draw_pixel
    inc [y_flag]
    call draw_pixel
    inc [y_flag]
    call draw_pixel
    inc [x_flag]
    call draw_pixel
    inc [x_flag]
    call draw_pixel
    sub [x_flag], 3
    call draw_pixel
    dec [x_flag]
    call draw_pixel
    pusha
ret
endp drawflag
    ; Return from procedure

start:
    mov ax, @data
    mov ds, ax
    mov ax, 13h
    int 10h
    call drawflag
    mov ax, 4c00h
    int 21h
   END start