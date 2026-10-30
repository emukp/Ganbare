; === UnpackMapTiles (0x4d89) ===
UnpackMapTiles:
        CALL    SetBanks7_8_9                       ;4d89
        LD      hl,0xf8c0                           ;4d8c
        LD      de,0x9369                           ;4d8f
        CALL    UnpackGfx1                          ;4d92
        CALL    SetBanksA_B_C                       ;4d95
        LD      hl,0xf900                           ;4d98
        LD      de,0x87d1                           ;4d9b
        CALL    UnpackGfx1                          ;4d9e
        JP      SetBanks1_2_3                       ;4da1
