        DEFB    0xb0,0xaa                           ;a9c0
        CP      d                                   ;a9c2
        XOR     d                                   ;a9c3
        JP      0xd3aa                              ;a9c4
        XOR     d                                   ;a9c7
        EX      (sp),hl                             ;a9c8
        XOR     d                                   ;a9c9
        INC     b                                   ;a9ca
        XOR     e                                   ;a9cb
        JR      bC_la979h                           ;a9cc
        JR      z,bC_la97bh                         ;a9ce
        LD      e,e                                 ;a9d0
        XOR     e                                   ;a9d1
        LD      a,d                                 ;a9d2
        XOR     e                                   ;a9d3
        SUB     l                                   ;a9d4
        XOR     e                                   ;a9d5
        SBC     a,e                                 ;a9d6
        XOR     e                                   ;a9d7
        AND     b                                   ;a9d8
        XOR     e                                   ;a9d9
        DI                                          ;a9da
        XOR     e                                   ;a9db
        DEC     a                                   ;a9dc
        XOR     h                                   ;a9dd
bC_la9deh:
        LD      e,e                                 ;a9de
        XOR     h                                   ;a9df
        LD      l,b                                 ;a9e0
        XOR     h                                   ;a9e1
        LD      l,b                                 ;a9e2
        XOR     h                                   ;a9e3
        ADD     a,b                                 ;a9e4
        XOR     h                                   ;a9e5
        SBC     a,l                                 ;a9e6
        XOR     h                                   ;a9e7
        RET     nz                                  ;a9e8
        XOR     h                                   ;a9e9
        DEFB    0xed                                ;a9ea
        XOR     h                                   ;a9eb
        ADD     hl,bc                               ;a9ec
        XOR     l                                   ;a9ed
        LD      a,(de)                              ;a9ee
        XOR     l                                   ;a9ef
        CPL                                         ;a9f0
        XOR     l                                   ;a9f1
        LD      d,d                                 ;a9f2
        XOR     l                                   ;a9f3
        LD      l,h                                 ;a9f4
        XOR     l                                   ;a9f5
        ADD     a,e                                 ;a9f6
        XOR     l                                   ;a9f7
        XOR     h                                   ;a9f8
        XOR     l                                   ;a9f9
        OR      h                                   ;a9fa
        XOR     l                                   ;a9fb
        CP      h                                   ;a9fc
        XOR     l                                   ;a9fd
        CALL    nz,0xccad                           ;a9fe
        XOR     l                                   ;aa01
        CALL    c,0xf8ad                            ;aa02
        XOR     l                                   ;aa05
        LD      (de),a                              ;aa06
        XOR     (hl)                                ;aa07
        JR      z,bC_la9b8h                         ;aa08
        LD      c,d                                 ;aa0a
        XOR     (hl)                                ;aa0b
        LD      h,d                                 ;aa0c
        XOR     (hl)                                ;aa0d
        LD      a,e                                 ;aa0e
        XOR     (hl)                                ;aa0f
        SUB     h                                   ;aa10
        XOR     (hl)                                ;aa11
        OR      c                                   ;aa12
        XOR     (hl)                                ;aa13
        ADD     a,0xae                              ;aa14
        RET     po                                  ;aa16
        XOR     (hl)                                ;aa17
        RST     KEYINT                              ;aa18
        XOR     (hl)                                ;aa19
        INC     e                                   ;aa1a
        XOR     a                                   ;aa1b
        DEC     hl                                  ;aa1c
        XOR     a                                   ;aa1d
        ADD     hl,sp                               ;aa1e
        XOR     a                                   ;aa1f
        LD      b,(hl)                              ;aa20
        XOR     a                                   ;aa21
        LD      d,(hl)                              ;aa22
        XOR     a                                   ;aa23
        LD      (hl),b                              ;aa24
        XOR     a                                   ;aa25
        SBC     a,b                                 ;aa26
        XOR     a                                   ;aa27
        OR      (hl)                                ;aa28
        XOR     a                                   ;aa29
        AND     0xaf                                ;aa2a
        DJNZ    bC_la9deh                           ;aa2c
        LD      b,b                                 ;aa2e
        OR      b                                   ;aa2f
        LD      e,b                                 ;aa30
        OR      b                                   ;aa31
        LD      (hl),a                              ;aa32
        OR      b                                   ;aa33
        SUB     c                                   ;aa34
        OR      b                                   ;aa35
        XOR     l                                   ;aa36
        OR      b                                   ;aa37
        RES     6,b                                 ;aa38
        JP      po,0x2b0                            ;aa3a
        OR      c                                   ;aa3d
        LD      hl,0x3eb1                           ;aa3e
        OR      c                                   ;aa41
        LD      e,a                                 ;aa42
        OR      c                                   ;aa43
        LD      a,e                                 ;aa44
        OR      c                                   ;aa45
        SBC     a,c                                 ;aa46
        OR      c                                   ;aa47
        OR      l                                   ;aa48
        OR      c                                   ;aa49
        RET     nc                                  ;aa4a
        OR      c                                   ;aa4b
        RST     GETYPR                              ;aa4c
        OR      c                                   ;aa4d
