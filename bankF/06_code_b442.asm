bF_lb442h:
        LD      e,h                                 ;b442
        LD      h,b                                 ;b443
        DAA                                         ;b444
        RET     z                                   ;b445
        ADD     a,a                                 ;b446
        LD      e,b                                 ;b447
        DAA                                         ;b448
        JR      nc,bF_lb4bah                        ;b449
        CP      h                                   ;b44b
        LD      c,c                                 ;b44c
        ADC     a,b                                 ;b44d
bF_lb44eh:
        LD      (hl),a                              ;b44e
        CP      b                                   ;b44f
        LD      l,b                                 ;b450
        JR      nz,bF_lb47ah                        ;b451
        SBC     a,b                                 ;b453
        LD      e,b                                 ;b454
        JR      z,bF_lb472h                         ;b455
        JR      nc,bF_lb4c0h                        ;b457
        LD      e,b                                 ;b459
        ADD     a,a                                 ;b45a
        LD      e,b                                 ;b45b
        DEC     l                                   ;b45c
        LD      b,b                                 ;b45d
        LD      a,b                                 ;b45e
bF_lb45fh:
        CP      b                                   ;b45f
        LD      h,a                                 ;b460
        SBC     a,h                                 ;b461
        SCF                                         ;b462
        LD      e,b                                 ;b463
        LD      c,h                                 ;b464
        DJNZ    $+121                               ;b465
bF_lb467h:
        CP      b                                   ;b467
        JR      z,bF_lb47ah                         ;b468
bF_lb46ah:
        JR      $+50                                ;b46a
        LD      (hl),a                              ;b46c
        LD      a,b                                 ;b46d
        DAA                                         ;b46e
        LD      b,b                                 ;b46f
        ADC     a,a                                 ;b470
        CP      b                                   ;b471
bF_lb472h:
        LD      d,a                                 ;b472
        RET     z                                   ;b473
        INC     a                                   ;b474
        SBC     a,b                                 ;b475
        SCF                                         ;b476
        LD      d,b                                 ;b477
        LD      a,l                                 ;b478
        RET     z                                   ;b479
bF_lb47ah:
        DAA                                         ;b47a
        JR      nz,bF_lb4e8h                        ;b47b
        XOR     h                                   ;b47d
        SBC     a,c                                 ;b47e
        DJNZ    $+29                                ;b47f
        LD      b,b                                 ;b481
        ADD     a,a                                 ;b482
        LD      l,b                                 ;b483
        LD      l,(hl)                              ;b484
        LD      d,b                                 ;b485
        LD      l,(hl)                              ;b486
        LD      h,b                                 ;b487
        LD      l,(hl)                              ;b488
        LD      (hl),b                              ;b489
        DAA                                         ;b48a
        CP      b                                   ;b48b
        RLA                                         ;b48c
        LD      (hl),b                              ;b48d
        LD      a,b                                 ;b48e
        RET     pe                                  ;b48f
        SCF                                         ;b490
        ADC     a,b                                 ;b491
        LD      a,e                                 ;b492
        DJNZ    $+57                                ;b493
        LD      l,b                                 ;b495
        LD      (hl),a                              ;b496
        LD      h,b                                 ;b497
        INC     l                                   ;b498
        CP      h                                   ;b499
        LD      e,b                                 ;b49a
        JR      nz,$+96                             ;b49b
        LD      b,b                                 ;b49d
bF_lb49eh:
        DAA                                         ;b49e
        CP      b                                   ;b49f
        ADD     a,a                                 ;b4a0
        LD      a,b                                 ;b4a1
        LD      c,c                                 ;b4a2
        DJNZ    bF_lb4dch                           ;b4a3
        CP      b                                   ;b4a5
        ADD     a,a                                 ;b4a6
        LD      e,b                                 ;b4a7
        LD      l,e                                 ;b4a8
        DJNZ    bF_lb442h                           ;b4a9
bF_lb4abh:
        RET     z                                   ;b4ab
        LD      h,a                                 ;b4ac
