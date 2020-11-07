INCLUDE asmlib.inc

.data

	prompt BYTE "What number are you looking for?",0
	msg BYTE "That number appears ",0
	msg1 BYTE " times.",0
	msg2 BYTE " Your number was: ",0

	table DWORD 10 DUP(10 DUP(?))
	TAB BYTE 9h
	num1 DWORD 0
	counter DWORD 0

.code

main PROC
	
	mov ebx, 0						;//ebx as index
	mov ecx, 10						
	call randSeed					

	ROW:
	push ecx						;//Pushes 10
	mov ecx, 10						;//Adds new 10 to ecx
									;//10x10=100

	COL:
	mov eax, 10						;//Random range up to 10
	call randRange					
	add eax, 1						
	mov table[ebx], eax				;//Indirect offloading of value to array
	add ebx, TYPE DWORD				;//increments by DWORD
	LOOP COL						
	pop ecx							
	LOOP ROW						

	mov ebx, 0						
	mov ecx, 10

		;//Primary counter loop 10x10
	ROWPRINT:
	push ecx						
	mov ecx, 10						

	COLPRINT:
	mov eax, table[ebx]
	call writeInt					;//prints array position
	mov al, tab						;//tab space for each column value of (09h)
	call writeChar
	add ebx, TYPE DWORD				;//increment by DWORD
	LOOP COLPRINT					
	pop ecx
	endl
	LOOP ROWPRINT					

	
	mov ebx, 0			;//resets array position
	mov edx, OFFSET prompt		;//prompts for number
	call writeline
	call readint
	mov num1, eax	
	mov ecx, 10					;//refill counter register

	;//Copy of previous loop, now counts instead of prints
	ROWc:
	push ecx						;//stores ecx
	mov ecx, 10						

	COLc:
	mov eax, table[ebx]
	.IF eax == num1					;//Conditional counter
		inc counter			
	.ENDIF
	add ebx, TYPE DWORD	
	LOOP COLc					
	pop ecx
	endl
	LOOP ROWc					
		
	;//Output strings and values
	mov edx, OFFSET msg
	call writestring
	mov eax, counter
	call writeint
	mov edx, OFFSET msg1
	call writestring
	mov edx, OFFSET msg2
	call writestring
	mov eax, num1
	call writeint


exit
main ENDP
END main