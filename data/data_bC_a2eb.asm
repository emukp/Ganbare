        DEFB    0xfd,0xff,0xfe                      ;a2eb
        CP      0xfc                                ;a2ee
        RET     m                                   ;a2f0
        RET     p                                   ;a2f1
        INC     bc                                  ;a2f2
        RET     m                                   ;a2f3
        LD      (bc),a                              ;a2f4
        CALL    m,0xf884                            ;a2f5
        RST     KEYINT                              ;a2f8
        LD      a,(hl)                              ;a2f9
        LD      bc,0x7f03                           ;a2fa
        ADC     a,(hl)                              ;a2fd
bC_la2feh:
        LD      (hl),c                              ;a2fe
        LD      a,0x0                               ;a2ff
        RLCA                                        ;a301
        LD      l,0x3f                              ;a302
        RRA                                         ;a304
        RRCA                                        ;a305
        LD      a,a                                 ;a306
        LD      a,a                                 ;a307
        NOP                                         ;a308
        NOP                                         ;a309
        OR      0xfa                                ;a30a
        INC     bc                                  ;a30c
        CALL    m,0xf889                            ;a30d
        NOP                                         ;a310
        RET     po                                  ;a311
        JR      nc,bC_la2e4h                        ;a312
        RET     po                                  ;a314
        RET     m                                   ;a315
        RET     m                                   ;a316
        RET     p                                   ;a317
        DEC     b                                   ;a318
        NOP                                         ;a319
        ADD     a,h                                 ;a31a
        JR      nz,bC_la335h                        ;a31b
        LD      c,0x3                               ;a31d
        INC     bc                                  ;a31f
        NOP                                         ;a320
        ADD     a,e                                 ;a321
        LD      bc,0x202                            ;a322
        ADD     hl,bc                               ;a325
        NOP                                         ;a326
        ADC     a,b                                 ;a327
        ADD     a,b                                 ;a328
        RET     nz                                  ;a329
        JR      nz,$-62                             ;a32a
        NOP                                         ;a32c
        ADD     a,c                                 ;a32d
        ADD     a,a                                 ;a32e
        ADD     a,e                                 ;a32f
        INC     b                                   ;a330
        NOP                                         ;a331
        ADC     a,h                                 ;a332
        LD      h,b                                 ;a333
        LD      e,b                                 ;a334
bC_la335h:
        LD      h,0x11                              ;a335
        INC     c                                   ;a337
        INC     bc                                  ;a338
        NOP                                         ;a339
        LD      bc,0x703                            ;a33a
        RLCA                                        ;a33d
        INC     bc                                  ;a33e
        RLCA                                        ;a33f
        NOP                                         ;a340
        ADC     a,d                                 ;a341
        ADD     a,b                                 ;a342
        LD      b,b                                 ;a343
        JR      nz,$-14                             ;a344
        CALL    m,0xc6cf                            ;a346
        RET     z                                   ;a349
        CALL    nz,0x583                            ;a34a
        NOP                                         ;a34d
        ADC     a,e                                 ;a34e
bC_la34fh:
        DJNZ    bC_la360h                           ;a34f
        RRCA                                        ;a351
        RLCA                                        ;a352
        INC     b                                   ;a353
        RLCA                                        ;a354
        INC     b                                   ;a355
        LD      l,0x27                              ;a356
        LD      (hl),0x1d                           ;a358
        LD      b,0x0                               ;a35a
        ADC     a,d                                 ;a35c
        JR      nz,bC_la34fh                        ;a35d
        RET     m                                   ;a35f
