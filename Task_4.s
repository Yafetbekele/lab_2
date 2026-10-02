.section .bss
.globl ram
.lcomm ram, 256          # Reserve 256 bytes of RAM (uninitialized memory)

.section .text
.globl fill_ram           # Make function visible to C program






fill_ram:
    
    movb $1, %al
    movb $0, %bl
    # Store FFh into RAM locations 50H - 58H using direct addressin
    loop_label:
        addb %al, %bl
        incb %al

        cmpb $11 , %al
        jne loop_label
        movb %bl,ram+0x50
    ret                    # Return control back to C program

.section .note.GNU-stack,"",@progbits
