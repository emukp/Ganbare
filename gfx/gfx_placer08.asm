; Ganbare Goemon (1987) (Konami) (J) - bank 0x8
; disassembled with z80dasm 1.2.0 (linear sweep), origin 0x8000 (0x8000-0x9FFF)
; uppercase mnemonics, 0x hex format, BIOS/system-variable/Ghidra symbol substitution
; symbols: constants/bios.asm, SystemVariables.asm, Variables.asm; labels prefixed b8_
; per-line comments: address / raw bytes / ASCII (z80dasm -a -t)
; z80dasm 1.2.0
; command line: /usr/local/bin/z80dasm -a -t -l -g 0x8000 -o work/banks/bank8.asm work/banks/bank8.bin
        AND     b                                   ;8000
        CP      d                                   ;8001
        XOR     d                                   ;8002
        AND     b                                   ;8003
        CP      d                                   ;8004
        XOR     d                                   ;8005
        AND     b                                   ;8006
        CP      d                                   ;8007
        XOR     d                                   ;8008
        AND     b                                   ;8009
gfxPlacer08: equ     #800a
