bC_lb3f2h:
        JR      c,bC_lb42ah                         ;b3f2
        LD      h,b                                 ;b3f4
        LD      (0x6349),a                          ;b3f5
        LD      h,(hl)                              ;b3f8
        LD      b,e                                 ;b3f9
        CP      0x68                                ;b3fa
        LD      b,b                                 ;b3fc
bC_lb3fdh:
        DEC     sp                                  ;b3fd
        LD      h,e                                 ;b3fe
        LD      h,b                                 ;b3ff
        LD      (0x6349),a                          ;b400
        LD      sp,0x3f00                           ;b403
        LD      c,b                                 ;b406
        DEC     sp                                  ;b407
        LD      d,b                                 ;b408
        CP      0x68                                ;b409
        LD      c,b                                 ;b40b
        LD      c,h                                 ;b40c
        LD      h,e                                 ;b40d
        LD      e,l                                 ;b40e
        LD      d,a                                 ;b40f
        LD      a,(0xff55)                          ;b410
        LD      l,b                                 ;b413
bC_lb414h:
        JR      c,bC_lb447h                         ;b414
        LD      b,c                                 ;b416
        LD      c,b                                 ;b417
        LD      c,d                                 ;b418
        DEC     (hl)                                ;b419
        CP      0x68                                ;b41a
        LD      b,b                                 ;b41c
        LD      d,h                                 ;b41d
        SCF                                         ;b41e
        LD      a,0x63                              ;b41f
        NOP                                         ;b421
        LD      c,e                                 ;b422
        LD      d,a                                 ;b423
        LD      b,l                                 ;b424
        LD      d,b                                 ;b425
        CP      0x68                                ;b426
        LD      c,b                                 ;b428
        LD      b,a                                 ;b429
bC_lb42ah:
        LD      b,a                                 ;b42a
        SCF                                         ;b42b
        LD      sp,0xff30                           ;b42c
        LD      l,b                                 ;b42f
        JR      c,bC_lb462h                         ;b430
        LD      d,(hl)                              ;b432
        LD      c,e                                 ;b433
        DEC     sp                                  ;b434
        LD      (hl),0x63                           ;b435
        CP      0x68                                ;b437
        LD      b,b                                 ;b439
        LD      sp,0x4259                           ;b43a
        NOP                                         ;b43d
        LD      b,c                                 ;b43e
        LD      c,l                                 ;b43f
        LD      b,b                                 ;b440
bC_lb441h:
        LD      b,a                                 ;b441
        CP      0x68                                ;b442
        LD      c,b                                 ;b444
        SCF                                         ;b445
        DEC     a                                   ;b446
bC_lb447h:
        LD      e,e                                 ;b447
        INC     sp                                  ;b448
        INC     (hl)                                ;b449
        RST     KEYINT                              ;b44a
        LD      l,b                                 ;b44b
        JR      c,$+59                              ;b44c
        LD      h,e                                 ;b44e
        INC     sp                                  ;b44f
        LD      d,d                                 ;b450
        LD      e,l                                 ;b451
        LD      b,l                                 ;b452
        CP      0x68                                ;b453
        LD      b,b                                 ;b455
        LD      c,h                                 ;b456
        LD      h,e                                 ;b457
        LD      e,l                                 ;b458
        LD      d,a                                 ;b459
        NOP                                         ;b45a
        LD      d,c                                 ;b45b
        LD      e,h                                 ;b45c
        LD      c,l                                 ;b45d
        LD      d,h                                 ;b45e
        CP      0x68                                ;b45f
        LD      c,b                                 ;b461
bC_lb462h:
        LD      b,(hl)                              ;b462
        LD      c,h                                 ;b463
        INC     a                                   ;b464
        LD      sp,0xff32                           ;b465
        LD      l,b                                 ;b468
        JR      c,bC_lb4aeh                         ;b469
        LD      e,l                                 ;b46b
        LD      b,d                                 ;b46c
        LD      h,e                                 ;b46d
        LD      d,h                                 ;b46e
        SCF                                         ;b46f
        CP      0x68                                ;b470
        LD      b,b                                 ;b472
        LD      c,e                                 ;b473
        DEC     sp                                  ;b474
        LD      (hl),0x63                           ;b475
        NOP                                         ;b477
        LD      (hl),0x40                           ;b478
        LD      e,l                                 ;b47a
