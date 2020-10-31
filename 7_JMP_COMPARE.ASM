.model small
.stack 100h
.data
	num1 db 5
	num2 db 5
.code
main proc
	mov ax, @data
	mov ds, ax

	mov al, num1
	sub al, num1

	jz eq
	jns sup

	mov dl, 2
	jmp endf

	eq:
		mov dl, 0
		jmp endf

	sup:
		mov dl, 1
		jmp endf

	endf: ret

main endp

end main
