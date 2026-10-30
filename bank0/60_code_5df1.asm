KonamiLogoPhase1:
        CALL    0x6486                              ;5df1
        LD      a,(isDrawKonamiLogoFinished)        ;5df4
        OR      a                                   ;5df7
        RET     z                                   ;5df8
        CALL    LoadTitleScreenAssets               ;5df9
        XOR     a                                   ;5dfc
        JR      NextSubstatusT                      ;5dfd
KonamiLogoPhase2:
        DJNZ    KonamiLogoPhase0                    ;5dff
        LD      hl,WaitCounter                      ;5e01
        DEC     (hl)                                ;5e04
        RET     nz                                  ;5e05
        CALL    InitTitleScreen                     ;5e06
        XOR     a                                   ;5e09
        JP      NextGameStatus                      ;5e0a
KonamiLogoPhase0:
        CALL    ClearScreen                         ;5e0d
        CALL    0x643f                              ;5e10
        JR      NextSubstatus                       ;5e13
