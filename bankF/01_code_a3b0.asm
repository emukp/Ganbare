bF_la3b0h:
        AND     (hl)                                ;a3b0
        LD      d,a                                 ;a3b1
        LD      bc,0x4480                           ;a3b2
        LD      bc,bF_la184h                        ;a3b5
        LD      (bc),a                              ;a3b8
        LD      (hl),h                              ;a3b9
        ADD     a,c                                 ;a3ba
        LD      (bc),a                              ;a3bb
        ADD     a,h                                 ;a3bc
        AND     c                                   ;a3bd
        LD      (bc),a                              ;a3be
        SUB     b                                   ;a3bf
        LD      b,(hl)                              ;a3c0
        INC     bc                                  ;a3c1
        HALT                                        ;a3c2
        DAA                                         ;a3c3
        INC     bc                                  ;a3c4
        LD      (hl),c                              ;a3c5
        LD      h,b                                 ;a3c6
        INC     bc                                  ;a3c7
        LD      h,b                                 ;a3c8
        SUB     l                                   ;a3c9
        INC     b                                   ;a3ca
        ADD     a,h                                 ;a3cb
        LD      d,c                                 ;a3cc
        INC     b                                   ;a3cd
        SUB     h                                   ;a3ce
        LD      h,c                                 ;a3cf
        INC     b                                   ;a3d0
        AND     h                                   ;a3d1
        LD      (hl),c                              ;a3d2
        INC     b                                   ;a3d3
        AND     (hl)                                ;a3d4
        RST     CHRGTR                              ;a3d5
        LD      b,0x84                              ;a3d6
        POP     de                                  ;a3d8
        RLCA                                        ;a3d9
        LD      (hl),d                              ;a3da
        LD      h,b                                 ;a3db
        EX      af,af'                              ;a3dc
        LD      h,b                                 ;a3dd
        LD      h,l                                 ;a3de
        EX      af,af'                              ;a3df
        SUB     b                                   ;a3e0
        ADD     a,h                                 ;a3e1
        ADD     hl,bc                               ;a3e2
        SUB     b                                   ;a3e3
        INC     (hl)                                ;a3e4
        ADD     hl,bc                               ;a3e5
        SUB     b                                   ;a3e6
        LD      (hl),h                              ;a3e7
        INC     c                                   ;a3e8
        AND     (hl)                                ;a3e9
        LD      d,a                                 ;a3ea
bF_la3ebh:
        DEC     c                                   ;a3eb
        ADD     a,b                                 ;a3ec
        LD      d,(hl)                              ;a3ed
        DEC     c                                   ;a3ee
        OR      b                                   ;a3ef
        LD      d,(hl)                              ;a3f0
        DEC     c                                   ;a3f1
        SUB     c                                   ;a3f2
        ADD     a,b                                 ;a3f3
        RRCA                                        ;a3f4
        LD      (hl),h                              ;a3f5
bF_la3f6h:
        LD      hl,0x940f                           ;a3f6
        LD      b,c                                 ;a3f9
        RRCA                                        ;a3fa
        AND     h                                   ;a3fb
        LD      h,c                                 ;a3fc
        DJNZ    $-88                                ;a3fd
        LD      b,a                                 ;a3ff
        LD      de,bF_la072h                        ;a400
        LD      de,0x5690                           ;a403
        LD      (de),a                              ;a406
        HALT                                        ;a407
bF_la408h:
        OR      a                                   ;a408
        INC     de                                  ;a409
        ADD     a,b                                 ;a40a
        LD      b,(hl)                              ;a40b
bF_la40ch:
        INC     de                                  ;a40c
        AND     b                                   ;a40d
        LD      b,(hl)                              ;a40e
bF_la40fh:
        INC     d                                   ;a40f
        ADD     a,h                                 ;a410
        LD      (hl),c                              ;a411
        INC     d                                   ;a412
        ADD     a,h                                 ;a413
        ADD     a,c                                 ;a414
        INC     d                                   ;a415
        ADD     a,h                                 ;a416
        AND     c                                   ;a417
        DEC     d                                   ;a418
        AND     (hl)                                ;a419
        DAA                                         ;a41a
        DEC     d                                   ;a41b
        LD      h,b                                 ;a41c
        ADD     a,l                                 ;a41d
        DEC     d                                   ;a41e
