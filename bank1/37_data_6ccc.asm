        DEFB    0x58,0x74,0x4a,0x4f,0x41,0x48,0x30,0x5d  ;6ccc ; data:code-gap
        DEFB    0x39,0x63,0x32,0xff                 ;6cd4
        DEFB    0xf3                                ;6cd8
        LD      a,0x6                               ;6cd9
        LD      (0xa000),a                          ;6cdb
        LD      (BanksInA0),a                       ;6cde
        EI                                          ;6ce1
        LD      b,0x9                               ;6ce2
        LD      e,0x0                               ;6ce4
b1_l6ce6h:
        LD      a,e                                 ;6ce6
        CALL    SNSMAT                              ;6ce7
        CPL                                         ;6cea
        AND     a                                   ;6ceb
        JR      nz,b1_l6cfbh                        ;6cec
        INC     e                                   ;6cee
        DJNZ    b1_l6ce6h                           ;6cef
        XOR     a                                   ;6cf1
        LD      hl,0xeb80                           ;6cf2
        LD      (hl),a                              ;6cf5
        INC     hl                                  ;6cf6
        LD      (hl),a                              ;6cf7
        JP      SetBanks1_2_3                       ;6cf8
b1_l6cfbh:
        LD      b,a                                 ;6cfb
        LD      a,(0xfcad)                          ;6cfc
        AND     a                                   ;6cff
        LD      hl,0xadec                           ;6d00
        JR      z,b1_l6d08h                         ;6d03
        LD      hl,0xae34                           ;6d05
b1_l6d08h:
        LD      a,e                                 ;6d08
        ADD     a,a                                 ;6d09
        ADD     a,a                                 ;6d0a
        ADD     a,a                                 ;6d0b
        CALL    ADD_HL_A                            ;6d0c
        LD      a,b                                 ;6d0f
b1_l6d10h:
        RRA                                         ;6d10
        JR      c,b1_l6d16h                         ;6d11
        INC     hl                                  ;6d13
        JR      b1_l6d10h                           ;6d14
b1_l6d16h:
        LD      a,(0xfcad)                          ;6d16
        AND     a                                   ;6d19
        LD      a,(hl)                              ;6d1a
        JR      z,b1_l6d2ch                         ;6d1b
        LD      a,0x6                               ;6d1d
        CALL    SNSMAT                              ;6d1f
        RRA                                         ;6d22
        LD      a,(hl)                              ;6d23
        JR      c,b1_l6d2ch                         ;6d24
        CP      0x5b                                ;6d26
        JR      nz,b1_l6d2ch                        ;6d28
        LD      a,0x5c                              ;6d2a
b1_l6d2ch:
        LD      hl,0xeb80                           ;6d2c
        LD      c,(hl)                              ;6d2f
        LD      (hl),a                              ;6d30
b1_l6d31h:
        XOR     c                                   ;6d31
        AND     (hl)                                ;6d32
        INC     hl                                  ;6d33
        LD      (hl),a                              ;6d34
        JP      SetBanks1_2_3                       ;6d35
b1_sub_6d38h:
        LD      a,(0xcd32)                          ;6d38
        AND     a                                   ;6d3b
        RET     nz                                  ;6d3c
        CALL    b1_sub_710eh                        ;6d3d
        CALL    b1_sub_71a2h                        ;6d40
        CALL    b1_sub_7116h                        ;6d43
        LD      a,(BlockQueue)                      ;6d46
        CALL    JumpIndex                           ;6d49
        DEFW    0x6d58,0x6e9a,0x6f48,0x6f8f         ;6d4c ; data:jumptable
        DEFW    0x706e,0x70a9                       ;6d54
        CALL    b1_sub_6e7bh                        ;6d58
        LD      a,(0xc492)                          ;6d5b
        AND     a                                   ;6d5e
        RET     nz                                  ;6d5f
        LD      a,(0xcdb0)                          ;6d60
        AND     a                                   ;6d63
        CALL    nz,b1_sub_7d0dh                     ;6d64
        CALL    b1_sub_7763h                        ;6d67
        JR      c,b1_l6dd6h                         ;6d6a
        CALL    b1_sub_715dh                        ;6d6c
        LD      a,(BlockQueue)                      ;6d6f
        CP      0x3                                 ;6d72
        RET     z                                   ;6d74
        CALL    b1_sub_72e6h                        ;6d75
        LD      a,(isDrawKonamiLogoFinished)        ;6d78
        AND     a                                   ;6d7b
        JR      nz,b1_l6d89h                        ;6d7c
        LD      a,(ControlsTrigger)                 ;6d7e
        BIT     4,a                                 ;6d81
        JR      nz,b1_l6db9h                        ;6d83
        BIT     5,a                                 ;6d85
        JR      nz,b1_l6dbfh                        ;6d87