bC_laa4eh:
        DEC     c                                   ;aa4e
        OR      d                                   ;aa4f
        ADD     hl,hl                               ;aa50
        OR      d                                   ;aa51
        LD      c,c                                 ;aa52
        OR      d                                   ;aa53
        LD      h,(hl)                              ;aa54
        OR      d                                   ;aa55
        ADD     a,h                                 ;aa56
        OR      d                                   ;aa57
        AND     h                                   ;aa58
        OR      d                                   ;aa59
        CALL    nz,0xe4b2                           ;aa5a
        OR      d                                   ;aa5d
        LD      bc,0x1eb3                           ;aa5e
        OR      e                                   ;aa61
        LD      a,0xb3                              ;aa62
        LD      e,l                                 ;aa64
        OR      e                                   ;aa65
        LD      a,h                                 ;aa66
        OR      e                                   ;aa67
        SBC     a,c                                 ;aa68
        OR      e                                   ;aa69
        OR      l                                   ;aa6a
        OR      e                                   ;aa6b
        POP     de                                  ;aa6c
        OR      e                                   ;aa6d
        POP     af                                  ;aa6e
        OR      e                                   ;aa6f
        INC     de                                  ;aa70
        OR      h                                   ;aa71
        CPL                                         ;aa72
        OR      h                                   ;aa73
        LD      c,e                                 ;aa74
        OR      h                                   ;aa75
        LD      l,b                                 ;aa76
        OR      h                                   ;aa77
        ADD     a,l                                 ;aa78
        OR      h                                   ;aa79
        AND     c                                   ;aa7a
        OR      h                                   ;aa7b
        CP      (hl)                                ;aa7c
        OR      h                                   ;aa7d
        IN      a,(0xb4)                            ;aa7e
        LD      sp,hl                               ;aa80
        OR      h                                   ;aa81
        DEC     d                                   ;aa82
        OR      l                                   ;aa83
        DEC     l                                   ;aa84
        OR      l                                   ;aa85
        LD      c,a                                 ;aa86
        OR      l                                   ;aa87
        LD      l,(hl)                              ;aa88
        OR      l                                   ;aa89
        ADC     a,d                                 ;aa8a
        OR      l                                   ;aa8b
        AND     (hl)                                ;aa8c
        OR      l                                   ;aa8d
        CALL    nz,0xdeb5                           ;aa8e
        OR      l                                   ;aa91
        JP      (hl)                                ;aa92
        OR      l                                   ;aa93
        LD      b,0xb6                              ;aa94
        JR      nz,bC_laa4eh                        ;aa96
        LD      a,(0x4cb6)                          ;aa98
        OR      (hl)                                ;aa9b
        LD      h,a                                 ;aa9c
        OR      (hl)                                ;aa9d
        LD      a,b                                 ;aa9e
        OR      (hl)                                ;aa9f
        ADC     a,b                                 ;aaa0
        OR      (hl)                                ;aaa1
        AND     l                                   ;aaa2
        OR      (hl)                                ;aaa3
        JP      nc,0xd2b6                           ;aaa4
        OR      (hl)                                ;aaa7
        JP      nc,0xd2b6                           ;aaa8
        OR      (hl)                                ;aaab
        JP      nc,0xd2b6                           ;aaac
        OR      (hl)                                ;aaaf
txtDialogYesNo: equ     #aab0
        DEFB    0x68,0x50                           ;aab0 ; data:text
        LD      c,c                                 ;aab2
        LD      sp,0x0                              ;aab3
        LD      sp,0x3331                           ;aab6
        RST     KEYINT                              ;aab9
        LD      l,b                                 ;aaba
        LD      d,b                                 ;aabb
        LD      b,b                                 ;aabc
        LD      h,c                                 ;aabd
        LD      (0x4900),a                          ;aabe
        LD      e,l                                 ;aac1
        RST     KEYINT                              ;aac2
