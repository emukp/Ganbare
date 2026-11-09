LoadSprites:
        LD      a,(hl)                              ;5ac4
        LD      (de),a                              ;5ac5
        INC     hl                                  ;5ac6
        INC     de                                  ;5ac7
        LD      a,(hl)                              ;5ac8
        LD      (de),a                              ;5ac9
        INC     hl                                  ;5aca
        INC     de                                  ;5acb
        LD      a,c                                 ;5acc
        ADD     a,a                                 ;5acd
        ADD     a,a                                 ;5ace
        LD      (de),a                              ;5acf
        INC     c                                   ;5ad0
        INC     de                                  ;5ad1
        INC     de                                  ;5ad2
        DJNZ    LoadSprites                         ;5ad3
PrefillSpriteColorShadow:
        LD      hl,AbSprColorTable                  ;5ad5
        LD      de,0xec01                           ;5ad8
        LD      bc,0x80                             ;5adb
        LD      (hl),0x5                            ;5ade
        LDIR                                        ;5ae0
        LD      hl,0xec70                           ;5ae2
        LD      de,0xec71                           ;5ae5
        LD      bc,0x100                            ;5ae8
        LD      (hl),0x4                            ;5aeb
        LDIR                                        ;5aed
        CALL    UploadSpriteShadow                  ;5aef
        CALL    EnableScreen                        ;5af2
        CALL    SetBanks1_2_3                       ;5af5
        LD      hl,b0_l4490h                        ;5af8
        LD      c,0xe                               ;5afb
        LD      de,0x7430                           ;5afd
        CALL    DrawRect                            ;5b00
        LD      hl,0x639b                           ;5b03
        JP      PrintTextXY                         ;5b06
UploadPlayerSprite:
        LD      a,(BlockQueue)                      ;5b09
        CP      0x2                                 ;5b0c
        JR      nc,UploadSpriteShadow               ;5b0e
        LD      hl,0xe8                             ;5b10
        LD      d,h                                 ;5b13
        LD      e,l                                 ;5b14
        LD      bc,0x5                              ;5b15
        LD      a,0x4                               ;5b18
        JP      VDP_Copy_Byte                       ;5b1a
b0_sub_5b1dh:
        LD      hl,0xc25f                           ;5b1d
        LD      a,(hl)                              ;5b20
        ADD     a,0x68                              ;5b21
        AND     0x78                                ;5b23
        LD      (hl),a                              ;5b25
        LD      a,(0x7)                             ;5b26
        LD      c,a                                 ;5b29
        CALL    b0_sub_5b47h                        ;5b2a
        LD      hl,0x7600                           ;5b2d
        CALL    SetVramAddressWR                    ;5b30
        LD      a,(0xc25f)                          ;5b33
        LD      d,0x10                              ;5b36
        LD      h,0xee                              ;5b38
b0_l5b3ah:
        LD      b,0x8                               ;5b3a
        LD      l,a                                 ;5b3c
        OTIR                                        ;5b3d
        ADD     a,0x48                              ;5b3f
        AND     0x78                                ;5b41
        DEC     d                                   ;5b43
        JR      nz,b0_l5b3ah                        ;5b44
        RET                                         ;5b46
b0_sub_5b47h:
        LD      hl,0x7400                           ;5b47
        CALL    SetVramAddressWR                    ;5b4a
        LD      a,(0xc25f)                          ;5b4d
        LD      d,0x10                              ;5b50
        ADD     a,a                                 ;5b52
b0_l5b53h:
        LD      h,0x76                              ;5b53
        LD      l,a                                 ;5b55
        ADD     hl,hl                               ;5b56
        LD      b,0x20                              ;5b57
        OTIR                                        ;5b59
        ADD     a,0x90                              ;5b5b
        DEC     d                                   ;5b5d
        JR      nz,b0_l5b53h                        ;5b5e
        RET                                         ;5b60

; === UploadSpriteShadow (0x5b61) ===
UploadSpriteShadow:
        LD      hl,AbSprColorTable                  ;5b61
        LD      de,0xf400                           ;5b64
        LD      bc,0x280                            ;5b67
        JP      RAMtoVRAM                           ;5b6a
b0_sub_5b6dh:
        CALL    SetBanksD_E_F                       ;5b6d
        LD      de,0x9bf0                           ;5b70
        LD      a,(GameLand)                        ;5b73
        LD      b,a                                 ;5b76
        ADD     a,a                                 ;5b77
        LD      c,a                                 ;5b78
        ADD     a,a                                 ;5b79
        ADD     a,c                                 ;5b7a
        ADD     a,b                                 ;5b7b
        ADD     a,a                                 ;5b7c
        ADD     a,e                                 ;5b7d
        LD      e,a                                 ;5b7e
        JR      nc,b0_l5b82h                        ;5b7f
        INC     d                                   ;5b81
b0_l5b82h:
        LD      a,(GameScore)                       ;5b82
        CALL    GetPointerDE2A                      ;5b85
        LD      a,(0xc281)                          ;5b88
        SRL     a                                   ;5b8b
        CALL    ADD_DE_A                            ;5b8d
        LD      a,(0xc281)                          ;5b90
        AND     0x1                                 ;5b93
        LD      a,(de)                              ;5b95
        JR      nz,b0_l5b9ch                        ;5b96
        RRA                                         ;5b98
        RRA                                         ;5b99
        RRA                                         ;5b9a
        RRA                                         ;5b9b
b0_l5b9ch:
        AND     0xf                                 ;5b9c
        LD      (0xcd2c),a                          ;5b9e
        PUSH    af                                  ;5ba1
        CALL    SetBanks1_2_3                       ;5ba2
        LD      a,(0xc289)                          ;5ba5
        LD      de,b0_l5bb2h                        ;5ba8
        CALL    GetPointerDE2A                      ;5bab
        POP     af                                  ;5bae
        JP      GetPointerDE2A                      ;5baf
b0_l5bb2h: equ     #5bb2
