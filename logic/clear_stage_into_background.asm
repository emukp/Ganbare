; === ClearStageIntoBackground (0x4c26) ===
ClearStageIntoBackground:
        CALL    SetBanks4_5_6                       ;4c26
        LD      hl,0xa7e0                           ;4c29
        LD      de,0x8004                           ;4c2c
        LD      b,0x1f                              ;4c2f
        CALL    LoadTilesGfx                        ;4c31
        LD      hl,0xa9c0                           ;4c34
        LD      de,0x8400                           ;4c37
        LD      b,0x10                              ;4c3a
        CALL    ExpandTilesToVram                   ;4c3c
        LD      hl,0xf800                           ;4c3f
        LD      de,0xabc0                           ;4c42
        CALL    UnpackGfx1                          ;4c45
        JP      SetBanks1_2_3                       ;4c48
StageMapTbl2: equ     #4c4b
