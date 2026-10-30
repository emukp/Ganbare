        DEFW    0x8334,0x8334,thunk_FUN_ram_8334,0xa360  ;8294 ; data:table
        DEFW    0x8334,0x8334,0xb5c9,0x8334         ;829c
        DEFW    0x8334,0x8334,0x8334,0x8334         ;82a4
        DEFW    0xb5c9,0x8334,0x8334,0x8334         ;82ac
        DEFW    0x8334,0x9cd7,0x8334,0x8334         ;82b4
        DEFW    0x8334,0x8334,0x8334,0x8334         ;82bc
        DEFW    0x8334,0x8334,0x8334,0x8334         ;82c4
        DEFW    0x9bdd,0x8334,0x8334,0x8334         ;82cc
        DEFW    0x8334,0xacd6,0xacde,0xb166         ;82d4
        DEFW    0xad31,0xb080,0xaf08,0xb0f2         ;82dc
        DEFW    0xb29a,0xb2a2,0xb549,0xb347         ;82e4
        DEFW    0x964c,0x970a,0xb687                ;82ec
b2_sub_82f2h:
        LD      a,(0xcd12)                          ;82f2
        AND     0xc                                 ;82f5
        ADD     a,a                                 ;82f7
        ADD     a,a                                 ;82f8
        ADD     a,a                                 ;82f9
        LD      c,a                                 ;82fa
        LD      a,0xe0                              ;82fb
        SUB     c                                   ;82fd
        LD      (0xcd16),a                          ;82fe
        RET                                         ;8301
b2_sub_8302h:
        LD      hl,0xc600                           ;8302
        LD      de,0x80                             ;8305
        LD      b,0x8                               ;8308
        LD      c,0x0                               ;830a
b2_l830ch:
        LD      a,(hl)                              ;830c
        OR      a                                   ;830d
        JR      z,b2_l8311h                         ;830e
        INC     c                                   ;8310
b2_l8311h:
        ADD     hl,de                               ;8311
        DJNZ    b2_l830ch                           ;8312
        LD      a,c                                 ;8314
        OR      a                                   ;8315
        JR      nz,b2_l8324h                        ;8316
        LD      a,(0xcd16)                          ;8318
        CP      0x12                                ;831b
        RET     c                                   ;831d
        LD      a,0x10                              ;831e
        LD      (0xcd16),a                          ;8320
        RET                                         ;8323
b2_l8324h:
        LD      a,(0xcd12)                          ;8324
        AND     0xc                                 ;8327
        RRA                                         ;8329
        RRA                                         ;832a
        ADD     a,0x3                               ;832b
        CP      c                                   ;832d
        RET     nc                                  ;832e
        LD      hl,0xcd16                           ;832f
        INC     (hl)                                ;8332
        RET                                         ;8333
b2_sub_8334h:
        LD      a,b                                 ;8334
        LD      (0xcd39),a                          ;8335
        LD      (0xcd3a),de                         ;8338
        LD      hl,0xc600                           ;833c
        LD      b,0x8                               ;833f
        XOR     a                                   ;8341
        LD      de,0x80                             ;8342
b2_l8345h:
        CP      (hl)                                ;8345
        JR      z,b2_l834ch                         ;8346
        ADD     hl,de                               ;8348
        DJNZ    b2_l8345h                           ;8349
        RET                                         ;834b
b2_l834ch:
        PUSH    hl                                  ;834c
        POP     ix                                  ;834d
        LD      (0xcd3c),hl                         ;834f
        LD      a,(0xcd39)                          ;8352
        LD      hl,b2_l84afh                        ;8355
        CALL    ADD_HL_A                            ;8358
        LD      a,(hl)                              ;835b
        LD      (ix+0x20),a                         ;835c
        LD      c,a                                 ;835f
        AND     a                                   ;8360
        JP      z,b2_l83e6h                         ;8361
        LD      de,0x0                              ;8364
        LD      hl,0xee20                           ;8367
        LD      b,0xc                               ;836a