bC_la360h:
        RET     p                                   ;a360
        LD      l,b                                 ;a361
        LD      c,b                                 ;a362
        RET     z                                   ;a363
        SBC     a,b                                 ;a364
        RET     m                                   ;a365
        ADD     hl,de                               ;a366
        INC     b                                   ;a367
        NOP                                         ;a368
        ADC     a,h                                 ;a369
        RLCA                                        ;a36a
        LD      l,a                                 ;a36b
        JR      nc,bC_la39eh                        ;a36c
        LD      a,b                                 ;a36e
        LD      a,e                                 ;a36f
        LD      a,b                                 ;a370
        LD      a,e                                 ;a371
        LD      d,c                                 ;a372
        LD      e,b                                 ;a373
        LD      c,c                                 ;a374
        LD      (0x4),hl                            ;a375
        SUB     (hl)                                ;a378
        ADD     a,b                                 ;a379
        RET     po                                  ;a37a
        RET     nc                                  ;a37b
        EX      af,af'                              ;a37c
        INC     b                                   ;a37d
        INC     c                                   ;a37e
        SUB     h                                   ;a37f
        OR      h                                   ;a380
        INC     (hl)                                ;a381
        LD      h,h                                 ;a382
        DEC     b                                   ;a383
        AND     0x1b                                ;a384
        CALL    m,0xf183                            ;a386
        RST     KEYINT                              ;a389
        RST     KEYINT                              ;a38a
        LD      sp,hl                               ;a38b
        EX      (sp),hl                             ;a38c
        LD      h,b                                 ;a38d
        LD      (hl),c                              ;a38e
        LD      b,0xff                              ;a38f
        ADD     a,d                                 ;a391
        INC     d                                   ;a392
        INC     c                                   ;a393
        INC     b                                   ;a394
        RST     KEYINT                              ;a395
        ADD     a,l                                 ;a396
        CP      0xfc                                ;a397
        RET     m                                   ;a399
        RET     m                                   ;a39a
        CP      0x5                                 ;a39b
        RST     KEYINT                              ;a39d
bC_la39eh:
        ADC     a,e                                 ;a39e
        INC     b                                   ;a39f
        INC     bc                                  ;a3a0
        LD      a,h                                 ;a3a1
        LD      c,0x71                              ;a3a2
        LD      a,(hl)                              ;a3a4
        LD      h,(hl)                              ;a3a5
        LD      e,h                                 ;a3a6
        RRA                                         ;a3a7
        LD      c,0x61                              ;a3a8
        INC     bc                                  ;a3aa
        LD      a,a                                 ;a3ab
        SUB     c                                   ;a3ac
        LD      a,(hl)                              ;a3ad
        NOP                                         ;a3ae
        EX      de,hl                               ;a3af
        DI                                          ;a3b0
        NOP                                         ;a3b1
        LD      (bc),a                              ;a3b2
        ADC     a,(hl)                              ;a3b3
        LD      d,0x34                              ;a3b4
        LD      a,b                                 ;a3b6
        NOP                                         ;a3b7
        RET     p                                   ;a3b8
        RET     m                                   ;a3b9
        CP      (hl)                                ;a3ba
        LD      a,0x7e                              ;a3bb
        LD      a,(hl)                              ;a3bd
        RLCA                                        ;a3be
        NOP                                         ;a3bf
        SUB     a                                   ;a3c0
        LD      bc,0x204                            ;a3c1
        LD      bc,0x0                              ;a3c4
        LD      bc,0x8080                           ;a3c7
        NOP                                         ;a3ca
        NOP                                         ;a3cb
        INC     b                                   ;a3cc
        EX      af,af'                              ;a3cd
        JR      nc,bC_la430h                        ;a3ce
        RET     nz                                  ;a3d0
        ADD     a,b                                 ;a3d1
        NOP                                         ;a3d2
        NOP                                         ;a3d3
        ADD     a,b                                 ;a3d4
        NOP                                         ;a3d5
        AND     b                                   ;a3d6
        JR      nz,bC_la3e1h                        ;a3d7
        NOP                                         ;a3d9
        SBC     a,e                                 ;a3da
        LD      bc,0x702                            ;a3db
        RRCA                                        ;a3de
        RRA                                         ;a3df
        ADD     hl,sp                               ;a3e0
