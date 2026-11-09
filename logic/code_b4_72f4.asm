b4_l72f4h:
        AND     b                                   ;72f4
        NOP                                         ;72f5
        JR      nc,b4_l72f8h                        ;72f6
b4_l72f8h:
        XOR     d                                   ;72f8
        NOP                                         ;72f9
        INC     bc                                  ;72fa
        LD      b,0x0                               ;72fb
        ADD     a,c                                 ;72fd
        LD      a,(bc)                              ;72fe
        INC     b                                   ;72ff
        NOP                                         ;7300
        ADD     a,c                                 ;7301
        JR      nc,b4_l7313h                        ;7302
        NOP                                         ;7304
        ADC     a,h                                 ;7305
        XOR     0xe0                                ;7306
        XOR     0xee                                ;7308
        CALL    z,0xccc0                            ;730a
        CALL    z,b4_sub_7077h                      ;730d
        LD      (hl),a                              ;7310
        LD      (hl),a                              ;7311
        INC     b                                   ;7312
b4_l7313h:
        NOP                                         ;7313
        INC     b                                   ;7314
        LD      (hl),a                              ;7315
        AND     b                                   ;7316
        AND     a                                   ;7317
        LD      (hl),b                              ;7318
        NOP                                         ;7319
        NOP                                         ;731a
        LD      (hl),b                              ;731b
        AND     a                                   ;731c
        NOP                                         ;731d
        LD      (hl),a                              ;731e
        LD      a,(bc)                              ;731f
        LD      (hl),b                              ;7320
        RLCA                                        ;7321
        LD      (hl),a                              ;7322
        AND     e                                   ;7323
        LD      (hl),b                              ;7324
        AND     a                                   ;7325
        AND     e                                   ;7326
        LD      (hl),a                              ;7327
        RLCA                                        ;7328
        LD      a,d                                 ;7329
        LD      a,(bc)                              ;732a
        LD      (hl),a                              ;732b
        RLCA                                        ;732c
        AND     b                                   ;732d
        XOR     d                                   ;732e
        LD      (hl),b                              ;732f
        LD      (hl),b                              ;7330
        LD      a,(bc)                              ;7331
        XOR     d                                   ;7332
        NOP                                         ;7333
        LD      a,d                                 ;7334
        NOP                                         ;7335
        LD      a,(0x3)                             ;7336
        ADC     a,b                                 ;7339
        CALL    pe,0xc00                            ;733a
        CALL    z,0xec                              ;733d
        LD      c,0xe7                              ;7340
        INC     b                                   ;7342
        NOP                                         ;7343
        ADC     a,h                                 ;7344
        CALL    pe,0xcc00                           ;7345
        CALL    z,0xec                              ;7348
        CALL    z,0xecc7                            ;734b
        NOP                                         ;734e
        XOR     0xe7                                ;734f
        INC     b                                   ;7351
        NOP                                         ;7352
        ADD     a,c                                 ;7353
        CALL    pe,0x3                              ;7354
        ADC     a,b                                 ;7357
        CALL    pe,0xccc0                           ;7358
        CALL    z,0xc0ec                            ;735b
        XOR     0xe7                                ;735e
        INC     b                                   ;7360
        NOP                                         ;7361
        ADC     a,h                                 ;7362
        CALL    pe,0xccc0                           ;7363
        CALL    z,0xc0ec                            ;7366
b4_l7369h:
        CALL    z,0xecc7                            ;7369
        RET     nz                                  ;736c
        XOR     0xe7                                ;736d
        INC     b                                   ;736f
        NOP                                         ;7370
        ADD     a,c                                 ;7371
        CALL    pe,0x4                              ;7372
        ADD     a,a                                 ;7375
        RET     nz                                  ;7376
