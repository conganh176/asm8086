.model small
.data
	val1 db 1
	val2 db 2
	val3 db 3
.code
main proc
	mov ax, @data
	mov ds, ax

	mov al, val2
	sub al, val1
	mov val1, al

	mov al, val1
	inc al
	neg al
	mov val1, al

	mov al, val1
	add al, val2
	mov val3, al

	mov al, val2
	add al, al
	add al, al
	add al, 7
	mov val2, al

	mov al, val2
	sub al, val1
	dec al
	mov val1, al

main endp

end main