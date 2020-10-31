INCLUDE asmlib.inc

.data
	
	prompt byte "Pick a number between 1 and 100",0
	correct byte " were randomly generated before ",0
	correct2 byte " was picked. The sum of the numbers is ",0
	correct3 byte ", the average is ",0
	
	num DWORD 0
	total DWORD 0

.code

main PROC

	;//sets all registers to 0
	mov edx, 0
	mov ecx, 0
	mov eax, 0
	mov ebx, 0
	mov ah, 0
	mov ax, 0
	mov al, 0
	
	mov edx, OFFSET prompt
	call writeline
	call readint
	mov num, eax

l1:
	inc ecx
	mov eax, 101
	call randRange
	add total, eax
	cmp num, eax
	je l2
	jmp l1


l2:
	mov eax, ecx
	call writeint
	mov edx, offset correct
	call writestring

	mov eax, num
	call writeint
	mov edx, offset correct2
	call writestring
	mov eax, total
	call writeint

	mov edx, offset correct3
	call writestring
	mov edx, 0
	mov eax, total
	div ecx
	call writeint


main ENDP
END main