b4_l7377h:
        CALL    z,BEEP                              ;7377
        RET     nz                                  ;737a
        XOR     0xe0                                ;737b
        DEC     b                                   ;737d
        NOP                                         ;737e
        ADC     a,e                                 ;737f
        RET     nz                                  ;7380
        CALL    z,ERAFNK                            ;7381
        RET     nz                                  ;7384
        CALL    z,ERAFNK                            ;7385
        RET     nz                                  ;7388
        XOR     0xee                                ;7389
        DEC     b                                   ;738b
        NOP                                         ;738c
        ADC     a,a                                 ;738d
        INC     c                                   ;738e
        CALL    z,0xeccc                            ;738f
        INC     c                                   ;7392
        CALL    z,0xecc7                            ;7393
        INC     c                                   ;7396
        CALL    z,0xecc7                            ;7397
        LD      c,0xee                              ;739a
        RST     DCOMPR                              ;739c
        INC     b                                   ;739d
        NOP                                         ;739e
        ADD     a,h                                 ;739f
        CALL    pe,0xcccc                           ;73a0
        RST     0                                   ;73a3
        ADD     hl,bc                               ;73a4
        NOP                                         ;73a5
        ADC     a,a                                 ;73a6
        RET     nz                                  ;73a7
        CALL    z,0xeccc                            ;73a8
        RET     nz                                  ;73ab
        CALL    z,0xecc7                            ;73ac
        RET     nz                                  ;73af
        CALL    z,0xecc7                            ;73b0
        RET     nz                                  ;73b3
        XOR     0xe7                                ;73b4
        INC     b                                   ;73b6
        NOP                                         ;73b7
        ADD     a,h                                 ;73b8
        CALL    pe,0xccc0                           ;73b9
        RST     0                                   ;73bc
        ADD     hl,bc                               ;73bd
        NOP                                         ;73be
        SUB     b                                   ;73bf
        RET     nz                                  ;73c0
        CALL    z,0xc0cc                            ;73c1
        RET     nz                                  ;73c4
        CALL    z,0xc0cc                            ;73c5
        RET     nz                                  ;73c8
        CALL    z,0xc0cc                            ;73c9
        RET     nz                                  ;73cc
        XOR     0xee                                ;73cd
        RET     po                                  ;73cf
        INC     b                                   ;73d0
        NOP                                         ;73d1
        ADD     a,c                                 ;73d2
        RET     nz                                  ;73d3
        INC     bc                                  ;73d4
        CALL    z,0x8                               ;73d5
        LD      (bc),a                              ;73d8
        JR      nc,b4_l7369h                        ;73d9
        INC     sp                                  ;73db
        NOP                                         ;73dc
        JR      nc,b4_l7412h                        ;73dd
        NOP                                         ;73df
        INC     sp                                  ;73e0
        NOP                                         ;73e1
        INC     bc                                  ;73e2
        JR      nc,b4_l7415h                        ;73e3
        INC     bc                                  ;73e5
        NOP                                         ;73e6
        NOP                                         ;73e7
        INC     sp                                  ;73e8
        INC     b                                   ;73e9
        NOP                                         ;73ea
        ADD     a,c                                 ;73eb
        XOR     d                                   ;73ec
        DEC     b                                   ;73ed
        NOP                                         ;73ee
        ADD     a,c                                 ;73ef
        AND     b                                   ;73f0
        ADD     hl,de                               ;73f1
        NOP                                         ;73f2
        CP      b                                   ;73f3
        LD      c,0xee                              ;73f4
        XOR     0xe0                                ;73f6
        INC     c                                   ;73f8
        CALL    z,0xc0cc                            ;73f9
        RLCA                                        ;73fc
        LD      (hl),a                              ;73fd
        LD      (hl),a                              ;73fe
        LD      (hl),b                              ;73ff
        SCF                                         ;7400
        LD      (hl),b                              ;7401
        NOP                                         ;7402
        AND     b                                   ;7403
        NOP                                         ;7404
        NOP                                         ;7405
        LD      a,(bc)                              ;7406
        XOR     d                                   ;7407
        NOP                                         ;7408
        NOP                                         ;7409
        AND     b                                   ;740a
        XOR     d                                   ;740b
        NOP                                         ;740c
        LD      a,(bc)                              ;740d
        XOR     d                                   ;740e
        AND     b                                   ;740f
        NOP                                         ;7410
        LD      a,(bc)                              ;7411
b4_l7412h:
        XOR     d                                   ;7412
        NOP                                         ;7413
        NOP                                         ;7414
