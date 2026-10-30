        DEFW    0xaf42,0xaf5a,0xb02e                ;af3c ; data:table
        LD      a,(ControlsTrigger)                 ;af42
        LD      b,a                                 ;af45
        AND     0x10                                ;af46
        JR      nz,b3_laf51h                        ;af48
        LD      a,0x20                              ;af4a
        AND     b                                   ;af4c
        RET     z                                   ;af4d
        INC     (ix+0x1)                            ;af4e
b3_laf51h:
        INC     (ix+0x1)                            ;af51
        LD      a,0x16                              ;af54
        CALL    b3_sub_b836h                        ;af56
        RET                                         ;af59
        LD      (ix+0xf),0x0                        ;af5a
        LD      (ix+0x1),0x0                        ;af5e
        LD      b,0x9                               ;af62
        LD      hl,0xcd8c                           ;af64
        LD      a,(hl)                              ;af67
        LD      c,a                                 ;af68
        LD      hl,0xc270                           ;af69
        CALL    ADD_HL_A                            ;af6c
b3_sub_af6fh:
        INC     hl                                  ;af6f
        INC     c                                   ;af70
        CALL    b3_sub_b024h                        ;af71
        LD      a,(hl)                              ;af74
        OR      a                                   ;af75
        JR      nz,b3_laf7dh                        ;af76
        DJNZ    b3_sub_af6fh                        ;af78
        JP      b3_lb06bh                           ;af7a
b3_laf7dh:
        LD      a,c                                 ;af7d
        LD      (0xcd8c),a                          ;af7e
        LD      de,b3_lb010h                        ;af81
        CALL    ADD_DE_A                            ;af84
        LD      a,c                                 ;af87
        OR      a                                   ;af88
        LD      c,0x0                               ;af89
        PUSH    af                                  ;af8b
        CALL    z,b3_sub_b01ah                      ;af8c
        POP     af                                  ;af8f
        CP      0x9                                 ;af90
        CALL    z,b3_sub_b01ah                      ;af92
        LD      a,(de)                              ;af95
        ADD     a,c                                 ;af96
        LD      (ix+0x5),a                          ;af97
        CALL    0x932a                              ;af9a
        LD      a,(0xcd8c)                          ;af9d
        LD      b,a                                 ;afa0
        ADD     a,a                                 ;afa1
        CALL    ADD_DE_A                            ;afa2
        EX      de,hl                               ;afa5
        CALL    b3_sub_afbeh                        ;afa6
        LD      hl,0xcd87                           ;afa9
        LD      de,0x6087                           ;afac
        LD      b,0x2                               ;afaf
        CALL    DrawBcdNumber                       ;afb1
        LD      de,0x8087                           ;afb4
        LD      hl,0x5050                           ;afb7
        CALL    0x4ef1                              ;afba
        RET                                         ;afbd
b3_sub_afbeh:
        LD      a,b                                 ;afbe
        LD      de,0xcda0                           ;afbf
        CALL    ADD_DE_A                            ;afc2
        LD      a,(de)                              ;afc5
        LD      b,a                                 ;afc6
        LD      e,(hl)                              ;afc7
        INC     hl                                  ;afc8
        LD      d,(hl)                              ;afc9
        EX      de,hl                               ;afca
        OR      a                                   ;afcb
        JR      z,b3_lafe2h                         ;afcc
        DEC     b                                   ;afce
        JR      z,b3_lafe2h                         ;afcf
        DEC     b                                   ;afd1
        JR      z,b3_lafdeh                         ;afd2
b3_lafd4h:
        LD      a,l                                 ;afd4
        ADD     a,a                                 ;afd5
        DAA                                         ;afd6
        LD      l,a                                 ;afd7
        LD      a,h                                 ;afd8
        ADC     a,a                                 ;afd9
        DAA                                         ;afda
        LD      h,a                                 ;afdb
        DJNZ    b3_lafd4h                           ;afdc
b3_lafdeh:
        LD      (0xcd86),hl                         ;afde
        RET                                         ;afe1
