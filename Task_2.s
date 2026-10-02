.section .bss
.globl ram
.lcomm ram, 256          # Reserve 256 bytes of RAM (uninitialized memory)

.section .text
.globl fill_ram           # Make function visible to C program

fill_ram:
    # Store FFh into RAM locations 50H - 58H using direct addressing

    lea ram+0x50, %eax
    movb $0xFF, ram+0x50

    lea ram+0x51, %eax
    movb $0xFF, ram+0x51

    lea ram+0x52, %eax
    movb $0xFF, ram+0x52

    lea ram+0x53, %eax
    movb $0xFF, ram+0x53

    lea ram+0x54, %eax
    movb $0xFF, ram+0x54

    lea ram+0x55, %eax
    movb $0xFF, ram+0x55

    lea ram+0x56, %eax
    movb $0xFF, ram+0x56

    lea ram+0x57, %eax
    movb $0xFF, ram+0x57

    lea ram+0x58, %eax
    movb $0xFF, ram+0x58

    ret                    # Return control back to C program

.section .note.GNU-stack,"",@progbits
