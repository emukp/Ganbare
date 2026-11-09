        DEFB    0x0d                                ;77bf ; data:table
        LD      b,0x7                               ;77c0
        LD      h,0x15                              ;77c2
        LD      (de),a                              ;77c4
        LD      bc,0x1f0                            ;77c5
        DEC     (hl)                                ;77c8
        ADD     hl,de                               ;77c9
        DEC     e                                   ;77ca
        LD      e,0xf                               ;77cb
        DJNZ    $+23                                ;77cd
        RLCA                                        ;77cf
        RRCA                                        ;77d0
b1_sub_77d1h:
        PUSH    af                                  ;77d1
        LD      a,(BlockQueue)                      ;77d2
        DEC     a                                   ;77d5
        JR      nz,b1_l77e5h                        ;77d6
        PUSH    de                                  ;77d8
        CALL    b1_sub_741bh                        ;77d9
        POP     de                                  ;77dc
        JR      nc,b1_l77e5h                        ;77dd
        POP     af                                  ;77df
        CP      0xff                                ;77e0
        RET     z                                   ;77e2
        JR      b1_l77e6h                           ;77e3
b1_l77e5h:
        POP     af                                  ;77e5
b1_l77e6h:
        LD      c,a                                 ;77e6
        LD      a,(0xc289)                          ;77e7
        AND     a                                   ;77ea
        JR      z,b1_l77f2h                         ;77eb
b1_l77edh:
        LD      a,(PerMapParam)                     ;77ed
        CP      c                                   ;77f0
        RET                                         ;77f1
b1_l77f2h:
        LD      a,c                                 ;77f2
        CP      0x6c                                ;77f3
        JR      z,b1_l77fbh                         ;77f5
        CP      0x92                                ;77f7
        JR      nz,b1_l77edh                        ;77f9
b1_l77fbh:
        XOR     a                                   ;77fb
        RET                                         ;77fc
b1_sub_77fdh:
        LD      hl,0xc4f1                           ;77fd
        SUB     (hl)                                ;7800
        INC     hl                                  ;7801
        CP      (hl)                                ;7802
        RET                                         ;7803
b1_sub_7804h:
        PUSH    de                                  ;7804
        LD      a,e                                 ;7805
        SUB     0x20                                ;7806
        AND     0xf8                                ;7808
        LD      h,0x0                               ;780a
        LD      l,a                                 ;780c
        ADD     hl,hl                               ;780d
        ADD     hl,hl                               ;780e
        LD      a,d                                 ;780f
        AND     0xf8                                ;7810
        RRCA                                        ;7812
        RRCA                                        ;7813
        RRCA                                        ;7814
        CALL    ADD_HL_A                            ;7815
        LD      de,0xd800                           ;7818
        ADD     hl,de                               ;781b
        LD      a,(hl)                              ;781c
        POP     de                                  ;781d
        RET                                         ;781e
b1_sub_781fh:
        CALL    b1_sub_7804h                        ;781f
        LD      b,a                                 ;7822
        LD      hl,0xc4f1                           ;7823
        LD      a,(hl)                              ;7826
        CP      0xf0                                ;7827
        JR      nz,b1_l7830h                        ;7829
        DEC     l                                   ;782b
        LD      a,(hl)                              ;782c
        INC     a                                   ;782d
        JR      b1_l7830h                           ;782e
b1_l7830h:
        DEC     a                                   ;7830
        CP      b                                   ;7831
        RET                                         ;7832
b1_sub_7833h:
        LD      a,(BlockQueue)                      ;7833
        CP      0x2                                 ;7836
        RET     nc                                  ;7838
        LD      a,(isDrawKonamiLogoFinished)        ;7839
        AND     a                                   ;783c
        RET     nz                                  ;783d
        CALL    b1_sub_7bdah                        ;783e
        CALL    b1_sub_7cdbh                        ;7841
        CALL    b1_sub_78fah                        ;7844
        CALL    b1_sub_793ch                        ;7847
        CALL    b1_sub_7855h                        ;784a
        LD      a,(0xc4a7)                          ;784d
        AND     a                                   ;7850
        RET     nz                                  ;7851
        JP      b1_l78c4h                           ;7852
