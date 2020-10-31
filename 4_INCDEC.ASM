.model small
.data
	num1 db 6
	num2 db 9
	def db 0


.code

main proc
	mov ax, @data
	mov ds, ax

	inc num1
	inc num1

	dec num2
	dec num2

	mov al, num2
	neg al
	add al, num1 ; num1-num2
	mov def, al

	mov ah, 4Ch
    int 21h

main endp

end main