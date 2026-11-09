; === InitKonamiLogo (0x643f) ===
InitKonamiLogo:
        CALL    DisableScreen                       ;643f
        LD      hl,KonamiLogoPal                    ;6442
        CALL    SetPalette                          ;6445
        LD      b,0xf                               ;6448
        LD      c,0x7                               ;644a
        CALL    WRTVDP                              ;644c
        LD      hl,0x2840                           ;644f
        LD      bc,0xa848                           ;6452
        XOR     a                                   ;6455
        LD      d,0x1                               ;6456
        CALL    FillRect                            ;6458
        CALL    SetUpKonamiLogo                     ;645b
        LD      de,0x4040                           ;645e
        LD      hl,KonamiLogoTiles                  ;6461
        CALL    DrawTileList                        ;6464
        CALL    EnableScreen                        ;6467
        LD      hl,FrameDivider                     ;646a
        LD      (hl),0x3c                           ;646d
        INC     hl                                  ;646f
        LD      (hl),0x31                           ;6470
        INC     hl                                  ;6472
        LD      (hl),0x0                            ;6473
        RET                                         ;6475
KonamiLogoPal: equ     #6476
