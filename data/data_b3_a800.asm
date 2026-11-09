        DEFB    0x02,0x02,0x01,0x08,0x02,0x02,0x01,0x04  ;a800 ; data:code-gap
        DEFB    0x01,0x01,0x02,0x08,0x01,0x01,0x02,0x04  ;a808
        DEFB    0xcd,0x66,0xa9,0xd8                 ;a810
        LD      a,(ix+0x0)                          ;a814
        CP      0x19                                ;a817
        JP      z,b3_la7b4h                         ;a819
        CP      0x20                                ;a81c
        JP      z,b3_la7b4h                         ;a81e
b3_la821h:
        CALL    b3_sub_a954h                        ;a821
        CALL    0x894d                              ;a824
b3_la827h:
        LD      a,(ix+0x1)                          ;a827
        DEC     a                                   ;a82a
        JR      z,b3_la83ch                         ;a82b
        LD      a,(0xc00d)                          ;a82d
        AND     0x3                                 ;a830
        JR      nz,b3_la83ch                        ;a832
        DEC     (ix+0x13)                           ;a834
        JR      nz,b3_la83ch                        ;a837
        INC     (ix+0x1)                            ;a839
b3_la83ch:
        CALL    b3_sub_a699h                        ;a83c
        JR      nc,b3_la84ah                        ;a83f
        CALL    b3_sub_a625h                        ;a841
        JP      c,b3_la8a2h                         ;a844
        JP      0x9fca                              ;a847
b3_la84ah:
        LD      (ix+0x76),0x0                       ;a84a
        CALL    b3_sub_a917h                        ;a84e
        DEC     (ix+0xb)                            ;a851
        RET     nz                                  ;a854
        LD      hl,0xc00d                           ;a855
        LD      a,r                                 ;a858
        XOR     (hl)                                ;a85a
        AND     0x1f                                ;a85b
        ADD     a,(ix+0x15)                         ;a85d
        LD      (ix+0xb),a                          ;a860
        CALL    b3_sub_a8b3h                        ;a863
        LD      a,(ix+0x70)                         ;a866
        AND     0x3                                 ;a869
        JR      nz,b3_la894h                        ;a86b
        LD      (ix+0x70),0x1                       ;a86d
        LD      a,(ix+0x16)                         ;a871
        CP      (ix+0x17)                           ;a874
        JR      nc,b3_la887h                        ;a877
b3_la879h:
        LD      hl,0xcd20                           ;a879
        LD      a,0x4                               ;a87c
        BIT     0,(hl)                              ;a87e
        JR      z,b3_la884h                         ;a880
        ADD     a,0x4                               ;a882
b3_la884h:
        JP      b3_sub_a58eh                        ;a884
b3_la887h:
        LD      hl,0xcd21                           ;a887
        LD      a,0x1                               ;a88a
        BIT     0,(hl)                              ;a88c
        JR      z,b3_la891h                         ;a88e
        INC     a                                   ;a890
b3_la891h:
        JP      b3_sub_a58eh                        ;a891
b3_la894h:
        INC     (ix+0x70)                           ;a894
        LD      a,(ix+0x1f)                         ;a897
        OR      a                                   ;a89a
        RET     z                                   ;a89b
        AND     0x3                                 ;a89c
        JR      z,b3_la887h                         ;a89e
        JR      b3_la879h                           ;a8a0
b3_la8a2h:
        CALL    b3_sub_a8b3h                        ;a8a2
        LD      a,(ix+0x76)                         ;a8a5
        INC     a                                   ;a8a8
        LD      (ix+0x76),a                         ;a8a9
        CP      0x2                                 ;a8ac
        JR      nc,b3_la894h                        ;a8ae
        JP      b3_la611h                           ;a8b0
b3_sub_a8b3h:
        LD      a,(ix+0x1)                          ;a8b3
        DEC     a                                   ;a8b6
        JR      z,b3_la8deh                         ;a8b7
        LD      hl,0xcd20                           ;a8b9
        LD      (hl),0x0                            ;a8bc
        LD      a,(0xc494)                          ;a8be
        SUB     (ix+0x3)                            ;a8c1
        JR      nc,b3_la8c9h                        ;a8c4
        NEG                                         ;a8c6
        INC     (hl)                                ;a8c8