WORD_ROM_SLOT_A000_BANK_12__aac3: equ     #aac3
        DEFB    0x68,0x38                           ;aac3 ; data:data
        DEFB    0x34                                ;aac5
        LD      (hl),0x5f                           ;aac6
        SCF                                         ;aac8
        LD      a,(0x5d)                            ;aac9
        INC     (hl)                                ;aacc
        LD      b,e                                 ;aacd
        LD      c,(hl)                              ;aace
        LD      d,a                                 ;aacf
        DEC     (hl)                                ;aad0
        LD      b,a                                 ;aad1
        RST     KEYINT                              ;aad2
        LD      l,b                                 ;aad3
        JR      c,bC_lab19h                         ;aad4
        LD      h,e                                 ;aad6
        LD      (0x6040),a                          ;aad7
        LD      (0x3400),a                          ;aada
        LD      (hl),0x5c                           ;aadd
        LD      b,c                                 ;aadf
        JR      c,bC_lab24h                         ;aae0
        RST     KEYINT                              ;aae2
        LD      l,b                                 ;aae3
        JR      c,bC_lab1fh                         ;aae4
        LD      e,c                                 ;aae6
        LD      e,(hl)                              ;aae7
        LD      c,l                                 ;aae8
        LD      h,d                                 ;aae9
        LD      e,(hl)                              ;aaea
        LD      b,b                                 ;aaeb
        LD      c,b                                 ;aaec
        NOP                                         ;aaed
        INC     (hl)                                ;aaee
        DEC     (hl)                                ;aaef
        LD      b,a                                 ;aaf0
        DEC     sp                                  ;aaf1
        LD      h,e                                 ;aaf2
        LD      e,a                                 ;aaf3
        CP      0x68                                ;aaf4
        LD      b,b                                 ;aaf6
        LD      b,e                                 ;aaf7
        LD      d,c                                 ;aaf8
        LD      e,b                                 ;aaf9
bC_laafah:
        LD      e,e                                 ;aafa
        JR      c,bC_lab42h                         ;aafb
        NOP                                         ;aafd
        LD      sp,0x4435                           ;aafe
        LD      sp,0xff47                           ;ab01
        LD      l,b                                 ;ab04
        JR      c,bC_lab4ch                         ;ab05
        LD      sp,0x5d3a                           ;ab07
        NOP                                         ;ab0a
        LD      c,c                                 ;ab0b
        LD      h,e                                 ;ab0c
        SCF                                         ;ab0d
        LD      b,b                                 ;ab0e
        LD      c,c                                 ;ab0f
        CP      0x68                                ;ab10
        LD      b,b                                 ;ab12
        LD      d,e                                 ;ab13
        LD      e,b                                 ;ab14
        DEC     (hl)                                ;ab15
        LD      sp,0x68ff                           ;ab16
bC_lab19h:
        JR      c,bC_lab55h                         ;ab19
        JR      nc,bC_lab1dh                        ;ab1b
bC_lab1dh:
        LD      e,e                                 ;ab1d
        DEC     (hl)                                ;ab1e
bC_lab1fh:
        LD      sp,0x48                             ;ab1f
        LD      c,c                                 ;ab22
        LD      e,(hl)                              ;ab23
bC_lab24h:
        LD      b,d                                 ;ab24
        SCF                                         ;ab25
        LD      e,c                                 ;ab26
        RST     KEYINT                              ;ab27
txtDialogEmpty: equ     #ab28
        DEFB    0x68,0x38                           ;ab28 ; data:text
        DEFB    0x00                                ;ab2a
bC_lab2bh:
        NOP                                         ;ab2b
        NOP                                         ;ab2c
        NOP                                         ;ab2d
        NOP                                         ;ab2e
        NOP                                         ;ab2f
        NOP                                         ;ab30
        NOP                                         ;ab31
        NOP                                         ;ab32
        NOP                                         ;ab33
        NOP                                         ;ab34
        NOP                                         ;ab35
        NOP                                         ;ab36
        NOP                                         ;ab37
        CP      0x68                                ;ab38
        LD      b,b                                 ;ab3a
        NOP                                         ;ab3b
        NOP                                         ;ab3c
        NOP                                         ;ab3d
        NOP                                         ;ab3e
        NOP                                         ;ab3f
        NOP                                         ;ab40
        NOP                                         ;ab41