b1_l6d89h: equ     #6d89
        LD      de,0xc485                           ;6d89
        LD      a,(de)                              ;6d8c
        AND     a                                   ;6d8d
        JR      z,b1_l6d9eh                         ;6d8e
        LD      a,(0xc00d)                          ;6d90
        AND     0x3                                 ;6d93
        JR      nz,b1_l6d9eh                        ;6d95
        LD      hl,0xc49f                           ;6d97
        LD      a,(hl)                              ;6d9a
        XOR     0x1                                 ;6d9b
        LD      (hl),a                              ;6d9d
b1_l6d9eh: equ     #6d9e
        LD      a,(de)                              ;6d9e
b1_sub_6d9fh: equ     #6d9f
        RRA                                         ;6d9f
        JP      c,b1_l6e04h                         ;6da0
        RRA                                         ;6da3
        JP      c,b1_l6e18h                         ;6da4
        RRA                                         ;6da7
        JP      c,b1_l6e30h                         ;6da8
        RRA                                         ;6dab
        JP      c,b1_l6e57h                         ;6dac
        LD      a,(BlockQueue)                      ;6daf
        DEC     a                                   ;6db2
        RET     z                                   ;6db3
        XOR     a                                   ;6db4
        LD      (0xc49f),a                          ;6db5
        RET                                         ;6db8
b1_l6db9h: equ     #6db9
        LD      a,0x1                               ;6db9
        LD      (0xc492),a                          ;6dbb
        RET                                         ;6dbe
b1_l6dbfh: equ     #6dbf
        LD      a,(0xc485)                          ;6dbf
        LD      (0xc4a5),a                          ;6dc2
        LD      a,0x1                               ;6dc5
        LD      (BlockQueue),a                      ;6dc7
        INC     a                                   ;6dca
        LD      (0xc49f),a                          ;6dcb
        CALL    b1_sub_7395h                        ;6dce
        LD      a,0x1                               ;6dd1
        JP      ProcessSoundCommand                 ;6dd3
b1_l6dd6h:
        CALL    ClearFieldRecordHeaders             ;6dd6
        CALL    SetAllSpritesHidden                 ;6dd9
        CALL    ShiftCC00Queue                      ;6ddc
        LD      hl,0xc4d3                           ;6ddf
        CALL    HideSpriteRecord                    ;6de2
        LD      hl,0xc4e3                           ;6de5
        CALL    HideSpriteRecord                    ;6de8
        CALL    b1_sub_6f64h                        ;6deb
        LD      a,0x2                               ;6dee
        LD      (BlockQueue),a                      ;6df0
        LD      a,0xf                               ;6df3
        LD      (0xc4a8),a                          ;6df5
        XOR     a                                   ;6df8
        LD      (0xc49f),a                          ;6df9
        LD      (0xc4a9),a                          ;6dfc
        LD      a,0x8b                              ;6dff
        JP      ProcessSoundCommand                 ;6e01
b1_l6e04h:
        XOR     a                                   ;6e04
        LD      (0xc4a2),a                          ;6e05
        CALL    b1_sub_771fh                        ;6e08
        RET     c                                   ;6e0b
        LD      de,(0xc4a3)                         ;6e0c
        CALL    0x8c0a                              ;6e10
        LD      (0xc49b),de                         ;6e13
        RET                                         ;6e17
