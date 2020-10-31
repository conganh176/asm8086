.model small
.stack 100h
.data

.code
main proc
	mov al, 5
	mov bl, -2

	cmp al, bl
	jg great
	jle loworeq

	loworeq:
		mov dl, 0
		jmp endf

	great:
		mov dl, 1
		jmp endf

	endf:
		ret

	mov ah, 4Ch
    int 21h

main endp
end main