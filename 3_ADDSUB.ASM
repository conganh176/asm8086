.model small
.data

	var1 db 6
	var2 db 9
	sum db 0
	def db 0

.code

main proc

	mov ax, @data
	mov ds, ax

	mov al, var1
	add al, var2
	mov sum, al

	mov al, var1
	sub al, var2
	mov def, al

	mov ah, 4Ch
    int 21h

main endp

end main