bF_lb4adh:
        LD      d,b                                 ;b4ad
        SBC     a,b                                 ;b4ae
        RET     c                                   ;b4af
        ADD     a,a                                 ;b4b0
        LD      d,b                                 ;b4b1
        ADC     a,b                                 ;b4b2
        RET     c                                   ;b4b3
        LD      (hl),a                              ;b4b4
        LD      (hl),b                              ;b4b5
        LD      c,l                                 ;b4b6
        RET     c                                   ;b4b7
        LD      d,a                                 ;b4b8
        RET     z                                   ;b4b9
bF_lb4bah:
        ADC     a,e                                 ;b4ba
        CP      h                                   ;b4bb
        LD      hl,(0x9730)                         ;b4bc
        RET     z                                   ;b4bf
bF_lb4c0h:
        JR      z,bF_lb46ah                         ;b4c0
        LD      h,a                                 ;b4c2
        LD      d,b                                 ;b4c3
        ADC     a,b                                 ;b4c4
        RET     c                                   ;b4c5
        SCF                                         ;b4c6
        JR      nz,bF_lb518h                        ;b4c7
        CP      b                                   ;b4c9
        LD      l,b                                 ;b4ca
        JR      nz,bF_lb544h                        ;b4cb
        ADC     a,b                                 ;b4cd
        LD      l,d                                 ;b4ce
        JR      nz,bF_lb45fh                        ;b4cf
        JR      nz,bF_lb4eah                        ;b4d1
        SBC     a,b                                 ;b4d3
        SUB     a                                   ;b4d4
        LD      h,b                                 ;b4d5
        JR      c,$-86                              ;b4d6
        RLA                                         ;b4d8
        LD      (hl),b                              ;b4d9
        LD      a,l                                 ;b4da
        RET     pe                                  ;b4db
bF_lb4dch:
        SCF                                         ;b4dc
        DJNZ    bF_lb467h                           ;b4dd
        ADC     a,b                                 ;b4df
        LD      b,a                                 ;b4e0
        JR      nc,bF_lb53eh                        ;b4e1
        CALL    pe,0x5077                           ;b4e3
        LD      e,(hl)                              ;b4e6
        SUB     b                                   ;b4e7
bF_lb4e8h:
        LD      e,(hl)                              ;b4e8
        AND     b                                   ;b4e9
bF_lb4eah:
        LD      e,(hl)                              ;b4ea
        CP      b                                   ;b4eb
        JR      c,bF_lb52eh                         ;b4ec
        ADD     a,a                                 ;b4ee
        SBC     a,b                                 ;b4ef
        DAA                                         ;b4f0
        DJNZ    $-113                               ;b4f1
        RET     c                                   ;b4f3
        LD      l,0xb0                              ;b4f4
        LD      l,0xc0                              ;b4f6
        INC     l                                   ;b4f8
        CALL    c,0x3027                            ;b4f9
        LD      l,(hl)                              ;b4fc
        OR      b                                   ;b4fd
        LD      a,l                                 ;b4fe
        RET     z                                   ;b4ff
        JR      bF_lb542h                           ;b500
        SUB     a                                   ;b502
        LD      e,b                                 ;b503
        ADC     a,h                                 ;b504
        DJNZ    bF_lb49eh                           ;b505
        ADD     a,b                                 ;b507
        JR      $-38                                ;b508
        LD      a,(hl)                              ;b50a
        JR      nc,bF_lb58bh                        ;b50b
        LD      b,b                                 ;b50d
        LD      a,(hl)                              ;b50e
        LD      d,b                                 ;b50f
        LD      (hl),a                              ;b510
        CP      b                                   ;b511
        ADD     a,a                                 ;b512
        LD      h,b                                 ;b513
        LD      e,(hl)                              ;b514
        SUB     b                                   ;b515
        LD      e,(hl)                              ;b516
        AND     b                                   ;b517
bF_lb518h:
        LD      e,(hl)                              ;b518
        CP      b                                   ;b519
        INC     e                                   ;b51a
        DJNZ    bF_lb4abh                           ;b51b
        DJNZ    bF_lb4adh                           ;b51d
        LD      b,b                                 ;b51f
        LD      b,a                                 ;b520
        CP      b                                   ;b521
        LD      h,a                                 ;b522
        DJNZ    bF_lb5a3h                           ;b523
        ADD     a,b                                 ;b525
        LD      l,(hl)                              ;b526
        SUB     b                                   ;b527
        LD      a,(hl)                              ;b528
        SBC     a,b                                 ;b529
        LD      e,0x30                              ;b52a
        LD      e,0x40                              ;b52c