b2_l836ch:
        LD      a,(hl)                              ;836c
        CP      0xe0                                ;836d
        JR      nz,b2_l8391h                        ;836f
        LD      (hl),0xe1                           ;8371
        CALL    b2_sub_84a0h                        ;8373
        INC     e                                   ;8376
        INC     d                                   ;8377
        LD      a,0x4                               ;8378
        CALL    ADD_HL_A                            ;837a
        LD      (hl),0xe1                           ;837d
        CALL    b2_sub_84a0h                        ;837f
        INC     e                                   ;8382
        INC     d                                   ;8383
        LD      a,0x4                               ;8384
        CALL    ADD_HL_A                            ;8386
        DEC     c                                   ;8389
        JR      z,b2_l83e6h                         ;838a
        DEC     c                                   ;838c
        JR      z,b2_l83e6h                         ;838d
        JR      b2_l839bh                           ;838f
b2_l8391h:
        INC     d                                   ;8391
        INC     d                                   ;8392
        INC     hl                                  ;8393
        INC     hl                                  ;8394
        INC     hl                                  ;8395
        INC     hl                                  ;8396
        INC     hl                                  ;8397
        INC     hl                                  ;8398
        INC     hl                                  ;8399
        INC     hl                                  ;839a
b2_l839bh:
        DJNZ    b2_l836ch                           ;839b
        LD      a,(ix+0x20)                         ;839d
        SUB     c                                   ;83a0
        RET     z                                   ;83a1
        LD      hl,(0xcd3c)                         ;83a2
        LD      de,0x5                              ;83a5
        LD      b,a                                 ;83a8
        LD      a,0x21                              ;83a9
        CALL    ADD_HL_A                            ;83ab
b2_l83aeh:
        LD      a,(hl)                              ;83ae
        PUSH    hl                                  ;83af
        LD      hl,0xee20                           ;83b0
        ADD     a,a                                 ;83b3
        ADD     a,a                                 ;83b4
        CALL    ADD_HL_A                            ;83b5
        LD      a,0xe0                              ;83b8
        LD      (hl),a                              ;83ba
        POP     hl                                  ;83bb
        ADD     hl,de                               ;83bc
        DJNZ    b2_l83aeh                           ;83bd
        LD      a,(0xcd39)                          ;83bf
        CP      0x7                                 ;83c2
        RET     nz                                  ;83c4
        XOR     a                                   ;83c5
        LD      (0xcd14),a                          ;83c6
        LD      (0xcd31),a                          ;83c9
        LD      a,0x10                              ;83cc
        LD      (0xcd30),a                          ;83ce
        RET                                         ;83d1
b2_sub_83d2h:
        PUSH    hl                                  ;83d2
        PUSH    bc                                  ;83d3
        PUSH    de                                  ;83d4
        LD      hl,(0xcd3c)                         ;83d5
        LD      d,h                                 ;83d8
        LD      e,l                                 ;83d9
        INC     de                                  ;83da
        LD      bc,0x1f                             ;83db
        XOR     a                                   ;83de
        LD      (hl),a                              ;83df
        LDIR                                        ;83e0
        POP     de                                  ;83e2
        POP     bc                                  ;83e3
        POP     hl                                  ;83e4
        RET                                         ;83e5
b2_l83e6h:
        CALL    b2_sub_83d2h                        ;83e6
        LD      hl,(0xcd3c)                         ;83e9
        LD      a,(0xcd39)                          ;83ec
        LD      (hl),a                              ;83ef
        INC     l                                   ;83f0
        LD      (hl),0x0                            ;83f1
        LD      de,(0xcd3a)                         ;83f3
        INC     l                                   ;83f7
        LD      (hl),0x0                            ;83f8
        INC     l                                   ;83fa
        LD      (hl),e                              ;83fb
        INC     l                                   ;83fc
        LD      (hl),0x0                            ;83fd
        INC     l                                   ;83ff
        LD      (hl),d                              ;8400
        INC     l                                   ;8401
        LD      (hl),0x0                            ;8402
        LD      (ix+0xc),0x3                        ;8404
        LD      de,b2_l84ddh                        ;8408
        CALL    b2_sub_8485h                        ;840b
        LD      hl,(0xcd3c)                         ;840e
        LD      a,(ix+0x0)                          ;8411
        LD      (0xcd37),a                          ;8414
        CALL    0x54e6                              ;8417
        CALL    0xaa04                              ;841a
        LD      hl,(0xcd3c)                         ;841d
        LD      a,(ix+0x0)                          ;8420
        DEC     a                                   ;8423