bF_la41fh:
        ADD     a,b                                 ;a41f
        AND     l                                   ;a420
        LD      d,0x81                              ;a421
        SUB     b                                   ;a423
        RLA                                         ;a424
        OR      (hl)                                ;a425
        OR      a                                   ;a426
        RST     KEYINT                              ;a427
        LD      de,0x8201                           ;a428
        LD      h,b                                 ;a42b
        LD      (bc),a                              ;a42c
        OR      h                                   ;a42d
        LD      b,c                                 ;a42e
bF_la42fh:
        LD      (bc),a                              ;a42f
        OR      h                                   ;a430
        LD      d,c                                 ;a431
        INC     bc                                  ;a432
        ADD     a,(hl)                              ;a433
        LD      d,a                                 ;a434
        DEC     b                                   ;a435
        SUB     h                                   ;a436
        LD      b,c                                 ;a437
        LD      b,0x71                              ;a438
        ADD     a,b                                 ;a43a
        RLCA                                        ;a43b
        OR      h                                   ;a43c
        LD      hl,0x960a                           ;a43d
        RST     0                                   ;a440
        DEC     bc                                  ;a441
        SUB     (hl)                                ;a442
        ADD     a,a                                 ;a443
        INC     c                                   ;a444
        OR      h                                   ;a445
        LD      hl,bF_lb40ch                        ;a446
        LD      sp,0x810d                           ;a449
        LD      d,b                                 ;a44c
        LD      c,0xa6                              ;a44d
        RST     0                                   ;a44f
        RRCA                                        ;a450
        ADD     a,(hl)                              ;a451
        LD      h,a                                 ;a452
bF_la453h:
        DJNZ    bF_la3ebh                           ;a453
        RST     CHRGTR                              ;a455
        LD      de,0x41a4                           ;a456
        LD      de,0x81a4                           ;a459
        RST     KEYINT                              ;a45c
        DAA                                         ;a45d
        LD      bc,0x3082                           ;a45e
        LD      bc,0x87a6                           ;a461
        LD      (bc),a                              ;a464
        ADD     a,h                                 ;a465
        LD      sp,0x6002                           ;a466
        LD      d,l                                 ;a469
        LD      (bc),a                              ;a46a
        SUB     b                                   ;a46b
        LD      (hl),h                              ;a46c
        INC     bc                                  ;a46d
        HALT                                        ;a46e
        DAA                                         ;a46f
        INC     bc                                  ;a470
        SUB     b                                   ;a471
        LD      d,(hl)                              ;a472
        INC     bc                                  ;a473
        ADD     a,c                                 ;a474
        LD      h,b                                 ;a475
        INC     bc                                  ;a476
        AND     b                                   ;a477
        SUB     h                                   ;a478
        INC     b                                   ;a479
        LD      h,b                                 ;a47a
        LD      h,l                                 ;a47b
        INC     b                                   ;a47c
        ADD     a,b                                 ;a47d
        ADD     a,l                                 ;a47e
        DEC     b                                   ;a47f
        HALT                                        ;a480
        DAA                                         ;a481
        DEC     b                                   ;a482
        AND     h                                   ;a483
        LD      d,c                                 ;a484
        DEC     b                                   ;a485
        LD      (hl),b                              ;a486
        LD      h,(hl)                              ;a487
        DEC     b                                   ;a488
        AND     c                                   ;a489
        ADD     a,b                                 ;a48a
        LD      b,0xa6                              ;a48b
        ADD     a,a                                 ;a48d
        RLCA                                        ;a48e
        LD      (hl),b                              ;a48f
        LD      (hl),l                              ;a490
        RLCA                                        ;a491
        OR      b                                   ;a492
        LD      b,(hl)                              ;a493
        RLCA                                        ;a494
        ADD     a,d                                 ;a495
        AND     b                                   ;a496
        DEC     bc                                  ;a497
        HALT                                        ;a498
        RLA                                         ;a499
        DEC     bc                                  ;a49a
        ADD     a,b                                 ;a49b
        LD      h,h                                 ;a49c
        INC     c                                   ;a49d
        SUB     b                                   ;a49e
        LD      h,0xc                               ;a49f
        LD      (hl),d                              ;a4a1
        LD      (hl),b                              ;a4a2
        INC     c                                   ;a4a3
        SUB     b                                   ;a4a4
        AND     h                                   ;a4a5
        DEC     c                                   ;a4a6
        ADD     a,b                                 ;a4a7
        LD      b,l                                 ;a4a8
