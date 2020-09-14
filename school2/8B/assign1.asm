INCLUDE asmlib.inc

.data

	prompt1 BYTE "Enter a number: ", 0
	prompt2 BYTE "Numbers in reverse order are: ", 0
	xsum BYTE "Sum: ", 0

	num1 WORD ?
	num2 WORD ?
	num3 DWORD ?
	num4 DWORD ?

.code

main PROC

	mov edx, OFFSET prompt1     ;//Ask for first number
	call writeline
	call readint
	mov num1, ax

	mov edx, OFFSET prompt1     ;//Ask for second number
	call writeline
	call readint
	mov num2, ax  
	endl

	mov edx, OFFSET prompt1     ;//Ask for third number
	call writeline
	call readint
	mov num3, eax

	mov edx, OFFSET prompt1     ;//Ask for fourth number
	call writeline
	call readint
	mov num4, eax  
	endl

	;//Add
	mov eax, 0
	mov ax, 0

	mov ax, num1
	add ax, num2
	mov eax, num3
	add eax, num4
	movzx ecx, ax
	add eax, ecx
	mov edx, OFFSET xsum
	call writeline
	call writeint
	endl

	
	;// output in reverse order
	mov edx, OFFSET prompt2
	call writeline
	mov eax, num4
	call writeint
	endl
	mov eax, num3
	call writeint
	endl
	mov ax, num2
	call writeint
	endl
	mov ax, num1
	call writeint
	endl


	exit

main ENDP
END main