b3_lafe2h:
        LD      de,0x0                              ;afe2
        LD      a,h                                 ;afe5
        AND     0xf0                                ;afe6
        CALL    b3_sub_b007h                        ;afe8
        LD      d,a                                 ;afeb
        LD      a,h                                 ;afec
        AND     0xf                                 ;afed
        RRA                                         ;afef
        JR      nc,b3_laff4h                        ;aff0
        LD      e,0x50                              ;aff2
b3_laff4h:
        ADD     a,d                                 ;aff4
        LD      d,a                                 ;aff5
        LD      a,l                                 ;aff6
        AND     0xf0                                ;aff7
        CALL    b3_sub_b007h                        ;aff9
        ADD     a,e                                 ;affc
        LD      e,a                                 ;affd
        LD      a,l                                 ;affe
        AND     0xf                                 ;afff
        RRA                                         ;b001
        ADD     a,e                                 ;b002
        LD      e,a                                 ;b003
        EX      de,hl                               ;b004
        JR      b3_lafdeh                           ;b005
b3_sub_b007h:
        RRA                                         ;b007
        LD      b,a                                 ;b008
        AND     0x8                                 ;b009
        LD      a,b                                 ;b00b
        RET     z                                   ;b00c
        SUB     0x3                                 ;b00d
        RET                                         ;b00f
b3_lb010h: equ     #b010
        DEFB    0x10,0x40,0x50,0x60,0x70,0x80,0x90,0xa0  ;b010 ; data:code-gap
        DEFB    0xb0,0xd0                           ;b018
b3_sub_b01ah:
        LD      b,(hl)                              ;b01a
        XOR     a                                   ;b01b
b3_lb01ch:
        ADD     a,0x10                              ;b01c
        DJNZ    b3_lb01ch                           ;b01e
        SUB     0x10                                ;b020
        LD      c,a                                 ;b022
        RET                                         ;b023
b3_sub_b024h:
        LD      a,0x8                               ;b024
        CP      c                                   ;b026
        RET     nc                                  ;b027
        LD      c,0x0                               ;b028
        LD      hl,0xc270                           ;b02a
        RET                                         ;b02d
        LD      (ix+0x1),0x0                        ;b02e
        LD      a,(ix+0xf)                          ;b032
        OR      a                                   ;b035
        RET     nz                                  ;b036
        LD      a,(0xcd8c)                          ;b037
        LD      hl,0xc270                           ;b03a
        CALL    ADD_HL_A                            ;b03d
        LD      a,(hl)                              ;b040
        OR      a                                   ;b041
        LD      a,0x1a                              ;b042
        JP      z,b3_sub_b836h                      ;b044
        LD      a,(0xcd8c)                          ;b047
        CP      0x3                                 ;b04a
        PUSH    hl                                  ;b04c
        CALL    z,b3_sub_b070h                      ;b04d
        POP     hl                                  ;b050
        LD      a,(0xcd8c)                          ;b051
        DEC     a                                   ;b054
        CP      0x8                                 ;b055
        LD      a,0x0                               ;b057
        JR      c,b3_lb05dh                         ;b059
        LD      a,(hl)                              ;b05b
        DEC     a                                   ;b05c
b3_lb05dh:
        LD      (hl),a                              ;b05d
        LD      de,(0xcd86)                         ;b05e
        CALL    0x592b                              ;b062
        INC     (ix+0xf)                            ;b065
        JP      DrawFieldItems                      ;b068
b3_lb06bh:
        LD      (ix+0x1),0x3                        ;b06b
        RET                                         ;b06f