bC_lb47bh:
        JR      c,bC_lb47bh                         ;b47b
        LD      l,b                                 ;b47d
        LD      c,b                                 ;b47e
        LD      e,b                                 ;b47f
        JR      nc,$+80                             ;b480
        LD      (0xff33),a                          ;b482
        LD      l,b                                 ;b485
        JR      c,bC_lb4b8h                         ;b486
        LD      e,l                                 ;b488
        ADD     hl,sp                               ;b489
        LD      h,e                                 ;b48a
        LD      (0xfe48),a                          ;b48b
        LD      l,b                                 ;b48e
        LD      b,b                                 ;b48f
        LD      c,d                                 ;b490
        LD      c,a                                 ;b491
        LD      b,c                                 ;b492
        NOP                                         ;b493
        INC     sp                                  ;b494
        DEC     a                                   ;b495
        LD      sp,0xfe38                           ;b496
        LD      l,b                                 ;b499
        LD      c,b                                 ;b49a
        INC     sp                                  ;b49b
        LD      e,e                                 ;b49c
        LD      c,e                                 ;b49d
        INC     sp                                  ;b49e
        INC     (hl)                                ;b49f
        RST     KEYINT                              ;b4a0
        LD      l,b                                 ;b4a1
        JR      c,bC_lb4d6h                         ;b4a2
        LD      e,c                                 ;b4a4
        DEC     sp                                  ;b4a5
        LD      sp,0xfe5b                           ;b4a6
        LD      l,b                                 ;b4a9
        LD      b,b                                 ;b4aa
        LD      c,a                                 ;b4ab
        LD      d,a                                 ;b4ac
        LD      h,c                                 ;b4ad
bC_lb4aeh:
        SCF                                         ;b4ae
        LD      c,b                                 ;b4af
bC_lb4b0h:
        NOP                                         ;b4b0
        LD      c,b                                 ;b4b1
        LD      d,c                                 ;b4b2
        LD      b,e                                 ;b4b3
        LD      c,c                                 ;b4b4
        CP      0x68                                ;b4b5
        LD      c,b                                 ;b4b7
bC_lb4b8h:
        LD      b,l                                 ;b4b8
        LD      b,c                                 ;b4b9
        LD      sp,0x3431                           ;b4ba
        RST     KEYINT                              ;b4bd
        LD      l,b                                 ;b4be
        JR      c,bC_lb4f2h                         ;b4bf
        LD      e,(hl)                              ;b4c1
        LD      b,b                                 ;b4c2
        LD      e,a                                 ;b4c3
        LD      e,(hl)                              ;b4c4
        CCF                                         ;b4c5
        CP      0x68                                ;b4c6
        LD      b,b                                 ;b4c8
        INC     a                                   ;b4c9
        ADD     hl,sp                               ;b4ca
        LD      h,e                                 ;b4cb
        LD      sp,0x5700                           ;b4cc
        LD      sp,0x574f                           ;b4cf
        CP      0x68                                ;b4d2
        LD      c,b                                 ;b4d4
        LD      d,c                                 ;b4d5
bC_lb4d6h:
        LD      c,a                                 ;b4d6
        CCF                                         ;b4d7
        LD      sp,0xff3f                           ;b4d8
        LD      l,b                                 ;b4db
        JR      c,bC_lb512h                         ;b4dc
        LD      d,e                                 ;b4de
        LD      c,e                                 ;b4df
        LD      h,e                                 ;b4e0
        LD      e,l                                 ;b4e1
        NOP                                         ;b4e2
        LD      c,c                                 ;b4e3
        CP      0x68                                ;b4e4
        LD      b,b                                 ;b4e6
        LD      d,c                                 ;b4e7
        LD      sp,0x485a                           ;b4e8
        NOP                                         ;b4eb
        LD      b,b                                 ;b4ec
        INC     a                                   ;b4ed
        LD      h,e                                 ;b4ee
        LD      e,h                                 ;b4ef
        CP      0x68                                ;b4f0
bC_lb4f2h:
        LD      c,b                                 ;b4f2
        SCF                                         ;b4f3
        LD      e,c                                 ;b4f4
        LD      b,h                                 ;b4f5
        LD      c,c                                 ;b4f6
        LD      e,b                                 ;b4f7
        RST     KEYINT                              ;b4f8
        LD      l,b                                 ;b4f9
        JR      c,bC_lb532h                         ;b4fa
        LD      c,a                                 ;b4fc
        LD      b,b                                 ;b4fd
        LD      e,a                                 ;b4fe
        LD      e,l                                 ;b4ff
        JR      c,bC_lb565h                         ;b500
        LD      e,l                                 ;b502
        LD      (hl),0x0                            ;b503
        LD      b,d                                 ;b505
        LD      h,e                                 ;b506
        CP      0x68                                ;b507
        LD      b,b                                 ;b509
        ADD     hl,sp                               ;b50a
        LD      h,e                                 ;b50b
        INC     sp                                  ;b50c
        LD      d,d                                 ;b50d
        LD      e,l                                 ;b50e
        NOP                                         ;b50f
        JR      c,bC_lb575h                         ;b510
