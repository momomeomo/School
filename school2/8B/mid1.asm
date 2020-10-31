INCLUDE asmlib.inc

.data
	
	prompt byte "How many numbers to enter: ",0
	sump byte "The sum of the ",0
	sumx byte " values is ",0
	
	counter DWORD 0
	sum DWORD 0

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

	mov edx, offset prompt
	call writeline
	call readint
	mov ecx, eax
	mov counter, eax

l1:
	mov eax, 0
	call readint
	add sum, eax
	loop l1

	mov edx, offset sump
	call writestring
	mov eax, counter
	call writeint
	mov edx, offset sumx
	call writestring
	mov eax, sum
	call writeint


main ENDP
END main