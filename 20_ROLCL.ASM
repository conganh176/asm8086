.model small
.stack 100h
.data
	
.code
main proc
	mov al, 10001000b
	mov cl, 1
	rol al, cl

	mov ah, 2
	mov dl, al
	int 21h
	
	rcl al, cl

	mov ah, 2
	mov dl, al
	int 21h

	mov ah, 4ch
	int 21h
	ret

main endp
end main