bC_lb512h:
        LD      e,l                                 ;b512
        LD      (hl),0xff                           ;b513
        LD      l,b                                 ;b515
        JR      c,$+50                              ;b516
        JR      c,$+81                              ;b518
        LD      a,(0x485d)                          ;b51a
        LD      a,(0x4b31)                          ;b51d
        NOP                                         ;b520
        LD      b,l                                 ;b521
        LD      c,c                                 ;b522
        CP      0x68                                ;b523
        LD      b,b                                 ;b525
        LD      b,l                                 ;b526
        DEC     a                                   ;b527
        LD      e,l                                 ;b528
        LD      d,a                                 ;b529
        LD      h,c                                 ;b52a
        LD      (0x68ff),a                          ;b52b
        JR      c,bC_lb577h                         ;b52e
        INC     a                                   ;b530
        LD      h,e                                 ;b531
bC_lb532h:
        LD      c,a                                 ;b532
        ADD     hl,sp                               ;b533
        LD      a,0x63                              ;b534
        LD      (HCVD),a                            ;b536
        LD      l,b                                 ;b539
        LD      b,b                                 ;b53a
        SCF                                         ;b53b
        LD      e,b                                 ;b53c
        SCF                                         ;b53d
        LD      e,b                                 ;b53e
        LD      b,d                                 ;b53f
        LD      e,l                                 ;b540
        NOP                                         ;b541
        INC     a                                   ;b542
        LD      c,h                                 ;b543
        LD      h,d                                 ;b544
        LD      h,(hl)                              ;b545
        INC     a                                   ;b546
        CP      0x68                                ;b547
        LD      c,b                                 ;b549
        LD      b,d                                 ;b54a
        LD      h,e                                 ;b54b
        INC     a                                   ;b54c
        LD      d,l                                 ;b54d
        RST     KEYINT                              ;b54e
        LD      l,b                                 ;b54f
        JR      c,bC_lb58bh                         ;b550
        LD      e,l                                 ;b552
        LD      b,d                                 ;b553
        LD      b,l                                 ;b554
        LD      h,b                                 ;b555
        LD      (0x68fe),a                          ;b556
        LD      b,b                                 ;b559
        LD      b,c                                 ;b55a
        LD      b,c                                 ;b55b
        LD      h,e                                 ;b55c
        LD      (hl),0x35                           ;b55d
        LD      h,e                                 ;b55f
        DEC     sp                                  ;b560
        CCF                                         ;b561
        LD      sp,0x4300                           ;b562
bC_lb565h:
        CP      0x68                                ;b565
        LD      c,b                                 ;b567
        LD      sp,0x5748                           ;b568
        LD      c,(hl)                              ;b56b
        INC     a                                   ;b56c
        RST     KEYINT                              ;b56d
        LD      l,b                                 ;b56e
        JR      c,bC_lb5aeh                         ;b56f
        LD      e,l                                 ;b571
        CCF                                         ;b572
        SCF                                         ;b573
        LD      c,c                                 ;b574
bC_lb575h:
        CP      0x68                                ;b575
bC_lb577h:
        LD      b,b                                 ;b577
        LD      b,d                                 ;b578
        LD      h,e                                 ;b579
        SCF                                         ;b57a
        LD      h,e                                 ;b57b
        LD      b,b                                 ;b57c
        LD      c,b                                 ;b57d
        LD      c,a                                 ;b57e
        INC     sp                                  ;b57f
        LD      e,b                                 ;b580
        CP      0x68                                ;b581
        LD      c,b                                 ;b583
        LD      a,(0x355d)                          ;b584
        LD      sp,0xff51                           ;b587
        LD      l,b                                 ;b58a