bF_lb52eh:
        LD      l,0x40                              ;b52e
        DAA                                         ;b530
        RET     z                                   ;b531
        LD      a,e                                 ;b532
        JR      nz,$+41                             ;b533
        XOR     b                                   ;b535
        JR      bF_lb568h                           ;b536
        SUB     a                                   ;b538
        AND     b                                   ;b539
        LD      c,a                                 ;b53a
        CALL    z,0x2049                            ;b53b
bF_lb53eh:
        LD      d,a                                 ;b53e
        LD      a,b                                 ;b53f
        LD      (hl),a                              ;b540
        LD      h,b                                 ;b541
bF_lb542h:
        LD      l,b                                 ;b542
        AND     b                                   ;b543
bF_lb544h:
        DEC     l                                   ;b544
        CP      b                                   ;b545
        ADD     a,a                                 ;b546
        RET     c                                   ;b547
        LD      c,h                                 ;b548
        LD      b,b                                 ;b549
        LD      b,a                                 ;b54a
        ADC     a,b                                 ;b54b
        INC     a                                   ;b54c
        DJNZ    bF_lb576h                           ;b54d
        SBC     a,b                                 ;b54f
        SUB     a                                   ;b550
        JR      nc,bF_lb59bh                        ;b551
        RET     z                                   ;b553
        ADD     a,a                                 ;b554
        RET     pe                                  ;b555
        LD      c,d                                 ;b556
bF_lb557h:
        DJNZ    bF_lb5a7h                           ;b557
        JR      nz,bF_lb5a9h                        ;b559
        JR      nc,bF_lb584h                        ;b55b
        CALL    z,0x6087                            ;b55d
        LD      c,(hl)                              ;b560
        SBC     a,b                                 ;b561
        LD      (hl),a                              ;b562
        SUB     b                                   ;b563
        INC     l                                   ;b564
        RET     c                                   ;b565
        LD      h,a                                 ;b566
        LD      l,b                                 ;b567
bF_lb568h:
        LD      e,l                                 ;b568
        DJNZ    bF_lb5d7h                           ;b569
        RET     c                                   ;b56b
        JR      z,bF_lb59eh                         ;b56c
        LD      b,a                                 ;b56e
        XOR     b                                   ;b56f
bF_lb570h:
        ADD     hl,hl                               ;b570
        LD      b,b                                 ;b571
        ADD     a,a                                 ;b572
        LD      e,b                                 ;b573
        SUB     a                                   ;b574
        CP      b                                   ;b575
bF_lb576h:
        JR      z,$+66                              ;b576
        LD      c,e                                 ;b578
        CALL    z,0x503e                            ;b579
        SBC     a,b                                 ;b57c
bF_lb57dh:
        LD      d,b                                 ;b57d
        DAA                                         ;b57e
        RET     z                                   ;b57f
        LD      h,a                                 ;b580
        LD      a,b                                 ;b581
        LD      b,a                                 ;b582
        RET     z                                   ;b583
bF_lb584h:
        ADD     a,a                                 ;b584
        DJNZ    bF_lb5c3h                           ;b585
bF_lb587h:
        CP      b                                   ;b587
        DAA                                         ;b588
        JR      c,bF_lb5b4h                         ;b589
bF_lb58bh:
        JR      nc,bF_lb5e4h                        ;b58b
        ADC     a,b                                 ;b58d
        LD      c,l                                 ;b58e
        JR      nc,bF_lb518h                        ;b58f
        LD      e,b                                 ;b591
        LD      h,a                                 ;b592
        LD      (hl),b                              ;b593
        LD      c,b                                 ;b594
        CALL    c,0x1068                            ;b595
        DAA                                         ;b598
        LD      e,b                                 ;b599
        LD      d,a                                 ;b59a
bF_lb59bh:
        LD      h,b                                 ;b59b
        LD      a,e                                 ;b59c
        RET     z                                   ;b59d
bF_lb59eh:
        ADC     a,l                                 ;b59e
        LD      d,b                                 ;b59f
        ADD     a,a                                 ;b5a0
        RET     pe                                  ;b5a1
        LD      h,a                                 ;b5a2
