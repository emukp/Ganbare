        DEFW    0xa1ba,0xa1d7,0xa1f6,0xa20c         ;a1ae ; data:jumptable
        DEFW    0xa231,0xa26b                       ;a1b6
        LD      a,(ix+0x3)                          ;a1ba
        CP      0x30                                ;a1bd
        RET     c                                   ;a1bf
        LD      de,0x200                            ;a1c0
        CALL    0x8c0a                              ;a1c3
        CALL    0x87e4                              ;a1c6
        LD      de,0x100                            ;a1c9
        CALL    0x87eb                              ;a1cc
        LD      (ix+0x10),0x8                       ;a1cf
        INC     (ix+0x1)                            ;a1d3
        RET                                         ;a1d6
        LD      de,0x20                             ;a1d7
        CALL    b3_sub_a26ch                        ;a1da
        LD      a,(ix+0x5)                          ;a1dd
        CP      (ix+0x7c)                           ;a1e0
        RET     c                                   ;a1e3
        INC     (ix+0x1)                            ;a1e4
        LD      de,0x200                            ;a1e7
        CALL    0x87e4                              ;a1ea
        LD      de,0x100                            ;a1ed
        CALL    0x8c0a                              ;a1f0
        JP      0x87eb                              ;a1f3
        LD      a,(ix+0x5)                          ;a1f6
        CP      (ix+0x7b)                           ;a1f9
        RET     c                                   ;a1fc
        INC     (ix+0x1)                            ;a1fd
        LD      de,0x200                            ;a200
        CALL    0x87e4                              ;a203
        LD      de,0x100                            ;a206
        JP      0x87eb                              ;a209
        LD      de,0x20                             ;a20c
        CALL    0x8c0a                              ;a20f
        CALL    b3_sub_a26ch                        ;a212
        LD      a,(ix+0x5)                          ;a215
        CP      (ix+0x7b)                           ;a218
        RET     nc                                  ;a21b
        INC     (ix+0x1)                            ;a21c
        LD      de,0x200                            ;a21f
        CALL    0x8c0a                              ;a222
        CALL    0x87e4                              ;a225
        LD      de,0x100                            ;a228
        CALL    0x8c0a                              ;a22b
        DEFB    0xc3,0xeb,0x87,0xdd,0x7e,0x05,0xdd,0xbe  ;a22e ; data:code-gap
        DEFB    0x7c,0xd0,0xdd,0x36,0x01,0x01,0x11,0x00  ;a236
        DEFB    0x02,0xcd,0x0a,0x8c,0xcd,0xe4,0x87,0x11  ;a23e
        DEFB    0x00,0x01,0xcd,0xeb,0x87,0xdd,0x36,0x03  ;a246
        DEFB    0x30,0xdd,0x7e,0x7c,0x3d,0xdd,0x77,0x05  ;a24e
        DEFB    0xdd,0x7e,0x12,0xb7,0xc8,0x11,0x00,0xfd  ;a256
        DEFB    0xcd,0xeb,0x87,0x16,0x00,0xcd,0xe4,0x87  ;a25e
        DEFB    0xdd,0x36,0x01,0x05,0xc9,0xc9,0xdd,0x66  ;a266
        DEFB    0x09,0xdd,0x6e,0x08,0x19,0xdd,0x74,0x09  ;a26e
        DEFB    0xdd,0x75,0x08,0xc9                 ;a276
b3_sub_a26ch: equ     #a26c
b3_sub_a27ah:
        DEC     (ix+0x11)                           ;a27a
        JR      nz,b3_la283h                        ;a27d
        LD      (ix+0x12),0x1                       ;a27f