b1_l6e18h:
        LD      a,0x1                               ;6e18
        LD      (0xc4a2),a                          ;6e1a
        LD      a,(0xc494)                          ;6e1d
        CP      0xc9                                ;6e20
        RET     nc                                  ;6e22
        CALL    b1_sub_7741h                        ;6e23
        RET     c                                   ;6e26
        LD      de,(0xc4a3)                         ;6e27
        LD      (0xc49b),de                         ;6e2b
        RET                                         ;6e2f
b1_l6e30h:
        LD      a,0x2                               ;6e30
        LD      (0xc4a2),a                          ;6e32
        LD      a,(0xc483)                          ;6e35
        AND     a                                   ;6e38
        JR      nz,b1_l6e47h                        ;6e39
        LD      a,(0xc286)                          ;6e3b
        INC     a                                   ;6e3e
        JR      nz,b1_l6e47h                        ;6e3f
        LD      a,(0xc496)                          ;6e41
        CP      0x10                                ;6e44
        RET     c                                   ;6e46
b1_l6e47h:
        CALL    b1_sub_7794h                        ;6e47
        RET     c                                   ;6e4a
        LD      de,(0xc4a3)                         ;6e4b
        CALL    0x8c0a                              ;6e4f
        LD      (0xc49d),de                         ;6e52
        RET                                         ;6e56
b1_l6e57h:
        LD      a,0x3                               ;6e57
        LD      (0xc4a2),a                          ;6e59
        LD      a,(0xc483)                          ;6e5c
        AND     a                                   ;6e5f
        JR      nz,b1_l6e6eh                        ;6e60
        LD      a,(0xc287)                          ;6e62
        INC     a                                   ;6e65
        JR      nz,b1_l6e6eh                        ;6e66
        LD      a,(0xc496)                          ;6e68
        CP      0xf1                                ;6e6b
        RET     nc                                  ;6e6d
b1_l6e6eh:
        CALL    b1_sub_777eh                        ;6e6e
        RET     c                                   ;6e71
        LD      de,(0xc4a3)                         ;6e72
        LD      (0xc49d),de                         ;6e76
        RET                                         ;6e7a
b1_sub_6e7bh:
        LD      a,(0xc270)                          ;6e7b
        ADD     a,a                                 ;6e7e
        LD      hl,b1_l6e92h                        ;6e7f
        CALL    GetTableWord                        ;6e82
        LD      (0xc4a3),hl                         ;6e85
        LD      hl,0x0                              ;6e88
        LD      (0xc49b),hl                         ;6e8b
        LD      (0xc49d),hl                         ;6e8e
        RET                                         ;6e91
b1_l6e92h:
        NOP                                         ;6e92
        LD      bc,CHGCPU                           ;6e93
        NOP                                         ;6e96
        LD      (bc),a                              ;6e97
        ADD     a,b                                 ;6e98
        LD      (bc),a                              ;6e99
        LD      a,(0xc492)                          ;6e9a
        AND     a                                   ;6e9d
        JR      nz,b1_l6ea8h                        ;6e9e
        LD      a,(ControlsTrigger)                 ;6ea0
        BIT     4,a                                 ;6ea3
        CALL    nz,b1_l6db9h                        ;6ea5
b1_l6ea8h:
        CALL    b1_sub_6e7bh                        ;6ea8
        LD      a,(0xc4a5)                          ;6eab
        LD      h,a                                 ;6eae
        AND     0xc                                 ;6eaf
        LD      bc,0x0                              ;6eb1
        JR      z,b1_l6eb9h                         ;6eb4
        LD      bc,0x60c                            ;6eb6