b3_sub_b070h:
        LD      a,(0xc27f)                          ;b070
        OR      a                                   ;b073
        RET     nz                                  ;b074
        LD      a,0x1b                              ;b075
        CALL    b3_sub_b836h                        ;b077
        LD      a,0x1                               ;b07a
        LD      (0xc27f),a                          ;b07c
        RET                                         ;b07f
        LD      de,0x7058                           ;b080
        JP      0x8334                              ;b083
        LD      (ix+0xa),0x1a                       ;b086
        XOR     a                                   ;b08a
        LD      (0xcd82),a                          ;b08b
        LD      (ix+0xc),a                          ;b08e
        LD      d,a                                 ;b091
        LD      e,a                                 ;b092
        CALL    0x87eb                              ;b093
        CALL    0x87e4                              ;b096
        LD      a,0x90                              ;b099
        LD      (0xcd93),a                          ;b09b
        RET                                         ;b09e
        LD      a,(ix+0x1)                          ;b09f
        CALL    JumpIndex                           ;b0a2
        DEFW    0xb0ad,0xb0c0,0xb0d4,0xb0e6         ;b0a5 ; data:table
        LD      a,(ControlsTrigger)                 ;b0ad
        LD      b,a                                 ;b0b0
        AND     0x10                                ;b0b1
        JR      nz,b3_lb0bch                        ;b0b3
        LD      a,0x20                              ;b0b5
        AND     b                                   ;b0b7
        RET     z                                   ;b0b8
        INC     (ix+0x1)                            ;b0b9
b3_lb0bch:
        INC     (ix+0x1)                            ;b0bc
        RET                                         ;b0bf
        LD      (ix+0x1),0x0                        ;b0c0
        LD      a,(ix+0x5)                          ;b0c4
        CP      0x70                                ;b0c7
        LD      a,(0xcd93)                          ;b0c9
        JR      z,b3_lb0d0h                         ;b0cc
        LD      a,0x70                              ;b0ce
b3_lb0d0h:
        LD      (ix+0x5),a                          ;b0d0
        RET                                         ;b0d3
        LD      a,(ix+0x5)                          ;b0d4
        CP      0x70                                ;b0d7
        LD      a,0x1                               ;b0d9
        JR      z,b3_lb0dfh                         ;b0db
        LD      a,0x2                               ;b0dd
b3_lb0dfh:
        LD      (0xcd82),a                          ;b0df
        INC     (ix+0x1)                            ;b0e2
        RET                                         ;b0e5
        LD      a,(0xcd91)                          ;b0e6
        OR      a                                   ;b0e9
        RET     z                                   ;b0ea
        XOR     a                                   ;b0eb
        LD      (0xcd91),a                          ;b0ec
        JP      0x87b7                              ;b0ef
        LD      de,0x806d                           ;b0f2
        LD      a,0x28                              ;b0f5
        JP      0x8334                              ;b0f7
        LD      (ix+0xa),0x10                       ;b0fa
        XOR     a                                   ;b0fe
        LD      (ix+0xc),a                          ;b0ff
        LD      (ix+0x6),a                          ;b102
        LD      (ix+0x7),a                          ;b105
        LD      (ix+0x8),a                          ;b108
        LD      (ix+0x9),a                          ;b10b
        LD      (0xcd82),a                          ;b10e
        LD      a,(0xc27e)                          ;b111
        OR      a                                   ;b114
        LD      a,0x26                              ;b115
        CALL    nz,0x828f                           ;b117
        LD      a,(0xc27e)                          ;b11a
        OR      a                                   ;b11d
        JP      z,b3_lb1a7h                         ;b11e
        XOR     a                                   ;b121
        CALL    PrintDialogText                     ;b122
        LD      a,0x19                              ;b125
        JP      PrintDialogText                     ;b127
        LD      a,(ix+0x1)                          ;b12a
        CALL    JumpIndex                           ;b12d
        DEFW    0xb136,0xb15c,0xb165                ;b130 ; data:table
        LD      a,(0xcd82)                          ;b136
        OR      a                                   ;b139
        RET     z                                   ;b13a
        CP      0x2                                 ;b13b
        LD      a,0x1                               ;b13d
        LD      (0xcd91),a                          ;b13f
        JR      z,b3_lb152h                         ;b142
        INC     (ix+0x1)                            ;b144
        LD      a,0x16                              ;b147
        CALL    b3_sub_b836h                        ;b149
        LD      a,0x27                              ;b14c
        CALL    0x828f                              ;b14e
        RET                                         ;b151