bC_lab42h:
        NOP                                         ;ab42
        NOP                                         ;ab43
        NOP                                         ;ab44
        NOP                                         ;ab45
        NOP                                         ;ab46
        NOP                                         ;ab47
        NOP                                         ;ab48
        CP      0x68                                ;ab49
        LD      c,b                                 ;ab4b
bC_lab4ch:
        NOP                                         ;ab4c
        NOP                                         ;ab4d
        NOP                                         ;ab4e
        NOP                                         ;ab4f
        NOP                                         ;ab50
        NOP                                         ;ab51
        NOP                                         ;ab52
        NOP                                         ;ab53
        NOP                                         ;ab54
bC_lab55h:
        NOP                                         ;ab55
        NOP                                         ;ab56
        NOP                                         ;ab57
        NOP                                         ;ab58
        NOP                                         ;ab59
        RST     KEYINT                              ;ab5a
        LD      l,b                                 ;ab5b
        JR      c,bC_laba0h                         ;ab5c
        LD      h,e                                 ;ab5e
        LD      c,(hl)                              ;ab5f
        DEC     sp                                  ;ab60
        CCF                                         ;ab61
        CP      0x68                                ;ab62
        LD      b,b                                 ;ab64
        NOP                                         ;ab65
        NOP                                         ;ab66
        LD      c,b                                 ;ab67
        NOP                                         ;ab68
        LD      b,d                                 ;ab69
        LD      h,e                                 ;ab6a
        CP      0x68                                ;ab6b
        LD      c,b                                 ;ab6d
        LD      d,d                                 ;ab6e
        LD      e,(hl)                              ;ab6f
        LD      b,d                                 ;ab70
        JR      c,bC_lab73h                         ;ab71
bC_lab73h:
        LD      b,e                                 ;ab73
        LD      h,e                                 ;ab74
        LD      e,d                                 ;ab75
        LD      c,l                                 ;ab76
        LD      h,e                                 ;ab77
        LD      (0x68ff),a                          ;ab78
        JR      c,bC_labbfh                         ;ab7b
        LD      h,e                                 ;ab7d
        LD      c,(hl)                              ;ab7e
        DEC     sp                                  ;ab7f
        CCF                                         ;ab80
        CP      0x68                                ;ab81
        LD      b,b                                 ;ab83
        NOP                                         ;ab84
        NOP                                         ;ab85
        LD      c,b                                 ;ab86
        NOP                                         ;ab87
        LD      b,d                                 ;ab88
        LD      h,e                                 ;ab89
        CP      0x68                                ;ab8a
        LD      c,b                                 ;ab8c
        LD      c,(hl)                              ;ab8d
        CCF                                         ;ab8e
        NOP                                         ;ab8f
        LD      (hl),0x44                           ;ab90
bC_lab92h:
        LD      c,c                                 ;ab92
        LD      e,c                                 ;ab93
        RST     KEYINT                              ;ab94
        SBC     a,b                                 ;ab95
        LD      b,b                                 ;ab96
        LD      b,b                                 ;ab97
        LD      h,c                                 ;ab98
        LD      (0x98ff),a                          ;ab99
        LD      b,b                                 ;ab9c
        LD      c,c                                 ;ab9d
        LD      e,l                                 ;ab9e
bC_lab9fh:
        RST     KEYINT                              ;ab9f
bC_laba0h:
        JR      nc,bC_lac02h                        ;aba0
        OR      (hl)                                ;aba2
bC_laba3h:
        CP      0x30                                ;aba3
        LD      l,b                                 ;aba5
        OR      d                                   ;aba6
        CP      0x30                                ;aba7
        SBC     a,b                                 ;aba9
        OR      (hl)                                ;abaa
        CP      0x30                                ;abab
        AND     b                                   ;abad
        OR      (hl)                                ;abae
        CP      0x30                                ;abaf
        XOR     b                                   ;abb1
        OR      (hl)                                ;abb2
        CP      0x30                                ;abb3
        OR      b                                   ;abb5
        CP      c                                   ;abb6
        OR      l                                   ;abb7
        OR      l                                   ;abb8
bC_labb9h:
        OR      l                                   ;abb9
        OR      l                                   ;abba
        OR      l                                   ;abbb
        OR      h                                   ;abbc
        CP      0xc8                                ;abbd
