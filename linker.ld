ENTRY(_start)

SECTIONS {
    . = 0x100000;  // Kernel entry point address, might need to be adjusted

    .text ALIGN(4096) : {
        *(.text)
    }

    .bss : {
        *(.bss)
    }
}