b3_lb152h:
        LD      a,0x1a                              ;b152
        CALL    b3_sub_b836h                        ;b154
        LD      (ix+0x1),0x2                        ;b157
        RET                                         ;b15b
        LD      a,(0xcd92)                          ;b15c
        OR      a                                   ;b15f
        RET     z                                   ;b160
        INC     (ix+0x1)                            ;b161
        RET                                         ;b164
        RET                                         ;b165
        LD      de,0x8070                           ;b166
        JP      0x8334                              ;b169
        LD      (ix+0xa),0x10                       ;b16c
        XOR     a                                   ;b170
        LD      (ix+0xc),a                          ;b171
        LD      (ix+0x6),a                          ;b174
        LD      (ix+0x7),a                          ;b177
        LD      (ix+0x8),a                          ;b17a
        LD      (ix+0x9),a                          ;b17d
        LD      (0xcd90),a                          ;b180
        LD      (0xcd82),a                          ;b183
        LD      hl,0xcd8d                           ;b186
        LD      (hl),a                              ;b189
        INC     hl                                  ;b18a
        LD      (hl),a                              ;b18b
        LD      a,(0xc27e)                          ;b18c
        OR      a                                   ;b18f
        LD      a,0x26                              ;b190
        CALL    nz,0x828f                           ;b192
        CALL    0x92ad                              ;b195
        LD      a,(0xc27e)                          ;b198
        OR      a                                   ;b19b
        JR      z,b3_lb1a7h                         ;b19c
        LD      a,0x5                               ;b19e
        CALL    PrintDialogText                     ;b1a0
        XOR     a                                   ;b1a3
        JP      PrintDialogText                     ;b1a4
b3_lb1a7h:
        LD      a,0x18                              ;b1a7
        CALL    PrintDialogText                     ;b1a9
        LD      a,(GameScore)                       ;b1ac
        CP      0x6                                 ;b1af
        LD      a,0x1c                              ;b1b1
        JR      nz,b3_lb1b7h                        ;b1b3
        LD      a,0x1d                              ;b1b5
b3_lb1b7h:
        JP      PrintDialogText                     ;b1b7
        LD      a,(ix+0x1)                          ;b1ba
        CALL    JumpIndex                           ;b1bd
        DEFW    0xb1c8,0xb1ff,0xb213,0xb25e         ;b1c0 ; data:table
        LD      a,(0xcd82)                          ;b1c8
        OR      a                                   ;b1cb
        RET     z                                   ;b1cc
        CP      0x2                                 ;b1cd
        JP      z,b3_lb25ah                         ;b1cf
        CALL    b3_sub_b289h                        ;b1d2
        JP      c,b3_lb25ah                         ;b1d5
        LD      a,0x6                               ;b1d8
        CALL    b3_sub_b836h                        ;b1da
        LD      a,0x1                               ;b1dd
        CALL    PrintDialogText                     ;b1df
        LD      a,0x1                               ;b1e2
        LD      (0xcd91),a                          ;b1e4
        INC     (ix+0x1)                            ;b1e7
        LD      a,0x26                              ;b1ea
        CALL    0x828f                              ;b1ec
        LD      a,0x90                              ;b1ef
        LD      (0xcd93),a                          ;b1f1
        LD      a,0x29                              ;b1f4
        CALL    0x828f                              ;b1f6
        LD      a,0x2a                              ;b1f9
        CALL    0x828f                              ;b1fb
        RET                                         ;b1fe
        LD      a,(0xcd82)                          ;b1ff
        OR      a                                   ;b202
        RET     z                                   ;b203
        LD      (0xcd8f),a                          ;b204
        INC     (ix+0x1)                            ;b207
        INC     (ix+0xa)                            ;b20a
        LD      a,0x1                               ;b20d
        LD      (0xcd90),a                          ;b20f
        RET                                         ;b212
        LD      hl,0xcd8d                           ;b213
        LD      a,(hl)                              ;b216
        OR      a                                   ;b217
        RET     z                                   ;b218
        INC     hl                                  ;b219
        LD      a,(hl)                              ;b21a
        OR      a                                   ;b21b
        RET     z                                   ;b21c
        LD      a,0x1                               ;b21d
        LD      (0xcd91),a                          ;b21f
        LD      a,(hl)                              ;b222
        INC     (ix+0x1)                            ;b223
        DEC     hl                                  ;b226
        LD      b,(hl)                              ;b227
        ADD     a,b                                 ;b228
        AND     0x1                                 ;b229
        LD      b,a                                 ;b22b
        LD      a,(0xcd8f)                          ;b22c
        DEC     a                                   ;b22f
        XOR     b                                   ;b230
        JR      nz,b3_lb247h                        ;b231
        LD      de,(PlayerScore)                    ;b233
        CALL    0x592b                              ;b237
        LD      a,0x8                               ;b23a
        CALL    b3_sub_b836h                        ;b23c
        CALL    b3_sub_b25fh                        ;b23f
        LD      a,0x19                              ;b242
        JP      ProcessSoundCommand                 ;b244