bF_lb5a3h:
        RET     z                                   ;b5a3
        DAA                                         ;b5a4
        ADC     a,b                                 ;b5a5
        SUB     a                                   ;b5a6
bF_lb5a7h:
        LD      d,b                                 ;b5a7
        DEC     a                                   ;b5a8
bF_lb5a9h:
        RET     z                                   ;b5a9
        LD      d,a                                 ;b5aa
        JR      nc,bF_lb60bh                        ;b5ab
        ADD     a,b                                 ;b5ad
        LD      e,(hl)                              ;b5ae
        SUB     b                                   ;b5af
        LD      e,b                                 ;b5b0
        RET     z                                   ;b5b1
        DEC     sp                                  ;b5b2
        LD      h,b                                 ;b5b3
bF_lb5b4h:
        LD      h,a                                 ;b5b4
        RET     z                                   ;b5b5
        LD      c,c                                 ;b5b6
        JR      nc,bF_lb557h                        ;b5b7
        SBC     a,b                                 ;b5b9
        RLA                                         ;b5ba
bF_lb5bbh:
        CP      h                                   ;b5bb
        LD      l,a                                 ;b5bc
        JR      nz,bF_lb5e6h                        ;b5bd
        SBC     a,b                                 ;b5bf
        LD      a,b                                 ;b5c0
        LD      d,b                                 ;b5c1
        LD      (hl),a                              ;b5c2
bF_lb5c3h:
        SBC     a,b                                 ;b5c3
        LD      l,b                                 ;b5c4
        JR      nz,$+41                             ;b5c5
        LD      d,b                                 ;b5c7
        LD      a,(hl)                              ;b5c8
        ADC     a,b                                 ;b5c9
        LD      a,0x30                              ;b5ca
        LD      e,d                                 ;b5cc
        LD      b,b                                 ;b5cd
        LD      a,(hl)                              ;b5ce
        LD      (hl),b                              ;b5cf
        SUB     a                                   ;b5d0
        RET     z                                   ;b5d1
        LD      e,e                                 ;b5d2
        JR      nc,$-119                            ;b5d3
        RET     c                                   ;b5d5
        ADC     a,(hl)                              ;b5d6
bF_lb5d7h:
        LD      b,b                                 ;b5d7
        JR      c,bF_lb63ah                         ;b5d8
        LD      h,a                                 ;b5da
        CP      b                                   ;b5db
        LD      d,a                                 ;b5dc
        JR      nc,bF_lb57dh                        ;b5dd
        SUB     b                                   ;b5df
        ADD     hl,de                               ;b5e0
        AND     b                                   ;b5e1
        LD      c,(hl)                              ;b5e2
        RET     pe                                  ;b5e3
bF_lb5e4h:
        JR      z,bF_lb636h                         ;b5e4
bF_lb5e6h:
        LD      h,a                                 ;b5e6
        SBC     a,b                                 ;b5e7
        LD      a,(0x6720)                          ;b5e8
        ADC     a,b                                 ;b5eb
        ADC     a,l                                 ;b5ec
        JR      nz,bF_lb587h                        ;b5ed
        SUB     b                                   ;b5ef
        LD      b,a                                 ;b5f0
        CALL    z,0x7877                            ;b5f1
        LD      e,0x20                              ;b5f4
        LD      l,0x20                              ;b5f6
        ADD     hl,hl                               ;b5f8
        LD      d,b                                 ;b5f9
        SUB     a                                   ;b5fa
        ADC     a,b                                 ;b5fb
        ADC     a,l                                 ;b5fc
        OR      b                                   ;b5fd
        DAA                                         ;b5fe
        RET     z                                   ;b5ff
        DAA                                         ;b600
        RET     z                                   ;b601
        JR      z,$+82                              ;b602
        DAA                                         ;b604
        RET     c                                   ;b605
        LD      e,e                                 ;b606
        LD      (hl),b                              ;b607
        SUB     a                                   ;b608
        SBC     a,b                                 ;b609
bF_lb60ah:
        LD      e,b                                 ;b60a
