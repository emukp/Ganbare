        DEFB    0x16                                ;6955 ; data:data
        DEFB    0x00,0x16,0x08,0x02,0x18,0x04,0x01,0x10  ;6956 ; data:code-gap
        DEFB    0x08,0x02,0x18,0x26,0x08,0x02,0x18,0x16  ;695e
        DEFB    0x02,0x16,0x08,0x16,0x28,0x02,0x08,0x02  ;6966
        DEFB    0x18,0x24,0x04,0x16,0x00,0x28,0x08,0x10  ;696e
        DEFB    0x02,0x32,0x22,0x10,0x02,0x38,0x08,0x16  ;6976
        DEFB    0x00,0x44,0x04,0x32,0x24,0x07,0x08,0x44  ;697e
        DEFB    0x01,0x32,0x00,0x1c,0x08,0x48,0x28,0x02  ;6986
        DEFB    0x18,0x16,0x08,0x16,0x20,0x08,0x04,0x10  ;698e
        DEFB    0x02,0x16,0x20,0x10,0x04,0x20,0x01,0x32  ;6996
        DEFB    0x00,0x10,0x02,0x0c,0x08,0x16,0x28,0x10  ;699e
        DEFB    0x08,0x02,0x18,0x16,0x01,0x02,0x10,0x10  ;69a6
        DEFB    0x00,0x02,0x20,0x16,0x00,0x16,0x02,0x40  ;69ae
        DEFB    0x08,0x16,0x02,0x16,0x20,0x16,0x08,0x32  ;69b6
        DEFB    0x00,0x02,0x18,0x16,0x08,0x08,0x02,0x38  ;69be
        DEFB    0x08,0x16,0x01,0x24,0x08,0x02,0x18,0x32  ;69c6
        DEFB    0x00,0x01,0xff,0xf3,0x3e,0x09,0x32,0x00  ;69ce
        DEFB    0xa0,0x32,0xf3,0xf0,0xfb,0xcd,0x59,0x6a  ;69d6
        DEFB    0xcd,0x06,0x42,0x3e,0x01,0x32,0xaf,0xc4  ;69de
        DEFB    0x3a,0x83,0xc4,0xa7,0x28,0x11,0xcd,0xda  ;69e6
        DEFB    0x67,0xcd,0x14,0x6a,0x3a,0x02,0xc0,0xe6  ;69ee
        DEFB    0x40,0xc8,0x3e,0x88,0xc3,0xe4,0x4f,0xcd  ;69f6
        DEFB    0xf6,0x66,0xcd,0x9c,0x6a,0xc3       ;69fe
b1_l6960h: equ     #6960
b1_l697dh: equ     #697d
b1_l6985h: equ     #6985
b1_l6990h: equ     #6990
b1_l6994h: equ     #6994
b1_l6999h: equ     #6999
b1_l69afh: equ     #69af
b1_l69c0h: equ     #69c0
b1_l69cfh: equ     #69cf
b1_l69fdh: equ     #69fd
b1_l6a00h: equ     #6a00
        DEFB    0x6f,0x41                           ;6a04
b1_sub_6a06h:
        LD      hl,0xc484                           ;6a06
        LD      a,(SceneType)                       ;6a09
        CP      0x4                                 ;6a0c
        JR      nz,b1_l6a13h                        ;6a0e
        INC     (hl)                                ;6a10
        JR      b1_sub_6a14h                        ;6a11
b1_l6a13h:
        DEC     (hl)                                ;6a13
b1_sub_6a14h:
        CALL    DisableScreen                       ;6a14
        CALL    ClearSprAttr                        ;6a17
        CALL    b1_sub_67e8h                        ;6a1a
        XOR     a                                   ;6a1d
        LD      (0xc267),a                          ;6a1e
        LD      hl,0xc500                           ;6a21
        LD      de,0xc501                           ;6a24
        LD      (hl),a                              ;6a27
        LD      bc,0x2f                             ;6a28
        LDIR                                        ;6a2b
        CALL    0x4d2c                              ;6a2d
        LD      hl,0xd800                           ;6a30
        LD      de,0xd801                           ;6a33
        LD      (hl),0x1                            ;6a36
        LD      bc,0x2ff                            ;6a38
        LDIR                                        ;6a3b
        CALL    DrawScreenTiles                     ;6a3d
        LD      a,(0xc484)                          ;6a40
        LD      hl,0xea00                           ;6a43
        CALL    ADD_HL_A                            ;6a46
        LD      a,(hl)                              ;6a49
        CALL    0x4f47                              ;6a4a
        CALL    ShiftCC00Queue                      ;6a4d
        CALL    0x90c0                              ;6a50
        CALL    b1_sub_6a9ch                        ;6a53
        JP      EnableScreen                        ;6a56
