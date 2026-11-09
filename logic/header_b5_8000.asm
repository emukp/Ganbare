; Ganbare Goemon (1987) (Konami) (J) - bank 0x5
; disassembled with z80dasm 1.2.0 (linear sweep), origin 0x8000 (0x8000-0x9FFF)
; uppercase mnemonics, 0x hex format, BIOS/system-variable/Ghidra symbol substitution
; symbols: constants/bios.asm, SystemVariables.asm, Variables.asm; labels prefixed b5_
; per-line comments: address / raw bytes / ASCII (z80dasm -a -t)
; z80dasm 1.2.0
; command line: /usr/local/bin/z80dasm -a -t -l -g 0x8000 -o work/banks/bank5.asm work/banks/bank5.bin
        CP      e                                   ;8000
        CP      d                                   ;8001
        ADD     a,d                                 ;8002
        CP      d                                   ;8003
        LD      (hl),b                              ;8004
        INC     bc                                  ;8005
        RST     OUTDO                               ;8006
        JP      c,0xfd0f                            ;8007
        DEFB    0xdd,0x0,0xf                        ;800a
        DEFB    0xdd,0xd0,0xdd                      ;800d
        NOP                                         ;8010
        DEFB    0xdd,0xdf,0xd0                      ;8011
        RRCA                                        ;8014
        DEFB    0xfd,0xfd,0xff                      ;8015
        NOP                                         ;8018
