; === SetUpKonamiLogo (0x4a43) ===
SetUpKonamiLogo:
        CALL    SetBanks4_5_6                       ;4a43
        LD      hl,0xbc92                           ;4a46
        LD      de,0x800                            ;4a49
        LD      bc,0xd01                            ;4a4c
        CALL    Load1bppTiles                       ;4a4f
        LD      hl,0xbcfa                           ;4a52
        LD      de,0x7000                           ;4a55
        LD      bc,0xd02                            ;4a58
        CALL    Load1bppTiles                       ;4a5b
        LD      hl,0xbd62                           ;4a5e
        LD      de,0xd800                           ;4a61
        LD      bc,0x1a03                           ;4a64
        CALL    Load1bppTiles                       ;4a67
        JP      SetBanks1_2_3                       ;4a6a