bC_labbfh:
        SBC     a,b                                 ;abbf
bC_labc0h:
        OR      c                                   ;abc0
bC_labc1h:
        CP      0xc8                                ;abc1
        AND     b                                   ;abc3
        OR      (hl)                                ;abc4
        CP      0xc8                                ;abc5
        XOR     b                                   ;abc7
bC_labc8h:
        OR      (hl)                                ;abc8
        CP      0x98                                ;abc9
        OR      b                                   ;abcb
        OR      l                                   ;abcc
        OR      l                                   ;abcd
        OR      l                                   ;abce
        OR      l                                   ;abcf
        OR      l                                   ;abd0
        OR      l                                   ;abd1
        CP      d                                   ;abd2
        CP      0xc8                                ;abd3
        LD      h,b                                 ;abd5
        OR      c                                   ;abd6
        CP      0xc8                                ;abd7
        LD      l,b                                 ;abd9
        OR      (hl)                                ;abda
        CP      0xb8                                ;abdb
        JR      bC_lab92h                           ;abdd
        OR      l                                   ;abdf
        CP      b                                   ;abe0
        CP      0xc8                                ;abe1
        JR      nz,$-72                             ;abe3
        CP      0xc8                                ;abe5
        JR      z,bC_lab9fh                         ;abe7
        CP      0xc8                                ;abe9
        JR      nc,bC_laba3h                        ;abeb
        CP      0x78                                ;abed
        JR      $-75                                ;abef
        OR      l                                   ;abf1
        RST     KEYINT                              ;abf2
txtMapFlow: equ     #abf3
        DEFB    0x28,0x28,0xa9,0xa7,0xa7,0xa7,0xa7,0xa7  ;abf3 ; data:text
        DEFB    0xa7,0xa7,0xa7,0xa7,0xa7,0xa7,0xa7,0xa7  ;abfb
        DEFB    0xa7,0xa7,0xa7,0xa7,0xa7,0xa7,0xa7,0xac  ;ac03
        DEFB    0xfe,0x28,0x30,0xaa,0xfe,0xd0,0x30,0xad  ;ac0b
        DEFB    0xfe,0x28,0x38,0xaa,0xfe,0xd0,0x38,0xad  ;ac13
        DEFB    0xfe,0x28,0x40,0xaa,0xfe,0xd0,0x40,0xad  ;ac1b
        DEFB    0xfe,0x28,0x48,0xab,0xa8            ;ac23
bC_lac02h: equ     #ac02
bC_lac1dh: equ     #ac1d
        XOR     b                                   ;ac28
        XOR     b                                   ;ac29
        XOR     b                                   ;ac2a
        XOR     b                                   ;ac2b
        XOR     b                                   ;ac2c
        XOR     b                                   ;ac2d
        XOR     b                                   ;ac2e
        XOR     b                                   ;ac2f
        XOR     b                                   ;ac30
        XOR     b                                   ;ac31
        XOR     b                                   ;ac32
        XOR     b                                   ;ac33
        XOR     b                                   ;ac34
        XOR     b                                   ;ac35
        XOR     b                                   ;ac36
        XOR     b                                   ;ac37
        XOR     b                                   ;ac38
        XOR     b                                   ;ac39
        XOR     b                                   ;ac3a
        XOR     (hl)                                ;ac3b
        RST     KEYINT                              ;ac3c
        LD      d,h                                 ;ac3d
        LD      h,b                                 ;ac3e
        ADC     a,a                                 ;ac3f
        SUB     b                                   ;ac40
        SUB     e                                   ;ac41
        SUB     h                                   ;ac42
        SUB     a                                   ;ac43
        SBC     a,b                                 ;ac44
        SBC     a,e                                 ;ac45
        SBC     a,h                                 ;ac46
        SBC     a,a                                 ;ac47
        AND     b                                   ;ac48
        AND     e                                   ;ac49
        AND     h                                   ;ac4a
        CP      0x54                                ;ac4b
        LD      l,b                                 ;ac4d
        SUB     c                                   ;ac4e
        SUB     d                                   ;ac4f
        SUB     l                                   ;ac50
        SUB     (hl)                                ;ac51
        SBC     a,c                                 ;ac52
        SBC     a,d                                 ;ac53
        SBC     a,l                                 ;ac54
        SBC     a,(hl)                              ;ac55
        AND     c                                   ;ac56
        AND     d                                   ;ac57
        AND     l                                   ;ac58
        AND     (hl)                                ;ac59
        RST     KEYINT                              ;ac5a