b3_la283h:
        LD      a,(0xc00d)                          ;a283
        AND     0x3                                 ;a286
        RET     nz                                  ;a288
        DEC     (ix+0x10)                           ;a289
        RET     nz                                  ;a28c
        LD      (ix+0x10),0x8                       ;a28d
        LD      a,0x2                               ;a291
        JP      0x89c2                              ;a293
        LD      (ix+0x71),0x0                       ;a296
        CALL    b3_sub_a420h                        ;a29a
        CALL    0x893d                              ;a29d
        LD      (ix+0x3),0x30                       ;a2a0
        LD      de,0xfd00                           ;a2a4
        CALL    0x87eb                              ;a2a7
        CALL    0x8c0a                              ;a2aa
        CALL    b3_sub_a344h                        ;a2ad
        LD      de,0x200                            ;a2b0
        BIT     0,(ix+0xf)                          ;a2b3
        CALL    z,0x8c0a                            ;a2b7
        CALL    0x87e4                              ;a2ba
        LD      a,(0xcd12)                          ;a2bd
        LD      b,a                                 ;a2c0
        LD      a,0x18                              ;a2c1
        SUB     b                                   ;a2c3
        LD      (ix+0x78),a                         ;a2c4
        LD      (ix+0x77),a                         ;a2c7
        LD      de,0x80                             ;a2ca
        JR      b3_la34bh                           ;a2cd
        LD      a,(0xc00d)                          ;a2cf
        AND     0x1f                                ;a2d2
        LD      a,0x2                               ;a2d4
        CALL    z,ProcessSoundCommand               ;a2d6
        CALL    b3_sub_a31fh                        ;a2d9
        BIT     0,(ix+0x71)                         ;a2dc
        JR      nz,b3_la2edh                        ;a2e0
        LD      a,(0xc496)                          ;a2e2
        SUB     (ix+0x5)                            ;a2e5
        INC     a                                   ;a2e8
        CP      0x3                                 ;a2e9
        JR      c,b3_la309h                         ;a2eb
b3_la2edh:
        DEC     (ix+0x78)                           ;a2ed
        RET     nz                                  ;a2f0
b3_la2f1h:
        LD      a,(ix+0x77)                         ;a2f1
        LD      (ix+0x78),a                         ;a2f4
        BIT     0,(ix+0xf)                          ;a2f7
        JR      z,b3_la30fh                         ;a2fb
        LD      a,(0xc49a)                          ;a2fd
        SUB     (ix+0x5)                            ;a300
        RET     c                                   ;a303
        CP      0x50                                ;a304
        RET     nc                                  ;a306
        JR      b3_la319h                           ;a307
b3_la309h:
        LD      (ix+0x71),0x1                       ;a309
        JR      b3_la2f1h                           ;a30d
b3_la30fh:
        LD      a,(0xc49a)                          ;a30f
        SUB     (ix+0x5)                            ;a312
        RET     nc                                  ;a315
        CP      0xb0                                ;a316
        RET     c                                   ;a318
b3_la319h:
        LD      a,(ix+0x7d)                         ;a319
        JP      0x89c2                              ;a31c
b3_sub_a31fh:
        CALL    0x894d                              ;a31f
        CALL    b3_sub_a352h                        ;a322
        CALL    b3_sub_a13bh                        ;a325
        CALL    b3_sub_a359h                        ;a328
        LD      l,(ix+0x12)                         ;a32b
        LD      h,(ix+0x13)                         ;a32e
        RST     DCOMPR                              ;a331
        RET     nz                                  ;a332
        CALL    b3_sub_a352h                        ;a333
        CALL    0x8c0a                              ;a336
        CALL    b3_la34bh                           ;a339
        CALL    b3_sub_a359h                        ;a33c
        CALL    0x8c0a                              ;a33f
        JR      b3_sub_a344h                        ;a342
b3_sub_a344h:
        LD      (ix+0x12),e                         ;a344
        LD      (ix+0x13),d                         ;a347
        RET                                         ;a34a
b3_la34bh:
        LD      (ix+0x10),e                         ;a34b
        LD      (ix+0x11),d                         ;a34e
        RET                                         ;a351
b3_sub_a352h:
        LD      e,(ix+0x10)                         ;a352
        LD      d,(ix+0x11)                         ;a355
        RET                                         ;a358