b4_l7415h:
        AND     b                                   ;7415
        LD      a,(bc)                              ;7416
        XOR     d                                   ;7417
        LD      (hl),b                              ;7418
        NOP                                         ;7419
        LD      a,(bc)                              ;741a
        AND     b                                   ;741b
        LD      (hl),a                              ;741c
        LD      (hl),b                              ;741d
        NOP                                         ;741e
        NOP                                         ;741f
        CALL    z,0xccc0                            ;7420
        CALL    z,0xe0ee                            ;7423
        CALL    pe,0xeeee                           ;7426
        RET     po                                  ;7429
        XOR     0xee                                ;742a
        INC     b                                   ;742c
        LD      (hl),a                              ;742d
        SUB     c                                   ;742e
        RST     0                                   ;742f
        CALL    z,0xccc7                            ;7430
        RST     0                                   ;7433
        NOP                                         ;7434
        RST     0                                   ;7435
        NOP                                         ;7436
        RST     0                                   ;7437
        CALL    z,0xccc7                            ;7438
        RST     0                                   ;743b
        NOP                                         ;743c
        RST     0                                   ;743d
        NOP                                         ;743e
        LD      (hl),b                              ;743f
        INC     bc                                  ;7440
        NOP                                         ;7441
        INC     b                                   ;7442
        LD      (hl),a                              ;7443
        DJNZ    b4_l74c2h                           ;7444
        INC     b                                   ;7446
        LD      (hl),b                              ;7447
        INC     b                                   ;7448
        LD      (hl),a                              ;7449
        DJNZ    b4_l74c8h                           ;744a
        INC     b                                   ;744c
        LD      (hl),b                              ;744d
        INC     b                                   ;744e
        LD      (hl),a                              ;744f
        DJNZ    $+126                               ;7450
        INC     b                                   ;7452
        LD      (hl),b                              ;7453
        INC     b                                   ;7454
        LD      (hl),a                              ;7455
        XOR     h                                   ;7456
        RET     nz                                  ;7457
        CALL    pe,0xecc0                           ;7458
        CALL    z,0x0                               ;745b
        CALL    pe,0xec0                            ;745e
        RET     nz                                  ;7461
        LD      c,0xc0                              ;7462
        CALL    z,GameStatus                        ;7464
        LD      (hl),b                              ;7467
        LD      (hl),a                              ;7468
        LD      (hl),a                              ;7469
        NOP                                         ;746a
        LD      (hl),a                              ;746b
        ADC     a,b                                 ;746c
        ADC     a,b                                 ;746d
        LD      (hl),a                              ;746e
        LD      a,h                                 ;746f
        ADC     a,b                                 ;7470
        LD      a,b                                 ;7471
        LD      a,h                                 ;7472
        LD      a,h                                 ;7473
        ADC     a,h                                 ;7474
        ADC     a,b                                 ;7475
        LD      a,h                                 ;7476
        LD      a,h                                 ;7477
        ADC     a,b                                 ;7478
        LD      a,b                                 ;7479
        LD      a,h                                 ;747a
        LD      a,h                                 ;747b
        ADC     a,h                                 ;747c
        LD      a,b                                 ;747d
        LD      a,h                                 ;747e
        LD      (hl),b                              ;747f
        ADC     a,b                                 ;7480
        ADC     a,b                                 ;7481
        LD      (hl),b                              ;7482
        INC     b                                   ;7483
        LD      (hl),a                              ;7484
        SUB     c                                   ;7485
        XOR     d                                   ;7486
        INC     bc                                  ;7487
        AND     b                                   ;7488
        AND     e                                   ;7489
        XOR     d                                   ;748a
        LD      a,(0xaaa3)                          ;748b
        INC     bc                                  ;748e
        LD      a,(0x3)                             ;748f
        NOP                                         ;7492
        INC     bc                                  ;7493
        AND     b                                   ;7494
        JR      nc,b4_l74cah                        ;7495
        ADD     hl,bc                               ;7497
        NOP                                         ;7498
        ADC     a,(hl)                              ;7499
        INC     bc                                  ;749a
        NOP                                         ;749b
        JR      nc,b4_l749eh                        ;749c
b4_l749eh:
        JR      nc,b4_l74a0h                        ;749e
b4_l74a0h:
        XOR     d                                   ;74a0
        LD      a,(bc)                              ;74a1
        XOR     d                                   ;74a2
        XOR     d                                   ;74a3
        NOP                                         ;74a4
        XOR     d                                   ;74a5
        LD      a,(bc)                              ;74a6
        AND     b                                   ;74a7
        INC     bc                                  ;74a8
        LD      a,(bc)                              ;74a9
        ADD     a,h                                 ;74aa
        NOP                                         ;74ab
        LD      a,(bc)                              ;74ac
        LD      a,(bc)                              ;74ad
        XOR     d                                   ;74ae
        INC     bc                                  ;74af
        AND     b                                   ;74b0
        ADD     a,l                                 ;74b1
        XOR     d                                   ;74b2
        LD      a,(bc)                              ;74b3
        AND     b                                   ;74b4
        NOP                                         ;74b5
        AND     b                                   ;74b6
        DEC     b                                   ;74b7
        NOP                                         ;74b8
        ADD     a,c                                 ;74b9
        LD      a,(bc)                              ;74ba
        INC     b                                   ;74bb
        NOP                                         ;74bc
        SBC     a,e                                 ;74bd
        INC     bc                                  ;74be
        NOP                                         ;74bf
        RLCA                                        ;74c0
        NOP                                         ;74c1
