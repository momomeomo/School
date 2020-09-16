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

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;//correct version

INCLUDE asmlib.inc
.data
msg  BYTE "Your Numbers in reverse order are: ", 0dh, 0ah, 0
prompt BYTE   "Please enter a number.", 0dh, 0ah, 0
output BYTE "The sum of your numbers is ", 0dh, 0ah, 0
sum DWORD 0

num1 WORD 0
num2 WORD 0
num3 DWORD 0
num4 DWORD 0


.code
main PROC
	mov	 edx, OFFSET prompt		; prompt for first number
	call WriteString
	call ReadInt				; get first number
	mov num1, ax

	call WriteString			; prompt for second number
	mov eax, 0
	call ReadInt
	mov num2, ax				; get number

	call WriteString			; prompt for third number
	mov eax, 0
	call ReadInt
	mov num3, eax				; get number

	call WriteString			; prompt for fourth number
	mov eax, 0
	call ReadInt
	mov num4, eax				; get number

	add eax, num3				; add num4 to num3
	add ax, num2				; sum of num4, num3 added to num1
	add ax, num1				; sum of all four numbers

	mov edx, OFFSET output		; output message
	call writeLine
	call writeInt				; write the sum
	endl
	endl

	mov edx, OFFSET msg			; output the numbers in reverse
	call writeLine

	mov eax, num4
	call writeInt
	endl

	mov eax, num3
	call writeInt
	endl


	mov ax, num2
	call writeInt
	endl

	mov ax, num1
	call writeInt
	endl


	exit
main ENDP

END main