b3_sub_a359h:
        LD      e,(ix+0x6)                          ;a359
        LD      d,(ix+0x7)                          ;a35c
        RET                                         ;a35f
        LD      a,(0xcd5b)                          ;a360
        OR      a                                   ;a363
        RET     nz                                  ;a364
        JP      0x8334                              ;a365
        CALL    b3_sub_a3a1h                        ;a368
        LD      de,b3_la3c6h                        ;a36b
        CALL    b3_sub_a398h                        ;a36e
        AND     0x3                                 ;a371
        CALL    GetPointerDE2A                      ;a373
        EX      de,hl                               ;a376
        LD      e,(hl)                              ;a377
        INC     hl                                  ;a378
        LD      d,(hl)                              ;a379
        BIT     0,(ix+0xf)                          ;a37a
        CALL    z,0x8c0a                            ;a37e
        INC     hl                                  ;a381
        CALL    0x87e4                              ;a382
        LD      e,(hl)                              ;a385
        INC     hl                                  ;a386
        LD      d,(hl)                              ;a387
        INC     hl                                  ;a388
        CALL    0x87eb                              ;a389
        LD      a,(hl)                              ;a38c
        LD      (ix+0x11),a                         ;a38d
        INC     hl                                  ;a390
        LD      a,(hl)                              ;a391
        LD      (ix+0x12),a                         ;a392
        JP      0x893d                              ;a395
b3_sub_a398h:
        LD      a,r                                 ;a398
        LD      hl,0xc00d                           ;a39a
        XOR     (hl)                                ;a39d
        RRA                                         ;a39e
        RRA                                         ;a39f
        RET                                         ;a3a0
b3_sub_a3a1h:
        LD      b,0x38                              ;a3a1
        LD      d,0x0                               ;a3a3
        LD      a,(0xc496)                          ;a3a5
        LD      c,a                                 ;a3a8
        CP      0x80                                ;a3a9
        JR      c,b3_la3b2h                         ;a3ab
        INC     d                                   ;a3ad
        LD      a,c                                 ;a3ae
        SUB     b                                   ;a3af
        JR      b3_la3b4h                           ;a3b0
b3_la3b2h:
        LD      a,c                                 ;a3b2
        ADD     a,b                                 ;a3b3
b3_la3b4h:
        JP      c,0x87b7                            ;a3b4
        LD      (ix+0xf),d                          ;a3b7
        LD      (ix+0x5),a                          ;a3ba
        LD      a,0xc8                              ;a3bd
        LD      (ix+0x3),a                          ;a3bf
        LD      (ix+0x10),a                         ;a3c2
        RET                                         ;a3c5
b3_la3c6h: equ     #a3c6
        DEFB    0xce,0xa3,0xd4,0xa3,0xd4,0xa3,0xda,0xa3  ;a3c6 ; data:code-gap
        DEFB    0x80,0x01,0x00,0xfa,0x20,0x00,0x00,0x02  ;a3ce
        DEFB    0x00,0xfa,0x40,0x00,0x00,0x02,0x80,0xfa  ;a3d6
        DEFB    0x66,0x00                           ;a3de
b3_la3d4h: equ     #a3d4
        CALL    0x894d                              ;a3e0
        CALL    0x87b1                              ;a3e3
        LD      e,(ix+0x11)                         ;a3e6
        LD      d,(ix+0x12)                         ;a3e9
        CALL    b3_sub_a13bh                        ;a3ec
        LD      a,(ix+0x10)                         ;a3ef
        CP      (ix+0x3)                            ;a3f2
        RET     nc                                  ;a3f5
        JP      0x87b7                              ;a3f6
        CALL    b3_sub_a420h                        ;a3f9
        CALL    0x893d                              ;a3fc
        LD      de,0x0                              ;a3ff
        CALL    0x87eb                              ;a402
        CALL    b3_sub_a46bh                        ;a405
        BIT     0,(ix+0xf)                          ;a408
        CALL    nz,0x8c0a                           ;a40c
        CALL    0x87e4                              ;a40f
        LD      a,(ix+0xf)                          ;a412
        OR      a                                   ;a415
        LD      a,0x1                               ;a416
        JR      nz,b3_la41ch                        ;a418
        LD      a,0x2                               ;a41a
b3_la41ch:
        LD      (ix+0x1f),a                         ;a41c
        RET                                         ;a41f