b4_l74c2h:
        INC     bc                                  ;74c2
        NOP                                         ;74c3
        LD      a,d                                 ;74c4
        NOP                                         ;74c5
        NOP                                         ;74c6
        RLCA                                        ;74c7
b4_l74c8h:
        XOR     d                                   ;74c8
        INC     sp                                  ;74c9
b4_l74cah:
        NOP                                         ;74ca
        LD      (hl),a                              ;74cb
        LD      (hl),a                              ;74cc
        JR      nc,b4_l74d6h                        ;74cd
        XOR     d                                   ;74cf
        LD      (hl),a                              ;74d0
        NOP                                         ;74d1
        LD      a,(bc)                              ;74d2
        RLCA                                        ;74d3
        LD      a,(bc)                              ;74d4
        NOP                                         ;74d5
b4_l74d6h:
        NOP                                         ;74d6
        LD      a,(bc)                              ;74d7
        XOR     d                                   ;74d8
        INC     bc                                  ;74d9
        RLCA                                        ;74da
        SUB     (hl)                                ;74db
        LD      a,(bc)                              ;74dc
        AND     e                                   ;74dd
        XOR     d                                   ;74de
        LD      (hl),a                              ;74df
        XOR     d                                   ;74e0
        LD      a,d                                 ;74e1
        LD      (hl),a                              ;74e2
        LD      a,d                                 ;74e3
        XOR     d                                   ;74e4
        LD      (hl),a                              ;74e5
        LD      (hl),a                              ;74e6
        LD      a,d                                 ;74e7
        XOR     d                                   ;74e8
        LD      a,d                                 ;74e9
        AND     a                                   ;74ea
        LD      a,d                                 ;74eb
        XOR     d                                   ;74ec
        LD      a,d                                 ;74ed
        AND     a                                   ;74ee
        AND     a                                   ;74ef
        XOR     d                                   ;74f0
        AND     b                                   ;74f1
        INC     bc                                  ;74f2
        XOR     d                                   ;74f3
        ADD     a,h                                 ;74f4
        LD      a,(bc)                              ;74f5
        XOR     d                                   ;74f6
        AND     b                                   ;74f7
        AND     b                                   ;74f8
        INC     bc                                  ;74f9
        XOR     d                                   ;74fa
        ADC     a,e                                 ;74fb
        AND     b                                   ;74fc
        NOP                                         ;74fd
        XOR     d                                   ;74fe
        LD      a,(bc)                              ;74ff
b4_l7500h:
        NOP                                         ;7500
        AND     b                                   ;7501
        LD      a,(bc)                              ;7502
        XOR     d                                   ;7503
        AND     b                                   ;7504
        AND     e                                   ;7505
        NOP                                         ;7506
        INC     bc                                  ;7507
        XOR     d                                   ;7508
        ADC     a,0x0                               ;7509
        RLCA                                        ;750b
        XOR     d                                   ;750c
        AND     e                                   ;750d
        LD      a,(bc)                              ;750e
        RLCA                                        ;750f
        LD      (hl),a                              ;7510
        LD      a,(0xaa0)                           ;7511
        LD      (hl),a                              ;7514
        LD      a,(bc)                              ;7515
        AND     b                                   ;7516
        XOR     d                                   ;7517
        AND     a                                   ;7518
        LD      a,(bc)                              ;7519
        XOR     d                                   ;751a
        XOR     d                                   ;751b
        AND     a                                   ;751c
        AND     b                                   ;751d
        NOP                                         ;751e
        XOR     d                                   ;751f
        NOP                                         ;7520
        AND     b                                   ;7521
        XOR     d                                   ;7522
        NOP                                         ;7523
        LD      a,(bc)                              ;7524
        LD      a,(bc)                              ;7525
        NOP                                         ;7526
        AND     b                                   ;7527
        NOP                                         ;7528
        XOR     d                                   ;7529
        XOR     d                                   ;752a
        NOP                                         ;752b
        NOP                                         ;752c
        AND     b                                   ;752d
        LD      a,(bc)                              ;752e
        XOR     d                                   ;752f
        NOP                                         ;7530
        XOR     d                                   ;7531
        XOR     d                                   ;7532
        AND     b                                   ;7533
        NOP                                         ;7534
        XOR     d                                   ;7535
        LD      a,(bc)                              ;7536
        NOP                                         ;7537
        NOP                                         ;7538
        AND     b                                   ;7539
        NOP                                         ;753a
        AND     b                                   ;753b
        NOP                                         ;753c
        LD      (hl),a                              ;753d
        LD      a,(0xaaa7)                          ;753e
        LD      a,d                                 ;7541
        XOR     d                                   ;7542
        LD      (hl),a                              ;7543
        LD      (hl),a                              ;7544
        AND     e                                   ;7545
        AND     e                                   ;7546
        LD      a,d                                 ;7547
        AND     b                                   ;7548
        AND     b                                   ;7549
        INC     bc                                  ;754a
        INC     bc                                  ;754b
        NOP                                         ;754c
        NOP                                         ;754d
        INC     bc                                  ;754e
        JR      nc,b4_l7554h                        ;754f
        LD      a,(bc)                              ;7551
        NOP                                         ;7552
        NOP                                         ;7553