b1_l6eb9h:
        LD      a,(0xc496)                          ;6eb9
        SUB     b                                   ;6ebc
        LD      d,a                                 ;6ebd
        LD      b,h                                 ;6ebe
        LD      a,(0xc494)                          ;6ebf
        LD      e,a                                 ;6ec2
        CALL    b1_sub_7804h                        ;6ec3
        INC     a                                   ;6ec6
        LD      a,b                                 ;6ec7
        JR      z,b1_l6eefh                         ;6ec8
        LD      a,d                                 ;6eca
        ADD     a,c                                 ;6ecb
        LD      d,a                                 ;6ecc
        CALL    b1_sub_7804h                        ;6ecd
        INC     a                                   ;6ed0
        LD      a,b                                 ;6ed1
        JR      z,b1_l6eefh                         ;6ed2
        LD      a,(0xc4aa)                          ;6ed4
        AND     a                                   ;6ed7
        JR      nz,b1_l6ef2h                        ;6ed8
        LD      a,(ControlsTrigger)                 ;6eda
        LD      c,a                                 ;6edd
        LD      a,b                                 ;6ede
        RR      b                                   ;6edf
        JR      c,b1_l6f1dh                         ;6ee1
        RR      b                                   ;6ee3
        JR      c,b1_l6f1fh                         ;6ee5
        RR      b                                   ;6ee7
        JR      c,b1_l6f19h                         ;6ee9
        RR      b                                   ;6eeb
        JR      c,b1_l6f1bh                         ;6eed
b1_l6eefh:
        CALL    b1_sub_6d9fh                        ;6eef
b1_l6ef2h:
        LD      de,b1_l6f2ah                        ;6ef2
        LD      hl,0xc4a0                           ;6ef5
        LD      a,(hl)                              ;6ef8
        INC     (hl)                                ;6ef9
        CP      0x1e                                ;6efa
        JR      nc,b1_l6f08h                        ;6efc
        CALL    ADD_DE_A                            ;6efe
        LD      a,(de)                              ;6f01
        LD      hl,0xc498                           ;6f02
        ADD     a,(hl)                              ;6f05
        LD      (hl),a                              ;6f06
        RET                                         ;6f07
b1_l6f08h:
        XOR     a                                   ;6f08
        LD      (BlockQueue),a                      ;6f09
        LD      (0xc4a0),a                          ;6f0c
        LD      (0xc49f),a                          ;6f0f
        LD      (0xc4aa),a                          ;6f12
        LD      (0xc4a5),a                          ;6f15
        RET                                         ;6f18
b1_l6f19h:
        RR      c                                   ;6f19
b1_l6f1bh:
        RR      c                                   ;6f1b
b1_l6f1dh:
        RR      c                                   ;6f1d
b1_l6f1fh:
        RR      c                                   ;6f1f
        JR      nc,b1_l6eefh                        ;6f21
        LD      a,0x1                               ;6f23
        LD      (0xc4aa),a                          ;6f25
        JR      b1_l6ef2h                           ;6f28
b1_l6f2ah:
        EI                                          ;6f2a
        CALL    m,0xfdfd                            ;6f2b
        CP      0xfe                                ;6f2e
        CP      0xff                                ;6f30
        RST     KEYINT                              ;6f32
        NOP                                         ;6f33
        RST     KEYINT                              ;6f34
        NOP                                         ;6f35
        NOP                                         ;6f36
        NOP                                         ;6f37
        NOP                                         ;6f38
        NOP                                         ;6f39
        NOP                                         ;6f3a
        NOP                                         ;6f3b
        NOP                                         ;6f3c
        LD      bc,0x100                            ;6f3d
        LD      bc,0x202                            ;6f40
        LD      (bc),a                              ;6f43
        INC     bc                                  ;6f44
        INC     bc                                  ;6f45
        INC     b                                   ;6f46
        DEC     b                                   ;6f47
        LD      hl,0xc4a8                           ;6f48
        LD      a,(hl)                              ;6f4b
        AND     a                                   ;6f4c
        JR      z,b1_l6f58h                         ;6f4d
        EX      de,hl                               ;6f4f
        LD      hl,0xc498                           ;6f50
        INC     (hl)                                ;6f53
        INC     (hl)                                ;6f54
        EX      de,hl                               ;6f55
        DEC     (hl)                                ;6f56
        RET                                         ;6f57
b1_l6f58h:
        LD      a,(BSndAuxFlag)                     ;6f58
        AND     a                                   ;6f5b
        RET     nz                                  ;6f5c
        JP      b1_l700ah                           ;6f5d
