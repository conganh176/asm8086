.model small
.data
	arr db 12, 15, 8, 19
		db 2, 18, 3, 16
		db 13, 12, 15, 20
		len=($-arr)
.code
main proc
	mov ax, @data
	mov ds, ax

	mov cx, len

	mov ah, 4ch
	int 21h
	ret
main endp
end main