b1_l7d00h:
        LD      de,0x40                             ;7d00
        ADD     ix,de                               ;7d03
        DJNZ    b1_l7ce6h                           ;7d05
        RET                                         ;7d07
b1_l7d08h:
        LD      (ix+0xd),0x1                        ;7d08
        RET                                         ;7d0c
b1_sub_7d0dh: equ     #7d0d
        DEFB    0x3a,0x94,0xc4,0xd6,0x40,0xfe,0x06,0xd0  ;7d0d ; data:code-gap
        DEFB    0x3a,0x96,0xc4,0xd6,0x30,0xfe,0x20,0xd0  ;7d15
        DEFB    0x3a,0x07,0xc0,0x1f,0xd0,0xcd,0xda,0x67  ;7d1d
        DEFB    0xcd,0x1d,0x5b,0xcd,0x69,0x59,0x3e,0x88  ;7d25
        DEFB    0xc3,0xe4,0x4f                      ;7d2d
b1_sub_7d30h:
        LD      a,(ix+0x5)                          ;7d30
        SUB     0x10                                ;7d33
        LD      c,a                                 ;7d35
        LD      a,(0xc496)                          ;7d36
        SUB     c                                   ;7d39
        CP      0x20                                ;7d3a
        RET     nc                                  ;7d3c
        LD      a,(ix+0x3)                          ;7d3d
        SUB     0x18                                ;7d40
        LD      c,a                                 ;7d42
        LD      a,(0xc494)                          ;7d43
        SUB     c                                   ;7d46
        CP      0x20                                ;7d47
        RET                                         ;7d49
b1_sub_7d4ah:
        LD      b,(ix+0x5)                          ;7d4a
        LD      c,(ix+0x3)                          ;7d4d
        LD      hl,0x808                            ;7d50
        JP      b1_l7b49h                           ;7d53
b1_sub_7d56h:
        LD      a,(ix+0x0)                          ;7d56
        DEC     a                                   ;7d59
        JR      z,b1_l7d71h                         ;7d5a
        DEC     a                                   ;7d5c
        RET     nz                                  ;7d5d
        LD      hl,0xc270                           ;7d5e
        INC     (hl)                                ;7d61
        LD      a,(hl)                              ;7d62
        CP      0x4                                 ;7d63
        JR      nc,b1_l7d6bh                        ;7d65
        XOR     a                                   ;7d67
        JP      DrawFieldItem                       ;7d68
b1_l7d6bh:
        DEC     (hl)                                ;7d6b
b1_l7d6ch:
        LD      e,0x10                              ;7d6c
        JP      0x5929                              ;7d6e
b1_l7d71h:
        LD      hl,0xc271                           ;7d71
        LD      a,(hl)                              ;7d74
        AND     a                                   ;7d75
        JR      nz,b1_l7d6ch                        ;7d76
        INC     (hl)                                ;7d78
        LD      a,0x1                               ;7d79
        JP      DrawFieldItem                       ;7d7b
        LD      a,(ix+0x0)                          ;7d7e
        LD      b,a                                 ;7d81
        CP      0x6                                 ;7d82
        JR      nz,b1_l7d8ch                        ;7d84
        LD      a,(0xc278)                          ;7d86
        CP      0x8                                 ;7d89
        RET     z                                   ;7d8b
b1_l7d8ch:
        LD      a,b                                 ;7d8c
        DEC     a                                   ;7d8d
        LD      hl,b1_l7d98h                        ;7d8e
        CALL    ADD_HL_A                            ;7d91
        LD      a,(hl)                              ;7d94
        JP      ProcessSoundCommand                 ;7d95
b1_l7d98h:
        LD      de,0x1111                           ;7d98
        DJNZ    $+18                                ;7d9b
        INC     de                                  ;7d9d
b1_sub_7d9eh:
        DI                                          ;7d9e
        LD      a,0x9                               ;7d9f
        LD      (0xa000),a                          ;7da1
        LD      (BanksInA0),a                       ;7da4
        EI                                          ;7da7
        CALL    GetStageTableIndex                  ;7da8
        LD      hl,0xb5d6                           ;7dab
        CALL    GetTableWord                        ;7dae
        LD      a,(hl)                              ;7db1
        AND     a                                   ;7db2
        RET     z                                   ;7db3
        LD      b,a                                 ;7db4
        INC     hl                                  ;7db5
        LD      de,0xc520                           ;7db6
b1_l7db9h:
        LD      c,(hl)                              ;7db9
        LD      a,c                                 ;7dba
        EXX                                         ;7dbb
        AND     0x7f                                ;7dbc
        LD      b,a                                 ;7dbe
        LD      a,(0xc281)                          ;7dbf
        CP      b                                   ;7dc2
        EXX                                         ;7dc3
        JR      z,b1_l7ddah                         ;7dc4
        INC     hl                                  ;7dc6
        INC     hl                                  ;7dc7
        DJNZ    b1_l7db9h                           ;7dc8
        LD      hl,0xc520                           ;7dca
        LD      de,0xc521                           ;7dcd
        LD      (hl),0x0                            ;7dd0
        LD      bc,0xf                              ;7dd2
        LDIR                                        ;7dd5
        JP      SetBanks1_2_3                       ;7dd7
b1_l7ddah:
        RL      c                                   ;7dda
        LD      a,0x1                               ;7ddc
        JR      nc,b1_l7de1h                        ;7dde
        INC     a                                   ;7de0
b1_l7de1h:
        LD      (de),a                              ;7de1
        INC     de                                  ;7de2
        INC     hl                                  ;7de3
        LD      a,(hl)                              ;7de4
        LD      (de),a                              ;7de5
        JP      SetBanks1_2_3                       ;7de6