b3_lb247h:
        CALL    0x701e                              ;b247
        CALL    DrawHudMoney                        ;b24a
        LD      a,0x9                               ;b24d
        CALL    b3_sub_b836h                        ;b24f
        CALL    b3_sub_b25fh                        ;b252
        LD      a,0x18                              ;b255
        JP      ProcessSoundCommand                 ;b257
b3_lb25ah:
        LD      (ix+0x1),0x3                        ;b25a
        RET                                         ;b25e
b3_sub_b25fh:
        LD      a,(0xcd8e)                          ;b25f
        ADD     a,0x20                              ;b262
        LD      de,0x7040                           ;b264
        CALL    DrawChar                            ;b267
        LD      a,(0xcd8d)                          ;b26a
        ADD     a,0x20                              ;b26d
        LD      de,0x8040                           ;b26f
        CALL    DrawChar                            ;b272
        LD      a,(0xcd8d)                          ;b275
        LD      b,a                                 ;b278
        LD      a,(0xcd8e)                          ;b279
        ADD     a,b                                 ;b27c
        AND     0x1                                 ;b27d
        LD      a,0xa                               ;b27f
        JR      z,b3_lb285h                         ;b281
        LD      a,0xb                               ;b283
b3_lb285h:
        CALL    PrintDialogText                     ;b285
        RET                                         ;b288
b3_sub_b289h:
        LD      de,(PlayerScore)                    ;b289
        LD      a,e                                 ;b28d
        OR      d                                   ;b28e
        RET     nz                                  ;b28f
        CALL    0x92ad                              ;b290
        LD      a,0x1b                              ;b293
        CALL    ProcessSoundCommand                 ;b295
        SCF                                         ;b298
        RET                                         ;b299
        LD      de,0xa087                           ;b29a
        LD      a,0x29                              ;b29d
        JP      0x8334                              ;b29f
        LD      de,0x6087                           ;b2a2
        LD      a,0x2a                              ;b2a5
        JP      0x8334                              ;b2a7
        LD      (ix+0xa),0x13                       ;b2aa
b3_sub_b2aeh:
        LD      b,(ix+0x0)                          ;b2ae
        LD      a,(ix+0x5)                          ;b2b1
        SUB     b                                   ;b2b4
        LD      h,a                                 ;b2b5
        LD      a,(0xc00d)                          ;b2b6
        LD      l,a                                 ;b2b9
        LD      b,(hl)                              ;b2ba
        LD      a,r                                 ;b2bb
        ADD     a,b                                 ;b2bd
        RRA                                         ;b2be
        AND     0xf                                 ;b2bf
        ADD     a,0x14                              ;b2c1
        LD      (ix+0xb),a                          ;b2c3
        XOR     a                                   ;b2c6
        LD      (ix+0xc),a                          ;b2c7
        LD      d,a                                 ;b2ca
        LD      e,a                                 ;b2cb
        CALL    0x87e4                              ;b2cc
        JP      0x87eb                              ;b2cf
        LD      a,(ix+0x1)                          ;b2d2
        CALL    JumpIndex                           ;b2d5
        DEFW    0xb2de,0xb2e7,0xb31f                ;b2d8 ; data:table
        LD      a,(0xcd90)                          ;b2de
        OR      a                                   ;b2e1
        RET     z                                   ;b2e2
        INC     (ix+0x1)                            ;b2e3
        RET                                         ;b2e6
        LD      a,(0xc00d)                          ;b2e7
        AND     0x1                                 ;b2ea
        RET     nz                                  ;b2ec
        LD      a,(ix+0x0)                          ;b2ed
        CP      0x2a                                ;b2f0
        CALL    z,b3_sub_b303h                      ;b2f2
        DEC     (ix+0xb)                            ;b2f5
        JR      z,b3_lb30ch                         ;b2f8
        LD      a,0xf                               ;b2fa
        CALL    ProcessSoundCommand                 ;b2fc
        CALL    b3_sub_b320h                        ;b2ff
        RET                                         ;b302