bF_la4a9h:
        DEC     c                                   ;a4a9
        ADD     a,b                                 ;a4aa
        LD      h,(hl)                              ;a4ab
        DEC     c                                   ;a4ac
        SUB     (hl)                                ;a4ad
        LD      (hl),a                              ;a4ae
        DEC     c                                   ;a4af
bF_la4b0h:
        AND     h                                   ;a4b0
        AND     c                                   ;a4b1
        RRCA                                        ;a4b2
        HALT                                        ;a4b3
        RLA                                         ;a4b4
        RRCA                                        ;a4b5
        ADD     a,b                                 ;a4b6
bF_la4b7h:
        LD      b,h                                 ;a4b7
        RRCA                                        ;a4b8
        LD      h,b                                 ;a4b9
        ADD     a,l                                 ;a4ba
        DJNZ    bF_la453h                           ;a4bb
        LD      (hl),a                              ;a4bd
        LD      de,0x3560                           ;a4be
        LD      de,0x46a0                           ;a4c1
        LD      de,0x7081                           ;a4c4
        LD      (de),a                              ;a4c7
        AND     b                                   ;a4c8
        LD      d,0x12                              ;a4c9
        ADD     a,b                                 ;a4cb
        LD      d,(hl)                              ;a4cc
        LD      (de),a                              ;a4cd
        AND     h                                   ;a4ce
        OR      c                                   ;a4cf
        LD      (de),a                              ;a4d0
        AND     h                                   ;a4d1
        POP     de                                  ;a4d2
        RST     KEYINT                              ;a4d3
        DEC     h                                   ;a4d4
        LD      bc,0xd7a6                           ;a4d5
        INC     b                                   ;a4d8
        AND     d                                   ;a4d9
        LD      b,b                                 ;a4da
        LD      b,0x96                              ;a4db
        RST     0                                   ;a4dd
        RLCA                                        ;a4de
        SUB     h                                   ;a4df
        LD      b,c                                 ;a4e0
        RLCA                                        ;a4e1
        AND     h                                   ;a4e2
        LD      d,c                                 ;a4e3
        RLCA                                        ;a4e4
        SUB     h                                   ;a4e5
        ADD     a,c                                 ;a4e6
        RLCA                                        ;a4e7
        AND     h                                   ;a4e8
        SUB     c                                   ;a4e9
        EX      af,af'                              ;a4ea
        ADD     a,(hl)                              ;a4eb
        LD      d,a                                 ;a4ec
        ADD     hl,bc                               ;a4ed
        LD      (hl),c                              ;a4ee
        LD      b,b                                 ;a4ef
        LD      a,(bc)                              ;a4f0
        HALT                                        ;a4f1
        SCF                                         ;a4f2
        LD      a,(bc)                              ;a4f3
        ADD     a,b                                 ;a4f4
        LD      (hl),0xb                            ;a4f5
        AND     (hl)                                ;a4f7
        LD      h,a                                 ;a4f8
        DEC     c                                   ;a4f9
        ADD     a,b                                 ;a4fa
        LD      b,(hl)                              ;a4fb
        LD      c,0x60                              ;a4fc
        ADD     a,l                                 ;a4fe
        LD      c,0xa0                              ;a4ff
        SUB     h                                   ;a501
        LD      de,0x8480                           ;a502
        LD      (de),a                              ;a505
        SUB     b                                   ;a506
        ADD     a,h                                 ;a507
        INC     de                                  ;a508
        LD      (hl),d                              ;a509
        JR      nc,bF_la520h                        ;a50a
        ADD     a,c                                 ;a50c
        LD      (hl),b                              ;a50d
        DEC     d                                   ;a50e
        LD      (hl),h                              ;a50f
        LD      h,c                                 ;a510
        DEC     d                                   ;a511
        ADD     a,h                                 ;a512
        LD      h,c                                 ;a513
        DEC     d                                   ;a514
        SUB     h                                   ;a515
        LD      h,c                                 ;a516
        JR      bF_la4a9h                           ;a517
        LD      b,(hl)                              ;a519
        DEC     de                                  ;a51a
        ADD     a,c                                 ;a51b
        ADD     a,b                                 ;a51c
        INC     e                                   ;a51d
        SUB     b                                   ;a51e
        LD      b,(hl)                              ;a51f