b4_l7554h:
        JR      nc,b4_l7500h                        ;7554
        NOP                                         ;7556
        JR      nc,b4_l755eh                        ;7557
        NOP                                         ;7559
        SUB     e                                   ;755a
        LD      a,(bc)                              ;755b
        INC     bc                                  ;755c
        AND     b                                   ;755d
b4_l755eh:
        INC     bc                                  ;755e
        INC     sp                                  ;755f
        INC     bc                                  ;7560
        XOR     d                                   ;7561
        LD      a,(bc)                              ;7562
        JR      nc,b4_l7565h                        ;7563
b4_l7565h:
        NOP                                         ;7565
        AND     b                                   ;7566
        INC     bc                                  ;7567
        INC     sp                                  ;7568
        INC     bc                                  ;7569
        LD      a,(0x0)                             ;756a
        JR      nc,b4_l7573h                        ;756d
        NOP                                         ;756f
        LD      (bc),a                              ;7570
        JR      nc,b4_l7575h                        ;7571
b4_l7573h:
        NOP                                         ;7573
        ADD     a,l                                 ;7574
b4_l7575h:
        JR      nc,b4_l7577h                        ;7575
b4_l7577h:
        JR      nc,b4_l7579h                        ;7577
b4_l7579h:
        INC     bc                                  ;7579
        INC     bc                                  ;757a
        NOP                                         ;757b
        ADD     a,h                                 ;757c
        LD      a,(bc)                              ;757d
        INC     sp                                  ;757e
        NOP                                         ;757f
        JR      nc,b4_l7585h                        ;7580
        NOP                                         ;7582
        ADD     a,d                                 ;7583
        INC     sp                                  ;7584
b4_l7585h:
        LD      a,(bc)                              ;7585
        LD      b,0x0                               ;7586
        ADD     a,c                                 ;7588
        LD      a,(bc)                              ;7589
        EX      af,af'                              ;758a
        NOP                                         ;758b
        ADD     a,c                                 ;758c
        AND     b                                   ;758d
        DEC     b                                   ;758e
        NOP                                         ;758f
        XOR     e                                   ;7590
        LD      a,(0xaaaa)                          ;7591
        RLCA                                        ;7594
        AND     b                                   ;7595
        XOR     d                                   ;7596
        XOR     d                                   ;7597
        LD      (hl),a                              ;7598
        XOR     d                                   ;7599
        AND     a                                   ;759a
        AND     b                                   ;759b
        XOR     d                                   ;759c
        AND     b                                   ;759d
        AND     a                                   ;759e
        LD      (hl),e                              ;759f
        XOR     d                                   ;75a0
        AND     a                                   ;75a1
        XOR     d                                   ;75a2
        LD      (hl),a                              ;75a3
        XOR     d                                   ;75a4
        AND     a                                   ;75a5
        INC     bc                                  ;75a6
        INC     sp                                  ;75a7
        LD      a,(bc)                              ;75a8
        AND     a                                   ;75a9
        LD      (hl),a                              ;75aa
        NOP                                         ;75ab
        XOR     d                                   ;75ac
        LD      a,(bc)                              ;75ad
        LD      (hl),a                              ;75ae
        XOR     d                                   ;75af
        XOR     d                                   ;75b0
        AND     b                                   ;75b1
        LD      (hl),a                              ;75b2
        INC     bc                                  ;75b3
        NOP                                         ;75b4
        NOP                                         ;75b5
        AND     e                                   ;75b6
        AND     b                                   ;75b7
        JR      nc,b4_l75eah                        ;75b8
        AND     e                                   ;75ba
        LD      (hl),b                              ;75bb
        LD      b,0x33                              ;75bc
        SUB     a                                   ;75be
        JR      nc,b4_l75f4h                        ;75bf
        LD      (hl),b                              ;75c1
        NOP                                         ;75c2
        INC     sp                                  ;75c3
        NOP                                         ;75c4
        RLCA                                        ;75c5
        NOP                                         ;75c6
        JR      nc,b4_l75c9h                        ;75c7
