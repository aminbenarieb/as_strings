.386
.model flat,c
public DlinaStroki

.code
DlinaStroki proc
	push ebp
	mov  ebp,esp
	push esi

	pushf
	
	mov esi, [ebp + 8]

	xor eax, eax

	cycle:
	inc eax
	cmp byte ptr[eax+esi], 0
	jnz cycle

	goout:
	popf
	pop esi
	pop ebp
	ret
DlinaStroki endp
end