bF_la520h:
        LD      e,0xa0                              ;a520
        LD      b,h                                 ;a522
        LD      e,0x86                              ;a523
        ADD     a,a                                 ;a525
        RRA                                         ;a526
        ADD     a,h                                 ;a527
        LD      b,c                                 ;a528
        RRA                                         ;a529
        SUB     h                                   ;a52a
        LD      d,c                                 ;a52b
        RRA                                         ;a52c
        AND     h                                   ;a52d
        LD      h,c                                 ;a52e
        JR      nz,bF_la4b7h                        ;a52f
        RST     0                                   ;a531
        LD      hl,0x8480                           ;a532
        INC     hl                                  ;a535
        SUB     b                                   ;a536
        LD      d,(hl)                              ;a537
        INC     h                                   ;a538
        AND     h                                   ;a539
        LD      hl,0x9424                           ;a53a
        LD      b,c                                 ;a53d
        INC     h                                   ;a53e
        ADD     a,d                                 ;a53f
        LD      h,b                                 ;a540
        DEC     h                                   ;a541
bF_la542h:
        ADD     a,(hl)                              ;a542
        ADD     a,a                                 ;a543
        RST     KEYINT                              ;a544
        INC     c                                   ;a545
        LD      (bc),a                              ;a546
        HALT                                        ;a547
        LD      b,a                                 ;a548
        LD      b,0x76                              ;a549
        RST     CHRGTR                              ;a54b
        ADD     hl,bc                               ;a54c
        AND     (hl)                                ;a54d
        RLA                                         ;a54e
        DEC     de                                  ;a54f
        HALT                                        ;a550
        RST     0                                   ;a551
        INC     e                                   ;a552
        AND     (hl)                                ;a553
        RST     0                                   ;a554
        LD      e,0x76                              ;a555
        OR      a                                   ;a557
        LD      l,0x76                              ;a558
        RST     DCOMPR                              ;a55a
        CPL                                         ;a55b
        HALT                                        ;a55c
        RST     CHRGTR                              ;a55d
        INC     (hl)                                ;a55e
        HALT                                        ;a55f
bF_la560h:
        OR      a                                   ;a560
        ADD     hl,sp                               ;a561
        ADD     a,(hl)                              ;a562
        DAA                                         ;a563
        INC     a                                   ;a564
        AND     c                                   ;a565
        SUB     b                                   ;a566
        LD      b,l                                 ;a567
        ADD     a,d                                 ;a568
        SUB     b                                   ;a569
        RST     KEYINT                              ;a56a
        LD      (0x8200),a                          ;a56b
        AND     b                                   ;a56e
        LD      bc,0x3690                           ;a56f
        LD      bc,0x6680                           ;a572
        LD      (bc),a                              ;a575
        LD      h,b                                 ;a576
        LD      b,l                                 ;a577
        LD      (bc),a                              ;a578
        ADD     a,b                                 ;a579
        LD      h,(hl)                              ;a57a
