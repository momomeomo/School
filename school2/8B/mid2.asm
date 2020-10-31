;This is the template file for creating
; new projects

INCLUDE asmlib.inc

.data

	msg BYTE "Hello World", 0	

.code

main PROC
	mov edx, OFFSET  msg
	call writeLine
	exit

main ENDP
END main