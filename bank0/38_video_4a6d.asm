LoadTitleScreenAssets:
        CALL    SetBanksD_E_F                       ;4a6d
        LD      de,0x40                             ;4a70
        LD      hl,0x929d                           ;4a73
        LD      bc,0x910e                           ;4a76
        CALL    Load1bppTiles                       ;4a79
        LD      de,0x8860                           ;4a7c
        LD      hl,0x9725                           ;4a7f
        LD      bc,0xa03                            ;4a82
        CALL    Load1bppTiles                       ;4a85
        LD      hl,0x9775                           ;4a88
        LD      de,0xb06c                           ;4a8b
        LD      b,0x3                               ;4a8e
        CALL    LoadTilesGfx                        ;4a90
        JP      ZhFontTramp                         ;4a93 (was: JP SetBanks1_2_3; zh-hack: load Chinese font first)