b3_sub_b303h:
        LD      a,(0xcd8d)                          ;b303
        OR      a                                   ;b306
        RET     nz                                  ;b307
        INC     (ix+0xb)                            ;b308
        RET                                         ;b30b
b3_lb30ch:
        LD      hl,0xcd8d                           ;b30c
        LD      a,(hl)                              ;b30f
        OR      a                                   ;b310
        JR      z,b3_lb314h                         ;b311
        INC     hl                                  ;b313
b3_lb314h:
        LD      a,(ix+0xa)                          ;b314
        SUB     0x13                                ;b317
        INC     a                                   ;b319
        LD      (hl),a                              ;b31a
        INC     (ix+0x1)                            ;b31b
        RET                                         ;b31e
        RET                                         ;b31f
b3_sub_b320h:
        LD      b,0x13                              ;b320
        INC     (ix+0xa)                            ;b322
        LD      a,(ix+0xa)                          ;b325
        SUB     b                                   ;b328
        CP      0x6                                 ;b329
        JR      c,b3_lb332h                         ;b32b
        LD      a,0x13                              ;b32d
        LD      (ix+0xa),a                          ;b32f
b3_lb332h:
        PUSH    ix                                  ;b332
        POP     hl                                  ;b334
        LD      a,(ix+0xa)                          ;b335
        LD      b,0x2                               ;b338
        CP      0x13                                ;b33a
        JR      nz,b3_lb340h                        ;b33c
        LD      b,0x3                               ;b33e
b3_lb340h:
        LD      a,b                                 ;b340
        LD      (ix+0x25),a                         ;b341
        JP      0x54e6                              ;b344
        LD      de,0x889a                           ;b347
        LD      a,0x2c                              ;b34a
        JP      0x8334                              ;b34c
        LD      (ix+0xa),0x3e                       ;b34f
        XOR     a                                   ;b353
        LD      (ix+0xc),a                          ;b354
        LD      (ix+0x6),a                          ;b357
        LD      (ix+0x7),a                          ;b35a
        LD      (ix+0x8),a                          ;b35d
        LD      (ix+0x9),a                          ;b360
        INC     a                                   ;b363
        LD      (ix+0xe),a                          ;b364
        LD      a,0x2                               ;b367
        JP      PrintDialogText                     ;b369
        LD      a,(ix+0x1)                          ;b36c
        CALL    JumpIndex                           ;b36f
        DEFW    0xb37e,0xb3e9,0xb49d,0xb534         ;b372 ; data:table
        DEFW    0xb4df,0xb508                       ;b37a
        LD      a,(0xcd82)                          ;b37e
        OR      a                                   ;b381
        RET     z                                   ;b382
        CP      0x2                                 ;b383
        JR      z,b3_lb3cbh                         ;b385
        LD      de,(0xcd86)                         ;b387
        CALL    b3_sub_b539h                        ;b38b
        JR      c,b3_lb3dah                         ;b38e
        LD      a,0x7                               ;b390
        CALL    b3_sub_b836h                        ;b392
        INC     (ix+0x1)                            ;b395
        LD      (ix+0xb),0x0                        ;b398
        LD      (ix+0x75),0x8                       ;b39c
        LD      a,0x0                               ;b3a0
        CALL    ProcessSoundCommand                 ;b3a2
        LD      a,0x1                               ;b3a5
        LD      (0xcd32),a                          ;b3a7
        LD      (0xcd91),a                          ;b3aa
        LD      a,(0xc498)                          ;b3ad
        LD      (0xcd33),a                          ;b3b0
        LD      a,(0xc494)                          ;b3b3
        LD      (0xcd34),a                          ;b3b6
        LD      a,0xf0                              ;b3b9
        LD      (0xc498),a                          ;b3bb
        DEFB    0x32,0x94,0xc4,0x21,0x00,0x00,0x22,0x9b  ;b3be ; data:code-gap
        DEFB    0xc4,0x22,0x9d,0xc4,0xc9            ;b3c6