b1_sub_7855h:
        LD      ix,0xc600                           ;7855
        LD      b,0x8                               ;7859
b1_l785bh:
        LD      a,(ix+0xc)                          ;785b
        RRA                                         ;785e
        JR      nc,b1_l78bch                        ;785f
        LD      a,(ix+0x1d)                         ;7861
        AND     a                                   ;7864
        JR      nz,b1_l78bch                        ;7865
        LD      a,(ix+0x0)                          ;7867
        DEC     a                                   ;786a
        CP      0x21                                ;786b
        JR      nc,b1_l78bch                        ;786d
        DEC     a                                   ;786f
        CP      0x2                                 ;7870
        JR      c,b1_l787dh                         ;7872
        LD      a,(0xc4a0)                          ;7874
        SUB     0x4                                 ;7877
        CP      0x16                                ;7879
        JR      c,b1_l78bch                         ;787b
b1_l787dh:
        PUSH    bc                                  ;787d
        CALL    b1_sub_7a4eh                        ;787e
        POP     bc                                  ;7881
        JR      nc,b1_l78bch                        ;7882
        LD      a,(ix+0x0)                          ;7884
        CP      0x8                                 ;7887
        JP      z,b1_l79c8h                         ;7889
        CP      0x21                                ;788c
        JP      z,b1_l79c8h                         ;788e
        LD      hl,0xc4a7                           ;7891
        LD      a,(hl)                              ;7894
        AND     a                                   ;7895
        JR      nz,b1_l78bch                        ;7896
        LD      a,0x3c                              ;7898
        LD      (hl),a                              ;789a
        LD      a,0xb                               ;789b
        CALL    ProcessSoundCommand                 ;789d
        CALL    b1_sub_7a08h                        ;78a0
        RET     c                                   ;78a3
        XOR     a                                   ;78a4
        LD      (0xc271),a                          ;78a5
        INC     a                                   ;78a8
        CALL    DrawFieldItem                       ;78a9
        LD      a,(ix+0x0)                          ;78ac
        CP      0x5                                 ;78af
        JP      z,b1_l79e2h                         ;78b1
        CP      0x9                                 ;78b4
        JP      z,b1_l79f0h                         ;78b6
        JP      b1_l79f6h                           ;78b9
b1_l78bch:
        LD      de,0x80                             ;78bc
        ADD     ix,de                               ;78bf
        DJNZ    b1_l785bh                           ;78c1
        RET                                         ;78c3
b1_l78c4h:
        LD      ix,0xca00                           ;78c4
        LD      b,0x8                               ;78c8
b1_l78cah:
        LD      a,(ix+0x0)                          ;78ca
        DEC     a                                   ;78cd
        CP      0x21                                ;78ce
        JR      nc,b1_l78f2h                        ;78d0
        PUSH    bc                                  ;78d2
        CALL    b1_sub_7a3eh                        ;78d3
        POP     bc                                  ;78d6
        JR      nc,b1_l78f2h                        ;78d7
        LD      a,0x3c                              ;78d9
        LD      (0xc4a7),a                          ;78db
        LD      a,0xb                               ;78de
        CALL    ProcessSoundCommand                 ;78e0
        CALL    b1_sub_7a2fh                        ;78e3
        RET     c                                   ;78e6
        XOR     a                                   ;78e7
        LD      (0xc271),a                          ;78e8
        INC     a                                   ;78eb
        CALL    DrawFieldItem                       ;78ec
        JP      b1_l7a04h                           ;78ef
b1_l78f2h:
        LD      de,0x40                             ;78f2
        ADD     ix,de                               ;78f5
        DJNZ    b1_l78cah                           ;78f7
        RET                                         ;78f9
