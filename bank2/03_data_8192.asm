        DEFB    0x3a                                ;8192
        ADD     a,b                                 ;8193
        JP      nz,0x2187                           ;8194
        JP      nz,0xcd81                           ;8197
        ADD     a,e                                 ;819a
        LD      b,b                                 ;819b
        LD      b,0x2                               ;819c
        LD      de,AbSprAttrTable                   ;819e
b2_l81a1h:
        LD      a,(hl)                              ;81a1
        LD      (0xcd0e),a                          ;81a2
        LD      (de),a                              ;81a5
        INC     hl                                  ;81a6
        INC     de                                  ;81a7
        LD      a,(hl)                              ;81a8
        LD      (de),a                              ;81a9
        INC     hl                                  ;81aa
        INC     de                                  ;81ab
        LD      a,(ControlConfig)                   ;81ac
b2_l81afh:
        RLA                                         ;81af
        LD      a,0x34                              ;81b0
        JR      nc,b2_l81b6h                        ;81b2
        LD      a,0x3c                              ;81b4
b2_l81b6h:
        ADD     a,b                                 ;81b6
        ADD     a,b                                 ;81b7
        ADD     a,b                                 ;81b8
        ADD     a,b                                 ;81b9
b2_l81bah:
        LD      (de),a                              ;81ba
        INC     de                                  ;81bb
        INC     de                                  ;81bc
        DEC     hl                                  ;81bd
        DEC     hl                                  ;81be
        DJNZ    b2_l81a1h                           ;81bf
        RET                                         ;81c1
b2_l81c2h: equ     #81c2
        DEFB    0x40,0x20,0x78,0x20,0xa8,0x70,0x78,0xb8  ;81c2 ; data:code-gap
        DEFB    0x40,0xb8,0x10,0x90,0x08,0x50       ;81ca
b2_sub_81d0h:
        LD      hl,AbSprColorTable                  ;81d0
        LD      a,0x2                               ;81d3
        LD      b,0x10                              ;81d5
        CALL    b2_sub_81ebh                        ;81d7
        LD      hl,0xec10                           ;81da
        LD      a,0x41                              ;81dd
        LD      b,0x10                              ;81df
        CALL    b2_sub_81ebh                        ;81e1
        LD      hl,0xec20                           ;81e4
        LD      a,0xe                               ;81e7
        LD      b,0x30                              ;81e9
b2_sub_81ebh:
        LD      (hl),a                              ;81eb
        INC     hl                                  ;81ec
        DJNZ    b2_sub_81ebh                        ;81ed
        RET                                         ;81ef