b3_lb3cbh:
        LD      a,0x7                               ;b3cb
        CALL    b3_sub_b836h                        ;b3cd
        LD      a,0x1                               ;b3d0
        LD      (0xcd91),a                          ;b3d2
        LD      (ix+0x1),0x3                        ;b3d5
        RET                                         ;b3d9
b3_lb3dah:
        LD      a,0x1                               ;b3da
        LD      (0xcd91),a                          ;b3dc
        LD      a,0x4                               ;b3df
        CALL    b3_sub_b836h                        ;b3e1
        LD      (ix+0x1),0x3                        ;b3e4
        RET                                         ;b3e8
        DEC     (ix+0x75)                           ;b3e9
        RET     nz                                  ;b3ec
        LD      (ix+0x75),0x8                       ;b3ed
        CALL    b3_sub_b43fh                        ;b3f1
        INC     (ix+0xb)                            ;b3f4
        LD      a,(ix+0xb)                          ;b3f7
        CP      0x8                                 ;b3fa
        RET     nz                                  ;b3fc
        CALL    DisableScreen                       ;b3fd
        CALL    0x45cb                              ;b400
        LD      a,(ControlConfig)                   ;b403
        RLA                                         ;b406
        LD      hl,0x90a0                           ;b407
        LD      bc,0x161b                           ;b40a
        JR      nc,b3_lb415h                        ;b40d
        LD      hl,0xc8a0                           ;b40f
        LD      bc,0x1a1d                           ;b412
b3_lb415h:
        LD      de,0x8080                           ;b415
        LD      a,0x1                               ;b418
        CALL    VDP_Copy_Byte                       ;b41a
        CALL    LoadMap2Palette                     ;b41d
        CALL    SetMapPalette02                     ;b420
        LD      a,0x5                               ;b423
        LD      de,0x7603                           ;b425
        CALL    SetPaletteColor                     ;b428
        LD      (ix+0xe),0x0                        ;b42b
        LD      (ix+0xb),0x5                        ;b42f
        INC     (ix+0x1)                            ;b433
        LD      (ix+0x75),0x14                      ;b436
        LD      (ix+0x18),0x3                       ;b43a
        RET                                         ;b43e
b3_sub_b43fh:
        LD      c,(ix+0xb)                          ;b43f
        LD      b,0xf                               ;b442
b3_lb444h:
        LD      a,b                                 ;b444
        DEC     a                                   ;b445
        ADD     a,a                                 ;b446
        ADD     a,b                                 ;b447
        DEC     a                                   ;b448
        LD      hl,b3_lb470h                        ;b449
        CALL    ADD_HL_A                            ;b44c
        LD      a,(hl)                              ;b44f
        INC     hl                                  ;b450
        SUB     c                                   ;b451
        JR      nc,b3_lb455h                        ;b452
        XOR     a                                   ;b454
b3_lb455h:
        ADD     a,a                                 ;b455
        ADD     a,a                                 ;b456
        ADD     a,a                                 ;b457
        ADD     a,a                                 ;b458
        LD      d,a                                 ;b459
        LD      a,(hl)                              ;b45a
        INC     hl                                  ;b45b
        SUB     c                                   ;b45c
        JR      nc,b3_lb460h                        ;b45d
        XOR     a                                   ;b45f
b3_lb460h:
        OR      d                                   ;b460
        LD      d,a                                 ;b461
        LD      a,(hl)                              ;b462
        INC     hl                                  ;b463
        SUB     c                                   ;b464
        JR      nc,b3_lb468h                        ;b465
        XOR     a                                   ;b467
