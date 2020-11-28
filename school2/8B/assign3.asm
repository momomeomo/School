INCLUDE asmlib.inc
;//data struct with uninitialized values
Employee STRUCT
	first DWORD ?
	last DWORD ?
	id DWORD ?
	wage DWORD ?
Employee ENDS

;//Tab macro
tabm MACRO
	mov al, 9h		;;//moves tab into 09h
	call writechar	;;//writes tab to screen
ENDM

;//macro for .00
cents MACRO
	mov al, "."		;;//moves period into al
	call writechar	;;//writes character in al
	mov eax, 0		;;//places one zero in eax
	call writeint	;;//write int twice for two zeros
	call writeint
ENDM

.data
	emp Employee <>	;//struct
	;//prompts used
	promptName BYTE "Input employee first name: ",0	;//prompt for first name
	promptLast BYTE "Input employee last name: ", 0	;//prompt for last name
	promptID BYTE "Input employee ID: ", 0 ;//prompt for ID
	promptWage BYTE "Input employee Wage: ", 0 	;//prompt for wage rate
	enterhours BYTE "Enter hours worked: ",0 	;//prompt for total hours
	hourly BYTE "Hourly wage is $",0		;//calculated hourly wage
	hourly2 BYTE "Total pay is $",0			;//calculated total pay

.code

main PROC

	call getEmployeeData	;//primary data collection function
	endl
	call calcEmpPay			;//employee pay function

exit
main ENDP

;//pay calculation
calcEmpPay PROC
	enter 0,0	;//priming stack entrance

	mov edx, offset enterhours	;//asks for hours worked
	call writestring
	call readint	;//hours worked input
	mul emp.wage	;//emp.wage * eax
	endl
	mov edx, offset hourly2	;//output
	call writestring
	call writeint	;//total pay value
	cents	;// .00 macro

	leave	;//stack exit
	ret
	exit	;// function exit
calcEmpPay ENDP	;//ends function

;//employee data
getEmployeeData PROC
	enter 0,0	;//priming stack entrance

	mov edx, OFFSET promptName	;//asks for name
	call writestring
	call readstring		;//stores input in edx
	mov emp.first, edx	;//adds name to struct
	

	mov edx, OFFSET promptLast	;//asks for last name
	call writestring
	call readstring		;//stores in edx
	mov emp.last, edx	;//moves edx into employee struct

	mov edx, OFFSET promptID	;//asks for ID number
	call writestring
	call readint		;//takes input into eax
	mov emp.id, eax		;//places eax into employee ID struct

	mov edx, OFFSET promptWage	;//asks for wage
	call writestring
	call readint		;//stores wage in eax
	mov emp.wage, eax	;//moves eax into employee wage value

	;//output section
	endl				;//seperates section with line break
	mov edx, emp.first	;//moves employee data into edx
	call writestring	;// writes first name to screen
	tabm				;//tab macro in between outputs
	mov edx, emp.last	;//employee last name moved into edx
	call writestring	;//writes last name to screen
	tabm				;//tab macro
	mov eax, emp.id		;//primes ID number for output
	call writeint		;//outputs ID number
	tabm				;//tab macro
	mov edx, offset hourly	;//hourly wages string
	call writestring		;//prints hourly wages screen
	mov eax, emp.wage		;//moves wage value into eax 
	call writeint			;//prints eax
	cents

	leave	;//stack exit
	ret		;// return

getEmployeeData ENDP					;//ends function

END main						;//end of program