bF_lb60bh:
        SBC     a,b                                 ;b60b
        JR      z,bF_lb66eh                         ;b60c
        ADD     a,a                                 ;b60e
        CALL    z,0x3037                            ;b60f
        ADC     a,(hl)                              ;b612
        ADD     a,b                                 ;b613
        LD      a,0xd8                              ;b614
        DEC     a                                   ;b616
        LD      b,b                                 ;b617
        DAA                                         ;b618
        CP      b                                   ;b619
        LD      b,a                                 ;b61a
        CP      b                                   ;b61b
        ADD     a,a                                 ;b61c
        LD      a,b                                 ;b61d
        ADD     a,a                                 ;b61e
        LD      e,b                                 ;b61f
        LD      l,h                                 ;b620
        JR      nc,bF_lb66eh                        ;b621
        SUB     b                                   ;b623
        ADC     a,a                                 ;b624
        RET     z                                   ;b625
        ADD     hl,de                               ;b626
        LD      h,b                                 ;b627
        LD      a,h                                 ;b628
        ADC     a,b                                 ;b629
        ADC     a,(hl)                              ;b62a
        DJNZ    bF_lb5bbh                           ;b62b
        JR      nz,bF_lb686h                        ;b62d
        SBC     a,h                                 ;b62f
        DEC     hl                                  ;b630
        JR      nc,bF_lb68ah                        ;b631
bF_lb633h:
        LD      d,b                                 ;b633
        LD      c,h                                 ;b634
        RET     pe                                  ;b635
bF_lb636h:
        LD      e,b                                 ;b636
        LD      b,b                                 ;b637
        LD      l,(hl)                              ;b638
        LD      (hl),b                              ;b639
bF_lb63ah:
        LD      l,(hl)                              ;b63a
        ADD     a,b                                 ;b63b
        LD      b,a                                 ;b63c
        RET     z                                   ;b63d
        ADD     hl,hl                               ;b63e
        JR      nc,bF_lb688h                        ;b63f
        AND     b                                   ;b641
        LD      e,0xb8                              ;b642
        ADC     a,(hl)                              ;b644
        LD      b,b                                 ;b645
        LD      h,a                                 ;b646
bF_lb647h:
        SBC     a,b                                 ;b647
        DEC     e                                   ;b648
        JR      nc,bF_lb6c2h                        ;b649
        LD      a,b                                 ;b64b
        LD      a,(hl)                              ;b64c
        JR      nz,$-99                             ;b64d
        JR      nz,bF_lb688h                        ;b64f
        XOR     b                                   ;b651
        LD      e,b                                 ;b652
        JR      nz,$-96                             ;b653
        SUB     b                                   ;b655
        LD      a,0xb0                              ;b656
        LD      c,(hl)                              ;b658
        CP      b                                   ;b659
        INC     a                                   ;b65a
        LD      d,b                                 ;b65b
        LD      a,0x60                              ;b65c
        LD      c,(hl)                              ;b65e
        LD      h,b                                 ;b65f
        DAA                                         ;b660
        CALL    z,0x3037                            ;b661
        LD      a,0xc0                              ;b664
        LD      c,(hl)                              ;b666
        RET     nz                                  ;b667
        LD      a,0xd8                              ;b668
        SBC     a,h                                 ;b66a
        DJNZ    bF_lb6e4h                           ;b66b
        LD      h,b                                 ;b66d
bF_lb66eh:
        DEC     hl                                  ;b66e
        RET     z                                   ;b66f
        LD      e,l                                 ;b670
        JR      nz,bF_lb60ah                        ;b671
        RET     pe                                  ;b673
        DAA                                         ;b674
        LD      e,b                                 ;b675
bF_lb676h:
        LD      h,a                                 ;b676
        RET     z                                   ;b677
        LD      e,h                                 ;b678
        SUB     b                                   ;b679
        ADD     hl,sp                               ;b67a
        RET     pe                                  ;b67b
        LD      b,a                                 ;b67c
        JR      nz,bF_lb6adh                        ;b67d
        LD      d,b                                 ;b67f
        LD      a,(hl)                              ;b680
        JR      nz,bF_lb701h                        ;b681
        JR      c,bF_lb6fch                         ;b683
        LD      h,b                                 ;b685
bF_lb686h:
        CPL                                         ;b686
        RET     z                                   ;b687
bF_lb688h:
        JR      bF_lb6cah                           ;b688
