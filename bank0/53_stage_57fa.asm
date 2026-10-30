; === DrawFieldItem (0x57fa) ===
DrawFieldItem:
        CP      0xa                                 ;57fa
        JR      z,b0_l5863h                         ;57fc
        LD      de,b0_l582ah                        ;57fe
        LD      hl,0xc270                           ;5801
        LD      b,a                                 ;5804
        CALL    ADD_HL_A                            ;5805
        LD      a,b                                 ;5808
        CALL    ADD_DE_A                            ;5809
        CALL    b0_sub_5825h                        ;580c
        LD      a,b                                 ;580f
        OR      a                                   ;5810
        JR      z,b0_l5834h                         ;5811
        CP      0x9                                 ;5813
        JR      z,b0_l5834h                         ;5815
        LD      c,a                                 ;5817
        LD      a,(hl)                              ;5818
        OR      a                                   ;5819
        LD      a,c                                 ;581a
        JR      z,b0_l5820h                         ;581b
        JP      b0_l4eb9h                           ;581d
b0_l5820h:
        LD      a,0xff                              ;5820
        JP      b0_l4eb9h                           ;5822
b0_sub_5825h:
        LD      a,(de)                              ;5825
        LD      d,a                                 ;5826
        LD      e,0x10                              ;5827
        RET                                         ;5829
b0_l582ah: equ     #582a
        DEFB    0x08,0x38,0x48,0x58,0x68,0x78,0x88,0x98  ;582a ; data:code-gap
        DEFB    0xa8,0xc8                           ;5832
b0_l5834h:
        LD      (0xcd29),a                          ;5834
        LD      a,(hl)                              ;5837
        LD      b,0x3                               ;5838
        LD      c,a                                 ;583a
b0_l583bh:
        DEC     c                                   ;583b
        JP      m,b0_l5852h                         ;583c
        LD      a,(0xcd29)                          ;583f
b0_l5842h:
        PUSH    bc                                  ;5842
        PUSH    hl                                  ;5843
        PUSH    de                                  ;5844
        CALL    b0_l4eb9h                           ;5845
        POP     de                                  ;5848
        POP     hl                                  ;5849
        POP     bc                                  ;584a
        LD      a,0x10                              ;584b
        ADD     a,d                                 ;584d
        LD      d,a                                 ;584e
        DJNZ    b0_l583bh                           ;584f
        RET                                         ;5851
b0_l5852h:
        LD      a,0xff                              ;5852
        JR      b0_l5842h                           ;5854
DrawFieldItems:
        XOR     a                                   ;5856
        LD      b,0xa                               ;5857
b0_l5859h:
        PUSH    af                                  ;5859
        PUSH    bc                                  ;585a
        CALL    DrawFieldItem                       ;585b
        POP     bc                                  ;585e
        POP     af                                  ;585f
        INC     a                                   ;5860
        DJNZ    b0_l5859h                           ;5861
b0_l5863h:
        LD      de,0xb810                           ;5863
        LD      hl,0xc27e                           ;5866
        LD      a,(hl)                              ;5869
        OR      a                                   ;586a
        JR      z,b0_l5820h                         ;586b
        LD      hl,0xc090                           ;586d
        LD      bc,0x1010                           ;5870
        LD      a,0x1                               ;5873
b0_l5875h:
        JP      VDP_Copy_Byte                       ;5875
        LD      hl,0xc481                           ;5878
        LD      b,a                                 ;587b
        LD      a,(hl)                              ;587c
        DEC     hl                                  ;587d
        SUB     b                                   ;587e
        JR      nc,b0_l588eh                        ;587f
        XOR     a                                   ;5881
        JR      b0_l588eh                           ;5882
        LD      hl,0xc481                           ;5884
        LD      b,(hl)                              ;5887
        ADD     a,b                                 ;5888
        DEC     hl                                  ;5889
        CP      (hl)                                ;588a
        JR      c,b0_l588eh                         ;588b
        LD      a,(hl)                              ;588d
b0_l588eh:
        INC     hl                                  ;588e
        LD      (hl),a                              ;588f