b3_sub_a420h:
        LD      a,(0xcd5b)                          ;a420
        OR      a                                   ;a423
        JP      nz,0x87b7                           ;a424
        LD      a,(0xc496)                          ;a427
        ADD     a,0x40                              ;a42a
        CP      0x80                                ;a42c
        JP      c,0x87b7                            ;a42e
        LD      bc,0x801                            ;a431
        LD      a,r                                 ;a434
        LD      hl,0xc00d                           ;a436
        XOR     (hl)                                ;a439
        BIT     4,a                                 ;a43a
        JR      z,b3_la441h                         ;a43c
        LD      b,0xf8                              ;a43e
        DEC     c                                   ;a440
b3_la441h:
        LD      d,b                                 ;a441
        LD      (ix+0x5),b                          ;a442
        LD      a,(0xc494)                          ;a445
        LD      b,a                                 ;a448
        ADD     a,0x43                              ;a449
        CP      0xab                                ;a44b
        JR      nc,b3_la458h                        ;a44d
        LD      a,b                                 ;a44f
        LD      b,0x68                              ;a450
        CP      0x80                                ;a452
        JR      c,b3_la458h                         ;a454
        LD      b,0xbe                              ;a456
b3_la458h:
        LD      a,b                                 ;a458
        LD      (ix+0x3),a                          ;a459
        LD      e,a                                 ;a45c
        LD      (ix+0x10),a                         ;a45d
        LD      (ix+0xf),c                          ;a460
        LD      b,c                                 ;a463
        CALL    0x781f                              ;a464
        RET     nc                                  ;a467
        JP      0x87b7                              ;a468
b3_sub_a46bh:
        LD      a,(0xcd12)                          ;a46b
        SRL     a                                   ;a46e
        SRL     a                                   ;a470
        LD      b,a                                 ;a472
        ADD     a,a                                 ;a473
        ADD     a,b                                 ;a474
        LD      hl,b3_la481h                        ;a475
        CALL    ADD_HL_A                            ;a478
        LD      e,(hl)                              ;a47b
        INC     hl                                  ;a47c
        LD      d,(hl)                              ;a47d
        INC     hl                                  ;a47e
        LD      a,(hl)                              ;a47f
        RET                                         ;a480
b3_la481h: equ     #a481
        DEFB    0x00,0xff,0x40,0x80,0xfd,0x38,0x40,0xfd  ;a481 ; data:code-gap
        DEFB    0x30,0x00,0xfd,0x18                 ;a489
        DEFB    0xcd                                ;a48d
        LD      c,l                                 ;a48e
        ADC     a,c                                 ;a48f
        LD      a,(ix+0x1d)                         ;a490
        OR      a                                   ;a493
        JP      nz,0x9fde                           ;a494
        CALL    b3_sub_a699h                        ;a497
        RET     nc                                  ;a49a
        JP      0x9fca                              ;a49b
        CALL    b3_sub_a420h                        ;a49e
        LD      (ix+0xa),0x41                       ;a4a1
        LD      (ix+0xc),0x1                        ;a4a5
b3_la4a9h:
        LD      de,0xfe00                           ;a4a9
        BIT     0,(ix+0xf)                          ;a4ac
        CALL    nz,0x8c0a                           ;a4b0
        CALL    0x87e4                              ;a4b3
        LD      de,0xfc80                           ;a4b6
        JP      0x87eb                              ;a4b9
        LD      a,0x41                              ;a4bc
        LD      de,0xc00d                           ;a4be
        CALL    0x895b                              ;a4c1
        LD      de,0x66                             ;a4c4
        CALL    b3_sub_a13bh                        ;a4c7
        LD      a,(ix+0x10)                         ;a4ca
        CP      (ix+0x3)                            ;a4cd
        RET     nc                                  ;a4d0
        JR      b3_la4a9h                           ;a4d1
        CALL    b3_sub_abf6h                        ;a4d3