b3_la8c9h:
        LD      (ix+0x17),a                         ;a8c9
        INC     hl                                  ;a8cc
        LD      (hl),0x0                            ;a8cd
        LD      a,(0xc496)                          ;a8cf
        SUB     (ix+0x5)                            ;a8d2
        JR      nc,b3_la8dah                        ;a8d5
        NEG                                         ;a8d7
        INC     (hl)                                ;a8d9
b3_la8dah:
        LD      (ix+0x16),a                         ;a8da
        RET                                         ;a8dd
b3_la8deh:
        XOR     a                                   ;a8de
        LD      (0xcd20),a                          ;a8df
        LD      (0xcd21),a                          ;a8e2
        LD      (ix+0x17),a                         ;a8e5
        JR      b3_la8dah                           ;a8e8
        DEC     (ix+0xb)                            ;a8ea
        RET     nz                                  ;a8ed
        LD      a,0x4                               ;a8ee
        CALL    b3_sub_a58eh                        ;a8f0
        DEC     (ix+0xe)                            ;a8f3
        LD      (ix+0xc),0x3                        ;a8f6
        INC     (ix+0x1)                            ;a8fa
        RET                                         ;a8fd
        CALL    b3_sub_a954h                        ;a8fe
        LD      a,0x4a                              ;a901
        CALL    0x8950                              ;a903
        LD      a,(ix+0x3)                          ;a906
        CP      0x60                                ;a909
        RET     c                                   ;a90b
        CALL    b3_sub_aa04h                        ;a90c
        CALL    b3_sub_a750h                        ;a90f
        LD      (ix+0x1),0x0                        ;a912
        RET                                         ;a916
b3_sub_a917h:
        LD      a,(ix+0x1)                          ;a917
        DEC     a                                   ;a91a
        RET     z                                   ;a91b
        LD      a,(ix+0x0)                          ;a91c
        LD      b,a                                 ;a91f
        CP      0x15                                ;a920
        RET     z                                   ;a922
        DEC     (ix+0x78)                           ;a923
        RET     nz                                  ;a926
        LD      a,b                                 ;a927
        CP      0xf                                 ;a928
        JR      nz,b3_la93ah                        ;a92a
        LD      a,(ix+0x72)                         ;a92c
        DEC     a                                   ;a92f
        JR      z,b3_la94eh                         ;a930
        LD      (ix+0x72),a                         ;a932
        CALL    b3_sub_a46bh                        ;a935
        JR      b3_la93dh                           ;a938
b3_la93ah:
        LD      a,(ix+0x77)                         ;a93a
b3_la93dh:
        LD      (ix+0x78),a                         ;a93d
        LD      a,(ix+0xf)                          ;a940
        LD      (0xcd38),a                          ;a943
        LD      a,(ix+0x7d)                         ;a946
        OR      a                                   ;a949
        RET     z                                   ;a94a
        JP      0x89c2                              ;a94b
b3_la94eh:
        LD      (ix+0x72),0x3                       ;a94e
        JR      b3_la93ah                           ;a952
b3_sub_a954h:
        LD      a,(ix+0x1)                          ;a954
        CP      0x2                                 ;a957
        RET     z                                   ;a959
        LD      a,(ix+0x1f)                         ;a95a
        AND     0x3                                 ;a95d
        RET     z                                   ;a95f
        AND     0x1                                 ;a960
        LD      (ix+0xf),a                          ;a962
        RET                                         ;a965
