        DEFB    0xfa,0xfb,0xfc,0xfd,0xfd,0xfe,0xfe,0xfe  ;a008 ; data:code-gap
        DEFB    0xff,0xff,0x00,0xff,0x00,0x00,0x00,0x00  ;a010
        DEFB    0x00,0x00,0x00,0x00,0x01,0x00,0x01,0x01  ;a018
        DEFB    0x02,0x02,0x02,0x03,0x03,0x04,0x05,0x06  ;a020
        DEFB    0xdd                                ;a028
        LD      a,(hl)                              ;a029
        LD      e,0xb7                              ;a02a
        RET     z                                   ;a02c
        LD      hl,0x0                              ;a02d
        LD      de,0x80                             ;a030
        LD      b,a                                 ;a033
b3_la034h:
        ADD     hl,de                               ;a034
        DJNZ    b3_la034h                           ;a035
        LD      a,(ix+0x1f)                         ;a037
        AND     0x3                                 ;a03a
        JR      z,b3_la03fh                         ;a03c
        ADD     hl,de                               ;a03e
b3_la03fh:
        EX      de,hl                               ;a03f
        LD      a,(ix+0x1f)                         ;a040
        BIT     1,a                                 ;a043
        PUSH    af                                  ;a045
        CALL    nz,0x8c0a                           ;a046
        POP     af                                  ;a049
        BIT     3,a                                 ;a04a
        PUSH    af                                  ;a04c
        CALL    nz,0x8c0a                           ;a04d
        POP     af                                  ;a050
        AND     0x3                                 ;a051
        JR      z,b3_la05eh                         ;a053
        CALL    0x87e4                              ;a055
        LD      de,0x0                              ;a058
        JP      0x87eb                              ;a05b
b3_la05eh:
        CALL    0x87eb                              ;a05e
        LD      de,0x0                              ;a061
        JP      0x87e4                              ;a064
b3_sub_a067h:
        LD      d,(ix+0x6)                          ;a067
        LD      e,(ix+0x7)                          ;a06a
        LD      h,(ix+0x8)                          ;a06d
        LD      l,(ix+0x9)                          ;a070
        LD      (ix+0x7c),d                         ;a073
        LD      (ix+0x7b),e                         ;a076
        LD      (ix+0x7a),h                         ;a079
        LD      (ix+0x79),l                         ;a07c
        RET                                         ;a07f
b3_sub_a080h:
        LD      d,(ix+0x7c)                         ;a080
        LD      e,(ix+0x7b)                         ;a083
        LD      h,(ix+0x7a)                         ;a086
        LD      l,(ix+0x79)                         ;a089
        LD      (ix+0x6),d                          ;a08c
        LD      (ix+0x7),e                          ;a08f
        LD      (ix+0x8),h                          ;a092
        LD      (ix+0x9),l                          ;a095
        RET                                         ;a098
        LD      bc,UPC                              ;a099
        LD      (bc),a                              ;a09c
        EX      af,af'                              ;a09d
        ADD     hl,bc                               ;a09e
        EX      af,af'                              ;a09f
        ADD     hl,bc                               ;a0a0
        DEC     c                                   ;a0a1
        DEC     c                                   ;a0a2
        DEC     c                                   ;a0a3
        DEC     c                                   ;a0a4
        DJNZ    $+8                                 ;a0a5
        LD      b,0x20                              ;a0a7
        ADD     hl,de                               ;a0a9
        LD      a,(de)                              ;a0aa
        LD      hl,(0x29)                           ;a0ab
b3_la0aeh:
        DEC     de                                  ;a0ae
        DEC     hl                                  ;a0af
        NOP                                         ;a0b0
        DEC     d                                   ;a0b1
        LD      d,0x26                              ;a0b2
        DEC     h                                   ;a0b4
        INC     bc                                  ;a0b5
        INC     b                                   ;a0b6
        INC     bc                                  ;a0b7
        INC     b                                   ;a0b8
        LD      a,(bc)                              ;a0b9
        LD      a,(bc)                              ;a0ba
        LD      a,(bc)                              ;a0bb
        LD      a,(bc)                              ;a0bc
        LD      c,0xe                               ;a0bd
        LD      c,0xe                               ;a0bf
        LD      de,0x707                            ;a0c1
        LD      hl,0x1f1e                           ;a0c4
        CPL                                         ;a0c7
        LD      l,0x1c                              ;a0c8
        DEC     e                                   ;a0ca
        DEC     l                                   ;a0cb
        INC     l                                   ;a0cc
        RLA                                         ;a0cd
        INC     d                                   ;a0ce
        INC     h                                   ;a0cf
        DAA                                         ;a0d0
        DEC     b                                   ;a0d1
        DEC     b                                   ;a0d2
        DEC     b                                   ;a0d3
        DEC     b                                   ;a0d4
        DEC     bc                                  ;a0d5
        INC     c                                   ;a0d6
        DEC     bc                                  ;a0d7
        INC     c                                   ;a0d8
        RRCA                                        ;a0d9
        RRCA                                        ;a0da
        RRCA                                        ;a0db
        RRCA                                        ;a0dc
        LD      (de),a                              ;a0dd
        RLCA                                        ;a0de
        RLCA                                        ;a0df
        LD      (0xa0a),hl                          ;a0e0
        LD      a,(bc)                              ;a0e3
        LD      a,(bc)                              ;a0e4
        INC     de                                  ;a0e5
        INC     d                                   ;a0e6
        INC     h                                   ;a0e7
        INC     hl                                  ;a0e8
        JR      $+24                                ;a0e9
        LD      h,0x28                              ;a0eb
        CALL    b3_sub_a3a1h                        ;a0ed
        LD      (ix+0x3),0x30                       ;a0f0
        LD      (ix+0xc),0x1                        ;a0f4
        LD      a,0x6a                              ;a0f8
        LD      (ix+0xa),a                          ;a0fa
        RET                                         ;a0fd
        LD      b,0x6a                              ;a0fe
        CALL    0x891a                              ;a100
        LD      a,(ix+0x1)                          ;a103
        CALL    JumpIndex                           ;a106
        DEFW    0xa10d,0xa130                       ;a109 ; data:table
        LD      de,0xff00                           ;a10d
        CALL    0x87eb                              ;a110
        LD      de,0x100                            ;a113
        LD      a,(0xc49a)                          ;a116
        CP      (ix+0x5)                            ;a119
        JR      nc,b3_la121h                        ;a11c
        CALL    0x8c0a                              ;a11e
b3_la121h:
        CALL    0x87e4                              ;a121
        LD      a,(ix+0x3)                          ;a124
        ADD     a,0x40                              ;a127
        LD      (ix+0x10),a                         ;a129
        INC     (ix+0x1)                            ;a12c
        RET                                         ;a12f
        LD      a,(ix+0x3)                          ;a130
        CP      (ix+0x10)                           ;a133
        JR      nc,b3_la149h                        ;a136
        LD      de,0x30                             ;a138
b3_sub_a13bh:
        LD      h,(ix+0x7)                          ;a13b
        LD      l,(ix+0x6)                          ;a13e
        ADD     hl,de                               ;a141
        LD      (ix+0x7),h                          ;a142
        LD      (ix+0x6),l                          ;a145
        RET                                         ;a148
b3_la149h:
        LD      (ix+0x1),0x0                        ;a149
        RET                                         ;a14d

