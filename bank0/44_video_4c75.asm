; === ExpandTilesToVram (0x4c75) ===
ExpandTilesToVram:
        DEFB    0xc5,0xd5                           ;4c75
        LD      de,0xee83                           ;4c77
        LD      c,0x8                               ;4c7a
b0_l4c7ch:
        LD      b,0x4                               ;4c7c
b0_l4c7eh:
        LD      a,(hl)                              ;4c7e
        RRCA                                        ;4c7f
        RRCA                                        ;4c80
        RRCA                                        ;4c81
        RRCA                                        ;4c82
        LD      (de),a                              ;4c83
        INC     hl                                  ;4c84
        DEC     de                                  ;4c85
        DJNZ    b0_l4c7eh                           ;4c86
        LD      a,0x8                               ;4c88
        CALL    ADD_DE_A                            ;4c8a
        DEC     c                                   ;4c8d
        JR      nz,b0_l4c7ch                        ;4c8e
        POP     de                                  ;4c90
        PUSH    hl                                  ;4c91
        LD      hl,0xee80                           ;4c92
        CALL    LoadTileGfx                         ;4c95
        POP     hl                                  ;4c98
        LD      a,e                                 ;4c99
        ADD     a,0x4                               ;4c9a
        LD      e,a                                 ;4c9c
        CP      0x80                                ;4c9d
        JR      nz,b0_l4ca7h                        ;4c9f
        LD      e,0x0                               ;4ca1
        LD      a,d                                 ;4ca3
        ADD     a,0x4                               ;4ca4
        LD      d,a                                 ;4ca6
b0_l4ca7h:
        POP     bc                                  ;4ca7
        DJNZ    $-51                                ;4ca8
        RET                                         ;4caa
b0_sub_4cabh:
        CALL    SetBanks7_8_9                       ;4cab
        LD      a,(ControlConfig)                   ;4cae
        RLA                                         ;4cb1
        LD      hl,0x9319                           ;4cb2
        JR      nc,b0_l4cbah                        ;4cb5
        LD      hl,0x9341                           ;4cb7
b0_l4cbah:
        LD      a,(0xc49f)                          ;4cba
        ADD     a,a                                 ;4cbd
        ADD     a,a                                 ;4cbe
        LD      b,a                                 ;4cbf
        LD      a,(0xc4a2)                          ;4cc0
        ADD     a,b                                 ;4cc3
        ADD     a,a                                 ;4cc4
        CALL    ADD_HL_A                            ;4cc5
        LD      e,(hl)                              ;4cc8
        INC     hl                                  ;4cc9
        LD      d,(hl)                              ;4cca
        LD      hl,0xf800                           ;4ccb
        CALL    UnpackGfx1                          ;4cce
        JP      SetBanks1_2_3                       ;4cd1
        CALL    SetBanks4_5_6                       ;4cd4
        LD      hl,0xf800                           ;4cd7
        LD      de,0xbe32                           ;4cda
        CALL    UnpackGfx1                          ;4cdd
        JP      SetBanks1_2_3                       ;4ce0
SetFieldPalette:
        CALL    LoadMap2Palette                     ;4ce3
        CALL    SetBanks7_8_9                       ;4ce6
        LD      hl,0xa37a                           ;4ce9
        LD      a,(0xc289)                          ;4cec
        ADD     a,a                                 ;4cef
        CALL    GetTableWord                        ;4cf0
        CALL    SetPalette                          ;4cf3
        CALL    SetBanks1_2_3                       ;4cf6
        JP      b0_l4d2ch                           ;4cf9
LoadMap2Palette:
        CALL    SetBanks7_8_9                       ;4cfc
        LD      hl,0xa3e6                           ;4cff
        CALL    SetPalette                          ;4d02
        JP      SetBanks1_2_3                       ;4d05
SetMapPalette02:
        CALL    SetBanks7_8_9                       ;4d08
        LD      hl,0xa3ff                           ;4d0b
        CALL    SetPalette                          ;4d0e
        JP      SetBanks1_2_3                       ;4d11
        CALL    SetBanks7_8_9                       ;4d14
        CALL    b0_sub_5306h                        ;4d17
        LD      b,a                                 ;4d1a
        CALL    SetBanks1_2_3                       ;4d1b
        INC     b                                   ;4d1e
        RET     nz                                  ;4d1f
        CALL    SetBanks7_8_9                       ;4d20
        LD      hl,0xa42b                           ;4d23
        CALL    SetPalette                          ;4d26
        JP      SetBanks1_2_3                       ;4d29
b0_l4d2ch:
        CALL    SetBanks7_8_9                       ;4d2c
        LD      a,(0xc289)                          ;4d2f
        ADD     a,a                                 ;4d32
        LD      hl,0xa4c5                           ;4d33
        CALL    GetTableWord                        ;4d36
        LD      a,(0xc267)                          ;4d39
        ADD     a,a                                 ;4d3c
        CALL    GetTableWord                        ;4d3d
        LD      a,(hl)                              ;4d40
        INC     a                                   ;4d41
        CALL    nz,SetPalette                       ;4d42
        JP      SetBanks1_2_3                       ;4d45
LoadTitlePalette:
        CALL    SetBanks7_8_9                       ;4d48
        LD      hl,0xa44e                           ;4d4b
        CALL    SetPalette                          ;4d4e
        JP      SetBanks1_2_3                       ;4d51
SetStageIntoPalette:
        CALL    LoadMap2Palette                     ;4d54
        CALL    SetBanks7_8_9                       ;4d57
        LD      hl,0xa476                           ;4d5a
        CALL    SetPalette                          ;4d5d
        JP      SetBanks1_2_3                       ;4d60
        CALL    LoadMap2Palette                     ;4d63
        CALL    SetBanks7_8_9                       ;4d66
        LD      hl,0xa4b8                           ;4d69
        CALL    SetPalette                          ;4d6c
        JP      SetBanks1_2_3                       ;4d6f
        CALL    LoadMap2Palette                     ;4d72
        CALL    SetBanks7_8_9                       ;4d75
        LD      hl,0xa48f                           ;4d78
        CALL    SetPalette                          ;4d7b
        JP      SetBanks1_2_3                       ;4d7e