bC_lb58bh:
        JR      c,$+54                              ;b58b
        LD      c,a                                 ;b58d
        LD      e,(hl)                              ;b58e
        LD      b,b                                 ;b58f
        LD      e,a                                 ;b590
        LD      e,l                                 ;b591
        CP      0x68                                ;b592
        LD      b,b                                 ;b594
        ADD     hl,sp                               ;b595
        LD      c,c                                 ;b596
        LD      h,e                                 ;b597
        LD      e,l                                 ;b598
        LD      d,d                                 ;b599
        SCF                                         ;b59a
        LD      e,c                                 ;b59b
        LD      e,b                                 ;b59c
        CP      0x68                                ;b59d
        LD      c,b                                 ;b59f
        INC     a                                   ;b5a0
        LD      (hl),0x53                           ;b5a1
        LD      b,a                                 ;b5a3
        LD      e,l                                 ;b5a4
        RST     KEYINT                              ;b5a5
        LD      l,b                                 ;b5a6
        JR      c,bC_lb604h                         ;b5a7
        DEC     (hl)                                ;b5a9
        LD      sp,0x48                             ;b5aa
        LD      b,e                                 ;b5ad
bC_lb5aeh:
        LD      h,e                                 ;b5ae
        LD      (0x3f3b),a                          ;b5af
        CP      0x68                                ;b5b2
        LD      b,b                                 ;b5b4
        LD      c,(hl)                              ;b5b5
        CCF                                         ;b5b6
        LD      h,e                                 ;b5b7
        NOP                                         ;b5b8
        LD      b,h                                 ;b5b9
        LD      b,l                                 ;b5ba
        DEC     (hl)                                ;b5bb
        NOP                                         ;b5bc
        LD      (hl),0x36                           ;b5bd
        CCF                                         ;b5bf
        LD      sp,0x3548                           ;b5c0
        RST     KEYINT                              ;b5c3
        LD      l,b                                 ;b5c4
        JR      c,$+51                              ;b5c5
        LD      d,(hl)                              ;b5c7
        LD      e,(hl)                              ;b5c8
        DEC     sp                                  ;b5c9
        LD      e,a                                 ;b5ca
        LD      sp,0x3d4e                           ;b5cb
        CP      0x68                                ;b5ce
        LD      b,b                                 ;b5d0
        LD      c,d                                 ;b5d1
        LD      b,e                                 ;b5d2
        LD      b,c                                 ;b5d3
        NOP                                         ;b5d4
        LD      b,e                                 ;b5d5
        LD      h,e                                 ;b5d6
        LD      b,h                                 ;b5d7
        LD      sp,0x6342                           ;b5d8
        INC     a                                   ;b5db
        DEC     (hl)                                ;b5dc
        RST     KEYINT                              ;b5dd
        LD      l,b                                 ;b5de
        JR      c,bC_lb62dh                         ;b5df
        LD      sp,0x5500                           ;b5e1
        LD      (0x3934),a                          ;b5e4
        DEC     sp                                  ;b5e7
        RST     KEYINT                              ;b5e8
        LD      l,b                                 ;b5e9
        JR      c,bC_lb61dh                         ;b5ea
        LD      b,c                                 ;b5ec
        LD      d,d                                 ;b5ed
        NOP                                         ;b5ee
        LD      b,l                                 ;b5ef
        ADD     hl,sp                               ;b5f0
        LD      b,l                                 ;b5f1
        ADD     hl,sp                               ;b5f2
        NOP                                         ;b5f3
        JR      c,bC_lb659h                         ;b5f4
        LD      e,l                                 ;b5f6
        LD      (hl),0x5d                           ;b5f7
        CP      0x68                                ;b5f9
        LD      b,b                                 ;b5fb
        LD      c,c                                 ;b5fc
        LD      h,e                                 ;b5fd
        LD      d,(hl)                              ;b5fe
        LD      sp,0x0                              ;b5ff
        NOP                                         ;b602
        NOP                                         ;b603
bC_lb604h:
        NOP                                         ;b604
        RST     KEYINT                              ;b605
        LD      l,b                                 ;b606
        JR      c,$+71                              ;b607
        LD      sp,0x5d3a                           ;b609
        NOP                                         ;b60c
        LD      c,(hl)                              ;b60d
        LD      sp,0x6343                           ;b60e
        CP      0x68                                ;b611
        LD      b,b                                 ;b613
        LD      b,h                                 ;b614
        LD      b,l                                 ;b615
        NOP                                         ;b616
        LD      a,(0x303b)                          ;b617
        JR      c,bC_lb67fh                         ;b61a
        LD      c,(hl)                              ;b61c