b1_sub_6f60h:
        LD      c,0x6                               ;6f60
        JR      b1_l6f66h                           ;6f62
b1_sub_6f64h:
        LD      c,0x0                               ;6f64
b1_l6f66h:
        LD      hl,AbSprAttrTable                   ;6f66
        LD      b,0x10                              ;6f69
b1_l6f6bh:
        LD      a,b                                 ;6f6b
        CP      0x9                                 ;6f6c
        LD      a,(0xc494)                          ;6f6e
        JR      nc,b1_l6f75h                        ;6f71
        ADD     a,0x10                              ;6f73
b1_l6f75h:
        ADD     a,c                                 ;6f75
        LD      (hl),a                              ;6f76
        INC     hl                                  ;6f77
        LD      (hl),0x0                            ;6f78
        INC     hl                                  ;6f7a
        LD      (hl),0x1c                           ;6f7b
        INC     hl                                  ;6f7d
        INC     hl                                  ;6f7e
        DJNZ    b1_l6f6bh                           ;6f7f
        LD      hl,AbSprColorTable                  ;6f81
        LD      de,0xec01                           ;6f84
        LD      (hl),0x0                            ;6f87
        LD      bc,0xff                             ;6f89
        LDIR                                        ;6f8c
        RET                                         ;6f8e
        DEFB    0x3a,0x91,0xc4,0x47,0x21,0xa8,0xc4,0x10  ;6f8f ; data:code-gap
        DEFB    0x25,0x35,0xc0,0x21,0x80,0xfe,0x22,0x9b  ;6f97
        DEFB    0xc4,0x3a,0x9a,0xc4,0x17,0x11,0x00,0x02  ;6f9f
        DEFB    0xdc,0x0a,0x8c,0xed,0x53,0x9d,0xc4,0x3a  ;6fa7
        DEFB    0x9a,0xc4,0xd6,0xe0,0xfe,0x40,0xda,0x64  ;6faf
        DEFB    0x70,0xcd,0x69,0x70,0x18,0x04,0x10,0x17  ;6fb7
        DEFB    0x35,0xc0,0x3a,0x9a,0xc4,0x17,0x11,0x40  ;6fbf
        DEFB    0x00,0xd4,0x0a,0x8c,0xed,0x53,0xab,0xc4  ;6fc7
        DEFB    0xaf,0x32,0xad,0xc4,0xc3,0x69,0x70,0x10  ;6fcf
        DEFB    0x76,0x2a,0x9d,0xc4,0xed,0x5b,0xab,0xc4  ;6fd7
        DEFB    0x3a,0xad,0xc4,0xa7,0xc4,0x0a,0x8c,0x19  ;6fdf
        DEFB    0x22,0x9d,0xc4,0x7c,0x3c,0x3c,0xfe,0x04  ;6fe7
        DEFB    0x21,0xad,0xc4,0x38,0x04,0x7e,0xee,0x01  ;6fef
        DEFB    0x77,0x21,0x98,0xc4,0x7e,0xfe,0xf0,0x06  ;6ff7
        DEFB    0x01,0x38,0x03,0x05,0x36,0xf8,0x3a,0xab  ;6fff
        DEFB    0xc0,0xb0,0xc0,0xaf,0x32,0x63,0xc2,0x32  ;7007
        DEFB    0x7e,0xc2,0x21,0x70,0xc2,0x77,0x23,0x77  ;700f
        DEFB    0x32,0x83,0xc4,0x3c,0x32,0x68,0xc2  ;7017
b1_l6fbdh: equ     #6fbd
b1_l6fc1h: equ     #6fc1
b1_l6fd6h: equ     #6fd6
b1_l6ff8h: equ     #6ff8
b1_l7005h: equ     #7005
b1_l700ah: equ     #700a
        LD      hl,0xc266                           ;701e
        XOR     a                                   ;7021
        RRD                                         ;7022
        SRL     (hl)                                ;7024
        LD      c,0x0                               ;7026
        JR      nc,b1_l702ch                        ;7028
        LD      c,0x5                               ;702a
