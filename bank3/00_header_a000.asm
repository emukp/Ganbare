; Ganbare Goemon (1987) (Konami) (J) - bank 0x3
; disassembled with z80dasm 1.2.0 (linear sweep), origin 0xA000 (0xA000-0xBFFF)
; uppercase mnemonics, 0x hex format, BIOS/system-variable/Ghidra symbol substitution
; symbols: constants/bios.asm, SystemVariables.asm, Variables.asm; labels prefixed b3_
; per-line comments: address / raw bytes / ASCII (z80dasm -a -t)
; z80dasm 1.2.0
; command line: /usr/local/bin/z80dasm -a -t -l -g 0xA000 -o work/banks/bank3.asm work/banks/bank3.bin
        CALL    b3_sub_a080h                        ;a000
        XOR     a                                   ;a003
        LD      (ix+0x1d),a                         ;a004
        RET                                         ;a007
b3_la008h: equ     #a008