b2_l8424h:
        CALL    JumpIndex                           ;8424
        DEFW    0xa0ed,0xa296,0xa151,0xa368         ;8427 ; data:table
        DEFW    0xa3f9,0xa49e,0xb5ec,0xa4d3         ;842f
        DEFW    0xa747,0xaad5,0xabd3,0xabd3         ;8437
        DEFW    0xb5ec,0xa747,0xa747,0xa4d3         ;843f
        DEFW    0xa747,0x9ce9,0xa4d3,0xa4d3         ;8447
        DEFW    0xa747,0xa747,0xa747,0xa747         ;844f
        DEFW    0xa747,0xa747,0xa4d3,0xa4d3         ;8457
        DEFW    0x9be3,0xa4d3,0xa747,0xa747         ;845f
        DEFW    0xa4d3,0xace6,0xace6,0xb16c         ;8467
        DEFW    0xad39,0xb086,0xaf10,0xb0fa         ;846f
        DEFW    0xb2aa,0xb2aa,Shop01,0xb34f         ;8477
        DEFW    0x9653,0x9712,0xb68d                ;847f
b2_sub_8485h:
        LD      a,(ix+0x20)                         ;8485
        AND     a                                   ;8488
        RET     z                                   ;8489
        LD      a,(ix+0x0)                          ;848a
        CALL    GetPointerDE2A                      ;848d
        LD      hl,(0xcd3c)                         ;8490
        SET     5,l                                 ;8493
        LD      b,(hl)                              ;8495
b2_l8496h:
        LD      a,l                                 ;8496
        ADD     a,0x5                               ;8497
        LD      l,a                                 ;8499
        LD      a,(de)                              ;849a
        INC     de                                  ;849b
        LD      (hl),a                              ;849c
        DJNZ    b2_l8496h                           ;849d
        RET                                         ;849f
b2_sub_84a0h:
        PUSH    hl                                  ;84a0
        LD      hl,(0xcd3c)                         ;84a1
        LD      a,e                                 ;84a4
        ADD     a,a                                 ;84a5
        ADD     a,a                                 ;84a6
        ADD     a,e                                 ;84a7
        ADD     a,0x21                              ;84a8
        CALL    ADD_HL_A                            ;84aa
        LD      (hl),d                              ;84ad
        POP     hl                                  ;84ae
