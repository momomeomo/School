INCLUDE asmlib.inc

.data

    prompt1 BYTE "Enter a numbers", 0
    prompt2 BYTE "swapping values", 0
    prompt3 BYTE "subtracting values", 0
    val1 DWORD ?
    val2 DWORD ?

.code

main PROC
    cls
    endl

    mov edx, OFFSET prompt1
    call writeline
    call readint
    mov val1, eax
    call writeline
    call readint
    mov val2, eax
    
    mov edx, OFFSET prompt2
    call writeline
    mov ecx, val1
    mov edx, val2
    mov val2, ecx
    mov val1, edx

    mov edx, OFFSET prompt3
    mov eax, val1
    sub eax, val2
    call writeint


main ENDP
END main
