INCLUDE asmlib.inc

.data
movieTitleA BYTE "Star Wars: Episode IV", 0
movieYearA BYTE "Year: 1977 ", 0
movieDirectorA BYTE "George Lucas", 0

movieTitleB BYTE "Shrek", 0
movieYearB BYTE "Year: 2001 ", 0
movieDirectorB BYTE "Andrew Adamson", 0

movieTitleC BYTE "Monsters, Inc.", 0
movieYearC BYTE "Year: 2001 ", 0
movieDirectorC BYTE "Pete Docter", 0

.code

main PROC

cls; Clear the screen

; output Movie A information
mov edx, OFFSET movieTitleA
call writeLine
mov edx, OFFSET movieYearA
call writeLine
mov edx, OFFSET movieDirectorA
call writeLine
endl; place a new line

mov edx, OFFSET movieTitleB
call writeLine
mov edx, OFFSET movieYearB
call writeLine
mov edx, OFFSET movieDirectorB
call writeLine
endl; place a new line

mov edx, OFFSET movieTitleC
call writeLine
mov edx, OFFSET movieYearC
call writeLine
mov edx, OFFSET movieDirectorC
call writeLine
endl; place a new line

exit

main ENDP
END main