b2_l84afh:
        RET                                         ;84af
        DEFB    0x02,0x02,0x08,0x02,0x04,0x04,0x02,0x04  ;84b0 ; data:code-gap
        DEFB    0x04,0x04,0x04,0x04,0x06,0x06,0x02,0x04  ;84b8
        DEFB    0x04,0x04,0x04,0x06,0x06,0x06,0x04,0x04  ;84c0
        DEFB    0x06,0x06,0x02,0x02,0x08,0x06,0x06,0x06  ;84c8
        DEFB    0x04,0x04,0x04,0x04,0x01,0x01,0x01,0x04  ;84d0
        DEFB    0x02,0x02,0x02,0x02,0x08,0x02,0x04,0x3d  ;84d8
        DEFB    0x85,0x47,0x85,0x3d,0x85,0x3d,0x85,0x3d  ;84e0
        DEFB    0x85,0x47,0x85,0x4d,0x85,0x3d,0x85,0x3d  ;84e8
        DEFB    0x85,0x3d,0x85,0x4d,0x85,0x4d,0x85,0x3d  ;84f0
        DEFB    0x85,0x3d,0x85,0x3d,0x85,0x4d,0x85,0x3d  ;84f8
        DEFB    0x85,0x61,0x85,0x4d,0x85,0x4f,0x85,0x4d  ;8500
        DEFB    0x85,0x4f,0x85,0x4d,0x85,0x4d,0x85,0x41  ;8508
        DEFB    0x85,0x5b,0x85,0x4d,0x85,0x3d,0x85,0x4b  ;8510
        DEFB    0x85,0x4d,0x85,0x61,0x85,0x61,0x85,0x3d  ;8518
        DEFB    0x85,0x4d,0x85,0x3d,0x85,0x61,0x85,0x68  ;8520
        DEFB    0x85,0x67,0x85,0x68,0x85,0x4d,0x85,0x67  ;8528
        DEFB    0x85,0x67,0x85,0x55,0x85,0x3d,0x85,0x69  ;8530
        DEFB    0x85,0x71,0x85,0x61,0x85,0x01,0x42,0x01  ;8538
        DEFB    0x42,0x01,0x42,0x01,0x42,0x02,0x0e,0x02  ;8540
        DEFB    0x45,0x02,0x45,0x01,0x02,0x02,0x44,0x02  ;8548
        DEFB    0x44,0x02,0x44,0x02,0x0e,0x01,0x42,0x04  ;8550
        DEFB    0x46,0x04,0x04,0x01,0x42,0x01,0x42,0x02  ;8558
        DEFB    0x4c,0x01,0x42,0x02,0x44,0x01,0x42,0x03  ;8560
        DEFB    0x0e,0x01,0x42,0x01,0x42,0x07,0x01,0x42  ;8568
        DEFB    0x07,0x02,0x08                      ;8570
b2_l84ddh: equ     #84dd
        LD      a,(0xcd15)                          ;8573
        OR      a                                   ;8576
        LD      a,0x0                               ;8577
        LD      (0xcd15),a                          ;8579
        RET     nz                                  ;857c
        CALL    b2_sub_86bch                        ;857d
        LD      a,0x1                               ;8580
        LD      (0xcd5b),a                          ;8582
        CALL    0x5b6d                              ;8585
        LD      a,(0xcd12)                          ;8588
        AND     0xc                                 ;858b
        JR      z,b2_l85ach                         ;858d
        RRA                                         ;858f
        RRA                                         ;8590
        LD      c,a                                 ;8591
b2_l8592h:
        LD      a,(de)                              ;8592
        LD      b,a                                 ;8593
        LD      h,d                                 ;8594
        LD      l,e                                 ;8595
        INC     de                                  ;8596
        INC     de                                  ;8597
b2_l8598h:
        LD      a,(de)                              ;8598
        PUSH    hl                                  ;8599
        PUSH    de                                  ;859a
        PUSH    bc                                  ;859b
        CALL    DrawShopDialog                      ;859c
        POP     bc                                  ;859f
        POP     de                                  ;85a0
        POP     hl                                  ;85a1
        INC     de                                  ;85a2
        DEC     c                                   ;85a3
        JR      z,b2_l85ach                         ;85a4
        DJNZ    b2_l8598h                           ;85a6
        LD      d,h                                 ;85a8
        LD      e,l                                 ;85a9
        JR      b2_l8592h                           ;85aa
b2_l85ach:
        XOR     a                                   ;85ac
        LD      (0xcd5b),a                          ;85ad
        RET                                         ;85b0
        PUSH    ix                                  ;85b1
        POP     hl                                  ;85b3
        LD      a,r                                 ;85b4
        ADD     a,l                                 ;85b6
        RRA                                         ;85b7
        RRA                                         ;85b8
        LD      b,a                                 ;85b9
        LD      a,(0xcd2d)                          ;85ba
        XOR     b                                   ;85bd
        LD      (0xcd2d),a                          ;85be
        AND     0x7f                                ;85c1
        ADD     a,0x40                              ;85c3
        LD      (0xcd5c),a                          ;85c5
        SUB     0x8                                 ;85c8
        LD      d,a                                 ;85ca
        LD      e,0x58                              ;85cb
