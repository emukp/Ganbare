; Ganbare Goemon (1987) (Konami) (J) - bank 0x1
; disassembled with z80dasm 1.2.0 (linear sweep), origin 0x6000 (0x6000-0x7FFF)
; uppercase mnemonics, 0x hex format, BIOS/system-variable/Ghidra symbol substitution
; symbols: constants/bios.asm, SystemVariables.asm, Variables.asm; labels prefixed b1_
; per-line comments: address / raw bytes / ASCII (z80dasm -a -t)
; z80dasm 1.2.0
; command line: /usr/local/bin/z80dasm -a -t -l -g 0x6000 -o work/banks/bank1.asm work/banks/bank1.bin
        RLA                                         ;6000
        JR      nc,b1_l6006h                        ;6001
        LD      hl,0xc25a                           ;6003
b1_l6006h:
        XOR     a                                   ;6006
        LD      (hl),a                              ;6007
        INC     l                                   ;6008
        LD      (hl),a                              ;6009
        INC     l                                   ;600a
        LD      (hl),a                              ;600b
        LD      (0xc486),a                          ;600c
        LD      (0xc281),a                          ;600f
        LD      (PlayerScore),a                     ;6012
        LD      (0xc266),a                          ;6015
        LD      (0xc268),a                          ;6018
        LD      hl,0xc270                           ;601b
        LD      b,0xb                               ;601e
b1_l6020h:
        LD      (hl),a                              ;6020
        INC     l                                   ;6021
        DJNZ    b1_l6020h                           ;6022
        INC     l                                   ;6024
        LD      (hl),a                              ;6025
        CALL    0x8f7b                              ;6026
        LD      a,0x10                              ;6029
        LD      (FrameDivider),a                    ;602b
        LD      (0xc481),a                          ;602e
        JP      0x5f60                              ;6031
