INCLUDE asmlib.inc

.data

	greeting BYTE "Welcome to the dice guess game. It costs $1.00 to play. ", 0ah, 0dh, 0
	cont BYTE "Would you like to contiune? (y/n) ", 0ah, 0dh, 0
	guess BYTE "Please enter your guess for the next roll. It costs $1.00. ", 0ah, 0dh, 0
	guess2 byte "If you are correct I will pay you $10.00: ", 0ah, 0dh, 0
	correct byte "Winner!", 0ah, 0dh, 0
	correct2 byte "Your bank is now $", 0
	wrong byte "Sorry you lose. The dice rolled ", 0

	answr DWORD 0
	rrange DWORD 0
	money DWORD 10


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

	mov edx, OFFSET greeting	;//Introduction
	call writeline

L1:
	mov eax, 7					;//sets random number range
	call randRange
	mov rrange, eax

	mov edx, OFFSET cont
	call writeline
	call readchar
	cmp al, 'y'					;//Checks for 'y' answer
	jne EXITL					;//Jumps if al does not contain 'y'

	;//Informs about guess
	mov edx, OFFSET guess
	call writeline
	mov edx, OFFSET guess2
	call writeline
	call readint

	.IF eax == rrange			;//Conditional gateway
		mov edx, OFFSET correct
		call writestring
		mov edx, OFFSET correct2
		call writestring
		add money, 10
		mov eax, money
		call writeint
		endl
	.ELSE                       ;//Else if answer is wrong
		mov edx, offset wrong
		call writestring
		mov eax, rrange
		call writeint
		endl
		mov edx, offset correct2
		call writestring
		sub money, 1
		mov eax, money
		call writeint
		endl
	.ENDIF


	jmp L1					;//Restarts loop


EXITL:
	exit					;//Label if 'y' is not written

main ENDP
END main
