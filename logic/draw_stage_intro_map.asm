; === DrawStageIntroMap (0x80d9) ===
DrawStageIntroMap:
        LD      a,0x1                               ;80d9
        LD      (0xcd15),a                          ;80db
        CALL    b2_sub_80eeh                        ;80de
        CALL    DrawStageIntroRects                 ;80e1
        CALL    b2_sub_813fh                        ;80e4
        CALL    DrawStageIntroStages                ;80e7
        CALL    UploadSpriteShadow                  ;80ea
        RET                                         ;80ed
b2_sub_80eeh:
        LD      hl,0xa099                           ;80ee
        LD      de,0x10                             ;80f1
        LD      b,0x3                               ;80f4
b2_l80f6h:
        PUSH    bc                                  ;80f6
        LD      b,0x1c                              ;80f7
b2_l80f9h:
        LD      a,(hl)                              ;80f9
        INC     hl                                  ;80fa
        PUSH    de                                  ;80fb
        EXX                                         ;80fc
        POP     de                                  ;80fd
        LD      l,a                                 ;80fe
        LD      h,0x0                               ;80ff
        ADD     hl,hl                               ;8101
        ADD     hl,hl                               ;8102
        ADD     hl,hl                               ;8103
        LD      a,h                                 ;8104
        ADD     a,a                                 ;8105
        ADD     a,a                                 ;8106
        ADD     a,a                                 ;8107
        LD      h,l                                 ;8108
        LD      l,a                                 ;8109
        LD      a,0x5                               ;810a
        LD      bc,0x808                            ;810c
        CALL    VDP_Copy_Byte                       ;810f
        EXX                                         ;8112
        LD      a,0x8                               ;8113
        ADD     a,d                                 ;8115
        LD      d,a                                 ;8116
        DJNZ    b2_l80f9h                           ;8117
        LD      d,0x0                               ;8119
        LD      a,0x8                               ;811b
        ADD     a,e                                 ;811d
        LD      e,a                                 ;811e
        POP     bc                                  ;811f
        DJNZ    b2_l80f6h                           ;8120
        RET                                         ;8122

; === DrawStageIntroRects (0x8123) ===
DrawStageIntroRects:
        LD      a,0xc                               ;8123
        CALL    PrintDialogText                     ;8125
        LD      hl,0x7040                           ;8128
        LD      de,0x1f4f                           ;812b
        LD      c,0xf                               ;812e
        CALL    DrawRect                            ;8130
        LD      hl,0x7242                           ;8133
        LD      de,0x1b4b                           ;8136
        LD      c,0xf                               ;8139
        CALL    DrawRect                            ;813b
        RET                                         ;813e
b2_sub_813fh:
        CALL    b2_sub_81d0h                        ;813f
        CALL    0x8192                              ;8142
        LD      a,(GameLand)                        ;8145
        LD      b,a                                 ;8148
        ADD     a,a                                 ;8149
        ADD     a,b                                 ;814a
        LD      de,b2_l817dh                        ;814b
        CALL    ADD_DE_A                            ;814e
        EXX                                         ;8151
        LD      hl,b2_l8177h                        ;8152
        EXX                                         ;8155
        LD      hl,0xee08                           ;8156
        LD      b,0x3                               ;8159
b2_l815bh:
        EXX                                         ;815b
        LD      a,(hl)                              ;815c
        INC     hl                                  ;815d
b2_l815eh:
        EXX                                         ;815e
        LD      (hl),a                              ;815f
        INC     hl                                  ;8160
        EXX                                         ;8161
        LD      a,(hl)                              ;8162
        INC     hl                                  ;8163
        EXX                                         ;8164
        LD      (hl),a                              ;8165
        INC     hl                                  ;8166
        LD      a,(de)                              ;8167
        INC     de                                  ;8168
        CP      0xff                                ;8169
        JR      z,b2_l8173h                         ;816b
        LD      (hl),a                              ;816d
        INC     hl                                  ;816e
b2_l816fh:
        INC     hl                                  ;816f
b2_l8170h:
        DJNZ    b2_l815bh                           ;8170
        RET                                         ;8172
b2_l8173h:
        DEC     hl                                  ;8173
        DEC     hl                                  ;8174
        JR      b2_l8170h                           ;8175
b2_l8177h: equ     #8177
        DEFB    0x48,0x78,0x60,0x78,0x78,0x78,0x00,0x04  ;8177 ; data:code-gap
        DEFB    0x34,0x08,0x0c,0x34,0x10,0x14,0x34,0x18  ;817f
        DEFB    0x1c,0x34,0x20,0x24,0x34,0x28,0x2c,0x34  ;8187
        DEFB    0x1c,0xff,0x30                      ;818f
b2_l817dh: equ     #817d
