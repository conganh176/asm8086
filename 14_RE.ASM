.model small
.stack 100h
.data
	msg1 db 10, 13, 'enter a number between 0-9: $'
	msg2 db 10, 13, 'you entered: $'
	msg db 10, 13, 'you are lucky$'
.code
main proc
	mov ax, @data
	mov ds, ax

	repeat:
		mov ah, 9
		lea dx, msg1
		int 21h

	while:
		mov ah, 1
		int 21h
		cmp al, '0'
		jb repeat
		cmp al, '9'
		ja repeat
		mov bl, al

		mov ah, 9
		lea dx, msg2
		int 21h

		mov ah, 2
		mov dl, bl
		int 21h

	endifcont:
		mov ah, 4ch
		int 21h
		ret

main endp
end main