b4_l75c9h:
        LD      a,(bc)                              ;75c9
        LD      a,(bc)                              ;75ca
        NOP                                         ;75cb
        NOP                                         ;75cc
        XOR     d                                   ;75cd
        NOP                                         ;75ce
        XOR     d                                   ;75cf
        XOR     d                                   ;75d0
        AND     b                                   ;75d1
        XOR     d                                   ;75d2
        LD      a,(bc)                              ;75d3
        NOP                                         ;75d4
        AND     b                                   ;75d5
        INC     bc                                  ;75d6
        XOR     d                                   ;75d7
        SUB     h                                   ;75d8
        LD      a,(bc)                              ;75d9
        XOR     d                                   ;75da
        LD      a,(bc)                              ;75db
        AND     b                                   ;75dc
        LD      a,(bc)                              ;75dd
        XOR     d                                   ;75de
        XOR     d                                   ;75df
        LD      a,(bc)                              ;75e0
        AND     b                                   ;75e1
        AND     b                                   ;75e2
        LD      a,(bc)                              ;75e3
        XOR     d                                   ;75e4
        AND     b                                   ;75e5
        AND     b                                   ;75e6
        LD      a,(bc)                              ;75e7
        LD      a,(bc)                              ;75e8
        AND     b                                   ;75e9
b4_l75eah:
        NOP                                         ;75ea
        AND     b                                   ;75eb
        AND     a                                   ;75ec
        RLCA                                        ;75ed
        CP      e                                   ;75ee
        XOR     c                                   ;75ef
        OR      b                                   ;75f0
        CP      e                                   ;75f1
        CP      e                                   ;75f2
        OR      b                                   ;75f3
b4_l75f4h:
        NOP                                         ;75f4
        CP      e                                   ;75f5
        CP      e                                   ;75f6
        NOP                                         ;75f7
        AND     e                                   ;75f8
        CP      e                                   ;75f9
        OR      b                                   ;75fa
        INC     bc                                  ;75fb
        AND     a                                   ;75fc
        CP      e                                   ;75fd
        INC     bc                                  ;75fe
        INC     sp                                  ;75ff
        LD      a,(0xab0)                           ;7600
        AND     a                                   ;7603
        LD      a,d                                 ;7604
        RLCA                                        ;7605
b4_l7606h:
        LD      a,(0x7aa0)                          ;7606
        OR      b                                   ;7609
        NOP                                         ;760a
        NOP                                         ;760b
        DEC     bc                                  ;760c
        NOP                                         ;760d
        LD      a,(bc)                              ;760e
        LD      a,(bc)                              ;760f
        NOP                                         ;7610
        XOR     d                                   ;7611
        INC     sp                                  ;7612
        INC     sp                                  ;7613
        LD      (hl),b                              ;7614
        XOR     d                                   ;7615
        LD      a,(b4_l77a0h)                       ;7616
        INC     bc                                  ;7619
        XOR     d                                   ;761a
        XOR     l                                   ;761b
        LD      (hl),a                              ;761c
        LD      a,(0xa0aa)                          ;761d
        LD      (hl),a                              ;7620
        XOR     d                                   ;7621
        LD      a,(bc)                              ;7622
        RLCA                                        ;7623
        LD      (hl),e                              ;7624
        AND     b                                   ;7625
        AND     b                                   ;7626
        LD      (hl),a                              ;7627
        INC     sp                                  ;7628
        NOP                                         ;7629
