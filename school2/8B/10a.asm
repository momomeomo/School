INCLUDE asmlib.inc

.data

	prompt BYTE "Enter a divisor", 0ah, 0dh, 0
	msg BYTE "Here are the numbers that are evenly divisible by ",0

	myArray DWORD 25 DUP(0)
	count DWORD 25
	divisor DWORD 0
	num1 DWORD 100

.code

main PROC

	;//sets all registers to 0
	mov edx, 0
	mov ecx, 0
	mov eax, 0
	mov ebx, 0
	mov esi, 0
	mov edi, 0
	mov ah, 0
	mov al, 0

	call randSeed
	mov ecx, count			;//count of times to loop

	mov edx, OFFSET prompt
	call writeline
	call readint
	mov divisor, eax
	mov eax, 0
	mov edx, 0

l1:							;//arithmetic loop
	mov eax, num1
	call randRange
	inc eax
	push eax				;//saves eax for later
	mov edx, 0
	div divisor
	pop eax					;//returns original eax after division
	cmp edx, 0
	JNE l1					;//jumps to start if remainder is not 0
	mov myArray[ebx],eax
	add ebx, TYPE DWORD		;//increments array by one DWORD
	LOOP l1



	mov edx, OFFSET msg		;//output message
	call writestring
	mov eax, divisor
	call writeint
	endl
	mov ecx, count				;//setup for second loop
	mov ebx, 0
	jmp l2


l2:							;//output loop
	mov eax, myArray[ebx]	;//prints contents of array
	call writeint
	add ebx, TYPE DWORD
	endl
	LOOP L2


main ENDP
END main