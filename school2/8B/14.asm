INCLUDE asmlib.inc

;//Tab macro
tabm MACRO
    mov al, 9h      ;;//moves tab into 09h
    call writechar  ;;//writes tab to screen
ENDM

.data
    ;//strings to be tab delimited
    prompt1 BYTE "test 1",0
    prompt2 BYTE "test 2",0
    prompt3 BYTE "test 3",0

.code

main PROC
    tabm    ;//inserts tab before any strings
    mov edx, offset prompt1
    call writestring    ;//writes string to screen
    tabm    ;//inserts two tabs after first string to keep uniform size
    tabm
    mov edx, offset prompt2
    call writestring
    tabm    ;//two tabs after second string to keep uniform size
    tabm
    mov edx, offset prompt3 ;//final string
    call writestring
    exit    ;//exits
main ENDP   ;//ends main function

END main						;//ends program