b3_la4d6h:
        CALL    b3_sub_a954h                        ;a4d6
        CALL    0x893d                              ;a4d9
        CALL    b3_sub_a567h                        ;a4dc
        LD      a,(ix+0x1f)                         ;a4df
        LD      (ix+0x19),a                         ;a4e2
        RET                                         ;a4e5
        CALL    0x85b1                              ;a4e6
        JR      b3_la4d6h                           ;a4e9
        LD      a,(ix+0x1)                          ;a4eb
        CALL    JumpIndex                           ;a4ee
        DEFW    0xa4f5,0xa72a,0x7edd,0xb71d         ;a4f1 ; data:table
        JP      nz,0x9fde                           ;a4f9
        CALL    b3_sub_a954h                        ;a4fc
        CALL    0x894d                              ;a4ff
        CALL    b3_sub_a699h                        ;a502
        JR      c,b3_la52dh                         ;a505
        LD      a,(ix+0x1f)                         ;a507
        AND     (ix+0x19)                           ;a50a
        RET     nz                                  ;a50d
b3_sub_a50eh:
        LD      a,(ix+0x1f)                         ;a50e
        AND     0x3                                 ;a511
        JR      nz,b3_la521h                        ;a513
        LD      b,(ix+0x19)                         ;a515
        CALL    b3_sub_a683h                        ;a518
        LD      a,(ix+0x19)                         ;a51b
        JR      nc,b3_la58ah                        ;a51e
        RET                                         ;a520
b3_la521h:
        LD      b,(ix+0x1a)                         ;a521
        CALL    b3_sub_a683h                        ;a524
        LD      a,(ix+0x1a)                         ;a527
        JR      nc,b3_la58ah                        ;a52a
        RET                                         ;a52c
b3_la52dh:
        CALL    b3_sub_a625h                        ;a52d
        JP      nc,0x9fca                           ;a530
        CALL    b3_sub_a50eh                        ;a533
        RET     nc                                  ;a536
        LD      d,(ix+0x19)                         ;a537
        LD      e,(ix+0x1a)                         ;a53a
        PUSH    de                                  ;a53d
        LD      a,0x3                               ;a53e
        XOR     d                                   ;a540
        LD      (ix+0x19),a                         ;a541
        LD      a,0xc                               ;a544
        XOR     e                                   ;a546
        LD      (ix+0x1a),a                         ;a547
        LD      a,(ix+0x1f)                         ;a54a
        LD      (0xcd58),a                          ;a54d
        CALL    b3_sub_a50eh                        ;a550
        POP     de                                  ;a553
        CALL    c,b3_sub_a560h                      ;a554
        JP      c,b3_la611h                         ;a557
        LD      a,(0xcd58)                          ;a55a
        AND     0x3                                 ;a55d
        RET     nz                                  ;a55f
b3_sub_a560h:
        LD      (ix+0x19),d                         ;a560
        LD      (ix+0x1a),e                         ;a563
        RET                                         ;a566
b3_sub_a567h:
        EX      af,af'                              ;a567
        LD      a,(0xc498)                          ;a568
        CP      (ix+0x3)                            ;a56b
        LD      a,0x8                               ;a56e
        JR      c,b3_la574h                         ;a570
        SRL     a                                   ;a572
b3_la574h:
        LD      (ix+0x1a),a                         ;a574
        EX      af,af'                              ;a577
        RET                                         ;a578
        DEFB    0xdd,0x7e,0x1a,0xee,0x0c,0xdd,0x77,0x1a  ;a579 ; data:code-gap
        DEFB    0xdd,0x7e,0x19,0xee,0x03,0xdd,0x77,0x19  ;a581
        DEFB    0xc9                                ;a589
b3_la58ah:
        OR      a                                   ;a58a
        CALL    z,b3_sub_a5b8h                      ;a58b
b3_sub_a58eh:
        LD      (ix+0x1f),a                         ;a58e
        PUSH    af                                  ;a591
        LD      a,(0xcd12)                          ;a592
        AND     0xc                                 ;a595
        ADD     a,a                                 ;a597
        ADD     a,a                                 ;a598
        LD      hl,b3_la5d1h                        ;a599
        CALL    ADD_HL_A                            ;a59c
        POP     af                                  ;a59f
b3_la5a0h:
        RRA                                         ;a5a0
        JR      c,b3_la5a9h                         ;a5a1
        INC     hl                                  ;a5a3
        INC     hl                                  ;a5a4
        INC     hl                                  ;a5a5
        INC     hl                                  ;a5a6
        JR      b3_la5a0h                           ;a5a7
