ENTRY(_start)

PHDRS
{
    text PT_LOAD FLAGS(5); /* RX */
    data PT_LOAD FLAGS(6); /* RW */
}

SECTIONS
{
    . = 0x80010000;

    .text : {
        *(.text.boot)
        *(.text*)
    } :text

    .rodata : {
        *(.rodata*)
    } :text

    .data : {
        *(.data*)
    } :data

    .bss : {
        *(COMMON)
        *(.bss*)
    } :data

    . = ALIGN(16);
    stack_tail = .;
    . += 0x4000;
    stack_head = .;
}