b3_sub_a966h:
        DEC     (ix+0x78)                           ;a966
        RET     nz                                  ;a969
        CALL    b3_sub_a067h                        ;a96a
        LD      de,0x0                              ;a96d
        CALL    0x87e4                              ;a970
        CALL    0x87eb                              ;a973
        LD      (ix+0x78),0x14                      ;a976
        LD      a,0x68                              ;a97a
        ADD     a,(ix+0xf)                          ;a97c
        LD      (ix+0xa),a                          ;a97f
        LD      (ix+0x1),0x2                        ;a982
        SCF                                         ;a986
        RET                                         ;a987
        DEC     (ix+0x78)                           ;a988
        RET     nz                                  ;a98b
        LD      (ix+0x78),0x14                      ;a98c
        LD      a,(ix+0xf)                          ;a990
        LD      (0xcd38),a                          ;a993
        DEFB    0xdd,0x34,0x01,0xdd,0x7e,0x7d,0xc3,0xc2  ;a996 ; data:code-gap
        DEFB    0x89                                ;a99e
        DEC     (ix+0x78)                           ;a99f
        RET     nz                                  ;a9a2
        LD      a,(ix+0x77)                         ;a9a3
        LD      (ix+0x78),a                         ;a9a6
        LD      (ix+0x1),0x0                        ;a9a9
        CALL    0x893d                              ;a9ad
        JP      b3_sub_a080h                        ;a9b0
        DEC     (ix+0x12)                           ;a9b3
        JP      z,0x87b7                            ;a9b6
        LD      a,(ix+0x11)                         ;a9b9
        XOR     0x1                                 ;a9bc
        LD      (ix+0x11),a                         ;a9be
        JR      z,b3_la9cbh                         ;a9c1
        LD      a,(ix+0x5)                          ;a9c3
        INC     a                                   ;a9c6
        LD      (ix+0x5),a                          ;a9c7
        RET                                         ;a9ca
b3_la9cbh:
        LD      a,(ix+0x5)                          ;a9cb
        DEC     a                                   ;a9ce
        LD      (ix+0x5),a                          ;a9cf
        RET                                         ;a9d2
        LD      a,(ix+0x0)                          ;a9d3
        CP      0x21                                ;a9d6
        JR      nz,b3_la9e5h                        ;a9d8
        LD      hl,0xcd60                           ;a9da
        LD      a,(hl)                              ;a9dd
        ADD     a,0x1                               ;a9de
        JR      nc,b3_la9e4h                        ;a9e0
        LD      a,0x8                               ;a9e2
b3_la9e4h:
        LD      (hl),a                              ;a9e4
b3_la9e5h:
        LD      a,(ix+0x3)                          ;a9e5
        LD      (ix+0x10),a                         ;a9e8
        LD      (ix+0x11),0x0                       ;a9eb
        LD      (ix+0xc),0x0                        ;a9ef
        LD      (ix+0x12),0x20                      ;a9f3
        LD      de,0x0                              ;a9f7
        CALL    0x87e4                              ;a9fa
        CALL    0x87eb                              ;a9fd
        INC     (ix+0xd)                            ;aa00
        RET                                         ;aa03
b3_sub_aa04h:
        LD      a,(ix+0x0)                          ;aa04
        CP      0x22                                ;aa07
b3_laa09h:
        RET     nc                                  ;aa09
        DEC     a                                   ;aa0a
        ADD     a,a                                 ;aa0b
        ADD     a,a                                 ;aa0c
        LD      de,b3_laa51h                        ;aa0d
        CALL    ADD_DE_A                            ;aa10
        LD      a,(de)                              ;aa13
b3_laa14h:
        LD      (ix+0x7e),a                         ;aa14
        INC     de                                  ;aa17
        LD      a,(de)                              ;aa18
        LD      h,0x10                              ;aa19
        CALL    b3_sub_aa40h                        ;aa1b
        LD      (ix+0xb),a                          ;aa1e
        INC     de                                  ;aa21
        LD      a,(de)                              ;aa22
        LD      c,a                                 ;aa23
        AND     0x1f                                ;aa24
        LD      (ix+0x7d),a                         ;aa26
        LD      a,c                                 ;aa29
        RLCA                                        ;aa2a
        RLCA                                        ;aa2b
        AND     0x3                                 ;aa2c
        LD      (ix+0x1e),a                         ;aa2e
        INC     de                                  ;aa31
        LD      a,(de)                              ;aa32
        LD      h,0x20                              ;aa33
        CALL    b3_sub_aa40h                        ;aa35
b3_laa38h:
        LD      (ix+0x78),0x8                       ;aa38
        LD      (ix+0x77),a                         ;aa3c
        RET                                         ;aa3f
b3_sub_aa40h:
        LD      c,a                                 ;aa40
        LD      a,(0xcd12)                          ;aa41
b3_laa44h:
        ADD     a,a                                 ;aa44
        LD      b,a                                 ;aa45
        ADD     a,a                                 ;aa46
        ADD     a,b                                 ;aa47
        LD      b,a                                 ;aa48
        LD      a,c                                 ;aa49
        SUB     b                                   ;aa4a
        JR      c,b3_laa4fh                         ;aa4b
        CP      h                                   ;aa4d
        RET     nc                                  ;aa4e
