INCLUDE asmlib.inc

.data

	val1 WORD ?
	val2 WORD ?
	prompt1 BYTE "Enter a number", 0
	xsum BYTE "SUM: ", 0
	xdiff BYTE "DIFF: ", 0
	xprod BYTE "Prod: ", 0
	xquot BYTE "Quot: ", 0
	xrem BYTE "Rem: ", 0

.code

main PROC

	mov edx, OFFSET prompt1     ;//Ask for first number
	call writeline
	call readint
	mov val1, ax

	mov edx, OFFSET prompt1     ;//Ask for second number
	call writeline
	call readint
	mov val2, ax  
	endl

	;//Add
	add ax, val1
	mov edx, OFFSET xsum
	call writeline
	call writeint
	endl

	;//Sub
	mov ax, val2
	sub ax, val1
	mov edx, OFFSET xdiff
	call writeline
	call writeint
	endl

	;//Mul
	mov ax, val2
	mul val1
	mov edx, OFFSET xprod
	call writeline
	call writeint
	endl

	;//Quot
	mov dx, 0
	mov ax, val2
	div val1
	mov edx, OFFSET xquot
	call writeline
	call writeint
	endl

	;//Rem
	mov edx, OFFSET xrem
	call writeline
	mov ax, dx
	call writeint
	endl

	exit

main ENDP
END main
