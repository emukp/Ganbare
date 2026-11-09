; === GS_EndingDemo (0x6292) ===
GS_EndingDemo:
        DJNZ    b1_l62cah                           ;6292
        DI                                          ;6294
        LD      a,0xc                               ;6295
        LD      (0xa000),a                          ;6297
        LD      (BanksInA0),a                       ;629a
        EI                                          ;629d
        LD      a,(TickCounter)                     ;629e
        AND     0x3                                 ;62a1
        CALL    z,0x42f1                            ;62a3
        CALL    SetBanks1_2_3                       ;62a6
        LD      a,(BSndAuxFlag)                     ;62a9
        AND     a                                   ;62ac
        RET     nz                                  ;62ad
        CALL    DisableScreen                       ;62ae
        CALL    ClearScreen                         ;62b1
        CALL    0x4cd4                              ;62b4
        CALL    0x65a2                              ;62b7
        CALL    UploadSpriteShadow                  ;62ba
        CALL    EnableScreen                        ;62bd
        LD      a,0x8f                              ;62c0
        CALL    ProcessSoundCommand                 ;62c2
        LD      a,0x3c                              ;62c5
        JP      NextSubstatusT                      ;62c7
b1_l62cah:
        DJNZ    b1_l62e5h                           ;62ca
        LD      a,(BSndAuxFlag)                     ;62cc
        AND     a                                   ;62cf
        RET     nz                                  ;62d0
        LD      hl,WaitCounter                      ;62d1
        DEC     (hl)                                ;62d4
        RET     nz                                  ;62d5
        CALL    ClearScreen                         ;62d6
        LD      hl,ControlConfig                    ;62d9
        RES     6,(hl)                              ;62dc
        LD      hl,0x0                              ;62de
        LD      (GameStatus),hl                     ;62e1
        RET                                         ;62e4
b1_l62e5h:
        CALL    b1_sub_653ch                        ;62e5
        CALL    ClearScreen                         ;62e8
        LD      de,0x2010                           ;62eb
        LD      hl,0xd800                           ;62ee
        CALL    0x42e1                              ;62f1
        LD      a,0x8d                              ;62f4
        CALL    ProcessSoundCommand                 ;62f6
        LD      a,0xf0                              ;62f9
        JP      NextSubstatusT                      ;62fb