b1_sub_78fah:
        LD      a,(0xc492)                          ;78fa
        AND     a                                   ;78fd
        RET     z                                   ;78fe
        LD      ix,0xc600                           ;78ff
        LD      b,0x8                               ;7903
b1_l7905h:
        LD      a,(ix+0x0)                          ;7905
        DEC     a                                   ;7908
        CP      0x21                                ;7909
        JR      nc,b1_l7934h                        ;790b
        LD      a,(ix+0xc)                          ;790d
        RRA                                         ;7910
        RRA                                         ;7911
        JR      nc,b1_l7934h                        ;7912
        PUSH    bc                                  ;7914
        CALL    b1_sub_7a61h                        ;7915
        POP     bc                                  ;7918
        JR      nc,b1_l7934h                        ;7919
        CALL    b1_sub_7980h                        ;791b
        CALL    b1_sub_799dh                        ;791e
        LD      a,0x1                               ;7921
        LD      (ix+0xd),a                          ;7923
b1_sub_7926h:
        LD      a,(ix+0x0)                          ;7926
        CP      0x3                                 ;7929
        LD      a,0xd                               ;792b
        JR      nz,b1_l7931h                        ;792d
        LD      a,0xc                               ;792f
b1_l7931h:
        JP      ProcessSoundCommand                 ;7931
b1_l7934h:
        LD      de,0x80                             ;7934
        ADD     ix,de                               ;7937
        DJNZ    b1_l7905h                           ;7939
        RET                                         ;793b
b1_sub_793ch:
        LD      a,(0xc4d0)                          ;793c
        LD      b,a                                 ;793f
        LD      a,(0xc4e0)                          ;7940
        OR      b                                   ;7943
        RET     z                                   ;7944
        LD      ix,0xc600                           ;7945
        LD      b,0x8                               ;7949
b1_l794bh:
        LD      a,(ix+0x0)                          ;794b
        DEC     a                                   ;794e
        CP      0x21                                ;794f
        JR      nc,b1_l7978h                        ;7951
        LD      a,(ix+0xc)                          ;7953
        RRA                                         ;7956
        RRA                                         ;7957
        JR      nc,b1_l7978h                        ;7958
        PUSH    bc                                  ;795a
        CALL    b1_sub_7a73h                        ;795b
        POP     bc                                  ;795e
        JR      nc,b1_l7978h                        ;795f
        CALL    b1_sub_7980h                        ;7961
        CALL    b1_sub_799dh                        ;7964
        LD      a,0x1                               ;7967
        LD      (ix+0xd),a                          ;7969
        CALL    b1_sub_7926h                        ;796c
        PUSH    iy                                  ;796f
        POP     hl                                  ;7971
        INC     hl                                  ;7972
        INC     hl                                  ;7973
        INC     hl                                  ;7974
        JP      HideSpriteRecord                    ;7975
b1_l7978h:
        LD      de,0x80                             ;7978
        ADD     ix,de                               ;797b
        DJNZ    b1_l794bh                           ;797d
        RET                                         ;797f
b1_sub_7980h:
        DI                                          ;7980
        LD      a,0x9                               ;7981
        LD      (0xa000),a                          ;7983
        LD      (BanksInA0),a                       ;7986
        EI                                          ;7989
        LD      a,(ix+0x0)                          ;798a
        DEC     a                                   ;798d
        LD      hl,0xb84c                           ;798e
        CALL    ADD_HL_A                            ;7991
        LD      e,0x0                               ;7994
        LD      d,(hl)                              ;7996
        CALL    0x437e                              ;7997
        JP      SetBanks1_2_3                       ;799a
b1_sub_799dh:
        DI                                          ;799d
        LD      a,0x9                               ;799e
        LD      (0xa000),a                          ;79a0
        LD      (BanksInA0),a                       ;79a3
        EI                                          ;79a6
        LD      a,(ix+0x0)                          ;79a7
        CP      0x8                                 ;79aa
        JR      z,b1_l79bfh                         ;79ac
        CP      0x21                                ;79ae
        JR      z,b1_l79bfh                         ;79b0
        DEC     a                                   ;79b2
        LD      hl,0xb86d                           ;79b3
        CALL    ADD_HL_A                            ;79b6
        LD      e,(hl)                              ;79b9
        CALL    0x5929                              ;79ba
        JR      b1_l79c5h                           ;79bd
