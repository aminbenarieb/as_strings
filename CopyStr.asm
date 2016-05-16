.386
.model flat,c
public CopyStr

.code
CopyStr proc
	push ebp
	mov ebp,esp
	push esi
	push edi

	pushf
	
	mov ecx, [ebp + 16]
	mov edi, [ebp + 12]	; ������� p2
	mov esi, [ebp + 8]  ; �������� p1

	cld ; �� ������ ������ ������ df := 0;

	cmp edi, esi ; �F = compare(p2,p1)
	je goout ; p2 == p1
	jb norev ; p2 < p1
	
	;p2 > p1
	std ; df := 1
	add edi, ecx
	dec edi
	add esi, ecx 
	dec esi

	norev:
	rep movsb ; �������� � ������ �� ������ ES:(E)DI ���� �� ������ � ������� DS:(E)SI	
	ja goout
	sub eax, [ebp + 16]; ������ ��������� � ����������
	goout:	

	popf
	pop edi
	pop esi
	pop ebp
	ret
CopyStr endp
end

