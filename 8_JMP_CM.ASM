.model small
.stack 100h
.data
	var1 db ?
.code

main proc
	mov ax, @data
	mov ds, ax

	mov al, 5
	mov ah, 6

	cmp al, ah
	ja above
	; jnbe above

	mov var1, 0
	jmp endf

	above:
		mov var1, 1

	endf:
		ret

	mov ah, 4Ch
    int 21h

main endp
end main