b1_l79bfh:
        LD      de,0x50                             ;79bf
        CALL    0x5958                              ;79c2
b1_l79c5h:
        JP      SetBanks1_2_3                       ;79c5
b1_l79c8h: equ     #79c8
        DEFB    0xcd,0xb7,0x87,0x11,0x00,0x10,0xcd,0x7e  ;79c8 ; data:code-gap
        DEFB    0x43,0x3a,0x80,0xef,0xe6,0x02,0x28,0x05  ;79d0
        DEFB    0x1e,0x10,0xcd,0x29,0x59,0x3e,0x12,0xc3  ;79d8
        DEFB    0xe4,0x4f,0x21,0x7e,0xc2,0x7e,0xa7,0x28  ;79e0
        DEFB    0x07,0xaf,0x77,0x3e,0x0a,0xc3,0xfa,0x57  ;79e8
        DEFB    0x11,0x20,0x00,0xc3,0x58,0x59       ;79f0
b1_l79ddh: equ     #79dd
b1_l79e2h: equ     #79e2
b1_l79f0h: equ     #79f0
b1_l79f6h:
        LD      b,0x4                               ;79f6
b1_l79f8h:
        LD      hl,0xc481                           ;79f8
        LD      a,(hl)                              ;79fb
        SUB     b                                   ;79fc
        JR      nc,b1_l7a00h                        ;79fd
        XOR     a                                   ;79ff
b1_l7a00h:
        LD      (hl),a                              ;7a00
        JP      DrawHudLifeBar                      ;7a01
b1_l7a04h:
        LD      b,0x2                               ;7a04
        JR      b1_l79f8h                           ;7a06
b1_sub_7a08h:
        LD      a,(ix+0x0)                          ;7a08
        LD      hl,0xc276                           ;7a0b
        CP      0x1                                 ;7a0e
        JR      z,b1_l7a20h                         ;7a10
        CP      0x6                                 ;7a12
        JR      z,b1_l7a20h                         ;7a14
        LD      hl,0xc273                           ;7a16
        CP      0x5                                 ;7a19
        JR      z,b1_l7a20h                         ;7a1b
        LD      hl,0xc274                           ;7a1d
b1_l7a20h:
        LD      a,(hl)                              ;7a20
        AND     a                                   ;7a21
        RET     z                                   ;7a22
        DEC     (hl)                                ;7a23
        CALL    z,b1_sub_7a29h                      ;7a24
        SCF                                         ;7a27
        RET                                         ;7a28
b1_sub_7a29h:
        LD      a,l                                 ;7a29
        SUB     0x70                                ;7a2a
        JP      DrawFieldItem                       ;7a2c
b1_sub_7a2fh:
        LD      a,(ix+0x0)                          ;7a2f
        LD      hl,0xc275                           ;7a32
        CP      0x3                                 ;7a35
        JR      c,b1_l7a20h                         ;7a37
        LD      hl,0xc272                           ;7a39
        JR      b1_l7a20h                           ;7a3c
b1_sub_7a3eh:
        CALL    b1_sub_7acah                        ;7a3e
        CALL    JumpIndex                           ;7a41
        DEFW    0x7af5,0x7afb,0x7b01,0x7b01         ;7a44 ; data:jumptable
        DEFW    0x7b07                              ;7a4c
b1_sub_7a4eh: equ     #7a4e
        LD      a,0x1                               ;7a4e
        LD      (0xee80),a                          ;7a50
        CALL    b1_sub_7a85h                        ;7a53
        CALL    JumpIndex                           ;7a56
        DEFW    0x7b0d,0x7b1f,0x7b25,0x7b37         ;7a59 ; data:jumptable