bF_la57bh:
        LD      (bc),a                              ;a57b
        LD      (hl),h                              ;a57c
        SUB     c                                   ;a57d
        LD      (bc),a                              ;a57e
        LD      (hl),h                              ;a57f
        POP     bc                                  ;a580
        INC     b                                   ;a581
        ADD     a,b                                 ;a582
        INC     (hl)                                ;a583
        INC     b                                   ;a584
        SUB     d                                   ;a585
        SUB     b                                   ;a586
        DEC     b                                   ;a587
        ADD     a,(hl)                              ;a588
        DAA                                         ;a589
        DEC     b                                   ;a58a
        SUB     b                                   ;a58b
        LD      h,0x8                               ;a58c
        LD      h,b                                 ;a58e
        ADD     a,l                                 ;a58f
        EX      af,af'                              ;a590
        AND     b                                   ;a591
        LD      h,(hl)                              ;a592
        EX      af,af'                              ;a593
        ADD     a,c                                 ;a594
        RET     nc                                  ;a595
        ADD     hl,bc                               ;a596
        AND     b                                   ;a597
        LD      h,0x9                               ;a598
        SUB     b                                   ;a59a
        AND     h                                   ;a59b
        ADD     hl,bc                               ;a59c
        ADD     a,(hl)                              ;a59d
        RST     CHRGTR                              ;a59e
        LD      a,(bc)                              ;a59f
        SUB     b                                   ;a5a0
        INC     h                                   ;a5a1
        LD      a,(bc)                              ;a5a2
        AND     b                                   ;a5a3
        LD      h,(hl)                              ;a5a4
        DEC     c                                   ;a5a5
        LD      h,b                                 ;a5a6
        LD      (hl),l                              ;a5a7
        DEC     c                                   ;a5a8
        ADD     a,d                                 ;a5a9
        LD      d,b                                 ;a5aa
        DEC     c                                   ;a5ab
        AND     b                                   ;a5ac
        LD      h,(hl)                              ;a5ad
        DEC     c                                   ;a5ae
        ADD     a,(hl)                              ;a5af
        OR      a                                   ;a5b0
        RRCA                                        ;a5b1
        LD      h,b                                 ;a5b2
        LD      b,l                                 ;a5b3
        RRCA                                        ;a5b4
        ADD     a,b                                 ;a5b5
        ADD     a,l                                 ;a5b6
        RRCA                                        ;a5b7
        LD      h,b                                 ;a5b8
        AND     l                                   ;a5b9
        DJNZ    bF_la62ch                           ;a5ba
        LD      h,0x10                              ;a5bc
        SUB     c                                   ;a5be
        LD      b,b                                 ;a5bf
        DJNZ    bF_la542h                           ;a5c0
        SUB     l                                   ;a5c2
        LD      (de),a                              ;a5c3
        ADD     a,(hl)                              ;a5c4
        LD      d,a                                 ;a5c5
        INC     de                                  ;a5c6
        ADD     a,b                                 ;a5c7
        LD      h,l                                 ;a5c8
        INC     de                                  ;a5c9
        ADD     a,c                                 ;a5ca
        SUB     b                                   ;a5cb
        INC     de                                  ;a5cc
        LD      h,b                                 ;a5cd
        PUSH    bc                                  ;a5ce
        LD      d,0x76                              ;a5cf
        RST     0                                   ;a5d1
        JR      bF_la644h                           ;a5d2
        INC     h                                   ;a5d4
        JR      bF_la57bh                           ;a5d5
        LD      sp,0x7018                           ;a5d7
        LD      h,l                                 ;a5da
        JR      $-110                               ;a5db
        ADD     a,h                                 ;a5dd
        JR      bF_la654h                           ;a5de
        SUB     c                                   ;a5e0
        ADD     hl,de                               ;a5e1
        ADD     a,(hl)                              ;a5e2
        RLA                                         ;a5e3
        LD      a,(de)                              ;a5e4
        SUB     b                                   ;a5e5
        LD      d,(hl)                              ;a5e6
        INC     e                                   ;a5e7
        SUB     b                                   ;a5e8
        INC     h                                   ;a5e9
        INC     e                                   ;a5ea
        ADD     a,d                                 ;a5eb
        LD      (hl),b                              ;a5ec
        INC     e                                   ;a5ed
        SUB     b                                   ;a5ee
        SUB     h                                   ;a5ef
        INC     e                                   ;a5f0
        ADD     a,(hl)                              ;a5f1
        RST     0                                   ;a5f2
        RRA                                         ;a5f3
        LD      (hl),b                              ;a5f4
        LD      b,(hl)                              ;a5f5
        RRA                                         ;a5f6
        SUB     c                                   ;a5f7
        LD      (hl),b                              ;a5f8
        RRA                                         ;a5f9
        AND     b                                   ;a5fa
        LD      b,(hl)                              ;a5fb
        LD      hl,0x4680                           ;a5fc
        LD      hl,0x46a0                           ;a5ff
        RST     KEYINT                              ;a602
        JR      bF_la605h                           ;a603
