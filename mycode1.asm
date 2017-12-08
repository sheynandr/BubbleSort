org 100h
mov si,0
mov cx,size

mov dx, size
sub dx, 1

mov temp, dx
mov ax,array      

start:
mov dx, size
sub dx, 1
mov cx,dx

start1: 
mov ax,array+si
cmp ax,array+2+si 
jg swap 

check:
add si,2
loop start1 
mov si,0
dec temp
cmp temp,0
jg start 
jmp exit 

swap:
mov bx,array+si
mov dx,array+si+2 
mov array+si,dx
mov array+si+2,bx
jmp check 

exit: 
ret
array dw 15,1,5,9,3,50,7,2,4,6,18,13,14,19,20,27
size dw 16 
temp dw 0 
