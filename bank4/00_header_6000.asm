; Ganbare Goemon (1987) (Konami) (J) - bank 0x4
; disassembled with z80dasm 1.2.0 (linear sweep), origin 0x6000 (0x6000-0x7FFF)
; uppercase mnemonics, 0x hex format, BIOS/system-variable/Ghidra symbol substitution
; symbols: constants/bios.asm, SystemVariables.asm, Variables.asm; labels prefixed b4_
; per-line comments: address / raw bytes / ASCII (z80dasm -a -t)
; z80dasm 1.2.0
; command line: /usr/local/bin/z80dasm -a -t -l -g 0x6000 -o work/banks/bank4.asm work/banks/bank4.bin
        INC     l                                   ;6000
        SBC     a,c                                 ;6001
        INC     b                                   ;6002
        NOP                                         ;6003
        INC     b                                   ;6004
        INC     sp                                  ;6005
        INC     b                                   ;6006
        NOP                                         ;6007
        INC     b                                   ;6008
        INC     sp                                  ;6009
        INC     b                                   ;600a
        LD      (hl),a                              ;600b
        INC     b                                   ;600c
        NOP                                         ;600d
        EX      af,af'                              ;600e
        INC     sp                                  ;600f
        INC     b                                   ;6010
        LD      (hl),a                              ;6011
        INC     b                                   ;6012
        NOP                                         ;6013
        INC     c                                   ;6014
        INC     sp                                  ;6015
        INC     b                                   ;6016
        LD      (hl),a                              ;6017
        INC     b                                   ;6018
        NOP                                         ;6019
        DJNZ    $+53                                ;601a
        INC     b                                   ;601c
        LD      (hl),a                              ;601d
        INC     b                                   ;601e
        NOP                                         ;601f
        DJNZ    b4_l6055h                           ;6020
        INC     c                                   ;6022
        LD      (hl),a                              ;6023
        SBC     a,c                                 ;6024
        RST     KEYINT                              ;6025
        LD      sp,hl                               ;6026
        SBC     a,a                                 ;6027
        LD      sp,hl                               ;6028
        CP      e                                   ;6029
        NOP                                         ;602a
        LD      sp,hl                               ;602b
        SBC     a,c                                 ;602c
        OR      b                                   ;602d
        RST     OUTDO                               ;602e
        SBC     a,c                                 ;602f
        SBC     a,c                                 ;6030
        OR      b                                   ;6031
        RST     OUTDO                               ;6032
        SBC     a,c                                 ;6033
        SBC     a,c                                 ;6034
        DEC     c                                   ;6035
        LD      sp,hl                               ;6036
        SBC     a,c                                 ;6037
        SBC     a,c                                 ;6038
        DEC     c                                   ;6039
        LD      sp,hl                               ;603a
        SBC     a,c                                 ;603b
        SBC     a,c                                 ;603c
        RST     OUTDO                               ;603d
        INC     bc                                  ;603e
        SBC     a,c                                 ;603f
        ADD     a,c                                 ;6040
        RST     KEYINT                              ;6041
        INC     bc                                  ;6042
        SBC     a,c                                 ;6043
        ADD     a,c                                 ;6044
        LD      sp,hl                               ;6045
        INC     b                                   ;6046
        SBC     a,c                                 ;6047
        SUB     e                                   ;6048
        SBC     a,a                                 ;6049
        NOP                                         ;604a
        CP      e                                   ;604b
        SBC     a,c                                 ;604c
        SBC     a,c                                 ;604d
        DEFB    0xfd,0xb,0x99                       ;604e
        SBC     a,c                                 ;6051
        DEFB    0xfd,0xb,0x99                       ;6052
b4_l6055h:
        SBC     a,c                                 ;6055
        SBC     a,a                                 ;6056
        RET     nc                                  ;6057
        SBC     a,c                                 ;6058
        SBC     a,c                                 ;6059
        SBC     a,a                                 ;605a
        RET     nc                                  ;605b
        INC     bc                                  ;605c
        SBC     a,c                                 ;605d
        ADD     a,c                                 ;605e