b1_l702ch:
        SRL     a                                   ;702c
        RLD                                         ;702e
        LD      b,0x0                               ;7030
        JR      nc,b1_l7036h                        ;7032
        LD      b,0x50                              ;7034
b1_l7036h:
        LD      a,(hl)                              ;7036
        ADD     a,c                                 ;7037
        LD      (hl),a                              ;7038
        DEC     l                                   ;7039
        XOR     a                                   ;703a
        RRD                                         ;703b
        SRL     (hl)                                ;703d
        LD      c,0x0                               ;703f
        JR      nc,b1_l7045h                        ;7041
        LD      c,0x5                               ;7043
b1_l7045h:
        SRL     a                                   ;7045
        RLD                                         ;7047
        LD      a,(hl)                              ;7049
        ADD     a,b                                 ;704a
        ADD     a,c                                 ;704b
        LD      (hl),a                              ;704c
        RET                                         ;704d
b1_l704eh: equ     #704e
        DEFB    0x21,0x00,0x00,0x22,0x9b,0xc4,0x22,0x9d  ;704e ; data:code-gap
        DEFB    0xc4,0x3a,0xa7,0xc4,0xa7,0xc0,0x3e,0x04  ;7056
        DEFB    0x32,0x9f,0xc4,0x32,0xae,0xc4,0x3e,0x10  ;705e
        DEFB    0x32,0xa8,0xc4                      ;7066
b1_l7064h: equ     #7064
b1_sub_7069h:
        LD      hl,0xc491                           ;7069
        INC     (hl)                                ;706c
        RET                                         ;706d
        LD      a,(0xc00d)                          ;706e
        RRA                                         ;7071
        AND     0x3                                 ;7072
        LD      b,a                                 ;7074
        JR      z,b1_l7083h                         ;7075
        CP      0x3                                 ;7077
        JR      z,b1_l7083h                         ;7079
        LD      b,0x2                               ;707b
        CP      0x1                                 ;707d
        JR      z,b1_l7083h                         ;707f
        LD      b,0x1                               ;7081
b1_l7083h:
        LD      a,b                                 ;7083
        LD      (0xc4a2),a                          ;7084
        EX      de,hl                               ;7087
        LD      hl,0xc498                           ;7088
        INC     (hl)                                ;708b
        EX      de,hl                               ;708c
        LD      hl,0xc4a8                           ;708d
        DEC     (hl)                                ;7090
        RET     nz                                  ;7091
        XOR     a                                   ;7092
        LD      hl,0x0                              ;7093
        LD      (BlockQueue),a                      ;7096
        LD      (0xc4a3),hl                         ;7099
        LD      hl,0xc483                           ;709c
        LD      a,(hl)                              ;709f
        XOR     0x1                                 ;70a0
        LD      (hl),a                              ;70a2
        CALL    ShiftCC00Queue                      ;70a3
        JP      b1_l69cfh+2                         ;70a6
        LD      hl,0xc49b                           ;70a9
        XOR     a                                   ;70ac
        LD      (hl),a                              ;70ad
        INC     hl                                  ;70ae
        LD      (hl),a                              ;70af
        INC     hl                                  ;70b0
        LD      (hl),a                              ;70b1
        INC     hl                                  ;70b2
        LD      (hl),a                              ;70b3
        LD      hl,0xc4a8                           ;70b4
        LD      a,(hl)                              ;70b7
        AND     a                                   ;70b8
        JR      z,b1_l70e0h                         ;70b9
        DEC     (hl)                                ;70bb
        LD      a,(hl)                              ;70bc
        CP      0x3d                                ;70bd
        RET     nc                                  ;70bf
        CP      0x3c                                ;70c0
        JR      z,b1_l70f5h                         ;70c2
        LD      a,(0xc00d)                          ;70c4
        PUSH    af                                  ;70c7
        AND     0x3                                 ;70c8
        JR      nz,b1_l70d3h                        ;70ca
        LD      hl,0xc49f                           ;70cc
        LD      a,(hl)                              ;70cf
        XOR     0x1                                 ;70d0
        LD      (hl),a                              ;70d2
