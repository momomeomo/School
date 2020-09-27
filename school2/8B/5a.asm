INCLUDE asmlib.inc

.data

	prompt1 BYTE "Input number: ", 0ah, 0dh, 0
	prompt2 BYTE "First number is larger", 0ah, 0dh, 0
	prompt3 BYTE "Numbers are equal", 0ah, 0dh, 0
	prompt4 BYTE "Second number is larger", 0ah, 0dh, 0

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
	mov edx, OFFSET prompt1
	call writestring
	call readint
	mov num2, eax

	mov eax, num1

	cmp eax, num2
	jg FIRSTLARGER	
	cmp eax, num2
	jl SECONDLARGER
	cmp eax, num2
	je EVENLABEL
FIRSTLARGER:	;//case for first larger
	endl
	mov edx, OFFSET prompt2
	call writestring
		exit

SECONDLARGER:	;//case for second larger
	endl
	mov edx, OFFSET prompt4
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