b2_l85cdh:
        CALL    b2_sub_85e8h                        ;85cd
        JR      c,b2_l85ddh                         ;85d0
        PUSH    de                                  ;85d2
        CALL    b2_sub_97b2h                        ;85d3
        LD      (0xcd5d),a                          ;85d6
        OR      a                                   ;85d9
        POP     de                                  ;85da
        JR      nz,b2_l85f7h                        ;85db
b2_l85ddh:
        LD      a,0x10                              ;85dd
        ADD     a,d                                 ;85df
        LD      d,a                                 ;85e0
        ADD     a,0x8                               ;85e1
        LD      (0xcd5c),a                          ;85e3
        JR      b2_l85cdh                           ;85e6
b2_sub_85e8h:
        LD      a,d                                 ;85e8
        CP      0xc0                                ;85e9
        JP      nc,b2_l87b7h                        ;85eb
        LD      a,(0xc496)                          ;85ee
        SUB     d                                   ;85f1
        ADD     a,0x20                              ;85f2
        CP      0x40                                ;85f4
        RET                                         ;85f6
b2_l85f7h:
        LD      a,(0xcd48)                          ;85f7
        PUSH    af                                  ;85fa
        LD      a,(0xcd5d)                          ;85fb
        LD      (0xcd48),a                          ;85fe
        CALL    b2_sub_97e4h                        ;8601
        POP     af                                  ;8604
        LD      (0xcd48),a                          ;8605
        LD      a,(0xcd5c)                          ;8608
        LD      (ix+0x5),a                          ;860b
        LD      a,(0xc496)                          ;860e
        LD      b,(ix+0x5)                          ;8611
        SUB     b                                   ;8614
        LD      a,0x1                               ;8615
        JP      nc,0xa58a                           ;8617
        LD      a,0x2                               ;861a
        JP      0xa58a                              ;861c
b2_sub_861fh:
        LD      a,(0xc00d)                          ;861f
        AND     0x3                                 ;8622
        RET     nz                                  ;8624
        LD      hl,0xcd5e                           ;8625
        DEC     (hl)                                ;8628
        RET     nz                                  ;8629
        CALL    0x5b6d                              ;862a
        INC     de                                  ;862d
        LD      a,(de)                              ;862e
        OR      a                                   ;862f
        RET     z                                   ;8630
        PUSH    af                                  ;8631
        CALL    DrawShopDialog                      ;8632
        POP     af                                  ;8635
        CP      0x8                                 ;8636
        JR      z,b2_l864eh                         ;8638
        CP      0x21                                ;863a
        JR      z,b2_l864eh                         ;863c
        CP      0x5                                 ;863e
        JR      z,b2_l8652h                         ;8640
        LD      a,(0xcd12)                          ;8642
        ADD     a,a                                 ;8645
        LD      b,a                                 ;8646
        LD      a,0x60                              ;8647
        SUB     b                                   ;8649
b2_l864ah:
        LD      (0xcd5e),a                          ;864a
        RET                                         ;864d
b2_l864eh:
        LD      a,0x80                              ;864e
        JR      b2_l864ah                           ;8650
b2_l8652h:
        LD      a,0xe0                              ;8652
        JR      b2_l864ah                           ;8654
        XOR     a                                   ;8656
        LD      (0xcd17),a                          ;8657
        LD      (0xcd31),a                          ;865a
        LD      (0xcd14),a                          ;865d
        LD      (0xcdb0),a                          ;8660
        LD      a,0x10                              ;8663
        LD      (0xcd30),a                          ;8665
        LD      a,0x8                               ;8668
        LD      (0xcd16),a                          ;866a
        LD      a,0x10                              ;866d
        LD      (0xcd5e),a                          ;866f
        CALL    b2_sub_9785h                        ;8672
        LD      hl,0xa090                           ;8675
        LD      bc,0x1010                           ;8678
        LD      a,0x99                              ;867b
        LD      d,0x1                               ;867d
        CALL    FillRect                            ;867f
        LD      a,(0xcd16)                          ;8682
        CP      0x20                                ;8685
        RET     nc                                  ;8687
        LD      a,0x20                              ;8688
        LD      (0xcd16),a                          ;868a
        RET                                         ;868d
