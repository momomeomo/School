INCLUDE asmlib.inc

.data
	;//string arrays
	upper BYTE "Upper case",0ah,0dh,0
	lower BYTE "Lower case",0ah,0dh,0
	prompt BYTE "Enter a character",0ah,0dh,0
	digit BYTE "Input is a digit",0ah,0dh,0
	punc BYTE "Punctuation character", 0ah, 0dh, 0

.code

main PROC
	;//Character case checker
	mov edx, OFFSET prompt		;//ask to enter a character
	mov eax, 0					;//clear eax
	call writestring			;//prints question
	call readchar				;//waits for character
	call isUPPER				;//calls function
	cmp eax, 2					;//checks returned value for 2
	jz ISDIGIT					;//conditional jump if character is a digit
	cmp eax, 0					;//checks returned value for 0
	jz ISLOW					;//jumps if returned value is for lower
	cmp eax, 3					;//checks returned value for 3
	jz ISPUNC					;//jumps if returned value is for punctuation
	mov edx, OFFSET upper		;//loads string array into edx
	call writestring			;//write string function
	jmp EXITOUT					;//jumps to exit function

;//label for lower case
ISLOW:
	mov edx, OFFSET lower		;//loads string for lower character output
	call writestring			;//writes string loaded in edx
	jmp EXITOUT					;//exits out

;//label for digit character
ISDIGIT:
	mov edx, OFFSET digit		;//reponce for digit characters
	call writestring			;//prints responce
	jmp EXITOUT					;//exits out

;//label for punctuation
ISPUNC:
	mov edx, OFFSET punc		;//loads output statement
	call writestring			;//writes output statement
	jmp EXITOUT					;//exits

;//exit label
EXITOUT:
	exit						;//exits out

exit
main ENDP
;//Primary function
isUpper PROC

cmp al,'!'						;//checks for '!'
je truePunc						;//jumps if equal
cmp al, '?'						;//checks for '?'
je truePunc						;//jumps if true
cmp al, '.'						;//checks for '.'
je truePunc						;//jumps if true

mov ecx, 10						;//loads 10 as loop counter
mov bl, '0'						;//primes loop

;//digit comparison label
l1:
	cmp al,bl					;//compares digit 
	jz trueDIGIT				;//jumps if al contains a digit
	inc bl						;//increments bl register
	loop l1						;//loops 10 times 0-9


	cmp al, 'A'					;//checks al for 'A'
	jz UTrue					;//jumps if zero flag is set
	jc UFalse					;//jumps if carry flag is set

	cmp al, 'Z'					;//checks al for 'Z'
	jz UTrue					;//jumps if zero flag is set
	jnc UFalse					;//jumps if carry flag is not set

;//label for upper true
UTrue:
	mov eax, 1					;//moves 1 into eax if character is upper
	ret							;//returns

;//label for upper false
UFalse:
	mov eax, 0					;//moves 0 into eax if character is lower
	ret							;//returns

;//label for digit character
trueDIGIT:
	mov eax, 2					;//moves 2 into eax if character is digit
	ret							;//returns

;//label for punc character
truePunc:
	mov eax, 3					;//moves 3 into eax if character is punc
	ret							;//returns


isUpper ENDP					;//ends function
END main						;//ends program