b3_laa4fh:
        LD      a,h                                 ;aa4f
        RET                                         ;aa50
b3_laa51h: equ     #aa51
        DEFB    0x6a,0x00,0x00,0x00,0x8f,0x00,0x01,0x0a  ;aa51 ; data:code-gap
        DEFB    0x4e,0x00,0x02,0x00,0x30,0x00,0x00,0x00  ;aa59
        DEFB    0x04,0x00,0xc0,0x00,0x41,0x00,0x00,0x00  ;aa61
        DEFB    0x6e,0x00,0x80,0x00,0x43,0x00,0x00,0x00  ;aa69
        DEFB    0x04,0x14,0x80,0x00,0x38,0x20,0x84,0x40  ;aa71
        DEFB    0x8b,0x00,0x05,0x30,0x8b,0x00,0x05,0x10  ;aa79
        DEFB    0x4a,0x30,0xc0,0x00,0x4a,0x40,0xc0,0x00  ;aa81
        DEFB    0x34,0x35,0xc3,0xa0,0x0c,0x00,0x40,0x00  ;aa89
        DEFB    0x08,0x30,0x80,0x00,0x7a,0x00,0x80,0x00  ;aa91
        DEFB    0x04,0x00,0x40,0x00,0x1c,0x00,0x40,0x00  ;aa99
        DEFB    0x5c,0x38,0xc6,0xc0,0x60,0x34,0x80,0x00  ;aaa1
        DEFB    0x8b,0x27,0x80,0x00,0x24,0x32,0x80,0x00  ;aaa9
        DEFB    0x20,0x2d,0x80,0x00,0x64,0x38,0x80,0x00  ;aab1
        DEFB    0x6e,0x00,0x80,0x00,0x6e,0x00,0x40,0x00  ;aab9
        DEFB    0x72,0x00,0x00,0x00,0x54,0x00,0x80,0x00  ;aac1
        DEFB    0x28,0x3f,0x07,0x62,0x2c,0x34,0x80,0x00  ;aac9
        DEFB    0x00,0x00,0x00,0x00                 ;aad1
b3_laa5fh: equ     #aa5f
b3_laa6ah: equ     #aa6a
b3_laa97h: equ     #aa97
b3_laacch: equ     #aacc
        LD      (ix+0xa),0x38                       ;aad5
        LD      (ix+0x1f),0x8                       ;aad9
        LD      (ix+0x18),0x40                      ;aadd
        LD      (ix+0xb),0x20                       ;aae1
        LD      a,r                                 ;aae5
        LD      b,a                                 ;aae7
        LD      a,(0xc00d)                          ;aae8
        ADD     a,b                                 ;aaeb
        LD      (ix+0x5),a                          ;aaec
        LD      a,(0xc00d)                          ;aaef
        ADD     a,(ix+0x5)                          ;aaf2
        AND     0x80                                ;aaf5
        ADD     a,0x50                              ;aaf7
        LD      (ix+0x3),a                          ;aaf9
        LD      a,0xe0                              ;aafc
        LD      (0x75),a                            ;aafe
        LD      a,(0xcd5b)                          ;ab01
        OR      a                                   ;ab04
        JR      z,b3_lab3fh                         ;ab05
        CALL    0x85b1                              ;ab07
b3_lab0ah:
        JR      b3_lab3fh                           ;ab0a
        CALL    b3_sub_abc4h                        ;ab0c
        CALL    b3_sub_ab8ch                        ;ab0f
        LD      a,0x38                              ;ab12
        CALL    0x8950                              ;ab14
        LD      a,(ix+0x1)                          ;ab17
        CALL    JumpIndex                           ;ab1a
        DEFW    0xab25,0xab53,0xabb2,0xabc3         ;ab1d ; data:jumptable
        DEFW    0x99cd                              ;ab25
        AND     (hl)                                ;ab27
        JR      c,b3_lab3fh                         ;ab28
        DEC     (ix+0xb)                            ;ab2a
        RET     nz                                  ;ab2d
b3_lab2eh: equ     #ab2e
        LD      (ix+0xb),0x20                       ;ab2e
        LD      de,0x0                              ;ab32
        CALL    0x87eb                              ;ab35
        CALL    0x87e4                              ;ab38
        INC     (ix+0x1)                            ;ab3b
        RET                                         ;ab3e
