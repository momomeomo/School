INCLUDE asmlib.inc

.data

	msg byte "How many numbers do you want to add",0
	prompt byte "Enter a number ",0
	oddmsg byte "The sum of your odd numbers is ",0
	evenmsg byte "The sum of your even numbers is ",0

	oddsum DWORD 0
	evensum DWORD 0

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

		mov edx, offset msg
		call writeline
		call readint
		mov ecx, eax
		mov edx, offset prompt

l1:						;//Counter loop
	call writeline
	call readint
	dec ecx				;//Decrement counter by 1
	test eax, 1			;//Tests first digit for 0 or 1
	jnz odd1			;//Jumps if first digit is 0
	jz even1			;//Jumps if first digit is 1


odd1:					;//Conducts addition on odd numbers
	add oddsum, eax
	cmp ecx, 0
	je exitout
	jmp l1				;//Return to counter loop

even1:					;// Conductions addition on even numbers
	add evensum, eax
	cmp ecx, 0
	je exitout
	jmp l1


exitout:				;//Finalizing loop
	mov edx, offset oddmsg
	call writestring
	mov eax, oddsum
	call writeint
	endl
	mov edx, offset evenmsg
	call writestring
	mov eax, evensum
	call writeint
	endl
	exit
		

main ENDP
END main
