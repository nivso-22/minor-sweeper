
p586
IDEAL
MODEL small              
STACK 100h
DATASEG
color dw 0fh
x_dig dw 0
y_dig dw 0

CODESEG

proc draw_pixel_digit;lord forgive me for im about to sin
pusha

    xor bh, bh  ; bh = 0
    mov dx, [y_dig]
    mov cx, [x_dig]
    mov ax, [color]
    mov ah, 0ch
    int 10h
popa 
ret
endp draw_pixel_digit

proc d1
add [x_dig], 3
add [y_dig], 3
call draw_pixel_digit
add [y_dig], 1
call draw_pixel_digit
dec [x_dig]
call draw_pixel_digit
inc [x_dig]
inc [y_dig]
call draw_pixel_digit
inc [y_dig]
call draw_pixel_digit
inc [y_dig]
call draw_pixel_digit
dec [x_dig]
inc [y_dig]
call draw_pixel_digit
inc [x_dig]
call draw_pixel_digit
inc [x_dig]
call draw_pixel_digit


ret
endp d1

proc d2
add [x_dig], 3
add [y_dig], 3
call draw_pixel_digit
inc [x_dig]
dec [y_dig]
call draw_pixel_digit
inc [x_dig]
call draw_pixel_digit
inc [x_dig]
inc [y_dig]
call draw_pixel_digit
dec [x_dig]
inc [y_dig]
call draw_pixel_digit
dec [x_dig]
inc [y_dig]
call draw_pixel_digit
dec [x_dig]
inc [y_dig]
call draw_pixel_digit

inc [x_dig]
call draw_pixel_digit
inc [x_dig]
call draw_pixel_digit
inc [x_dig]
call draw_pixel_digit


ret
endp d2

proc d3
add [x_dig], 3
add [y_dig], 2
call draw_pixel_digit
inc [x_dig]
call draw_pixel_digit
inc [x_dig]
call draw_pixel_digit
inc [x_dig]
inc [y_dig]
call draw_pixel_digit
dec [x_dig]
inc [y_dig]
call draw_pixel_digit
dec [x_dig]
call draw_pixel_digit
add [x_dig], 2
inc [y_dig]
call draw_pixel_digit
dec [x_dig]
inc [y_dig]
call draw_pixel_digit

dec [x_dig]
call draw_pixel_digit
dec [x_dig]
call draw_pixel_digit
ret
endp d3

proc d4
add [x_dig], 3
add [y_dig], 2
call draw_pixel_digit
inc [y_dig]
call draw_pixel_digit
inc [y_dig]
call draw_pixel_digit
inc [x_dig]
call draw_pixel_digit
inc [x_dig]
call draw_pixel_digit
inc [x_dig]
call draw_pixel_digit
inc [y_dig]
call draw_pixel_digit
inc [y_dig] 
call draw_pixel_digit
sub [y_dig], 5h
inc [y_dig]
call draw_pixel_digit
inc [y_dig]
call draw_pixel_digit

ret
endp d4

proc d5
add [x_dig], 5
add [y_dig], 2
call draw_pixel_digit
dec [x_dig]
call draw_pixel_digit
dec [x_dig]
call draw_pixel_digit
dec [x_dig]
inc [y_dig]
call draw_pixel_digit
inc [y_dig]
call draw_pixel_digit
inc [x_dig]
call draw_pixel_digit
inc [x_dig]
call draw_pixel_digit
inc [x_dig]
inc [y_dig]
call draw_pixel_digit
dec [x_dig]
inc [y_dig]
call draw_pixel_digit
dec [x_dig]
call draw_pixel_digit
dec [x_dig]
call draw_pixel_digit
ret
endp d5

proc d6
add [x_dig], 5
add [y_dig], 2
call draw_pixel_digit
dec [x_dig]
call draw_pixel_digit
dec [x_dig]
call draw_pixel_digit
dec [x_dig]
call draw_pixel_digit
inc [y_dig]
call draw_pixel_digit
inc [y_dig]
call draw_pixel_digit
inc [x_dig]
call draw_pixel_digit
inc [x_dig]
call draw_pixel_digit
inc [x_dig]
call draw_pixel_digit
inc [y_dig]
call draw_pixel_digit
inc [y_dig]
call draw_pixel_digit
dec [x_dig]
call draw_pixel_digit
dec [x_dig]
call draw_pixel_digit
dec [x_dig]
call draw_pixel_digit
dec [y_dig]
call draw_pixel_digit
ret
endp d6

proc d7
add [x_dig], 3
add [y_dig], 2
call draw_pixel_digit
inc [x_dig]
call draw_pixel_digit
inc [x_dig]
call draw_pixel_digit
inc [x_dig]
call draw_pixel_digit
inc [y_dig]
call draw_pixel_digit
dec [x_dig]
inc [y_dig]
call draw_pixel_digit
dec [x_dig]
inc [y_dig]
call draw_pixel_digit 
inc [y_dig]
call draw_pixel_digit

ret
endp d7

proc d8
add [x_dig], 5
add [y_dig], 3
call draw_pixel_digit
dec [y_dig]
call draw_pixel_digit
dec [x_dig]
call draw_pixel_digit
dec [x_dig]
call draw_pixel_digit
dec [x_dig]
call draw_pixel_digit
inc [y_dig]
call draw_pixel_digit
inc [y_dig]
call draw_pixel_digit
inc [x_dig]
call draw_pixel_digit
inc [x_dig]
call draw_pixel_digit
inc [x_dig]
call draw_pixel_digit
inc [y_dig]
call draw_pixel_digit
inc [y_dig]
call draw_pixel_digit
dec [x_dig]
call draw_pixel_digit
dec [x_dig]
call draw_pixel_digit
dec [x_dig]
call draw_pixel_digit
dec [y_dig]
call draw_pixel_digit
ret
endp d8
start:
    mov ax, @data
    mov ds, ax
    mov ax, 13h
    int 10h
    call d1
    sub [y_dig], 6
    add [x_dig], 1
    call d2
    sub [y_dig], 6
    add [x_dig], 1
    call d3
    sub [y_dig], 6
    add [x_dig], 3
    call d4
    
    sub [y_dig], 3
    add [x_dig], 2
    call d5
    sub [y_dig], 6
    add [x_dig], 4
    call d6
    sub [y_dig], 5
    add [x_dig], 3
    call d7
    sub [y_dig], 6
    add [x_dig], 3
    call d8
         
    
exit:
    mov ax, 4c00h
    int 21h
END start