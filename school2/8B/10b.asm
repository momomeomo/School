INCLUDE asmlib.inc

.data

	msg BYTE "The smallest number is: ",0

	myArray DWORD 25 DUP(0)	;//25 DWORD array initialized with zero
	count DWORD 25			;//25 DWORD array counter
	lesser DWORD 100		;//initialized smallest number counter with largest number possible
	num100 DWORD 100		;//randRange variable

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
	mov eax, 0

l1:							;//arithmetic loop
	dec ecx					;//decrements ecx incase JG conditional is hit instead of loop conditional
	mov eax, num100
	call randRange
	inc eax
	mov myArray[ebx], eax
	add ebx, TYPE DWORD
	cmp lesser, eax			;//compares current number in eax with lesser variable
	JG l3					;//jumps to third loop if variable is smaller than eax
	inc ecx					;//increments ecx to maintain correct counter
	LOOP l1


	mov edx, 0
	mov edx, OFFSET msg		;//output message
	call writestring
	mov eax, 0
	mov eax, lesser
	call writeint
	endl
	mov ecx, count			;//setup for second loop
	mov ebx, 0
	jmp l2					;//starts label2


l2:							;//output loop
	mov eax, myArray[ebx]	;//prints contents of array
	call writeint
	add ebx, TYPE DWORD
	endl
	LOOP L2


l3:							;//secondary loop to move lowest number into variable
	mov lesser, eax
	jmp l1

main ENDP
END main