b3_la5a9h:
        LD      e,(hl)                              ;a5a9
        INC     hl                                  ;a5aa
        LD      d,(hl)                              ;a5ab
        INC     hl                                  ;a5ac
        CALL    0x87eb                              ;a5ad
        LD      e,(hl)                              ;a5b0
        INC     hl                                  ;a5b1
        LD      d,(hl)                              ;a5b2
        CALL    0x87e4                              ;a5b3
        OR      a                                   ;a5b6
        RET                                         ;a5b7
b3_sub_a5b8h:
        LD      a,(ix+0x3)                          ;a5b8
        LD      hl,(0xc494)                         ;a5bb
        CP      (hl)                                ;a5be
        LD      a,0x8                               ;a5bf
        RET     c                                   ;a5c1
        LD      a,0x4                               ;a5c2
        RET     nz                                  ;a5c4
        LD      a,0x2                               ;a5c5
        RET                                         ;a5c7
        DEFB    0xe6,0x03,0xc8,0xe6,0x01,0xdd,0x77,0x0f  ;a5c8 ; data:code-gap
        DEFB    0xc9,0x00,0x00,0x00,0x01,0x00,0x00,0x00  ;a5d0
        DEFB    0xff,0x00,0x01,0x00,0x00,0x00,0xff,0x00  ;a5d8
        DEFB    0x00,0x00,0x00,0x40,0x01,0x00,0x00,0xc0  ;a5e0
        DEFB    0xfe,0x40,0x01,0x00,0x00,0xc0,0xfe,0x00  ;a5e8
        DEFB    0x00,0x00,0x00,0x80,0x01,0x00,0x00,0x80  ;a5f0
        DEFB    0xfe,0x80,0x01,0x00,0x00,0x80,0xfe,0x00  ;a5f8
        DEFB    0x00,0x00,0x00,0x00,0x02,0x00,0x00,0x00  ;a600
        DEFB    0xfe,0x00,0x02,0x00,0x00,0x00,0xfe,0x00  ;a608
        DEFB    0x00                                ;a610
b3_la5d1h: equ     #a5d1
b3_la611h:
        LD      a,(ix+0x1f)                         ;a611
        AND     0xc                                 ;a614
        JR      nz,b3_la620h                        ;a616
        LD      a,(ix+0x1f)                         ;a618
        XOR     0x3                                 ;a61b
        JP      b3_la58ah                           ;a61d
b3_la620h:
        XOR     0xc                                 ;a620
        JP      b3_la58ah                           ;a622
b3_sub_a625h:
        LD      a,(ix+0x1e)                         ;a625
        OR      a                                   ;a628
        JR      z,b3_la679h                         ;a629
        LD      hl,b3_la67bh                        ;a62b
        LD      a,(ix+0x1f)                         ;a62e
b3_la631h:
        RRA                                         ;a631
        JR      c,b3_la638h                         ;a632
        INC     hl                                  ;a634
        INC     hl                                  ;a635
        JR      b3_la631h                           ;a636
b3_la638h:
        LD      a,(hl)                              ;a638
        INC     hl                                  ;a639
        LD      l,(hl)                              ;a63a
        LD      h,a                                 ;a63b
        LD      d,(ix+0x5)                          ;a63c
        LD      e,(ix+0x3)                          ;a63f
        PUSH    de                                  ;a642
        EX      de,hl                               ;a643
        LD      b,(ix+0x1e)                         ;a644
b3_la647h:
        PUSH    af                                  ;a647
        LD      a,h                                 ;a648
        ADD     a,d                                 ;a649
        LD      h,a                                 ;a64a
        ADD     a,0x20                              ;a64b
        CP      0x30                                ;a64d
        JR      c,b3_la671h                         ;a64f
        LD      a,l                                 ;a651
        ADD     a,e                                 ;a652
        LD      l,a                                 ;a653
        ADD     a,0x30                              ;a654
        CP      0x80                                ;a656
        JR      c,b3_la671h                         ;a658
        POP     af                                  ;a65a
        DJNZ    b3_la647h                           ;a65b
        LD      (ix+0x5),h                          ;a65d
        LD      (ix+0x3),l                          ;a660
        CALL    0x877a                              ;a663
        CALL    b3_sub_a6bch                        ;a666
        POP     de                                  ;a669
        LD      (ix+0x5),d                          ;a66a
        LD      (ix+0x3),e                          ;a66d
        RET                                         ;a670