b1_l70d3h:
        POP     af                                  ;70d3
        AND     0x7                                 ;70d4
        RET     nz                                  ;70d6
        LD      hl,0xc494                           ;70d7
        DEC     (hl)                                ;70da
        LD      hl,0xc498                           ;70db
        DEC     (hl)                                ;70de
        RET                                         ;70df
b1_l70e0h:
        LD      a,0xe0                              ;70e0
        LD      (0xc494),a                          ;70e2
        LD      a,0xf0                              ;70e5
        LD      (0xc498),a                          ;70e7
        LD      a,(BSndAuxFlag)                     ;70ea
        AND     a                                   ;70ed
        RET     nz                                  ;70ee
        LD      a,0x1                               ;70ef
        LD      (0xc282),a                          ;70f1
        RET                                         ;70f4
b1_l70f5h:
        LD      a,(0xc289)                          ;70f5
        CP      0x4                                 ;70f8
        LD      hl,0xa0                             ;70fa
        LD      de,0x7040                           ;70fd
        JR      nz,b1_l7106h                        ;7100
        LD      h,0xa8                              ;7102
        LD      d,0x80                              ;7104
b1_l7106h:
        LD      bc,0x2020                           ;7106
        LD      a,0x40                              ;7109
        JP      VDP_Copy_Dot                        ;710b
b1_sub_710eh:
        LD      hl,0xc4a7                           ;710e
        LD      a,(hl)                              ;7111
        AND     a                                   ;7112
        RET     z                                   ;7113
        DEC     (hl)                                ;7114
        RET                                         ;7115
b1_sub_7116h:
        LD      a,(BlockQueue)                      ;7116
        CP      0x3                                 ;7119
        RET     z                                   ;711b
        CALL    b1_sub_7132h                        ;711c
        LD      de,(0xc4b0)                         ;711f
        LD      a,d                                 ;7123
        AND     a                                   ;7124
        RET     nz                                  ;7125
        LD      a,e                                 ;7126
        CP      0x50                                ;7127
        RET     nc                                  ;7129
        LD      a,(BSndAuxFlag)                     ;712a
        AND     a                                   ;712d
        RET     nz                                  ;712e
        JP      PlayGameSndCmd                      ;712f
b1_sub_7132h:
        LD      b,0x0                               ;7132
        LD      de,(0xc4b0)                         ;7134
        LD      a,d                                 ;7138
        AND     a                                   ;7139
        JR      nz,b1_l7143h                        ;713a
        LD      a,e                                 ;713c
        CP      0x50                                ;713d
        JR      nz,b1_l7143h                        ;713f
        LD      b,0x1                               ;7141
b1_l7143h:
        LD      hl,0xc269                           ;7143
        LD      a,(hl)                              ;7146
        XOR     b                                   ;7147
        AND     b                                   ;7148
        CALL    nz,b1_sub_714eh                     ;7149
        LD      (hl),b                              ;714c
        RET                                         ;714d
b1_sub_714eh:
        LD      a,0x1                               ;714e
        LD      (0xc0af),a                          ;7150
        LD      a,(0xc483)                          ;7153
        AND     a                                   ;7156
        RET     nz                                  ;7157
        LD      a,0x92                              ;7158
        JP      ProcessSoundCommand                 ;715a
b1_sub_715dh:
        LD      a,(0xc481)                          ;715d
        AND     a                                   ;7160
        JR      z,b1_l716ch                         ;7161
        LD      bc,(0xc4b0)                         ;7163
        LD      a,b                                 ;7167
        OR      c                                   ;7168
        RET     nz                                  ;7169
        JR      b1_l7183h                           ;716a
b1_l716ch:
        LD      hl,0xc277                           ;716c
        LD      a,(hl)                              ;716f
        AND     a                                   ;7170
        JR      z,b1_l7183h                         ;7171
        LD      (hl),0x0                            ;7173
        LD      a,(FrameDivider)                    ;7175
        LD      (0xc481),a                          ;7178
        CALL    DrawHudLifeBar                      ;717b
        LD      a,0x7                               ;717e
        JP      DrawFieldItem                       ;7180