b1_sub_7a61h: equ     #7a61
        XOR     a                                   ;7a61
        LD      (0xee80),a                          ;7a62
        CALL    b1_sub_7a85h                        ;7a65
        CALL    JumpIndex                           ;7a68
        DEFW    0x7b13,0x7b13,0x7b2b,0x7b3d         ;7a6b ; data:jumptable
b1_sub_7a73h: equ     #7a73
        XOR     a                                   ;7a73
        LD      (0xee80),a                          ;7a74
        CALL    b1_sub_7a85h                        ;7a77
        CALL    JumpIndex                           ;7a7a
        DEFW    0x7b19,0x7b19,0x7b31,0x7b43         ;7a7d ; data:jumptable
b1_sub_7a85h: equ     #7a85
        DI                                          ;7a85
        LD      a,0x9                               ;7a86
        LD      (0xa000),a                          ;7a88
        LD      (BanksInA0),a                       ;7a8b
        EI                                          ;7a8e
        LD      a,(ix+0x0)                          ;7a8f
        DEC     a                                   ;7a92
        LD      hl,0xb88e                           ;7a93
        CALL    ADD_HL_A                            ;7a96
        LD      a,(hl)                              ;7a99
        LD      h,a                                 ;7a9a
        CP      0x3                                 ;7a9b
        LD      de,0x700                            ;7a9d
        JR      z,b1_l7abbh                         ;7aa0
        LD      de,0xf00                            ;7aa2
        CP      0x2                                 ;7aa5
        JR      nz,b1_l7abbh                        ;7aa7
        LD      a,(0xee80)                          ;7aa9
        AND     a                                   ;7aac
        JR      z,b1_l7abbh                         ;7aad
        LD      h,0x3                               ;7aaf
        LD      e,0x8                               ;7ab1
        LD      a,(ix+0xf)                          ;7ab3
        AND     a                                   ;7ab6
        JR      z,b1_l7abbh                         ;7ab7
        LD      e,0xf8                              ;7ab9
b1_l7abbh: equ     #7abb
        LD      a,(ix+0x5)                          ;7abb
        SUB     e                                   ;7abe
        LD      b,a                                 ;7abf
        LD      a,(ix+0x3)                          ;7ac0
        SUB     d                                   ;7ac3
        LD      c,a                                 ;7ac4
        LD      a,h                                 ;7ac5
        DEC     a                                   ;7ac6
        JP      SetBanks1_2_3                       ;7ac7
b1_sub_7acah: equ     #7aca
        LD      a,(ix+0x0)                          ;7aca
        DEC     a                                   ;7acd
        LD      hl,b1_l7ae8h                        ;7ace
        CALL    ADD_HL_A                            ;7ad1
        LD      a,(hl)                              ;7ad4
        DEC     a                                   ;7ad5
        LD      d,a                                 ;7ad6
        LD      b,(ix+0x5)                          ;7ad7
        LD      hl,b1_l7af0h                        ;7ada
        CALL    ADD_HL_A                            ;7add
        LD      c,(hl)                              ;7ae0
        LD      a,(ix+0x3)                          ;7ae1
        SUB     c                                   ;7ae4
        LD      c,a                                 ;7ae5
        LD      a,d                                 ;7ae6
        RET                                         ;7ae7
b1_l7ae8h: equ     #7ae8
        LD      bc,0x401                            ;7ae8
        LD      bc,0x203                            ;7aeb
        DEC     b                                   ;7aee
        INC     bc                                  ;7aef