b2_sub_868eh:
        CALL    b2_sub_86bch                        ;868e
        CALL    b2_sub_8255h                        ;8691
        LD      ix,0xc600                           ;8694
        LD      b,0x8                               ;8698
b2_l869ah:
        LD      a,(ix+0x0)                          ;869a
        AND     a                                   ;869d
        JR      z,b2_l86b4h                         ;869e
        LD      a,(ix+0xd)                          ;86a0
        OR      a                                   ;86a3
        JR      nz,b2_l86e6h                        ;86a4
        PUSH    bc                                  ;86a6
        CALL    b2_sub_8715h                        ;86a7
        CALL    b2_sub_877ah                        ;86aa
        CALL    b2_sub_87a5h                        ;86ad
        CALL    b2_sub_87b1h                        ;86b0
        POP     bc                                  ;86b3
b2_l86b4h:
        LD      de,0x80                             ;86b4
        ADD     ix,de                               ;86b7
        DJNZ    b2_l869ah                           ;86b9
        RET                                         ;86bb
b2_sub_86bch:
        LD      hl,0xc270                           ;86bc
        LD      b,0x8                               ;86bf
        LD      c,0x0                               ;86c1
b2_l86c3h:
        LD      a,(hl)                              ;86c3
        OR      a                                   ;86c4
        JR      z,b2_l86c8h                         ;86c5
        INC     c                                   ;86c7
b2_l86c8h:
        INC     hl                                  ;86c8
        DJNZ    b2_l86c3h                           ;86c9
        LD      a,c                                 ;86cb
        SRL     a                                   ;86cc
        SRL     a                                   ;86ce
        LD      c,a                                 ;86d0
        LD      a,(GameLand)                        ;86d1
        ADD     a,c                                 ;86d4
        LD      c,a                                 ;86d5
        LD      a,(GameScore)                       ;86d6
        ADD     a,c                                 ;86d9
        CP      0xf                                 ;86da
        JR      c,b2_l86e0h                         ;86dc
        LD      a,0xf                               ;86de
b2_l86e0h:
        AND     0xf                                 ;86e0
        LD      (0xcd12),a                          ;86e2
        RET                                         ;86e5
b2_l86e6h:
        EXX                                         ;86e6
        DEC     a                                   ;86e7
        CALL    z,0xa9d3                            ;86e8
        CALL    0xa9b3                              ;86eb
        EXX                                         ;86ee
        JR      b2_l86b4h                           ;86ef
b2_sub_86f1h:
        LD      ix,0xca00                           ;86f1
        LD      b,0xc                               ;86f5
        LD      de,0x40                             ;86f7
        JR      b2_l8705h                           ;86fa
b2_sub_86fch:
        LD      ix,0xc600                           ;86fc
        LD      b,0x8                               ;8700
        LD      de,0x80                             ;8702
b2_l8705h:
        PUSH    bc                                  ;8705
        LD      a,(ix+0x0)                          ;8706
        AND     a                                   ;8709
        PUSH    de                                  ;870a
        CALL    nz,b2_sub_87f2h                     ;870b
        POP     de                                  ;870e
        ADD     ix,de                               ;870f
        POP     bc                                  ;8711
        DJNZ    b2_l8705h                           ;8712
        RET                                         ;8714
b2_sub_8715h:
        LD      a,(ix+0x0)                          ;8715
        DEC     a                                   ;8718
        CALL    JumpIndex                           ;8719
        DEFW    0xa0fe,0xa2cf,0xa184,0xa3e0         ;871c ; data:table
        DEFW    0xa48d,0xa4bc,0xa4eb,0xa4eb         ;8724
        DEFW    0xa778,0xab0c,0xac00,0xac00         ;872c
        DEFW    0xa778,0xa778,0xa778,0xa4eb         ;8734
        DEFW    0xa778,0x9d32,0xa4eb,0xa4eb         ;873c
        DEFW    0xa763,0xa778,0xa778,0xa778         ;8744
        DEFW    0xa778,0xa778,0xa4eb,0xa4eb         ;874c
        DEFW    0x9bff,0xa4eb,0xa778,0xa778         ;8754
        DEFW    0xa4eb,0xacfe,0xacfe,0xb1ba         ;875c
        DEFW    0xad78,0xb09f,0xaf36,0xb12a         ;8764
        DEFW    0xb2d2,0xb2d2,0xb573,0xb36c         ;876c
        DEFW    0x9678,0x9727,0xb692                ;8774
