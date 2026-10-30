; === InitHardware (0x498e) ===
InitHardware:
        CALL    ResetSound                          ;498e
        CALL    DisableSprites                      ;4991
        LD      a,0x5                               ;4994
        CALL    CHGMOD                              ;4996
        CALL    DisableScreen                       ;4999
        XOR     a                                   ;499c
        LD      h,a                                 ;499d
        LD      l,a                                 ;499e
        LD      b,a                                 ;499f
        LD      c,a                                 ;49a0
        LD      d,a                                 ;49a1
        CALL    FillRect                            ;49a2
        XOR     a                                   ;49a5
        LD      h,a                                 ;49a6
        LD      l,a                                 ;49a7
        LD      b,a                                 ;49a8
        LD      c,a                                 ;49a9
        LD      d,0x1                               ;49aa
        CALL    FillRect                            ;49ac
        CALL    WaitVdpCmd                          ;49af
        LD      b,0x4                               ;49b2
        LD      hl,InitVdpDat                       ;49b4
InitHardware2:
        PUSH    bc                                  ;49b7
        LD      c,(hl)                              ;49b8
        INC     hl                                  ;49b9
        LD      b,(hl)                              ;49ba
        INC     hl                                  ;49bb
        PUSH    hl                                  ;49bc
        CALL    WRTVDP                              ;49bd
        POP     hl                                  ;49c0
        POP     bc                                  ;49c1
        DJNZ    InitHardware2                       ;49c2
        CALL    ClearSprAttr                        ;49c4
        JP      EnableScreen                        ;49c7
InitVdpDat: equ     #49ca
        DEFB    0x01                                ;49ca ; data:data
        DEFB    0x62,0x05,0xef,0x06,0x1f,0x0b,0x01  ;49cb ; data:code-gap

