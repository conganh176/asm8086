.model small
.stack 100h
.data
	num1 db 250
	num2 db 6

.code

main proc
	mov ax, @data
	mov ds, ax

	mov al, num1
	add al, num2

	jc of

	mov dl, 0
	jmp endf

	of:
		mov dl, 1

	endf:
		ret

	main endp

	mov ah, 4Ch
    int 21h

end main