bF_la605h:
        LD      (hl),d                              ;a605
        OR      b                                   ;a606
        LD      (bc),a                              ;a607
        LD      (hl),c                              ;a608
        RET     nz                                  ;a609
        INC     bc                                  ;a60a
        ADD     a,d                                 ;a60b
        OR      b                                   ;a60c
        INC     b                                   ;a60d
        ADD     a,(hl)                              ;a60e
        LD      b,a                                 ;a60f
        DEC     b                                   ;a610
        ADD     a,h                                 ;a611
        LD      d,c                                 ;a612
        DEC     b                                   ;a613
        SUB     h                                   ;a614
        LD      h,c                                 ;a615
        LD      b,0x94                              ;a616
        OR      c                                   ;a618
        LD      b,0x84                              ;a619
        POP     bc                                  ;a61b
        LD      b,0x74                              ;a61c
        POP     de                                  ;a61e
        EX      af,af'                              ;a61f
        LD      (hl),h                              ;a620
        LD      sp,0x8408                           ;a621
        LD      b,c                                 ;a624
        EX      af,af'                              ;a625
        SUB     h                                   ;a626
        LD      d,c                                 ;a627
        ADD     hl,bc                               ;a628
        HALT                                        ;a629
        AND     a                                   ;a62a
        ADD     hl,bc                               ;a62b
bF_la62ch:
        SUB     d                                   ;a62c
        RET     nz                                  ;a62d
        LD      a,(bc)                              ;a62e
        HALT                                        ;a62f
        RST     DCOMPR                              ;a630
        DEC     bc                                  ;a631
        LD      (hl),c                              ;a632
        LD      h,b                                 ;a633
bF_la634h:
        DEC     bc                                  ;a634
        ADD     a,h                                 ;a635
        ADD     a,c                                 ;a636
        DEC     bc                                  ;a637
        SUB     h                                   ;a638
        AND     c                                   ;a639
        DEC     bc                                  ;a63a
        AND     h                                   ;a63b
        POP     bc                                  ;a63c
bF_la63dh:
        INC     c                                   ;a63d
        HALT                                        ;a63e
        RST     CHRGTR                              ;a63f
        LD      c,0x76                              ;a640
        LD      b,a                                 ;a642
        RRCA                                        ;a643
bF_la644h:
        LD      (hl),h                              ;a644
        LD      sp,0x840f                           ;a645
        LD      d,c                                 ;a648
        RRCA                                        ;a649
        ADD     a,(hl)                              ;a64a
        AND     a                                   ;a64b
        RST     KEYINT                              ;a64c
        LD      (0x8600),hl                         ;a64d
        RST     0                                   ;a650
        LD      bc,0x3470                           ;a651
bF_la654h:
        LD      bc,0x8490                           ;a654
        LD      bc,0x50a2                           ;a657
        LD      bc,0x9071                           ;a65a
        LD      (bc),a                              ;a65d
        SUB     b                                   ;a65e
        LD      b,h                                 ;a65f
        LD      (bc),a                              ;a660
        LD      (hl),b                              ;a661
        ADD     a,h                                 ;a662
        LD      (bc),a                              ;a663
        LD      (hl),h                              ;a664
        LD      h,c                                 ;a665
        LD      (bc),a                              ;a666
        AND     h                                   ;a667
        SUB     c                                   ;a668
        INC     b                                   ;a669
        LD      (hl),h                              ;a66a
        LD      d,c                                 ;a66b
        INC     b                                   ;a66c
        ADD     a,b                                 ;a66d
        LD      (hl),l                              ;a66e
        INC     b                                   ;a66f
        LD      h,b                                 ;a670
        SUB     l                                   ;a671
        LD      b,0x80                              ;a672
        LD      h,(hl)                              ;a674
        RLCA                                        ;a675
        ADD     a,d                                 ;a676
        JR      nc,bF_la681h                        ;a677
        LD      (hl),b                              ;a679
        LD      (hl),0x8                            ;a67a
        ADD     a,(hl)                              ;a67c
        SUB     a                                   ;a67d
        LD      a,(bc)                              ;a67e
        ADD     a,(hl)                              ;a67f
        RST     0                                   ;a680
bF_la681h:
        DEC     bc                                  ;a681
        HALT                                        ;a682
        SCF                                         ;a683
        DEC     bc                                  ;a684
        LD      h,b                                 ;a685
        LD      d,l                                 ;a686
        DEC     bc                                  ;a687
        SUB     b                                   ;a688
        LD      (hl),h                              ;a689
        DEC     bc                                  ;a68a
