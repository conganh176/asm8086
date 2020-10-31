.model small
.stack 100h
.data
	char db '?'
.code
main proc
	mov ah, 2
	mov dl, '1'
	int 21h
main endp
end