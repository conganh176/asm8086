.model small
.stack 100h
.data
	var1 db 6
	var2 db 9
.code
main proc
	
	mov al, var1
	mov bl, var2

	xchg al, bl
	
	mov ah, 4Ch
    int 21h

main endp

end main