b3_la671h:
        POP     af                                  ;a671
        POP     de                                  ;a672
        LD      (ix+0x5),d                          ;a673
        LD      (ix+0x3),e                          ;a676
b3_la679h:
        SCF                                         ;a679
        RET                                         ;a67a
b3_la67bh: equ     #a67b
        DEFB    0x10,0x00,0xf0,0x00,0x00,0x10,0x00,0xf0  ;a67b ; data:code-gap
b3_la67dh: equ     #a67d
b3_la682h: equ     #a682
b3_sub_a683h:
        LD      a,(ix+0x1f)                         ;a683
        LD      (0xcd5a),a                          ;a686
        LD      a,b                                 ;a689
        CALL    b3_la58ah                           ;a68a
        CALL    b3_sub_a699h                        ;a68d
        PUSH    af                                  ;a690
        LD      a,(0xcd5a)                          ;a691
        CALL    b3_la58ah                           ;a694
        POP     af                                  ;a697
        RET                                         ;a698
b3_sub_a699h:
        LD      e,(ix+0x2)                          ;a699
        LD      d,(ix+0x3)                          ;a69c
        PUSH    de                                  ;a69f
        LD      e,(ix+0x4)                          ;a6a0
        LD      d,(ix+0x5)                          ;a6a3
        PUSH    de                                  ;a6a6
        CALL    0x877a                              ;a6a7
        CALL    b3_sub_a6bch                        ;a6aa
        POP     de                                  ;a6ad
        LD      (ix+0x4),e                          ;a6ae
        LD      (ix+0x5),d                          ;a6b1
        POP     de                                  ;a6b4
        LD      (ix+0x2),e                          ;a6b5
        LD      (ix+0x3),d                          ;a6b8
        RET                                         ;a6bb
b3_sub_a6bch:
        LD      a,(ix+0x1f)                         ;a6bc
        LD      d,0x0                               ;a6bf
b3_la6c1h:
        RRA                                         ;a6c1
        JR      c,b3_la6c7h                         ;a6c2
        INC     d                                   ;a6c4
        JR      b3_la6c1h                           ;a6c5
b3_la6c7h:
        LD      a,d                                 ;a6c7
        LD      d,(ix+0x5)                          ;a6c8
        LD      e,(ix+0x3)                          ;a6cb
        CP      0x1                                 ;a6ce
        JR      c,b3_la6dah                         ;a6d0
        JR      z,b3_la6edh                         ;a6d2
        CP      0x2                                 ;a6d4
        JR      z,b3_la715h                         ;a6d6
        JR      b3_la700h                           ;a6d8
b3_la6dah:
        LD      a,d                                 ;a6da
        ADD     a,0x8                               ;a6db
        CCF                                         ;a6dd
        RET     nc                                  ;a6de
        LD      d,a                                 ;a6df
        PUSH    de                                  ;a6e0
        CALL    0x781f                              ;a6e1
        POP     de                                  ;a6e4
        RET     c                                   ;a6e5
        LD      a,e                                 ;a6e6
        SUB     0x3                                 ;a6e7
        LD      e,a                                 ;a6e9
        JP      0x781f                              ;a6ea
b3_la6edh:
        LD      a,d                                 ;a6ed
        SUB     0x8                                 ;a6ee
        CCF                                         ;a6f0
        RET     nc                                  ;a6f1
        LD      d,a                                 ;a6f2
        PUSH    de                                  ;a6f3
        CALL    0x781f                              ;a6f4
        POP     de                                  ;a6f7
        RET     c                                   ;a6f8
        LD      a,e                                 ;a6f9
        SUB     0x3                                 ;a6fa
        LD      e,a                                 ;a6fc
        JP      0x781f                              ;a6fd
b3_la700h:
        LD      a,e                                 ;a700
        SUB     0x3                                 ;a701
        LD      e,a                                 ;a703
        PUSH    de                                  ;a704
        LD      a,d                                 ;a705
        SUB     0x8                                 ;a706
        LD      d,a                                 ;a708
        CALL    0x781f                              ;a709
        POP     de                                  ;a70c
        RET     c                                   ;a70d
        LD      a,d                                 ;a70e
        ADD     a,0x8                               ;a70f
        LD      d,a                                 ;a711
        JP      0x781f                              ;a712
