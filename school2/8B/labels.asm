INCLUDE asmlib.inc

.data

	prompt1 BYTE "Input number: ", 0ah, 0dh, 0
	prompt2 BYTE " First is larger", 0ah, 0dh, 0
	prompt3 BYTE "Numbers are equal", 0ah, 0dh, 0
	prompt4 BYTE " Second is larger", 0ah, 0dh, 0

	num1 DWORD ?
	num2 DWORD ?

.code

main PROC
	
	mov eax, 0
	mov edx, OFFSET prompt1
	call writestring
	call readint
	mov num1, eax
	endl
	mov eax, 0
	mov edx, OFFSET prompt1
	call writestring
	call readint
	mov num2, eax


	.IF eax < num1
		jmp FIRSTLARGER
	.ENDIF
	
	.IF eax > num1
		jmp SECONDLARGER
	.ENDIF

	.IF eax == num1
		jmp EVENLABEL
	.ENDIF

FIRSTLARGER:	;//case for first larger
	endl
	mov eax, 0
	mov edx, OFFSET prompt2
	mov eax, num1
	call writeint
	call writestring
		exit

SECONDLARGER:	;//case for second larger
	endl
	mov eax, 0
	mov edx, OFFSET prompt4
	mov eax, num2
	call writeint
	call writestring
		exit

EVENLABEL:		;//case for equal
	endl
	mov edx, OFFSET prompt3
	call writestring
		exit

EXITOUT:
	exit

main ENDP
END main