b1_l7af0h: equ     #7af0
        INC     b                                   ;7af0
        LD      b,0x5                               ;7af1
        RLCA                                        ;7af3
        LD      (bc),a                              ;7af4
        LD      hl,0x202                            ;7af5
        JP      b1_l7b49h                           ;7af8
        LD      hl,0x302                            ;7afb
        JP      b1_l7b49h                           ;7afe
        LD      hl,0x404                            ;7b01
        JP      b1_l7b49h                           ;7b04
        LD      hl,UPC                              ;7b07
        JP      b1_l7b49h                           ;7b0a
        LD      hl,0x404                            ;7b0d
        JP      b1_l7b49h                           ;7b10
        LD      hl,0xb04                            ;7b13
        JP      b1_l7b67h                           ;7b16
        LD      hl,0xb04                            ;7b19
        JP      b1_l7baah                           ;7b1c
        LD      hl,0x40c                            ;7b1f
        JP      b1_l7b49h                           ;7b22
        LD      hl,0x404                            ;7b25
        JP      b1_l7b49h                           ;7b28
        LD      hl,0x404                            ;7b2b
        JP      b1_l7b67h                           ;7b2e
        LD      hl,0x404                            ;7b31
        JP      b1_l7baah                           ;7b34
        LD      hl,0x808                            ;7b37
        JP      b1_l7b49h                           ;7b3a
        LD      hl,0x808                            ;7b3d
        JP      b1_l7b67h                           ;7b40
        LD      hl,0x808                            ;7b43
        JP      b1_l7baah                           ;7b46
b1_l7b49h:
        LD      a,0x4                               ;7b49
        ADD     a,l                                 ;7b4b
        LD      l,a                                 ;7b4c
        LD      a,(0xc49a)                          ;7b4d
        SUB     b                                   ;7b50
        JR      nc,b1_l7b55h                        ;7b51
        NEG                                         ;7b53
b1_l7b55h:
        CP      l                                   ;7b55
        RET     nc                                  ;7b56
        LD      a,0x4                               ;7b57
        ADD     a,h                                 ;7b59
        LD      h,a                                 ;7b5a
        LD      a,(0xc498)                          ;7b5b
        SUB     0xc                                 ;7b5e
        SUB     c                                   ;7b60
        JR      nc,b1_l7b65h                        ;7b61
        NEG                                         ;7b63
b1_l7b65h:
        CP      h                                   ;7b65
        RET                                         ;7b66
b1_l7b67h:
        PUSH    hl                                  ;7b67
        LD      a,(0xc4a2)                          ;7b68
        ADD     a,a                                 ;7b6b
        LD      hl,b1_l7ba2h                        ;7b6c
        CALL    ADD_HL_A                            ;7b6f
        LD      e,(hl)                              ;7b72
        INC     hl                                  ;7b73
        LD      d,(hl)                              ;7b74
        POP     hl                                  ;7b75
        LD      a,0x4                               ;7b76
        ADD     a,l                                 ;7b78
        LD      l,a                                 ;7b79
        LD      a,(0xc4a2)                          ;7b7a
        CP      0x2                                 ;7b7d
        LD      a,(0xc49a)                          ;7b7f
        JR      z,b1_l7b87h                         ;7b82
        ADD     a,e                                 ;7b84
        JR      b1_l7b88h                           ;7b85
b1_l7b87h:
        SUB     e                                   ;7b87
b1_l7b88h:
        JR      nc,b1_l7b8ch                        ;7b88
        XOR     a                                   ;7b8a
        RET                                         ;7b8b
b1_l7b8ch:
        SUB     b                                   ;7b8c
        JR      nc,b1_l7b91h                        ;7b8d
        NEG                                         ;7b8f
b1_l7b91h:
        CP      l                                   ;7b91
        RET     nc                                  ;7b92
        LD      a,0x4                               ;7b93
        ADD     a,h                                 ;7b95
        LD      h,a                                 ;7b96
        LD      a,(0xc498)                          ;7b97
b1_l7b9ah:
        ADD     a,d                                 ;7b9a
        SUB     c                                   ;7b9b
        JR      nc,b1_l7ba0h                        ;7b9c
        NEG                                         ;7b9e
b1_l7ba0h:
        CP      h                                   ;7ba0
        RET                                         ;7ba1
b1_l7ba2h:
        NOP                                         ;7ba2
        JP      po,0xff00                           ;7ba3
        DJNZ    $-14                                ;7ba6
        DJNZ    b1_l7b9ah                           ;7ba8
