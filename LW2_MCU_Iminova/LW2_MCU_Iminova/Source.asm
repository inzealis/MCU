.686
.model flat,stdcall
.stack 100h

.data

X dw 13ddh
Y dw 715fh
Z dw 2feh
R dw ?

.code
ExitProcess PROTO STDCALL :DWORD
Start:

mov ax, X
add ax, 007dh
mov X, ax

mov bx, Y

for_start:
mov cx, 3
for_loop:

sub bx, Z
loop for_loop

for_finish:

add bx, X

mov dx, 0f99h
cmp bx, dx
jg if_11
jng if_12

if_11:
call M1
jmp end_if_1

if_12:
call M2

end_if_1:

mov dx, 0
cmp ax, dx
jl if_22
jnl if_21

if_21:
call inc_it
jmp end_if_2

if_22:
call dec_it

end_if_2:

mov R, ax

exit:Invoke ExitProcess,1

M1:
xor dx, dx
mov ax, bx
mov cx, 2
idiv cx
mov cx, Z
and cx, 09abh
add ax, cx
ret

M2:
mov ax, bx
sub ax, 19bh
ret

inc_it:
inc ax
ret

dec_it:
dec ax
ret

End Start