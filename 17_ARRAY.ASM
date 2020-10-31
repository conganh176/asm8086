.model small
.data
	var 1 db 1
	array db 1, 2, 3, 4, 5, 6
	sum db ?
.code
main proc
	mov ax, @data
	mov ds, ax

	mov cx, 6 ; loop times

	mov dl, 0

	lea si, array

	for:
		add dl, [si]
		inc si
		loop for

	mov sum, dl

	mov ah, 4ch
	int 21h
	ret

main endp
end main