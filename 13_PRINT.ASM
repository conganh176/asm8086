.model small
.stack 100h
.data
	mess db 'Hello, now get lost!!!$'
.code
main proc
	mov ax, @data
	mov ds, ax

	mov ah, 9
	lea dx, mess
	int 21h

	mov ah, 4ch
	int 21h
	ret

main endp
end main