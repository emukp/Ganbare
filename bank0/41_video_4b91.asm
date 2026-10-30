; === LoadTitleTiles (0x4b91) ===
LoadTitleTiles:
        CALL    SetBanks4_5_6                       ;4b91
        LD      hl,0xae7c                           ;4b94
        LD      de,0x8004                           ;4b97
        LD      b,0x2e                              ;4b9a
        CALL    LoadTilesGfx                        ;4b9c
        LD      hl,0xf800                           ;4b9f
        LD      de,0xb43c                           ;4ba2
        CALL    UnpackGfx1                          ;4ba5
        JP      SetBanks1_2_3                       ;4ba8
        CALL    SetBanks7_8_9                       ;4bab
        LD      hl,0x8acc                           ;4bae
        LD      de,0x8004                           ;4bb1
        LD      b,0x2e                              ;4bb4
        CALL    LoadTilesGfx                        ;4bb6
        LD      hl,0xf800                           ;4bb9
        LD      de,0x8f4c                           ;4bbc
        CALL    UnpackGfx1                          ;4bbf
        JP      SetBanks1_2_3                       ;4bc2
        CALL    SetBanks7_8_9                       ;4bc5
        LD      hl,0x858c                           ;4bc8
        LD      de,0x8004                           ;4bcb
        LD      b,0x2e                              ;4bce
        CALL    LoadTilesGfx                        ;4bd0
        LD      hl,0x86ec                           ;4bd3
        LD      de,0x842c                           ;4bd6
        LD      b,0x1f                              ;4bd9
        CALL    ExpandTilesToVram                   ;4bdb
        LD      hl,0xf800                           ;4bde
        LD      de,0x9810                           ;4be1
        LD      a,(ControlConfig)                   ;4be4
        ADD     a,a                                 ;4be7
        JR      nc,b0_l4bedh                        ;4be8
        LD      de,0x9df6                           ;4bea
b0_l4bedh:
        CALL    UnpackGfx1                          ;4bed
        LD      hl,0xf880                           ;4bf0
        LD      de,0x9fb0                           ;4bf3
        CALL    UnpackGfx1                          ;4bf6
        LD      hl,0xfa00                           ;4bf9
        LD      de,0x9fb0                           ;4bfc
        CALL    b0_sub_4562h                        ;4bff
        LD      hl,0xfb80                           ;4c02
        LD      de,0xa10e                           ;4c05
        CALL    UnpackGfx1                          ;4c08
        JP      SetBanks1_2_3                       ;4c0b
GetMapTileParam:
        LD      a,(0xc289)                          ;4c0e
        LD      b,a                                 ;4c11
        ADD     a,a                                 ;4c12
        ADD     a,a                                 ;4c13
        ADD     a,b                                 ;4c14
        LD      hl,b0_l4c57h                        ;4c15
        CALL    ADD_HL_A                            ;4c18
        LD      e,(hl)                              ;4c1b
        INC     hl                                  ;4c1c
        LD      d,(hl)                              ;4c1d
        INC     hl                                  ;4c1e
        LD      b,(hl)                              ;4c1f
        INC     hl                                  ;4c20
        LD      a,(hl)                              ;4c21
        INC     hl                                  ;4c22
        LD      h,(hl)                              ;4c23
        LD      l,a                                 ;4c24
        RET                                         ;4c25