bC_lb61dh:
        DEC     sp                                  ;b61d
        LD      h,c                                 ;b61e
        RST     KEYINT                              ;b61f
        LD      l,b                                 ;b620
        JR      c,bC_lb658h                         ;b621
        LD      b,a                                 ;b623
        LD      d,d                                 ;b624
        NOP                                         ;b625
        LD      d,d                                 ;b626
        LD      e,(hl)                              ;b627
        LD      b,d                                 ;b628
        LD      b,a                                 ;b629
        INC     sp                                  ;b62a
        LD      c,b                                 ;b62b
        LD      b,l                                 ;b62c
bC_lb62dh:
        CP      0x68                                ;b62d
        LD      b,b                                 ;b62f
        LD      c,e                                 ;b630
        LD      b,d                                 ;b631
        INC     sp                                  ;b632
        NOP                                         ;b633
        LD      d,e                                 ;b634
        LD      e,d                                 ;b635
        LD      (0x633f),a                          ;b636
        RST     KEYINT                              ;b639
        LD      l,b                                 ;b63a
        JR      c,bC_lb682h                         ;b63b
        LD      sp,0x5d3a                           ;b63d
        NOP                                         ;b640
        LD      c,e                                 ;b641
        LD      a,(0x3863)                          ;b642
        LD      b,b                                 ;b645
        LD      e,a                                 ;b646
        ADD     hl,sp                               ;b647
        LD      c,(hl)                              ;b648
        LD      e,b                                 ;b649
        LD      b,h                                 ;b64a
        RST     KEYINT                              ;b64b
        LD      l,b                                 ;b64c
        JR      c,bC_lb684h                         ;b64d
        LD      b,a                                 ;b64f
        LD      d,d                                 ;b650
        LD      b,h                                 ;b651
        LD      sp,0x4548                           ;b652
        NOP                                         ;b655
        LD      c,a                                 ;b656
        DEC     a                                   ;b657
bC_lb658h:
        LD      b,l                                 ;b658
bC_lb659h:
        CP      0x68                                ;b659
        LD      b,b                                 ;b65b
        SCF                                         ;b65c
        LD      e,b                                 ;b65d
        LD      e,l                                 ;b65e
        DEC     sp                                  ;b65f
        LD      h,e                                 ;b660
        LD      e,a                                 ;b661
        LD      b,h                                 ;b662
        LD      sp,0x633d                           ;b663
        RST     KEYINT                              ;b666
        LD      l,b                                 ;b667
        JR      c,bC_lb69ah                         ;b668
        LD      e,l                                 ;b66a
        CCF                                         ;b66b
        NOP                                         ;b66c
        INC     (hl)                                ;b66d
        DEC     (hl)                                ;b66e
        LD      b,a                                 ;b66f
        DEC     (hl)                                ;b670
        LD      h,e                                 ;b671
        CCF                                         ;b672
        LD      d,a                                 ;b673
        LD      b,h                                 ;b674
        LD      sp,0xff55                           ;b675
        LD      l,b                                 ;b678
        JR      c,bC_lb6c0h                         ;b679
        LD      sp,0x5d3a                           ;b67b
        NOP                                         ;b67e
bC_lb67fh:
        LD      c,a                                 ;b67f
        DEC     a                                   ;b680
        LD      c,c                                 ;b681
bC_lb682h:
        INC     (hl)                                ;b682
        LD      e,e                                 ;b683
bC_lb684h:
        LD      e,(hl)                              ;b684
        CCF                                         ;b685
        LD      d,l                                 ;b686
        RST     KEYINT                              ;b687
        LD      l,b                                 ;b688
        JR      c,bC_lb6d9h                         ;b689
        CCF                                         ;b68b
        ADD     hl,sp                               ;b68c
        LD      e,l                                 ;b68d
        LD      b,e                                 ;b68e
        LD      h,e                                 ;b68f
        NOP                                         ;b690
        LD      c,a                                 ;b691
        DEC     a                                   ;b692
        LD      c,b                                 ;b693
        JR      nc,$+51                             ;b694
        LD      b,d                                 ;b696
        LD      sp,HNOFO                            ;b697
bC_lb69ah:
        LD      l,b                                 ;b69a
        LD      b,b                                 ;b69b
        LD      b,e                                 ;b69c
        LD      (hl),0x45                           ;b69d
        NOP                                         ;b69f
        LD      (hl),0x43                           ;b6a0
        SCF                                         ;b6a2
        LD      e,c                                 ;b6a3
        RST     KEYINT                              ;b6a4
txtDialogShop301: equ     #b6a5
