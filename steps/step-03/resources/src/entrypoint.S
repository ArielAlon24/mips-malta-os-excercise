.section .text.boot

.global _start

.extern run
.extern stack_head

_start:
    la $sp, stack_head
    jal run
    nop
