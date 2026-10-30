GS_LandSelect:
        DJNZ    b1_l6276h                           ;6256
        CALL    b1_sub_6c03h                        ;6258
        RET     nc                                  ;625b
        LD      a,(0xeb82)                          ;625c
        AND     a                                   ;625f
        JP      z,0xbe4e                            ;6260
        LD      a,0x40                              ;6263
        LD      (ControlConfig),a                   ;6265
        CALL    InitPlayerStatus                    ;6268
        CALL    BuildGameField                      ;626b
        CALL    b1_sub_6c7ah                        ;626e
        LD      a,0x4                               ;6271
        JP      SetGameStatus                       ;6273
b1_l6276h:
        CALL    b1_sub_6cb8h                        ;6276
        CALL    ClearScreen                         ;6279
        LD      c,0xff                              ;627c
        LD      hl,b1_l628ah                        ;627e
        LD      de,0x6060                           ;6281
        CALL    PrintText                           ;6284
        JP      NextSubstatus                       ;6287
b1_l628ah: equ     #628a
        DEFB    0x30,0x5d,0x39,0x63,0x32,0x49       ;628a ; data:code-gap
        DEFB    0x67                                ;6290
        RST     KEYINT                              ;6291