bC_la3e1h:
        LD      (hl),c                              ;a3e1
        EX      (sp),hl                             ;a3e2
        LD      b,c                                 ;a3e3
        LD      b,b                                 ;a3e4
        ADD     a,b                                 ;a3e5
        LD      b,0xa                               ;a3e6
        INC     (hl)                                ;a3e8
        LD      c,b                                 ;a3e9
        SUB     b                                   ;a3ea
        JR      nz,bC_la42dh                        ;a3eb
        ADD     a,b                                 ;a3ed
        ADD     a,b                                 ;a3ee
        RET     po                                  ;a3ef
        RET     po                                  ;a3f0
        RET     p                                   ;a3f1
        RET     p                                   ;a3f2
        JR      nz,bC_la3f5h                        ;a3f3
bC_la3f5h:
        NOP                                         ;a3f5
        NOP                                         ;a3f6
        INC     b                                   ;a3f7
        NOP                                         ;a3f8
        ADC     a,h                                 ;a3f9
        RLCA                                        ;a3fa
        DEC     c                                   ;a3fb
        RET     p                                   ;a3fc
        LD      h,b                                 ;a3fd
        RET     nz                                  ;a3fe
        SUB     c                                   ;a3ff
        RRA                                         ;a400
        INC     h                                   ;a401
        LD      (hl),0x16                           ;a402
        RRA                                         ;a404
        RRA                                         ;a405
        DEC     b                                   ;a406
        NOP                                         ;a407
        ADC     a,e                                 ;a408
        ADD     a,b                                 ;a409
        LD      a,0x1c                              ;a40a
        LD      l,0x2a                              ;a40c
        ADD     a,b                                 ;a40e
        AND     b                                   ;a40f
        LD      h,b                                 ;a410
        RET     nz                                  ;a411
        RET     c                                   ;a412
        RET     nc                                  ;a413
        INC     bc                                  ;a414
        NOP                                         ;a415
        ADC     a,l                                 ;a416
        INC     bc                                  ;a417
        EX      af,af'                              ;a418
        LD      (hl),d                              ;a419
        CP      a                                   ;a41a
        LD      a,a                                 ;a41b
        CCF                                         ;a41c
        LD      l,(hl)                              ;a41d
        RET     po                                  ;a41e
        IN      a,(0xc9)                            ;a41f
        JP      (hl)                                ;a421
        LD      h,b                                 ;a422
        INC     h                                   ;a423
        INC     bc                                  ;a424
        NOP                                         ;a425
        SBC     a,(hl)                              ;a426
        CALL    m,0x7ffe                            ;a427
        EX      de,hl                               ;a42a
        CP      0xd1                                ;a42b
bC_la42dh:
        PUSH    de                                  ;a42d
        LD      a,a                                 ;a42e
        LD      e,a                                 ;a42f