b2_sub_877ah:
        CALL    b2_sub_8791h                        ;877a
        LD      e,(ix+0x8)                          ;877d
        LD      d,(ix+0x9)                          ;8780
        LD      l,(ix+0x4)                          ;8783
        LD      h,(ix+0x5)                          ;8786
        ADD     hl,de                               ;8789
        LD      (ix+0x4),l                          ;878a
        LD      (ix+0x5),h                          ;878d
        RET                                         ;8790
b2_sub_8791h:
        LD      e,(ix+0x6)                          ;8791
        LD      d,(ix+0x7)                          ;8794
        LD      l,(ix+0x2)                          ;8797
        LD      h,(ix+0x3)                          ;879a
        ADD     hl,de                               ;879d
        LD      (ix+0x2),l                          ;879e
        LD      (ix+0x3),h                          ;87a1
        RET                                         ;87a4
b2_sub_87a5h:
        LD      a,(ix+0x5)                          ;87a5
        CP      0xf8                                ;87a8
        JR      nc,b2_l87b7h                        ;87aa
        CP      0x8                                 ;87ac
        RET     nc                                  ;87ae
        JR      b2_l87b7h                           ;87af
b2_sub_87b1h:
        LD      a,(ix+0x3)                          ;87b1
        CP      0xe4                                ;87b4
        RET     c                                   ;87b6
b2_l87b7h:
        XOR     a                                   ;87b7
        LD      (ix+0x0),a                          ;87b8
        LD      (ix+0xc),a                          ;87bb
        LD      (ix+0xd),a                          ;87be
        LD      (ix+0x11),a                         ;87c1
        LD      (ix+0x1f),a                         ;87c4
        PUSH    ix                                  ;87c7
        POP     hl                                  ;87c9
        SET     5,l                                 ;87ca
        LD      c,(hl)                              ;87cc
        LD      a,c                                 ;87cd
        AND     a                                   ;87ce
        RET     z                                   ;87cf
        INC     l                                   ;87d0
b2_l87d1h:
        LD      a,(hl)                              ;87d1
        LD      de,0xee20                           ;87d2
        ADD     a,a                                 ;87d5
        ADD     a,a                                 ;87d6
        ADD     a,e                                 ;87d7
        LD      e,a                                 ;87d8
        LD      a,0xe0                              ;87d9
        LD      (de),a                              ;87db
        LD      a,l                                 ;87dc
        ADD     a,0x5                               ;87dd
        LD      l,a                                 ;87df
        DEC     c                                   ;87e0
        JR      nz,b2_l87d1h                        ;87e1
        RET                                         ;87e3
b2_sub_87e4h:
        LD      (ix+0x8),e                          ;87e4
        LD      (ix+0x9),d                          ;87e7
        RET                                         ;87ea
b2_l87ebh:
        LD      (ix+0x6),e                          ;87eb
        LD      (ix+0x7),d                          ;87ee
        RET                                         ;87f1
b2_sub_87f2h:
        DI                                          ;87f2
        LD      a,0xc                               ;87f3
        LD      (0xa000),a                          ;87f5
        LD      (BanksInA0),a                       ;87f8
        EI                                          ;87fb
        EXX                                         ;87fc
        LD      a,(ix+0xa)                          ;87fd
        LD      de,0xb6d2                           ;8800
        CALL    GetPointerDE2A                      ;8803
        LD      a,(de)                              ;8806
        INC     de                                  ;8807
        PUSH    de                                  ;8808
        LD      de,0xbaf3                           ;8809
        CALL    GetPointerDE2A                      ;880c
        EXX                                         ;880f
        POP     de                                  ;8810
        PUSH    ix                                  ;8811
        POP     hl                                  ;8813
        SET     5,l                                 ;8814
        LD      b,(hl)                              ;8816
        LD      a,b                                 ;8817
        OR      a                                   ;8818
        JP      z,SetBanks1_2_3                     ;8819
        INC     l                                   ;881c
        INC     l                                   ;881d