b3_lb468h:
        LD      e,a                                 ;b468
        LD      a,b                                 ;b469
        CALL    SetPaletteColor                     ;b46a
        DJNZ    b3_lb444h                           ;b46d
        RET                                         ;b46f
b3_lb470h: equ     #b470
        DEFB    0x06,0x03,0x04,0x00,0x00,0x00,0x07,0x00  ;b470 ; data:code-gap
        DEFB    0x00,0x07,0x06,0x06,0x01,0x06,0x03,0x06  ;b478
        DEFB    0x03,0x04,0x02,0x00,0x01,0x07,0x00,0x05  ;b480
        DEFB    0x04,0x01,0x02,0x04,0x00,0x02,0x03,0x00  ;b488
        DEFB    0x01,0x04,0x04,0x04,0x01,0x00,0x01,0x07  ;b490
        DEFB    0x07,0x07,0x03,0x01,0x02            ;b498
        DEFB    0x3a                                ;b49d
        LD      (bc),a                              ;b49e
        RET     nz                                  ;b49f
        RLA                                         ;b4a0
        LD      c,0x3e                              ;b4a1
        JR      nc,b3_lb4a7h                        ;b4a3
        LD      c,0x7e                              ;b4a5
b3_lb4a7h:
        DEC     (ix+0x75)                           ;b4a7
        RET     nz                                  ;b4aa
        LD      (ix+0x75),0x14                      ;b4ab
        LD      a,(ix+0x18)                         ;b4af
        DEC     a                                   ;b4b2
        LD      de,b3_lb535h                        ;b4b3
        CALL    ADD_DE_A                            ;b4b6
        LD      a,(de)                              ;b4b9
        ADD     a,c                                 ;b4ba
        LD      (ix+0xa),a                          ;b4bb
        LD      a,(ix+0x18)                         ;b4be
        CP      0x2                                 ;b4c1
        LD      a,0x17                              ;b4c3
        CALL    z,ProcessSoundCommand               ;b4c5
        DEC     (ix+0x18)                           ;b4c8
        RET     nz                                  ;b4cb
        LD      (ix+0x18),0x4                       ;b4cc
        DEC     (ix+0xb)                            ;b4d0
        RET     nz                                  ;b4d3
        LD      (ix+0xb),0xa                        ;b4d4
        INC     (ix+0x1)                            ;b4d8
        INC     (ix+0x1)                            ;b4db
        RET                                         ;b4de
        DEC     (ix+0xb)                            ;b4df
        RET     nz                                  ;b4e2
        CALL    DisableScreen                       ;b4e3
        LD      a,0x96                              ;b4e6
        CALL    ProcessSoundCommand                 ;b4e8
        CALL    BuildScreenFromMap                  ;b4eb
        CALL    DrawScreenTiles                     ;b4ee
        LD      de,0x20                             ;b4f1
        CALL    0x5884                              ;b4f4
        CALL    DrawGameHud                         ;b4f7
        CALL    LoadMap2Palette                     ;b4fa
        CALL    SetMapPalette02                     ;b4fd
        INC     (ix+0x1)                            ;b500
        LD      (ix+0xb),0x10                       ;b503
        RET                                         ;b507
        CALL    ClearSprAttr                        ;b508
        DEC     (ix+0xb)                            ;b50b
        RET     nz                                  ;b50e
        CALL    EnableScreen                        ;b50f
        XOR     a                                   ;b512
        LD      (0xcd32),a                          ;b513
        LD      a,(0xcd33)                          ;b516
        LD      (0xc498),a                          ;b519
        LD      a,(0xcd34)                          ;b51c
        LD      (0xc494),a                          ;b51f
        LD      a,0x81                              ;b522
        CALL    ProcessSoundCommand                 ;b524
        LD      a,0xf                               ;b527
        CALL    b3_sub_aefch                        ;b529
        LD      a,0x3                               ;b52c
        CALL    PrintDialogText                     ;b52e
        JP      0x87b7                              ;b531
        RET                                         ;b534