bC_la430h:
        SBC     a,a                                 ;a430
        CCF                                         ;a431
        DAA                                         ;a432
        LD      l,0xf                               ;a433
        NOP                                         ;a435
        LD      bc,0x1f07                           ;a436
        NOP                                         ;a439
        LD      e,a                                 ;a43a
        LD      c,d                                 ;a43b
        LD      e,(hl)                              ;a43c
        LD      bc,0xe1d                            ;a43d
        RLA                                         ;a440
        LD      (hl),a                              ;a441
        NOP                                         ;a442
        NOP                                         ;a443
        LD      b,b                                 ;a444
        INC     bc                                  ;a445
        ADD     a,b                                 ;a446
        CP      l                                   ;a447
        SBC     a,b                                 ;a448
        INC     a                                   ;a449
        CP      h                                   ;a44a
        INC     e                                   ;a44b
        CALL    pe,0xf8fc                           ;a44c
        LD      a,b                                 ;a44f
        ADD     a,b                                 ;a450
        CALL    m,0x0                               ;a451
        JR      nc,bC_la4c5h                        ;a454
        LD      h,(hl)                              ;a456
        LD      a,a                                 ;a457
        LD      a,a                                 ;a458
        RST     KEYINT                              ;a459
        RET     po                                  ;a45a
        RST     KEYINT                              ;a45b
        AND     c                                   ;a45c
        LD      a,a                                 ;a45d
        LD      a,(0x7a35)                          ;a45e
        RST     KEYINT                              ;a461
        RST     KEYINT                              ;a462
        NOP                                         ;a463
        CP      b                                   ;a464
        LD      (hl),b                              ;a465
        LD      (hl),b                              ;a466
        RET     m                                   ;a467
        CALL    m,0x6efe                            ;a468
        OR      0xba                                ;a46b
        LD      d,(hl)                              ;a46d
        XOR     h                                   ;a46e
        CALL    nc,0xfefc                           ;a46f
        CP      0x0                                 ;a472
        RRCA                                        ;a474
        NOP                                         ;a475
        LD      bc,0x1f07                           ;a476
        NOP                                         ;a479
        LD      e,a                                 ;a47a
        LD      c,d                                 ;a47b
        LD      e,(hl)                              ;a47c
        LD      bc,0xe1d                            ;a47d
        RLA                                         ;a480
        RLA                                         ;a481
        SCF                                         ;a482
        NOP                                         ;a483
        LD      b,b                                 ;a484
        INC     bc                                  ;a485
        ADD     a,b                                 ;a486
        XOR     h                                   ;a487
        SBC     a,b                                 ;a488
        INC     a                                   ;a489
        CP      h                                   ;a48a
        INC     e                                   ;a48b
        CALL    pe,0xf8fc                           ;a48c
        LD      a,b                                 ;a48f
        ADD     a,b                                 ;a490
        RET     p                                   ;a491
        RET     m                                   ;a492
        NOP                                         ;a493
        JR      nc,bC_la505h                        ;a494
        LD      h,(hl)                              ;a496
        LD      a,a                                 ;a497
        LD      a,a                                 ;a498
        RST     KEYINT                              ;a499
        RET     po                                  ;a49a
        RST     KEYINT                              ;a49b
        AND     c                                   ;a49c
        LD      a,a                                 ;a49d
        LD      a,(0x3a35)                          ;a49e
        CCF                                         ;a4a1
        LD      a,a                                 ;a4a2
        LD      a,a                                 ;a4a3
        CP      b                                   ;a4a4
        LD      (hl),b                              ;a4a5
        LD      (hl),b                              ;a4a6
        RET     m                                   ;a4a7
        CALL    m,0x6efe                            ;a4a8
        OR      0xba                                ;a4ab
        LD      d,(hl)                              ;a4ad
        XOR     h                                   ;a4ae
        CALL    nc,0xf8f8                           ;a4af
        CALL    m,0xfe                              ;a4b2
        INC     b                                   ;a4b5
        NOP                                         ;a4b6
        ADC     a,h                                 ;a4b7
        INC     bc                                  ;a4b8
        DEC     b                                   ;a4b9
        EX      af,af'                              ;a4ba
        DJNZ    bC_la4e9h                           ;a4bb
        JR      nz,bC_la4e3h                        ;a4bd
        LD      c,d                                 ;a4bf
        LD      b,b                                 ;a4c0
        LD      hl,0x2324                           ;a4c1
        INC     b                                   ;a4c4
bC_la4c5h:
        NOP                                         ;a4c5
        ADC     a,h                                 ;a4c6
        ADD     a,b                                 ;a4c7
        RET     nz                                  ;a4c8
        JR      nz,bC_la4dbh                        ;a4c9
        LD      l,b                                 ;a4cb
        EX      af,af'                              ;a4cc
        LD      c,b                                 ;a4cd
        AND     h                                   ;a4ce
        INC     b                                   ;a4cf
        EX      af,af'                              ;a4d0
        LD      c,b                                 ;a4d1
        ADC     a,b                                 ;a4d2
        DEC     b                                   ;a4d3
        NOP                                         ;a4d4
        ADC     a,e                                 ;a4d5
        LD      (bc),a                              ;a4d6
        RLCA                                        ;a4d7
        RRCA                                        ;a4d8
        INC     de                                  ;a4d9
        RRA                                         ;a4da
