.model small
.stack 100h
.data
	char db '?'
.code
main proc
	mov ah, 2
	mov dl, 49
	int 21h

	mov ah, 4Ch
    int 21h
main endp
end main