b2_l881eh:
        PUSH    hl                                  ;881e
        EXX                                         ;881f
        POP     hl                                  ;8820
        LD      a,(de)                              ;8821
        INC     de                                  ;8822
        ADD     a,(ix+0x3)                          ;8823
        LD      (hl),a                              ;8826
        INC     l                                   ;8827
        CALL    b2_sub_883ch                        ;8828
        INC     de                                  ;882b
        LD      (hl),a                              ;882c
        INC     l                                   ;882d
        PUSH    hl                                  ;882e
        EXX                                         ;882f
        POP     hl                                  ;8830
        LD      a,(de)                              ;8831
        LD      (hl),a                              ;8832
        INC     l                                   ;8833
        INC     de                                  ;8834
        INC     l                                   ;8835
        INC     l                                   ;8836
        DJNZ    b2_l881eh                           ;8837
        JP      SetBanks1_2_3                       ;8839
b2_sub_883ch:
        LD      a,(de)                              ;883c
        AND     0x80                                ;883d
        JR      nz,b2_l8848h                        ;883f
        LD      a,(de)                              ;8841
        ADD     a,(ix+0x5)                          ;8842
        RET     nc                                  ;8845
        JR      b2_l8851h                           ;8846
b2_l8848h:
        LD      a,(de)                              ;8848
        NEG                                         ;8849
        LD      c,a                                 ;884b
        LD      a,(ix+0x5)                          ;884c
        SUB     c                                   ;884f
        RET     nc                                  ;8850
b2_l8851h:
        DEC     l                                   ;8851
        LD      a,0xe1                              ;8852
        LD      (hl),a                              ;8854
        INC     l                                   ;8855
        RET                                         ;8856
b2_sub_8857h:
        LD      hl,0xca00                           ;8857
        LD      b,0xc                               ;885a
        LD      de,0x40                             ;885c
        JR      b2_l8869h                           ;885f
b2_sub_8861h:
        LD      hl,0xc600                           ;8861
        LD      b,0x8                               ;8864
        LD      de,0x80                             ;8866
b2_l8869h:
        PUSH    hl                                  ;8869
        PUSH    de                                  ;886a
        PUSH    bc                                  ;886b
        CALL    b2_sub_8879h                        ;886c
        CALL    nc,b2_sub_8893h                     ;886f
        POP     bc                                  ;8872
        POP     de                                  ;8873
        POP     hl                                  ;8874
        ADD     hl,de                               ;8875
        DJNZ    b2_l8869h                           ;8876
        RET                                         ;8878
b2_sub_8879h:
        LD      a,(hl)                              ;8879
        OR      a                                   ;887a
        JR      z,b2_l8891h                         ;887b
        PUSH    hl                                  ;887d
        LD      a,0xe                               ;887e
        ADD     a,l                                 ;8880
        LD      l,a                                 ;8881
        LD      a,(hl)                              ;8882
        POP     hl                                  ;8883
        OR      a                                   ;8884
        JR      nz,b2_l8891h                        ;8885
        PUSH    hl                                  ;8887
        SET     5,l                                 ;8888
        LD      a,(hl)                              ;888a
        POP     hl                                  ;888b
        OR      a                                   ;888c
        JR      z,b2_l8891h                         ;888d
        OR      a                                   ;888f
        RET                                         ;8890
b2_l8891h:
        SCF                                         ;8891
        RET                                         ;8892
b2_sub_8893h:
        SET     5,l                                 ;8893
        LD      b,(hl)                              ;8895
        INC     l                                   ;8896