b1_l7baah:
        LD      iy,0xc4d0                           ;7baa
        PUSH    hl                                  ;7bae
        CALL    b1_sub_7bbch                        ;7baf
        POP     hl                                  ;7bb2
        RET     c                                   ;7bb3
        LD      iy,0xc4e0                           ;7bb4
        CALL    b1_sub_7bbch                        ;7bb8
        RET                                         ;7bbb
b1_sub_7bbch:
        LD      a,0x3                               ;7bbc
        ADD     a,l                                 ;7bbe
        LD      l,a                                 ;7bbf
        LD      a,(iy+0x4)                          ;7bc0
        SUB     b                                   ;7bc3
        JR      nc,b1_l7bc8h                        ;7bc4
        NEG                                         ;7bc6
b1_l7bc8h:
        CP      l                                   ;7bc8
        RET     nc                                  ;7bc9
        LD      a,0x3                               ;7bca
        ADD     a,h                                 ;7bcc
        LD      h,a                                 ;7bcd
        LD      a,(iy+0x3)                          ;7bce
        SUB     0x3                                 ;7bd1
        SUB     c                                   ;7bd3
        JR      nc,b1_l7bd8h                        ;7bd4
        NEG                                         ;7bd6
b1_l7bd8h:
        CP      h                                   ;7bd8
        RET                                         ;7bd9
b1_sub_7bdah:
        LD      ix,0xcc00                           ;7bda
        LD      b,0x4                               ;7bde
b1_l7be0h:
        LD      a,(ix+0x0)                          ;7be0
        AND     a                                   ;7be3
        JR      z,b1_l7c1dh                         ;7be4
        CP      0x8                                 ;7be6
        JP      nc,b1_l7c9ch                        ;7be8
        LD      a,(ix+0xc)                          ;7beb
        RRA                                         ;7bee
        JR      c,b1_l7c02h                         ;7bef
        LD      a,(BlockQueue)                      ;7bf1
        DEC     a                                   ;7bf4
        JR      nz,b1_l7c1dh                        ;7bf5
        CALL    b1_sub_7d30h                        ;7bf7
        JR      nc,b1_l7c1dh                        ;7bfa
        LD      (ix+0xd),0x1                        ;7bfc
        JR      b1_l7c1dh                           ;7c00
b1_l7c02h:
        LD      a,(ix+0x0)                          ;7c02
        SUB     0x6                                 ;7c05
        CP      0x2                                 ;7c07
        JR      c,b1_l7c25h                         ;7c09
        PUSH    bc                                  ;7c0b
        CALL    b1_sub_7d4ah                        ;7c0c
        POP     bc                                  ;7c0f
        JR      nc,b1_l7c1dh                        ;7c10
        CALL    b1_sub_7d56h                        ;7c12
        CALL    0x87b7                              ;7c15
        LD      a,0x12                              ;7c18
        JP      ProcessSoundCommand                 ;7c1a
b1_l7c1dh:
        LD      de,0x40                             ;7c1d
        ADD     ix,de                               ;7c20
        DJNZ    b1_l7be0h                           ;7c22
        RET                                         ;7c24
