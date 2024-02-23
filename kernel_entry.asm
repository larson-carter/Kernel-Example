section .text
global _start

_start:
    ; Set up the stack pointer
    mov esp, stack_space
    
    ; Call the main function in C
    call kernel_main
    
    ; Halt the system after kernel_main returns
    hlt

section .bss
    stack_space resb 8192 ; 8 KB stack space, Might need to be bigger