bF_lb68ah:
        ADD     a,a                                 ;b68a
        LD      a,b                                 ;b68b
        DAA                                         ;b68c
        CP      h                                   ;b68d
        ADD     a,a                                 ;b68e
        JR      nc,$+74                             ;b68f
        LD      (hl),b                              ;b691
        LD      e,0xb8                              ;b692
        SBC     a,e                                 ;b694
bF_lb695h:
        LD      h,b                                 ;b695
        LD      h,a                                 ;b696
        SBC     a,b                                 ;b697
        LD      a,h                                 ;b698
        JR      nz,bF_lb633h                        ;b699
        LD      (hl),b                              ;b69b
        ADC     a,c                                 ;b69c
        RET     c                                   ;b69d
        LD      e,0x30                              ;b69e
        LD      e,0x40                              ;b6a0
bF_lb6a2h:
        LD      e,0x50                              ;b6a2
        LD      h,a                                 ;b6a4
        XOR     b                                   ;b6a5
        LD      l,(hl)                              ;b6a6
        LD      (hl),b                              ;b6a7
        LD      a,(hl)                              ;b6a8
        LD      a,b                                 ;b6a9
        SUB     a                                   ;b6aa
        JR      nc,bF_lb6e9h                        ;b6ab
bF_lb6adh:
        LD      c,h                                 ;b6ad
        LD      d,a                                 ;b6ae
        LD      e,b                                 ;b6af
        ADD     a,a                                 ;b6b0
        ADD     a,b                                 ;b6b1
bF_lb6b2h:
        DEC     hl                                  ;b6b2
        RET     c                                   ;b6b3
        JR      bF_lb6f6h                           ;b6b4
        LD      l,c                                 ;b6b6
        ADC     a,b                                 ;b6b7
        ADC     a,(hl)                              ;b6b8
        JR      nz,bF_lb722h                        ;b6b9
        LD      l,b                                 ;b6bb
        LD      b,a                                 ;b6bc
        JR      nc,bF_lb647h                        ;b6bd
        RET     c                                   ;b6bf
        LD      (hl),a                              ;b6c0
        XOR     b                                   ;b6c1
bF_lb6c2h:
        DAA                                         ;b6c2
        LD      b,b                                 ;b6c3
        LD      c,(hl)                              ;b6c4
        SUB     b                                   ;b6c5
        LD      c,(hl)                              ;b6c6
        AND     b                                   ;b6c7
        LD      e,(hl)                              ;b6c8
        XOR     b                                   ;b6c9
bF_lb6cah:
        LD      c,e                                 ;b6ca
bF_lb6cbh:
        JR      nc,bF_lb724h                        ;b6cb
        LD      l,b                                 ;b6cd
        SUB     a                                   ;b6ce
        JR      nz,bF_lb6e9h                        ;b6cf
        CP      b                                   ;b6d1
        LD      e,l                                 ;b6d2
        JR      nc,$-103                            ;b6d3
        CALL    c,0x2057                            ;b6d5
        JR      c,bF_lb6a2h                         ;b6d8
        DEC     l                                   ;b6da
        ADD     a,b                                 ;b6db
        LD      (hl),a                              ;b6dc
        XOR     b                                   ;b6dd
        LD      c,b                                 ;b6de
        DJNZ    bF_lb718h                           ;b6df
        JR      nc,bF_lb66eh                        ;b6e1
        RET     c                                   ;b6e3
bF_lb6e4h:
        SCF                                         ;b6e4
        CP      b                                   ;b6e5
        DAA                                         ;b6e6
        DJNZ    $+128                               ;b6e7
bF_lb6e9h:
        LD      (hl),b                              ;b6e9
bF_lb6eah:
        DEC     l                                   ;b6ea
        SBC     a,b                                 ;b6eb
        LD      e,d                                 ;b6ec
        JR      nz,bF_lb676h                        ;b6ed
        RET     pe                                  ;b6ef
        LD      b,a                                 ;b6f0
        LD      b,b                                 ;b6f1
        LD      e,b                                 ;b6f2
        RET     c                                   ;b6f3
        CPL                                         ;b6f4
        LD      b,b                                 ;b6f5
bF_lb6f6h:
        LD      (hl),a                              ;b6f6
        SBC     a,b                                 ;b6f7
        SUB     a                                   ;b6f8
        DJNZ    $-112                               ;b6f9
        SUB     b                                   ;b6fb