b3_la715h:
        LD      a,0xc8                              ;a715
        CP      e                                   ;a717
        RET     c                                   ;a718
        PUSH    de                                  ;a719
b3_la71ah:
        LD      a,d                                 ;a71a
        SUB     0x8                                 ;a71b
        LD      d,a                                 ;a71d
        CALL    0x781f                              ;a71e
        POP     de                                  ;a721
        RET     c                                   ;a722
        LD      a,d                                 ;a723
        ADD     a,0x8                               ;a724
        LD      d,a                                 ;a726
        JP      0x781f                              ;a727
        DEC     (ix+0xb)                            ;a72a
        RET     nz                                  ;a72d
        LD      a,(ix+0x1f)                         ;a72e
        CALL    b3_la58ah                           ;a731
        LD      a,0x43                              ;a734
        LD      (ix+0xa),a                          ;a736
        DEC     (ix+0xe)                            ;a739
        DEC     (ix+0x1)                            ;a73c
        LD      (ix+0xc),0x3                        ;a73f
        CALL    b3_la4d6h                           ;a743
        RET                                         ;a746
        CALL    b3_sub_abf6h                        ;a747
        CALL    b3_sub_a954h                        ;a74a
        CALL    0x893d                              ;a74d
b3_sub_a750h:
        LD      a,(ix+0xb)                          ;a750
        LD      (ix+0x15),a                         ;a753
        LD      (ix+0x13),0x70                      ;a756
        LD      (ix+0x72),0x3                       ;a75a
        LD      (ix+0x70),0x1                       ;a75e
        RET                                         ;a762
        LD      a,(ix+0x1d)                         ;a763
        OR      a                                   ;a766
        JP      nz,0x9fde                           ;a767
        LD      a,(ix+0x1)                          ;a76a
        CALL    JumpIndex                           ;a76d
        DEFW    0xa810,0xa814,0xa988,0xa99f         ;a770 ; data:table
        DEFW    0x7edd,0xb71d                       ;a778
        JP      nz,0x9fde                           ;a77c
        LD      a,(ix+0x1)                          ;a77f
        CALL    JumpIndex                           ;a782
        DEFW    0xa814,0xa814,0xa8ea,0xa8fe         ;a785 ; data:table
b3_sub_a78dh:
        LD      a,(ix+0xf)                          ;a78d
        OR      a                                   ;a790
        JR      z,b3_la7abh                         ;a791
        LD      a,(0xc496)                          ;a793
        SUB     (ix+0x5)                            ;a796
b3_la799h:
        CCF                                         ;a799
        RET     nc                                  ;a79a
        CP      0x20                                ;a79b
        RET     nc                                  ;a79d
        LD      a,(0xc494)                          ;a79e
        SUB     (ix+0x3)                            ;a7a1
        JR      nc,b3_la7a8h                        ;a7a4
        NEG                                         ;a7a6
b3_la7a8h:
        CP      0x10                                ;a7a8
        RET                                         ;a7aa
b3_la7abh:
        LD      a,(ix+0x5)                          ;a7ab
        LD      hl,0xc496                           ;a7ae
        SUB     (hl)                                ;a7b1
        JR      b3_la799h                           ;a7b2
b3_la7b4h:
        CALL    b3_sub_a78dh                        ;a7b4
        JR      nc,b3_la7fah                        ;a7b7
        LD      a,(ix+0x7e)                         ;a7b9
        CALL    0x8938                              ;a7bc
        LD      a,(ix+0x73)                         ;a7bf
        LD      de,b3_la800h                        ;a7c2
        BIT     0,(ix+0xf)                          ;a7c5
        JR      z,b3_la7ceh                         ;a7c9
        LD      de,0xa808                           ;a7cb
b3_la7ceh:
        ADD     a,e                                 ;a7ce
        LD      e,a                                 ;a7cf
        JR      nc,b3_la7d3h                        ;a7d0
        INC     d                                   ;a7d2