WORD_ROM_SLOT_A000_BANK_12__ac5b: equ     #ac5b
        DEFB    0x68,0x38                           ;ac5b ; data:data
        DEFB    0x44                                ;ac5d
        LD      b,l                                 ;ac5e
        DEC     (hl)                                ;ac5f
        NOP                                         ;ac60
        INC     (hl)                                ;ac61
        DEC     sp                                  ;ac62
        INC     sp                                  ;ac63
        LD      d,l                                 ;ac64
        LD      (0xff35),a                          ;ac65
txtDialogShop201: equ     #ac68
        DEFB    0x68,0x38                           ;ac68 ; data:text
        DEFB    0x39                                ;ac6a
        LD      e,c                                 ;ac6b
        LD      b,d                                 ;ac6c
        LD      h,e                                 ;ac6d
        INC     (hl)                                ;ac6e
        DEC     sp                                  ;ac6f
        LD      c,(hl)                              ;ac70
        LD      sp,0x633f                           ;ac71
        CP      0x88                                ;ac74
        LD      b,b                                 ;ac76
        LD      l,d                                 ;ac77
        LD      sp,0x3f3f                           ;ac78
        LD      h,e                                 ;ac7b
        SCF                                         ;ac7c
        DEC     a                                   ;ac7d
        LD      h,e                                 ;ac7e
        RST     KEYINT                              ;ac7f
        LD      l,b                                 ;ac80
        JR      c,bC_lacdeh                         ;ac81
        DEC     (hl)                                ;ac83
        LD      sp,0x48                             ;ac84
        LD      b,e                                 ;ac87
        LD      h,e                                 ;ac88
        LD      (0x3f3b),a                          ;ac89
        CP      0x68                                ;ac8c
        LD      b,b                                 ;ac8e
        LD      c,(hl)                              ;ac8f
        CCF                                         ;ac90
        NOP                                         ;ac91
        LD      b,h                                 ;ac92
        LD      b,l                                 ;ac93
        DEC     (hl)                                ;ac94
        NOP                                         ;ac95
        LD      (hl),0x36                           ;ac96
        CCF                                         ;ac98
        LD      sp,0x3548                           ;ac99
        RST     KEYINT                              ;ac9c
        LD      l,b                                 ;ac9d
        JR      c,bC_lacfbh                         ;ac9e
        DEC     (hl)                                ;aca0
        LD      sp,0x48                             ;aca1
bC_laca4h:
        DEC     sp                                  ;aca4
        LD      b,c                                 ;aca5
        ADD     hl,sp                               ;aca6
        LD      sp,0x633d                           ;aca7
        CP      0x68                                ;acaa
        LD      b,b                                 ;acac
txtDialogShop400: equ     #acad
        DEFB    0x30,0x57,0x35,0x63,0x47,0x00,0x34,0x31  ;acad ; data:text
        DEFB    0x42,0xfe,0x68,0x48,0x42,0x63,0x42,0x31  ;acb5
        DEFB    0x36,0x44,0xff,0x68,0x38,0x5b,0x35,0x31  ;acbd
        DEFB    0x48,0x00,0x44,0x5d,0x43,0x63,0x52,0xfe  ;acc5
        DEFB    0x68,0x40,0x34,0x3e,0x59,0x31,0x5e,0x3f  ;accd
        DEFB    0x64,0x00,0x00,0x00,0x00,0x00,0x48,0xfe  ;acd5
        DEFB    0x68,0x48,0x42,0x35,0x63,0x4f,0x5c,0x52  ;acdd
        DEFB    0x3f,0x3d,0x42,0x53,0x5a,0x32,0x64,0xff  ;ace5
        DEFB    0x68,0x38,0x35,0x47,0x35,0x63,0x3f,0x57  ;aced
        DEFB    0x47,0x33,0x3d,0x63,0xfe,0x68,0x40,0x3b  ;acf5
        DEFB    0x5d,0x42,0x63,0x52,0x56,0x32,0x3b,0x35  ;acfd
        DEFB    0x47,0x33                           ;ad05
bC_lacdeh: equ     #acde
bC_lacfbh: equ     #acfb
bC_lad06h: equ     #ad06
        LD      b,h                                 ;ad07
        RST     KEYINT                              ;ad08
