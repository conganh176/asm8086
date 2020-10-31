.model small
.stack 100
.data
.code
main proc
	begin:
		mov al, 5
		mov bl, 12
		add al, bl

		jmp med

		mov bl, 5
		sub bl, 2
	med:
		mov dl, 1
		inc dl
		dec bl
		neg al

	endf: ret

main endp

end main