b3_lab3fh: equ     #ab3f
        LD      (ix+0x1),0x2                        ;ab3f
        CALL    0x9fca                              ;ab43
        LD      a,0x10                              ;ab46
        CALL    0x8b76                              ;ab48
        CALL    0x87e4                              ;ab4b
        EX      de,hl                               ;ab4e
        CALL    0x87eb                              ;ab4f
        RET                                         ;ab52
        LD      a,(0xc00d)                          ;ab53
        AND     0x3                                 ;ab56
        JR      nz,b3_lab62h                        ;ab58
        LD      a,(ix+0xf)                          ;ab5a
        XOR     0x1                                 ;ab5d
        LD      (ix+0xf),a                          ;ab5f
b3_lab62h: equ     #ab62
        DEC     (ix+0xb)                            ;ab62
        RET     nz                                  ;ab65
        LD      a,(0xcd12)                          ;ab66
        AND     0xc                                 ;ab69
        RRA                                         ;ab6b
        ADD     a,0x8                               ;ab6c
        CALL    0x8b76                              ;ab6e
        CALL    0x87e4                              ;ab71
        EX      de,hl                               ;ab74
        CALL    0x87eb                              ;ab75
        LD      a,0x80                              ;ab78
        CP      h                                   ;ab7a
        LD      a,0x0                               ;ab7b
        JR      nc,b3_lab80h                        ;ab7d
        INC     a                                   ;ab7f
b3_lab80h: equ     #ab80
        LD      (ix+0xf),a                          ;ab80
        LD      (ix+0xb),0x20                       ;ab83
        LD      (ix+0x1),0x0                        ;ab87
        RET                                         ;ab8b
b3_sub_ab8ch: equ     #ab8c
        DEC     (ix+0x18)                           ;ab8c
        RET     nz                                  ;ab8f
        LD      a,(0xcd12)                          ;ab90
        ADD     a,a                                 ;ab93
        ADD     a,a                                 ;ab94
        LD      b,a                                 ;ab95
        LD      a,0x40                              ;ab96
        SUB     b                                   ;ab98
        LD      (ix+0x18),a                         ;ab99
        LD      a,(ix+0x1d)                         ;ab9c
        OR      a                                   ;ab9f
        RET     nz                                  ;aba0
        LD      a,0x4                               ;aba1
        CALL    0x89c2                              ;aba3
        LD      a,0x5                               ;aba6
        CALL    ProcessSoundCommand                 ;aba8
        LD      (ix+0x1),0x0                        ;abab
        JP      b3_lab2eh                           ;abaf
        DEFB    0xcd,0xde,0x9f,0xdd,0x7e,0x1d,0xb7,0xc0  ;abb2 ; data:code-gap
        DEFB    0xdd,0x36,0x0b,0x20,0xdd,0x36,0x01,0x01  ;abba
        DEFB    0xc9,0xc9                           ;abc2
b3_sub_abc4h:
        DEC     (ix+0x75)                           ;abc4
        RET     nz                                  ;abc7
        LD      a,0x1                               ;abc8
        LD      (ix+0x7),a                          ;abca
        LD      a,0x3                               ;abcd
        LD      (ix+0x1),a                          ;abcf
        RET                                         ;abd2
        CALL    b3_sub_abf6h                        ;abd3
        CALL    b3_sub_a954h                        ;abd6
        CALL    0x893d                              ;abd9
        LD      a,(ix+0x0)                          ;abdc
        CP      0xb                                 ;abdf
        LD      a,0x30                              ;abe1
        JR      z,b3_labe7h                         ;abe3
        LD      a,0x18                              ;abe5
b3_labe7h:
        LD      (ix+0x18),a                         ;abe7
        LD      (ix+0x77),a                         ;abea
        LD      (ix+0xb),0x3f                       ;abed
        LD      (ix+0x75),0x40                      ;abf1
        RET                                         ;abf5
