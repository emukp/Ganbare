; === FindSlotPattern (0x7ef9) ===
FindSlotPattern:
        PUSH    bc                                  ;7ef9
        PUSH    de                                  ;7efa
        LD      a,c                                 ;7efb
        CALL    RDSLT                               ;7efc
        POP     de                                  ;7eff
        POP     bc                                  ;7f00
        EX      de,hl                               ;7f01
        CP      (hl)                                ;7f02
        EX      de,hl                               ;7f03
        JR      nz,FindSlotPattern2                 ;7f04
        INC     hl                                  ;7f06
        INC     de                                  ;7f07
        DJNZ    FindSlotPattern                     ;7f08
        SCF                                         ;7f0a
        RET                                         ;7f0b
FindSlotPattern2:
        AND     a                                   ;7f0c
        RET                                         ;7f0d
AbGmSigPage1Tail: equ     #7f0e
        DEFB    0x00,0x30,0x31,0x13,0x35,0xaa,0xba,0xb2  ;7f0e ; data:data
        DEFB    0x86,0x07,0x46,0xaa                 ;7f16
AbGmSigPage2Tail: equ     #7f14
b1_sub_7f1ah:
        CALL    b1_sub_7f28h                        ;7f1a
        LD      c,0xe                               ;7f1d
        CALL    DrawRect                            ;7f1f
        LD      hl,b1_l7f41h                        ;7f22
        JP      PrintTextXY                         ;7f25
b1_sub_7f28h:
        LD      hl,0x2090                           ;7f28
        LD      bc,0xc038                           ;7f2b
b1_sub_7f2eh:
        XOR     a                                   ;7f2e
        LD      d,0x0                               ;7f2f
        PUSH    bc                                  ;7f31
        PUSH    hl                                  ;7f32
        CALL    FillRect                            ;7f33
        POP     hl                                  ;7f36
        POP     de                                  ;7f37
        RET                                         ;7f38
