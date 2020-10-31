.model small
.stack 100h
.data
	arr db 5 dup(?)
	msg1 db 'enter 5 numbers: $'
	msg2 db 10, 13, 'you entered: ', 10, 13, '$'

.code
main proc
	mov ax, @data
	mov ds, ax

	mov ah, 9
	lea dx, msg1
	int 21h

	mov cx, 5
	lea di, arr

	for1:
		mov ah, 1
		int 21h
		mov [di], al
		inc di

		mov ah, 2
		mov dl, 10
		int 21h
		mov dl, 13
		int 21h

		loop for1

	mov ah, 9
	lea dx, msg2
	int 21h

	mov cx, 5
	lea si, arr
	mov ah, 2

	for2:
		mov dl, [si]
		int 21h
		inc si

		mov dl, 10
		int 21h
		mov dl, 13
		int 21h

		loop for2

	mov ah, 4ch
	int 21h
	ret

main endp
end main