b3_sub_abf6h:
        LD      a,(0xcd5b)                          ;abf6
        OR      a                                   ;abf9
        JP      z,0x9763                            ;abfa
        JP      0x85b1                              ;abfd
        CALL    b3_sub_a954h                        ;ac00
        LD      a,0x8b                              ;ac03
        CALL    0x894d                              ;ac05
        LD      a,(ix+0x1)                          ;ac08
        CALL    JumpIndex                           ;ac0b
        DEFW    0xac12,0xacc5                       ;ac0e ; data:table
        CALL    b3_sub_acb7h                        ;ac12
        CALL    0xac6d                              ;ac15
        CALL    b3_sub_a699h                        ;ac18
        CALL    c,b3_la611h                         ;ac1b
        CALL    b3_sub_ac83h                        ;ac1e
        CALL    b3_sub_ac98h                        ;ac21
        DEC     (ix+0xb)                            ;ac24
        RET     nz                                  ;ac27
        LD      a,r                                 ;ac28
        AND     0x1f                                ;ac2a
        ADD     a,0x8                               ;ac2c
        LD      (ix+0xb),a                          ;ac2e
        LD      a,r                                 ;ac31
        LD      b,a                                 ;ac33
        LD      a,(0xc00d)                          ;ac34
        XOR     b                                   ;ac37
        AND     0x7                                 ;ac38
        CP      0x4                                 ;ac3a
        JR      nc,b3_lac49h                        ;ac3c
        LD      de,b3_lac69h                        ;ac3e
        CALL    ADD_DE_A                            ;ac41
        LD      a,(de)                              ;ac44
        CALL    b3_la58ah                           ;ac45
        RET                                         ;ac48
b3_lac49h:
        CP      0x6                                 ;ac49
        JR      nc,b3_lac5ah                        ;ac4b
        LD      a,(ix+0xf)                          ;ac4d
        OR      a                                   ;ac50
        LD      a,0x2                               ;ac51
        JP      z,b3_la58ah                         ;ac53
        RRA                                         ;ac56
        JP      b3_la58ah                           ;ac57
b3_lac5ah:
        LD      a,(0xc494)                          ;ac5a
        CP      (ix+0x3)                            ;ac5d
        LD      a,0x8                               ;ac60
        JP      c,b3_la58ah                         ;ac62
        RRA                                         ;ac65
        JP      b3_la58ah                           ;ac66
b3_lac69h:
        EX      af,af'                              ;ac69
        INC     b                                   ;ac6a
        LD      (bc),a                              ;ac6b
        LD      bc,0x7edd                           ;ac6c
        RRA                                         ;ac6f
        AND     0xc                                 ;ac70
        RET     z                                   ;ac72
        LD      a,(ix+0x5)                          ;ac73
        LD      hl,0xc496                           ;ac76
        CP      (hl)                                ;ac79
        LD      a,0x0                               ;ac7a
        JR      nc,b3_lac7fh                        ;ac7c
        INC     a                                   ;ac7e
b3_lac7fh:
        LD      (ix+0xf),a                          ;ac7f
        RET                                         ;ac82
b3_sub_ac83h:
        LD      a,(0xc00d)                          ;ac83
        AND     0x3                                 ;ac86
        RET     nz                                  ;ac88
        DEC     (ix+0x18)                           ;ac89
        RET     nz                                  ;ac8c
        LD      (ix+0x1d),0x1                       ;ac8d
        LD      a,(ix+0x77)                         ;ac91
        LD      (ix+0x18),a                         ;ac94
        RET                                         ;ac97
b3_sub_ac98h:
        LD      a,(ix+0x1d)                         ;ac98
        OR      a                                   ;ac9b
        RET     z                                   ;ac9c
        LD      a,(0xc494)                          ;ac9d
        ADD     a,0x10                              ;aca0
        SUB     (ix+0x3)                            ;aca2
        CP      0x20                                ;aca5
        RET     nc                                  ;aca7
        LD      (ix+0x1d),0x0                       ;aca8
        LD      a,(ix+0xf)                          ;acac
        LD      (0xcd38),a                          ;acaf
        LD      a,0x5                               ;acb2
        JP      0x89c2                              ;acb4
b3_sub_acb7h:
        LD      a,(0xc00d)                          ;acb7
        AND     0x3                                 ;acba
        RET     nz                                  ;acbc
        DEC     (ix+0x75)                           ;acbd
        RET     nz                                  ;acc0
        INC     (ix+0x1)                            ;acc1
        RET                                         ;acc4
        CALL    b3_sub_a699h                        ;acc5
        RET     nc                                  ;acc8
        OR      a                                   ;acc9
        LD      a,(ix+0x1f)                         ;acca
        RR      a                                   ;accd
        JR      nc,b3_lacd3h                        ;accf
        LD      a,0x8                               ;acd1
