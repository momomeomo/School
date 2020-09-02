INCLUDE asmlib.inc

.data

.code

main PROC
    cls
    endl

    mov eax, 171
    call writeint
    endl
    mov eax, 32
    call writehex
    endl
    mov eax, 20o
    call writeint
    endl

main ENDP
END main