bC_la4dbh:
        DEC     de                                  ;a4db
        DEC     (hl)                                ;a4dc
        CCF                                         ;a4dd
        LD      e,0x1b                              ;a4de
        INC     e                                   ;a4e0
        LD      b,0x0                               ;a4e1
bC_la4e3h:
        ADC     a,h                                 ;a4e3
        RET     nz                                  ;a4e4
        RET     po                                  ;a4e5
        SUB     b                                   ;a4e6
        RET     p                                   ;a4e7
        OR      b                                   ;a4e8
bC_la4e9h:
        LD      e,b                                 ;a4e9
        RET     m                                   ;a4ea
        RET     p                                   ;a4eb
        OR      b                                   ;a4ec
        LD      (hl),b                              ;a4ed
        LD      (hl),b                              ;a4ee
        LD      a,h                                 ;a4ef
        INC     bc                                  ;a4f0
        RST     KEYINT                              ;a4f1
        ADD     a,h                                 ;a4f2
        CALL    m,0x78fb                            ;a4f3
        INC     a                                   ;a4f6
        INC     b                                   ;a4f7
        CCF                                         ;a4f8
        ADD     a,l                                 ;a4f9
        DAA                                         ;a4fa
        LD      d,e                                 ;a4fb
        INC     a                                   ;a4fc
        INC     e                                   ;a4fd
        LD      a,h                                 ;a4fe
        INC     bc                                  ;a4ff
        CP      0x84                                ;a500
        LD      a,(hl)                              ;a502
        CP      (hl)                                ;a503
        INC     a                                   ;a504
bC_la505h:
        LD      a,b                                 ;a505
        INC     b                                   ;a506
        RET     m                                   ;a507
bC_la508h:
        AND     d                                   ;a508
        RET     z                                   ;a509
        SUB     h                                   ;a50a
        LD      a,b                                 ;a50b
        RRCA                                        ;a50c
        INC     bc                                  ;a50d
        INC     b                                   ;a50e
        INC     bc                                  ;a50f
        NOP                                         ;a510
        INC     bc                                  ;a511
        INC     b                                   ;a512
        RLCA                                        ;a513
        INC     de                                  ;a514
        INC     d                                   ;a515
        JR      $+17                                ;a516
        NOP                                         ;a518
        JR      bC_la547h                           ;a519
        NOP                                         ;a51b
        RET     po                                  ;a51c
        ADD     a,b                                 ;a51d
        LD      b,b                                 ;a51e
        ADD     a,b                                 ;a51f
        NOP                                         ;a520
        ADD     a,b                                 ;a521
        LD      b,b                                 ;a522
        RET     nz                                  ;a523
        SUB     b                                   ;a524
        LD      d,b                                 ;a525
        JR      nc,bC_la508h                        ;a526
        NOP                                         ;a528
        JR      nc,bC_la593h                        ;a529
        LD      b,0x0                               ;a52b
        ADC     a,e                                 ;a52d
        LD      bc,0x907                            ;a52e
        DJNZ    bC_la55fh                           ;a531
        JR      nz,bC_la559h                        ;a533
        LD      c,d                                 ;a535
        LD      b,b                                 ;a536
        LD      hl,0x564                            ;a537
        NOP                                         ;a53a
        ADC     a,e                                 ;a53b
        ADD     a,b                                 ;a53c
        RET     nz                                  ;a53d
        AND     b                                   ;a53e
        DJNZ    bC_la5a9h                           ;a53f
        EX      af,af'                              ;a541
        LD      c,b                                 ;a542
        AND     h                                   ;a543
        INC     b                                   ;a544
        EX      af,af'                              ;a545
        LD      c,h                                 ;a546
bC_la547h:
        RLCA                                        ;a547
        NOP                                         ;a548
        ADC     a,c                                 ;a549
        LD      b,0xf                               ;a54a
        INC     de                                  ;a54c
        RRA                                         ;a54d
        DEC     de                                  ;a54e
        DEC     (hl)                                ;a54f
        CCF                                         ;a550
        LD      e,0x1b                              ;a551
        RLCA                                        ;a553
        NOP                                         ;a554
        SUB     c                                   ;a555
        LD      b,b                                 ;a556
        RET     po                                  ;a557
        SUB     b                                   ;a558