bF_la68bh:
        LD      (hl),c                              ;a68b
        ADD     a,b                                 ;a68c
        INC     c                                   ;a68d
        ADD     a,b                                 ;a68e
        LD      b,(hl)                              ;a68f
        INC     c                                   ;a690
        OR      b                                   ;a691
        LD      b,(hl)                              ;a692
        INC     c                                   ;a693
        AND     h                                   ;a694
        LD      (hl),c                              ;a695
        INC     c                                   ;a696
        HALT                                        ;a697
        RST     CHRGTR                              ;a698
        DEC     c                                   ;a699
        HALT                                        ;a69a
        ADD     a,a                                 ;a69b
        LD      c,0x80                              ;a69c
        LD      d,(hl)                              ;a69e
        LD      c,0xa0                              ;a69f
        LD      d,(hl)                              ;a6a1
        LD      c,0x74                              ;a6a2
        SUB     c                                   ;a6a4
        RRCA                                        ;a6a5
        ADD     a,d                                 ;a6a6
        LD      d,b                                 ;a6a7
        RRCA                                        ;a6a8
        OR      (hl)                                ;a6a9
        LD      h,a                                 ;a6aa
        DJNZ    bF_la63dh                           ;a6ab
        LD      b,h                                 ;a6ad
        DJNZ    bF_la710h                           ;a6ae
        ADD     a,l                                 ;a6b0
        DJNZ    bF_la634h                           ;a6b1
        RET     nz                                  ;a6b3
        RST     KEYINT                              ;a6b4
        JR      bF_la6b7h                           ;a6b5
bF_la6b7h:
        LD      h,(hl)                              ;a6b7
        LD      (hl),a                              ;a6b8
        LD      bc,0x7766                           ;a6b9
        LD      bc,bF_la164h                        ;a6bc
        LD      bc,0x51c4                           ;a6bf
        LD      (bc),a                              ;a6c2
        SUB     (hl)                                ;a6c3
        RST     CHRGTR                              ;a6c4
        INC     bc                                  ;a6c5
        SUB     c                                   ;a6c6
        LD      h,b                                 ;a6c7
        INC     b                                   ;a6c8
        SUB     (hl)                                ;a6c9
        DAA                                         ;a6ca
        DEC     b                                   ;a6cb
        AND     h                                   ;a6cc
        LD      h,c                                 ;a6cd
        DEC     b                                   ;a6ce
        AND     h                                   ;a6cf
        ADD     a,c                                 ;a6d0
        RLCA                                        ;a6d1
        ADD     a,(hl)                              ;a6d2
        LD      d,a                                 ;a6d3
        EX      af,af'                              ;a6d4
        SUB     h                                   ;a6d5
        LD      hl,bF_la408h                        ;a6d6
        LD      sp,bF_la108h                        ;a6d9
        LD      d,b                                 ;a6dc
        EX      af,af'                              ;a6dd
        OR      h                                   ;a6de
        LD      b,c                                 ;a6df
        ADD     hl,bc                               ;a6e0
        LD      (hl),b                              ;a6e1
        INC     (hl)                                ;a6e2
        LD      a,(bc)                              ;a6e3
        AND     h                                   ;a6e4
        LD      b,c                                 ;a6e5
        LD      a,(bc)                              ;a6e6
        LD      h,(hl)                              ;a6e7
        RST     0                                   ;a6e8
        DEC     bc                                  ;a6e9
        OR      (hl)                                ;a6ea
        OR      a                                   ;a6eb
        INC     c                                   ;a6ec
        SUB     (hl)                                ;a6ed
        ADD     a,a                                 ;a6ee
        LD      c,0x72                              ;a6ef
        AND     b                                   ;a6f1
        RRCA                                        ;a6f2
        SUB     (hl)                                ;a6f3
        LD      (hl),a                              ;a6f4
        DJNZ    bF_la68bh                           ;a6f5
        LD      sp,0x6010                           ;a6f7
        LD      h,l                                 ;a6fa
        DJNZ    $-94                                ;a6fb
        LD      (hl),h                              ;a6fd
        RST     KEYINT                              ;a6fe
        JR      nc,bF_la702h                        ;a6ff
        SUB     c                                   ;a701
