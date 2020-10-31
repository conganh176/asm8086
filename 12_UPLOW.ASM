.model small
.stack 100h
.data
	char db ?
.code
main proc
	mov ax, @data
	mov ds, ax

	mov ah, 1
	int 21h
	mov bl, al

	; verify uppercase char
	cmp al, 65
	jb endf
	cmp al, 90
	ja endf

	mov ah, 2
	mov dl, 10	;new line
	int 21h
	mov dl, 13	;move cursor to the beginning of line
	int 21h
	

	mov dl, bl
	add dl, 20h
	mov char, dl
	int 21h

	endf:
		mov ah, 4ch
		int 21h
		ret

main endp
end main