b3_lacd3h:
        JP      b3_la58ah                           ;acd3
        LD      de,0x806d                           ;acd6
        LD      a,0x22                              ;acd9
        JP      0x8334                              ;acdb
        LD      de,0x806d                           ;acde
        LD      a,0x23                              ;ace1
        JP      0x8334                              ;ace3
        LD      (ix+0xa),0x10                       ;ace6
        XOR     a                                   ;acea
        LD      (ix+0xc),a                          ;aceb
        LD      (ix+0x6),a                          ;acee
        LD      (ix+0x7),a                          ;acf1
        LD      de,0x100                            ;acf4
        LD      (ix+0x8),e                          ;acf7
        LD      (ix+0x9),d                          ;acfa
        RET                                         ;acfd
        LD      a,0x10                              ;acfe
        LD      de,0xc00d                           ;ad00
        CALL    0x895b                              ;ad03
        LD      a,(ix+0x1)                          ;ad06
        OR      a                                   ;ad09
        JR      nz,b3_lad25h                        ;ad0a
        LD      a,(ix+0x5)                          ;ad0c
        CP      0xa0                                ;ad0f
        RET     c                                   ;ad11
        INC     (ix+0x1)                            ;ad12
b3_lad15h:
        LD      e,(ix+0x8)                          ;ad15
        LD      d,(ix+0x9)                          ;ad18
        CALL    0x8c0a                              ;ad1b
        LD      (ix+0x8),e                          ;ad1e
        LD      (ix+0x9),d                          ;ad21
        RET                                         ;ad24
b3_lad25h:
        LD      a,(ix+0x5)                          ;ad25
        CP      0x50                                ;ad28
        RET     nc                                  ;ad2a
        LD      (ix+0x1),0x0                        ;ad2b
        JR      b3_lad15h                           ;ad2f
        LD      de,0x7887                           ;ad31
        LD      a,0x25                              ;ad34
        JP      0x8334                              ;ad36
        LD      (ix+0xa),0x19                       ;ad39
        XOR     a                                   ;ad3d
        LD      (ix+0xc),a                          ;ad3e
        LD      (ix+0x6),a                          ;ad41
        LD      (ix+0x7),a                          ;ad44
        LD      (ix+0x8),a                          ;ad47
        LD      (ix+0x9),a                          ;ad4a
        LD      (0xcd8c),a                          ;ad4d
        LD      a,(0xc27e)                          ;ad50
        OR      a                                   ;ad53
        JP      nz,b3_laed5h                        ;ad54
        LD      a,(0xcd5f)                          ;ad57
        AND     0x8                                 ;ad5a
        ADD     a,a                                 ;ad5c
        LD      b,a                                 ;ad5d
        LD      a,(0xc4b0)                          ;ad5e
        AND     0x10                                ;ad61
        XOR     b                                   ;ad63
        JP      nz,b3_laed5h                        ;ad64
        LD      a,(0xcd5f)                          ;ad67
        CP      0x8                                 ;ad6a
        LD      a,0x6f                              ;ad6c
        JR      c,b3_lad72h                         ;ad6e
        LD      a,0x70                              ;ad70
b3_lad72h:
        CALL    PrintDialogText                     ;ad72
        JP      0x87b7                              ;ad75
        LD      a,(ix+0x1)                          ;ad78
        CALL    JumpIndex                           ;ad7b
        DEFW    0xad84,0xad97,0xadd4                ;ad7e ; data:table
        DEFB    0x3a                                ;ad84
        LD      b,0xc0                              ;ad85
        LD      b,a                                 ;ad87
        AND     0x10                                ;ad88
        JR      nz,b3_lad93h                        ;ad8a
        LD      a,0x20                              ;ad8c
        AND     b                                   ;ad8e
        RET     z                                   ;ad8f
        INC     (ix+0x1)                            ;ad90
b3_lad93h:
        INC     (ix+0x1)                            ;ad93
        RET                                         ;ad96
        LD      (ix+0x1),0x0                        ;ad97
        LD      b,0x3                               ;ad9b