b1_l7c25h:
        LD      a,(BlockQueue)                      ;7c25
        AND     a                                   ;7c28
        JR      nz,b1_l7c1dh                        ;7c29
        LD      a,(ix+0x3)                          ;7c2b
        SUB     0xc                                 ;7c2e
        LD      c,a                                 ;7c30
        LD      a,(0xc494)                          ;7c31
        SUB     c                                   ;7c34
        CP      0x8                                 ;7c35
        JR      nc,b1_l7c1dh                        ;7c37
        LD      a,(ix+0x5)                          ;7c39
        SUB     0x4                                 ;7c3c
        LD      c,a                                 ;7c3e
        LD      a,(0xc496)                          ;7c3f
        SUB     c                                   ;7c42
        CP      0x8                                 ;7c43
        JR      nc,b1_l7c1dh                        ;7c45
        XOR     a                                   ;7c47
        LD      (0xc492),a                          ;7c48
        LD      (0xc49f),a                          ;7c4b
        CALL    ClearFieldRecordHeaders             ;7c4e
        CALL    ShiftCC00Queue                      ;7c51
        LD      hl,0xc4d3                           ;7c54
        CALL    HideSpriteRecord                    ;7c57
        LD      hl,0xc4e3                           ;7c5a
        CALL    HideSpriteRecord                    ;7c5d
        CALL    SetAllSpritesHidden                 ;7c60
        LD      a,0x4                               ;7c63
        LD      (BlockQueue),a                      ;7c65
        LD      a,0x20                              ;7c68
        LD      (0xc4a8),a                          ;7c6a
        LD      a,(0xc494)                          ;7c6d
        AND     0xf0                                ;7c70
        ADD     a,0x8                               ;7c72
        LD      (0xc494),a                          ;7c74
        LD      (0xc498),a                          ;7c77
        LD      a,(0xc496)                          ;7c7a
        AND     0xf0                                ;7c7d
        ADD     a,0x8                               ;7c7f
        LD      (0xc496),a                          ;7c81
        LD      (0xc49a),a                          ;7c84
        LD      hl,0x0                              ;7c87
        LD      (0xc49b),hl                         ;7c8a
        LD      (0xc49d),hl                         ;7c8d
        XOR     a                                   ;7c90
        LD      (0xc4a7),a                          ;7c91
        CALL    b1_sub_6f60h                        ;7c94
        LD      a,0x90                              ;7c97
        JP      ProcessSoundCommand                 ;7c99
b1_l7c9ch:
        LD      a,(ix+0xc)                          ;7c9c
        RRA                                         ;7c9f
        JP      nc,b1_l7c1dh                        ;7ca0
        LD      a,(BlockQueue)                      ;7ca3
        AND     a                                   ;7ca6
        JP      nz,b1_l7c1dh                        ;7ca7
        LD      a,(0xc494)                          ;7caa
        LD      c,a                                 ;7cad
        LD      a,(ix+0x3)                          ;7cae
        SUB     0x2                                 ;7cb1
        SUB     c                                   ;7cb3
        CP      0xc                                 ;7cb4
        JP      nc,b1_l7c1dh                        ;7cb6
        LD      a,(ix+0x5)                          ;7cb9
        SUB     0x6                                 ;7cbc
        LD      c,a                                 ;7cbe
        LD      a,(0xc496)                          ;7cbf
        SUB     c                                   ;7cc2
        CP      0xc                                 ;7cc3
        JP      nc,b1_l7c1dh                        ;7cc5
        LD      (ix+0xd),0x1                        ;7cc8
        LD      a,(ix+0x0)                          ;7ccc
        CP      0xa                                 ;7ccf
        LD      a,0x1e                              ;7cd1
        JP      nz,ProcessSoundCommand              ;7cd3
        LD      a,0x14                              ;7cd6
        JP      ProcessSoundCommand                 ;7cd8
b1_sub_7cdbh:
        LD      a,(0xc492)                          ;7cdb
        AND     a                                   ;7cde
        RET     z                                   ;7cdf
        LD      ix,0xcc00                           ;7ce0
        LD      b,0x4                               ;7ce4
b1_l7ce6h:
        LD      a,(ix+0x0)                          ;7ce6
        CP      0xe                                 ;7ce9
        JR      nz,b1_l7d00h                        ;7ceb
        PUSH    bc                                  ;7ced
        LD      hl,0xa0a                            ;7cee
        LD      b,(ix+0x5)                          ;7cf1
        LD      a,(ix+0x3)                          ;7cf4
        SUB     0x8                                 ;7cf7
        LD      c,a                                 ;7cf9
        CALL    b1_l7b67h                           ;7cfa
        POP     bc                                  ;7cfd
        JR      c,b1_l7d08h                         ;7cfe
