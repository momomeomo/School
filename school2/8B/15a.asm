INCLUDE asmlib.inc

;//prototypes
CreateFileA PROTO,
	fileName: PTR BYTE,
	accessMode: DWORD,
	shareMode : DWORD,
	securityAttrib : DWORD,
	creationDispo : DWORD,
	flagsAndAttrib : DWORD,
	hTemplateFile : DWORD


CloseHandle PROTO, hObject : DWORD
	
WriteFile PROTO,
  hHandle : DWORD,
  lpBuffer : PTR DWORD,
  nNumberOfBytesToWrite : DWORD,
  pNumberOfBytesWritten : PTR DWORD,
  lpOverlapped : PTR DWORD

   
;//constants
GENERIC_READ     = 80000000h
GENERIC_WRITE    = 40000000h
GENERIC_EXECUTE  = 20000000h
GENERIC_ALL      = 10000000h

CREATE_NEW         = 1
CREATE_ALWAYS      = 2
OPEN_EXISTING      = 3
OPEN_ALWAYS        = 4
TRUNCATE_EXISTING  = 5

FILE_ATTRIBUTE_NORMAL           = 80h

NULL = 0

.data	

	fname BYTE "test.txt",0	;//file name
	fOut DWORD ?			;//file output
	prompt BYTE "Enter a character", 0ah, 0dh, 0	;//char prompt
	fHandle DWORD ?			;//file handle
	bytesWritten DWORD 0	;//bytes written variable
	bytesNum BYTE "Number of bytes written: ",0		;//number of bytes written
				
.code

main PROC

	call fReadChar	;//read char function
	call fWriteChar	;//write char function

 
exit   
main ENDP 

fReadChar PROC
enter 0,0					;//saves stack
	mov edx, OFFSET prompt	;//prompts for char
	call writeline			;//writes prompt
	call readchar			;//saves char to al
	movzx edx, al			;//move zero extend char to edx
	mov fOut, edx			;//move edx to DWORD variable
leave						;//returns
fReadChar ENDP


fWriteChar PROC
enter 0,0									;//saves stack
	mov eax, 0								;//Clear eax
	mov edx, OFFSET fname					;//puts file name in edx
	INVOKE  CreateFileA, edx, GENERIC_WRITE, NULL, NULL, OPEN_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL	;//creates file
	mov fHandle, eax															;//File handle returned in eax
	INVOKE WriteFile, fHandle, ADDR fOut, SIZEOF fOut, ADDR bytesWritten, NULL	;//write text to file
	call writeint							;//writes out 0 if error, 1 if worked
	endl									;//tab macro
	mov edx, offset bytesNum				;//information about bytes written
	call writestring						;//writes to screen
	mov eax, bytesWritten					;//number of bytes written printed
	call writeint							;//writes amount of bytes written
	INVOKE closeHandle, fHandle				;//Close file
leave	;//returns
fWriteChar ENDP


END main