b1_sub_6a59h:
        LD      a,(0xc483)                          ;6a59
        AND     a                                   ;6a5c
        LD      hl,0xea80                           ;6a5d
        JR      nz,b1_l6a65h                        ;6a60
        LD      hl,0xeb00                           ;6a62
b1_l6a65h:
        LD      b,(hl)                              ;6a65
        LD      a,(0xc483)                          ;6a66
        AND     a                                   ;6a69
        LD      a,(0xc281)                          ;6a6a
        JR      nz,b1_l6a72h                        ;6a6d
        LD      a,(0xc484)                          ;6a6f
b1_l6a72h:
        LD      c,a                                 ;6a72
        INC     hl                                  ;6a73
b1_l6a74h:
        LD      a,(hl)                              ;6a74
        CP      c                                   ;6a75
        JR      nz,b1_l6a90h                        ;6a76
        INC     hl                                  ;6a78
        LD      a,(0xc483)                          ;6a79
        AND     a                                   ;6a7c
        PUSH    af                                  ;6a7d
        LD      a,(hl)                              ;6a7e
        LD      de,0xc281                           ;6a7f
        JR      z,b1_l6a87h                         ;6a82
        LD      de,0xc484                           ;6a84
b1_l6a87h:
        LD      (de),a                              ;6a87
        POP     af                                  ;6a88
        RET     nz                                  ;6a89
        INC     hl                                  ;6a8a
        LD      a,(hl)                              ;6a8b
        LD      (0xc267),a                          ;6a8c
        RET                                         ;6a8f
b1_l6a90h:
        LD      a,(0xc483)                          ;6a90
        AND     a                                   ;6a93
        JR      nz,b1_l6a97h                        ;6a94
        INC     hl                                  ;6a96
b1_l6a97h:
        INC     hl                                  ;6a97
        INC     hl                                  ;6a98
        DJNZ    b1_l6a74h                           ;6a99
        RET                                         ;6a9b
b1_sub_6a9ch:
        LD      hl,0xc4af                           ;6a9c
        LD      a,(hl)                              ;6a9f
        AND     a                                   ;6aa0
        RET     z                                   ;6aa1
        LD      (hl),0x0                            ;6aa2
        LD      a,(0xc483)                          ;6aa4
        AND     a                                   ;6aa7
        LD      c,0x6                               ;6aa8
        JR      z,b1_l6aadh                         ;6aaa
        INC     c                                   ;6aac
b1_l6aadh:
        LD      b,0x4                               ;6aad
        LD      hl,0xcc00                           ;6aaf
b1_l6ab2h:
        LD      a,(hl)                              ;6ab2
        CP      c                                   ;6ab3
        JR      z,b1_l6abdh                         ;6ab4
        LD      de,0x40                             ;6ab6
        ADD     hl,de                               ;6ab9
        DJNZ    b1_l6ab2h                           ;6aba
        RET                                         ;6abc
b1_l6abdh:
        INC     hl                                  ;6abd
        INC     hl                                  ;6abe
        INC     hl                                  ;6abf
        LD      a,(hl)                              ;6ac0
        INC     hl                                  ;6ac1
        INC     hl                                  ;6ac2
        LD      h,(hl)                              ;6ac3
        LD      l,a                                 ;6ac4
        EXX                                         ;6ac5
        LD      b,0x4                               ;6ac6
        LD      hl,b1_l6af4h                        ;6ac8
b1_l6acbh:
        LD      a,(hl)                              ;6acb
        EXX                                         ;6acc
        ADD     a,l                                 ;6acd
        LD      e,a                                 ;6ace
        EXX                                         ;6acf
        INC     hl                                  ;6ad0
        LD      a,(hl)                              ;6ad1
        EXX                                         ;6ad2
        ADD     a,h                                 ;6ad3
        LD      d,a                                 ;6ad4
        PUSH    hl                                  ;6ad5
        CALL    b1_sub_781fh                        ;6ad6
        POP     hl                                  ;6ad9
        JR      nc,b1_l6ae0h                        ;6ada
        EXX                                         ;6adc
        INC     hl                                  ;6add
        DJNZ    b1_l6acbh                           ;6ade
b1_l6ae0h:
        LD      a,e                                 ;6ae0
        LD      (0xc498),a                          ;6ae1
        LD      (0xc494),a                          ;6ae4
        LD      a,d                                 ;6ae7
        LD      (0xc49a),a                          ;6ae8
        LD      (0xc496),a                          ;6aeb
        LD      a,0x3                               ;6aee
        LD      (0xc4a2),a                          ;6af0
        RET                                         ;6af3
b1_l6af4h: equ     #6af4
        DEFB    0xec,0x00,0x04,0x00,0xf8,0xf4,0xf8,0x0c  ;6af4 ; data:code-gap