bF_lb6fch:
        SBC     a,b                                 ;b6fc
        SBC     a,b                                 ;b6fd
        LD      b,a                                 ;b6fe
        SUB     b                                   ;b6ff
        LD      a,(hl)                              ;b700
bF_lb701h:
        RET     nz                                  ;b701
        ADC     a,(hl)                              ;b702
        RET     nz                                  ;b703
        LD      a,d                                 ;b704
        CALL    c,0x607b                            ;b705
        ADD     a,a                                 ;b708
        CP      b                                   ;b709
        DAA                                         ;b70a
        JR      nc,bF_lb695h                        ;b70b
        RET     z                                   ;b70d
        SUB     a                                   ;b70e
        RET     z                                   ;b70f
        LD      a,(hl)                              ;b710
        LD      b,b                                 ;b711
        ADC     a,(hl)                              ;b712
        LD      b,b                                 ;b713
        LD      a,(hl)                              ;b714
        LD      d,b                                 ;b715
        ADC     a,c                                 ;b716
        SBC     a,b                                 ;b717
bF_lb718h:
        LD      b,a                                 ;b718
        JR      bF_lb6b2h                           ;b719
        SUB     b                                   ;b71b
        LD      c,h                                 ;b71c
        RET     nz                                  ;b71d
        ADC     a,(hl)                              ;b71e
        RET     nz                                  ;b71f
        SBC     a,(hl)                              ;b720
        RET     z                                   ;b721
bF_lb722h:
        LD      e,b                                 ;b722
        LD      b,b                                 ;b723
bF_lb724h:
        ADD     a,a                                 ;b724
        LD      h,b                                 ;b725
        DEC     a                                   ;b726
        RET     z                                   ;b727
        DAA                                         ;b728
        LD      e,b                                 ;b729
        INC     e                                   ;b72a
        LD      b,b                                 ;b72b
        LD      a,0xe0                              ;b72c
        LD      b,a                                 ;b72e
        RET     pe                                  ;b72f
        ADD     a,a                                 ;b730
        JR      nz,bF_lb6cbh                        ;b731
        CALL    c,0x5067                            ;b733
        LD      c,c                                 ;b736
        RET     c                                   ;b737
        SBC     a,e                                 ;b738
        OR      b                                   ;b739
        SCF                                         ;b73a
        RET     pe                                  ;b73b
        LD      (hl),a                              ;b73c
        JR      nc,bF_lb7bdh                        ;b73d
        ADC     a,b                                 ;b73f
bF_lb740h:
        LD      d,a                                 ;b740
        LD      (hl),b                              ;b741
        SBC     a,b                                 ;b742
        RET     c                                   ;b743
        DAA                                         ;b744
        XOR     b                                   ;b745
        ADC     a,h                                 ;b746
        DJNZ    $+32                                ;b747
        LD      b,b                                 ;b749
        RLA                                         ;b74a
        OR      b                                   ;b74b
        ADC     a,(hl)                              ;b74c
        CALL    z,0x3087                            ;b74d
        JR      z,bF_lb6eah                         ;b750
        LD      l,(hl)                              ;b752
        JR      nc,bF_lb7d3h                        ;b753
        JR      nc,bF_lb7c5h                        ;b755
        LD      b,b                                 ;b757
        LD      (hl),a                              ;b758
        RET     z                                   ;b759
        LD      a,h                                 ;b75a
        LD      b,b                                 ;b75b
        SUB     a                                   ;b75c
        RET     c                                   ;b75d
        RLA                                         ;b75e
        JR      nc,bF_lb7cfh                        ;b75f
        JR      nc,bF_lb7c1h                        ;b761
        LD      b,b                                 ;b763
        LD      l,(hl)                              ;b764
        LD      c,b                                 ;b765
        JR      z,bF_lb798h                         ;b766
        LD      b,a                                 ;b768
        XOR     b                                   ;b769
        ADD     a,a                                 ;b76a
        XOR     b                                   ;b76b
        ADD     a,a                                 ;b76c
        LD      c,b                                 ;b76d
        SBC     a,l                                 ;b76e
        DJNZ    bF_lb79fh                           ;b76f
        LD      b,b                                 ;b771
        LD      a,0x60                              ;b772
        DEC     de                                  ;b774
        CP      b                                   ;b775