b1_l7183h:
        CALL    ClearFieldRecordHeaders             ;7183
        CALL    SetAllSpritesHidden                 ;7186
        XOR     a                                   ;7189
        LD      (0xc492),a                          ;718a
        LD      (0xc4d0),a                          ;718d
        LD      (0xc4e0),a                          ;7190
        LD      a,0x3                               ;7193
        LD      (BlockQueue),a                      ;7195
        LD      a,0x20                              ;7198
        LD      (0xc4a7),a                          ;719a
        LD      a,0x8b                              ;719d
        JP      ProcessSoundCommand                 ;719f
b1_sub_71a2h:
        LD      hl,0xc485                           ;71a2
        LD      a,(ControlsHold)                    ;71a5
        AND     0xf                                 ;71a8
        LD      b,a                                 ;71aa
        JR      z,b1_l71b9h                         ;71ab
        LD      a,(ControlsTrigger)                 ;71ad
        AND     0xf                                 ;71b0
        JR      nz,b1_l71b9h                        ;71b2
        LD      a,b                                 ;71b4
        AND     (hl)                                ;71b5
        JR      nz,b1_l71b9h                        ;71b6
        LD      a,b                                 ;71b8
b1_l71b9h:
        LD      (hl),a                              ;71b9
        RET                                         ;71ba
b1_sub_71bbh:
        LD      a,(BlockQueue)                      ;71bb
        CP      0x3                                 ;71be
        RET     z                                   ;71c0
        LD      a,(0xc483)                          ;71c1
        AND     a                                   ;71c4
        JR      nz,b1_l71d1h                        ;71c5
        LD      a,(isDrawKonamiLogoFinished)        ;71c7
        AND     a                                   ;71ca
        JP      nz,b1_l729dh                        ;71cb
        CALL    b1_sub_7258h                        ;71ce
b1_l71d1h:
        LD      hl,SceneType                        ;71d1
        LD      de,0xc496                           ;71d4
        LD      a,(de)                              ;71d7
        CP      0xf7                                ;71d8
        JR      nc,b1_l71e7h                        ;71da
        CP      0xa                                 ;71dc
        JR      nc,b1_l71f2h                        ;71de
        LD      (hl),0x3                            ;71e0
        LD      a,0xf6                              ;71e2
        LD      (de),a                              ;71e4
        JR      b1_l71ech                           ;71e5
b1_l71e7h:
        LD      (hl),0x4                            ;71e7
        LD      a,0xa                               ;71e9
        LD      (de),a                              ;71eb
b1_l71ech:
        INC     de                                  ;71ec
        INC     de                                  ;71ed
        INC     de                                  ;71ee
        INC     de                                  ;71ef
        LD      (de),a                              ;71f0
        RET                                         ;71f1
b1_l71f2h:
        LD      hl,0xc520                           ;71f2
        LD      a,(hl)                              ;71f5
        LD      c,a                                 ;71f6
        AND     a                                   ;71f7
        RET     z                                   ;71f8
        LD      d,0x50                              ;71f9
        DEC     a                                   ;71fb
        JR      z,b1_l7200h                         ;71fc
        LD      d,0xc8                              ;71fe
b1_l7200h:
        LD      a,(0xc494)                          ;7200
        SUB     d                                   ;7203
        CP      0x8                                 ;7204
        RET     nc                                  ;7206
        LD      a,(0xc496)                          ;7207
        SUB     0x40                                ;720a
        CP      0x20                                ;720c
        RET     nc                                  ;720e
        LD      a,(ControlsHold)                    ;720f
        LD      b,a                                 ;7212
        LD      a,(0xc4a5)                          ;7213
        OR      b                                   ;7216
        LD      b,a                                 ;7217
        LD      a,c                                 ;7218
        DEC     a                                   ;7219
        LD      a,b                                 ;721a
        JR      nz,b1_l7221h                        ;721b
        RRA                                         ;721d
        RET     nc                                  ;721e
        JR      b1_l7224h                           ;721f