bC_la559h:
        RET     p                                   ;a559
        OR      b                                   ;a55a
        LD      e,b                                 ;a55b
        RET     m                                   ;a55c
        RET     p                                   ;a55d
        OR      b                                   ;a55e
bC_la55fh:
        LD      h,a                                 ;a55f
        DI                                          ;a560
        CALL    m,0xfcff                            ;a561
        EI                                          ;a564
        LD      a,b                                 ;a565
        INC     a                                   ;a566
        DEC     b                                   ;a567
        CCF                                         ;a568
        ADC     a,e                                 ;a569
        DAA                                         ;a56a
        LD      d,e                                 ;a56b
        INC     a                                   ;a56c
        CALL    z,0x7e9e                            ;a56d
        CP      0x7e                                ;a570
        CP      (hl)                                ;a572
        INC     a                                   ;a573
        LD      a,b                                 ;a574
        DEC     b                                   ;a575
        RET     m                                   ;a576
bC_la577h:
        AND     e                                   ;a577
        RET     z                                   ;a578
        SUB     h                                   ;a579
        LD      a,b                                 ;a57a
        JR      $+14                                ;a57b
        INC     bc                                  ;a57d
        NOP                                         ;a57e
        INC     bc                                  ;a57f
        INC     b                                   ;a580
        RLCA                                        ;a581
        INC     bc                                  ;a582
        INC     d                                   ;a583
        RLA                                         ;a584
        JR      $+17                                ;a585
        NOP                                         ;a587
        JR      bC_la5b6h                           ;a588
        NOP                                         ;a58a
        JR      nc,bC_la5edh                        ;a58b
        ADD     a,b                                 ;a58d
        NOP                                         ;a58e
        ADD     a,b                                 ;a58f
        LD      b,b                                 ;a590
        RET     nz                                  ;a591
        ADD     a,b                                 ;a592
bC_la593h:
        LD      d,b                                 ;a593
        RET     nc                                  ;a594
        JR      nc,bC_la577h                        ;a595
        NOP                                         ;a597
        JR      nc,bC_la602h                        ;a598
        NOP                                         ;a59a
        NOP                                         ;a59b
        INC     b                                   ;a59c
        NOP                                         ;a59d
        ADC     a,h                                 ;a59e
        RLCA                                        ;a59f
        NOP                                         ;a5a0
        NOP                                         ;a5a1
        LD      b,0xf                               ;a5a2
        DEC     e                                   ;a5a4
        RRA                                         ;a5a5
        INC     de                                  ;a5a6
        DEC     e                                   ;a5a7
        CCF                                         ;a5a8
bC_la5a9h:
        DEC     de                                  ;a5a9
        RRA                                         ;a5aa
        INC     b                                   ;a5ab
        NOP                                         ;a5ac
        ADC     a,h                                 ;a5ad
        RET     nz                                  ;a5ae
        NOP                                         ;a5af
        NOP                                         ;a5b0
        RET     nz                                  ;a5b1
        RET     po                                  ;a5b2
        LD      (hl),b                              ;a5b3
        RET     p                                   ;a5b4
        SUB     b                                   ;a5b5
bC_la5b6h:
        LD      (hl),b                              ;a5b6
        RET     m                                   ;a5b7
        OR      b                                   ;a5b8
        RET     p                                   ;a5b9
        INC     bc                                  ;a5ba
        NOP                                         ;a5bb
        ADC     a,l                                 ;a5bc
        RLCA                                        ;a5bd
        EX      af,af'                              ;a5be
        RRA                                         ;a5bf
