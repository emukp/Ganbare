; === SetupTitleVram (0x5a81) ===
SetupTitleVram:
        CALL    ClearScreen                         ;5a81
        LD      bc,0x7                              ;5a84
        CALL    WRTVDP                              ;5a87
        CALL    LoadTitleScreenAssets               ;5a8a
        CALL    LoadTitleTiles                      ;5a8d
        JP      LoadTitlePalette                    ;5a90
InitTitleScreen:
        CALL    SetupTitleVram                      ;5a93
        CALL    SetBanks4_5_6                       ;5a96
        CALL    DisableScreen                       ;5a99
        LD      de,0x3020                           ;5a9c
        LD      hl,0xb6b2                           ;5a9f
        LD      b,0xc                               ;5aa2
DrawTitleTiles:
        PUSH    bc                                  ;5aa4
        PUSH    de                                  ;5aa5
        LD      b,0x14                              ;5aa6
b0_l5aa8h:
        LD      a,(hl)                              ;5aa8
        CALL    DrawTile                            ;5aa9
        INC     hl                                  ;5aac
        LD      a,d                                 ;5aad
        ADD     a,0x8                               ;5aae
        LD      d,a                                 ;5ab0
        DJNZ    b0_l5aa8h                           ;5ab1
        POP     de                                  ;5ab3
        POP     bc                                  ;5ab4
        LD      a,e                                 ;5ab5
        ADD     a,0x8                               ;5ab6
        LD      e,a                                 ;5ab8
        DJNZ    DrawTitleTiles                      ;5ab9
        LD      hl,0xb7a2                           ;5abb
        LD      de,AbSprAttrTable                   ;5abe
        LD      bc,0x1700                           ;5ac1
