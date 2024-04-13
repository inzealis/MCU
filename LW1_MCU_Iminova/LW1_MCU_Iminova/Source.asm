.686
.model flat,stdcall
.stack 100h

.data

X dw 17;
Y dw 5;
Z dw 44;
M dw ?;

.code
ExitProcess PROTO STDCALL :DWORD
Start:

mov ax, Z
sub ax, X
sub ax, Y
mov cl, 2
div cl

mov bx, X
and bx, Y

add ax, bx

mov M, ax

exit:
Invoke ExitProcess,1
End Start