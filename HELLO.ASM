.Model Small
.Stack 100h
.Data
        TBao db 'Hello World$'
.Code
Main Proc
        mov ax, @Data
        mov ds, ax
HienTB:
        mov ah, 9
        lea dx, TBao
        int 21h
Thoat:
        mov ah, 4Ch
        int 21h
Main EndP
End Main
