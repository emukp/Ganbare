; === StageIntroPhase0 (0x5efd) ===
StageIntroPhase0:
        CALL    ClearScreen                         ;5efd
        LD      a,(PlayerStatus)                    ;5f00
        SUB     0x1                                 ;5f03
        DAA                                         ;5f05
        LD      (PlayerStatus),a                    ;5f06
        CALL    ClearStageIntoBackground            ;5f09
        CALL    SetStageIntoPalette                 ;5f0c
        CALL    0x80d9                              ;5f0f
        LD      a,0x78                              ;5f12
        JP      NextSubstatusT                      ;5f14