bC_la5c0h:
        RRA                                         ;a5c0
        ADD     hl,sp                               ;a5c1
        LD      (hl),b                              ;a5c2
        JP      po,0xece0                           ;a5c3
        JP      po,0x2440                           ;a5c6
        INC     hl                                  ;a5c9
        INC     bc                                  ;a5ca
        NOP                                         ;a5cb
        OR      (hl)                                ;a5cc
        RET     nz                                  ;a5cd
        JR      nz,bC_la5c0h                        ;a5ce
        RET     p                                   ;a5d0
        JR      c,bC_la5efh                         ;a5d1
        ADC     a,(hl)                              ;a5d3
        LD      c,0x6e                              ;a5d4
        ADC     a,(hl)                              ;a5d6
        INC     b                                   ;a5d7
        LD      c,b                                 ;a5d8
        ADC     a,b                                 ;a5d9
        CPL                                         ;a5da
        INC     sp                                  ;a5db
        LD      (hl),h                              ;a5dc
        LD      a,e                                 ;a5dd
        LD      a,h                                 ;a5de
        LD      a,e                                 ;a5df
        LD      (hl),h                              ;a5e0
        RLCA                                        ;a5e1
        INC     de                                  ;a5e2
        DJNZ    bC_la5f5h                           ;a5e3
        RRA                                         ;a5e5
        RLCA                                        ;a5e6
        DEC     de                                  ;a5e7
        INC     l                                   ;a5e8
        NOP                                         ;a5e9
bC_la5eah:
        RET     po                                  ;a5ea
        SBC     a,b                                 ;a5eb
        LD      e,h                                 ;a5ec
bC_la5edh:
        CP      h                                   ;a5ed
        LD      a,h                                 ;a5ee
bC_la5efh:
        CP      h                                   ;a5ef
        LD      e,h                                 ;a5f0
        RET     nz                                  ;a5f1
        SUB     b                                   ;a5f2
        DJNZ    bC_la605h                           ;a5f3
bC_la5f5h:
        RET     p                                   ;a5f5
        RET     nz                                  ;a5f6
        OR      b                                   ;a5f7
        LD      l,b                                 ;a5f8
        NOP                                         ;a5f9
bC_la5fah:
        LD      (hl),b                              ;a5fa
        LD      a,h                                 ;a5fb
        EI                                          ;a5fc
        CALL    m,0xfcff                            ;a5fd
        EI                                          ;a600
        LD      a,b                                 ;a601
bC_la602h:
        INC     a                                   ;a602
        INC     b                                   ;a603
        CCF                                         ;a604
bC_la605h:
        ADC     a,h                                 ;a605
        DAA                                         ;a606
        LD      d,e                                 ;a607
        RST     KEYINT                              ;a608
        INC     e                                   ;a609
        LD      a,h                                 ;a60a
        CP      (hl)                                ;a60b
        LD      a,(hl)                              ;a60c
        CP      0x7e                                ;a60d
        CP      (hl)                                ;a60f
        INC     a                                   ;a610
        LD      a,b                                 ;a611
        INC     b                                   ;a612
        RET     m                                   ;a613
        ADD     a,e                                 ;a614
        RET     z                                   ;a615
        SUB     h                                   ;a616
        RST     KEYINT                              ;a617
        DEC     b                                   ;a618
        NOP                                         ;a619
        ADC     a,e                                 ;a61a
        RLCA                                        ;a61b
        NOP                                         ;a61c
        NOP                                         ;a61d
        LD      b,0xf                               ;a61e
        DEC     e                                   ;a620
        RRA                                         ;a621
        INC     de                                  ;a622
        DEC     e                                   ;a623
        CCF                                         ;a624
        LD      e,0x5                               ;a625
        NOP                                         ;a627
        ADC     a,e                                 ;a628
        RET     nz                                  ;a629
        NOP                                         ;a62a
        NOP                                         ;a62b
        RET     nz                                  ;a62c
        RET     po                                  ;a62d
        LD      (hl),b                              ;a62e
        RET     p                                   ;a62f
        SUB     b                                   ;a630
        LD      (hl),b                              ;a631
        RET     m                                   ;a632
        RET     p                                   ;a633
        INC     b                                   ;a634
        NOP                                         ;a635
        ADC     a,h                                 ;a636
        RLCA                                        ;a637
        EX      af,af'                              ;a638
