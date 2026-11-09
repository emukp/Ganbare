b2_l8897h:
        LD      a,(hl)                              ;8897
        INC     l                                   ;8898
        ADD     a,a                                 ;8899
        ADD     a,a                                 ;889a
        LD      de,0xee20                           ;889b
        ADD     a,e                                 ;889e
        LD      e,a                                 ;889f
        LD      a,(hl)                              ;88a0
        LD      (de),a                              ;88a1
        INC     l                                   ;88a2
        INC     e                                   ;88a3
        LD      a,(hl)                              ;88a4
        LD      (de),a                              ;88a5
        INC     l                                   ;88a6
        INC     e                                   ;88a7
        LD      a,(hl)                              ;88a8
        LD      (de),a                              ;88a9
        INC     l                                   ;88aa
        INC     e                                   ;88ab
        INC     l                                   ;88ac
        DJNZ    b2_l8897h                           ;88ad
        RET                                         ;88af
        LD      ix,0xca00                           ;88b0
        LD      b,0x8                               ;88b4
b2_l88b6h:
        LD      a,(ix+0x0)                          ;88b6
        AND     a                                   ;88b9
        JR      z,b2_l88cdh                         ;88ba
        PUSH    bc                                  ;88bc
        CALL    b2_sub_88d5h                        ;88bd
        CALL    b2_sub_877ah                        ;88c0
        CALL    b2_sub_87f2h                        ;88c3
        CALL    b2_sub_87a5h                        ;88c6
        CALL    b2_sub_87b1h                        ;88c9
        POP     bc                                  ;88cc
b2_l88cdh:
        LD      de,0x40                             ;88cd
        ADD     ix,de                               ;88d0
        DJNZ    b2_l88b6h                           ;88d2
        RET                                         ;88d4
b2_sub_88d5h:
        LD      a,(ix+0x0)                          ;88d5
        DEC     a                                   ;88d8
        CALL    JumpIndex                           ;88d9