b3_lad9dh:
        LD      hl,0xcd8c                           ;ad9d
        INC     (hl)                                ;ada0
        LD      a,(hl)                              ;ada1
        CP      0x3                                 ;ada2
        JR      nz,b3_lada8h                        ;ada4
        XOR     a                                   ;ada6
        LD      (hl),a                              ;ada7
b3_lada8h:
        LD      hl,0xcd83                           ;ada8
        CALL    ADD_HL_A                            ;adab
        LD      a,(hl)                              ;adae
        OR      a                                   ;adaf
        JR      nz,b3_ladbah                        ;adb0
        DJNZ    b3_lad9dh                           ;adb2
b3_ladb4h:
        LD      a,b                                 ;adb4
        ADD     a,a                                 ;adb5
        AND     b                                   ;adb6
        ADD     a,a                                 ;adb7
        LD      d,b                                 ;adb8
        ADD     a,a                                 ;adb9
b3_ladbah:
        LD      de,b3_ladb4h                        ;adba
        LD      a,(0xcd8c)                          ;adbd
        CALL    GetPointerDE2A                      ;adc0
        LD      (ix+0x3),d                          ;adc3
        LD      (ix+0x5),e                          ;adc6
        CALL    b3_laed5h                           ;adc9
        RET                                         ;adcc
        CP      0x3                                 ;adcd
        RET     nz                                  ;adcf
        XOR     a                                   ;add0
        DEC     hl                                  ;add1
        DEC     hl                                  ;add2
        RET                                         ;add3
        LD      (ix+0x1),0x0                        ;add4
        LD      a,(0xcd8c)                          ;add8
        LD      hl,0xcd83                           ;addb
        CALL    ADD_HL_A                            ;adde
        LD      a,(hl)                              ;ade1
        OR      a                                   ;ade2
        RET     z                                   ;ade3
        DEC     a                                   ;ade4
        LD      (0xee80),a                          ;ade5
        CALL    JumpIndex                           ;ade8
        DEFW    0xae07,0xae98,0xaea3,0xaea3         ;adeb ; data:table
        DEFW    0xaea3,0xaea3,0xaea3,0xae98         ;adf3
        DEFW    0xae93,0xae07,0xaeae,0xaeb0         ;adfb
        DEFW    0xaec4                              ;ae03
        DEFB    0xb2,0xae                           ;ae05 ; data:code-gap
        CALL    b3_sub_ae38h                        ;ae07
        JP      c,b3_laed9h                         ;ae0a
        CALL    b3_sub_ae5bh                        ;ae0d
        RET                                         ;ae10
b3_sub_ae11h:
        LD      (0xee81),a                          ;ae11
        CALL    b3_sub_ae81h                        ;ae14
        LD      a,(0xee80)                          ;ae17
        LD      hl,0xc270                           ;ae1a
        CALL    ADD_HL_A                            ;ae1d
        LD      a,(hl)                              ;ae20
        OR      a                                   ;ae21
        JR      nz,b3_lae37h                        ;ae22
        CALL    b3_sub_aef9h                        ;ae24
        LD      a,(0xee80)                          ;ae27
        LD      hl,0xc270                           ;ae2a
        CALL    ADD_HL_A                            ;ae2d
        LD      a,(0xee81)                          ;ae30
        LD      (hl),a                              ;ae33
        CALL    DrawFieldItems                      ;ae34
b3_lae37h:
        RET                                         ;ae37
b3_sub_ae38h:
        LD      a,(0xcd8c)                          ;ae38
        ADD     a,a                                 ;ae3b
        LD      hl,0xcd86                           ;ae3c
        CALL    ADD_HL_A                            ;ae3f
        LD      e,(hl)                              ;ae42
        INC     hl                                  ;ae43
        LD      d,(hl)                              ;ae44
        CALL    b3_sub_b539h                        ;ae45
        RET     c                                   ;ae48
        LD      a,(0xcd8c)                          ;ae49
        LD      hl,0xcd83                           ;ae4c
        CALL    ADD_HL_A                            ;ae4f
        XOR     a                                   ;ae52
        LD      (hl),a                              ;ae53
        LD      a,0x15                              ;ae54
        CALL    ProcessSoundCommand                 ;ae56
        OR      a                                   ;ae59
        RET                                         ;ae5a
