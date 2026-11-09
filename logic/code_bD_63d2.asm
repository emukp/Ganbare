bD_l63d2h:
        RLA                                         ;63d2
        EX      af,af'                              ;63d3
bD_l63d4h:
        RRA                                         ;63d4
        LD      (bc),a                              ;63d5
        DJNZ    bD_l6369h                           ;63d6
        INC     c                                   ;63d8
        LD      c,0xf                               ;63d9
        RRCA                                        ;63db
        LD      c,0xe                               ;63dc
        INC     b                                   ;63de
        LD      d,0x48                              ;63df
        CPL                                         ;63e1
        DEC     l                                   ;63e2
        LD      l,0x2d                              ;63e3
        JR      nc,bD_l63ebh                        ;63e5
        JR      $+28                                ;63e7
        DEC     b                                   ;63e9
        NOP                                         ;63ea
bD_l63ebh:
        ADD     a,d                                 ;63eb
        LD      e,0x1c                              ;63ec
        LD      b,0x0                               ;63ee
        ADD     a,d                                 ;63f0
        JR      bD_l640dh                           ;63f1
        LD      b,0x0                               ;63f3
        EX      af,af'                              ;63f5
        LD      c,c                                 ;63f6
        SUB     b                                   ;63f7
        LD      sp,0x1232                           ;63f8
        INC     c                                   ;63fb
        LD      sp,0x3332                           ;63fc
        INC     (hl)                                ;63ff
        ADD     hl,sp                               ;6400
        LD      a,(0x2d13)                          ;6401
        DEC     (hl)                                ;6404
        LD      (hl),0x3b                           ;6405
        INC     a                                   ;6407
        JR      bD_l640ah                           ;6408
bD_l640ah:
        EX      af,af'                              ;640a
        LD      c,d                                 ;640b
        SUB     b                                   ;640c
bD_l640dh:
        JR      nz,bD_l6430h                        ;640d
        LD      (0x230c),hl                         ;640f
        DAA                                         ;6412
        DAA                                         ;6413
        JR      z,$+38                              ;6414
        DEC     h                                   ;6416
        LD      h,0x2d                              ;6417
        ADD     hl,hl                               ;6419
        LD      hl,(0x2c2b)                         ;641a
        LD      (de),a                              ;641d
        NOP                                         ;641e
        ADD     a,c                                 ;641f
        LD      c,e                                 ;6420
        DEC     b                                   ;6421
        NOP                                         ;6422
        LD      (bc),a                              ;6423
        LD      c,d                                 ;6424
        ADD     a,c                                 ;6425
        LD      c,h                                 ;6426
        DEC     b                                   ;6427
        LD      c,d                                 ;6428
        SUB     b                                   ;6429
        DEC     a                                   ;642a
        LD      a,0x3f                              ;642b
        EX      af,af'                              ;642d
        DAA                                         ;642e
        ADD     hl,bc                               ;642f
bD_l6430h:
        LD      sp,0x4032                           ;6430
        LD      b,0x41                              ;6433
        DEC     b                                   ;6435
        LD      b,0x7                               ;6436
        DEC     (hl)                                ;6438
        LD      (hl),0x18                           ;6439
        NOP                                         ;643b
        EX      af,af'                              ;643c
        LD      c,c                                 ;643d
        SUB     b                                   ;643e
        LD      sp,0xf32                            ;643f
        LD      c,0x33                              ;6442
        INC     (hl)                                ;6444
        LD      sp,0x3932                           ;6445
        LD      a,(0x2e30)                          ;6448
        DEC     sp                                  ;644b
        INC     a                                   ;644c
        DEC     (hl)                                ;644d
        LD      (hl),0x18                           ;644e
        NOP                                         ;6450
        EX      af,af'                              ;6451
        LD      c,c                                 ;6452
        ADD     a,l                                 ;6453
        JR      nz,bD_l6477h                        ;6454
        LD      (0xd0f),hl                          ;6456
        INC     bc                                  ;6459
        DJNZ    $-118                               ;645a
        INC     h                                   ;645c
        DEC     h                                   ;645d
        LD      h,0x2e                              ;645e
        DEC     l                                   ;6460
        LD      b,a                                 ;6461
        DEC     d                                   ;6462
        INC     b                                   ;6463
        DEC     b                                   ;6464
        NOP                                         ;6465
        ADD     a,e                                 ;6466
        ADD     hl,de                               ;6467
        RLA                                         ;6468
        INC     b                                   ;6469
        LD      b,0x0                               ;646a
        ADD     a,d                                 ;646c
        DEC     de                                  ;646d
        DEC     e                                   ;646e
        LD      b,0x0                               ;646f
        ADD     a,d                                 ;6471
        ADD     hl,de                               ;6472
        RLA                                         ;6473
        EX      af,af'                              ;6474
        LD      c,d                                 ;6475
        NOP                                         ;6476
bD_l6477h:
        ADD     a,c                                 ;6477
        JR      nz,$+7                              ;6478
        LD      hl,0x228a                           ;647a
        INC     hl                                  ;647d
        LD      (0x2532),a                          ;647e
bD_l6481h:
        LD      (0x3225),a                          ;6481
        LD      h,0x33                              ;6484
        INC     b                                   ;6486
        DEC     (hl)                                ;6487
        ADD     a,h                                 ;6488
        CPL                                         ;6489
        DEC     sp                                  ;648a
        SCF                                         ;648b
        DEC     sp                                  ;648c
        EX      af,af'                              ;648d
        LD      (bc),a                              ;648e
        EX      af,af'                              ;648f
        LD      bc,0x308                            ;6490
        ADD     a,d                                 ;6493
        JR      z,$+34                              ;6494
        INC     b                                   ;6496
        LD      hl,0x2291                           ;6497
        INC     hl                                  ;649a
        INC     l                                   ;649b
        INC     h                                   ;649c
        INC     a                                   ;649d
        DEC     a                                   ;649e
        DEC     h                                   ;649f
        LD      (0x2732),a                          ;64a0
        JR      c,bD_l64deh                         ;64a3
        LD      a,0x3f                              ;64a5
        SCF                                         ;64a7
        LD      a,(de)                              ;64a8
        DEC     de                                  ;64a9
        LD      b,0x2                               ;64aa
        ADD     hl,bc                               ;64ac
        LD      bc,0x881                            ;64ad
        RLCA                                        ;64b0
        INC     bc                                  ;64b1
        ADD     a,h                                 ;64b2
        ADD     hl,bc                               ;64b3
        NOP                                         ;64b4
        JR      z,bD_l64d7h                         ;64b5
        INC     bc                                  ;64b7
        LD      hl,0x229c                           ;64b8
        INC     hl                                  ;64bb
        LD      c,e                                 ;64bc
        JR      nc,bD_l64f0h                        ;64bd
        INC     h                                   ;64bf
        DEC     h                                   ;64c0
        INC     h                                   ;64c1
        LD      h,0x27                              ;64c2
        LD      l,0x2                               ;64c4
        LD      (bc),a                              ;64c6
        LD      (de),a                              ;64c7
        NOP                                         ;64c8
        INC     de                                  ;64c9
        LD      (bc),a                              ;64ca
        INC     e                                   ;64cb
        LD      d,d                                 ;64cc
        EX      af,af'                              ;64cd
        LD      c,0x14                              ;64ce
        NOP                                         ;64d0
        DEC     d                                   ;64d1
        DEC     bc                                  ;64d2
        LD      bc,0x91d                            ;64d3
        INC     b                                   ;64d6
bD_l64d7h:
        NOP                                         ;64d7
        ADD     a,e                                 ;64d8
        LD      a,(bc)                              ;64d9
        DEC     bc                                  ;64da
        LD      bc,0x6                              ;64db
bD_l64deh:
        AND     d                                   ;64de
        LD      a,(bc)                              ;64df
        LD      c,0x4b                              ;64e0
        JR      z,bD_l6504h                         ;64e2
        LD      hl,0x2322                           ;64e4
        JR      z,$+34                              ;64e7
        DEC     l                                   ;64e9
        INC     l                                   ;64ea
        DEC     h                                   ;64eb
        DEC     h                                   ;64ec
        LD      h,0x27                              ;64ed
        INC     l                                   ;64ef
bD_l64f0h:
        INC     h                                   ;64f0
        LD      b,(hl)                              ;64f1
        LD      d,e                                 ;64f2
        LD      b,a                                 ;64f3
        LD      d,h                                 ;64f4
        LD      d,h                                 ;64f5
        LD      b,(hl)                              ;64f6
        LD      b,a                                 ;64f7
        NOP                                         ;64f8
        LD      b,e                                 ;64f9
        LD      b,h                                 ;64fa
        LD      b,l                                 ;64fb
        LD      a,(de)                              ;64fc
        DEC     de                                  ;64fd
        LD      (bc),a                              ;64fe
        LD      (de),a                              ;64ff
        NOP                                         ;6500
        INC     bc                                  ;6501
        LD      (bc),a                              ;6502
        INC     bc                                  ;6503
bD_l6504h:
        LD      bc,0x1685                           ;6504
        RRCA                                        ;6507
        LD      c,0xe                               ;6508
        INC     c                                   ;650a
        INC     bc                                  ;650b
        INC     bc                                  ;650c
        ADD     a,a                                 ;650d
        ADD     hl,bc                               ;650e
        NOP                                         ;650f
        LD      hl,0x2322                           ;6510
        JR      z,bD_l6535h                         ;6513
        INC     bc                                  ;6515
        LD      hl,0x2588                           ;6516
        LD      h,0x27                              ;6519
        INC     l                                   ;651b
        DEC     h                                   ;651c
        INC     h                                   ;651d
        INC     h                                   ;651e
        DEC     h                                   ;651f
        DEC     b                                   ;6520
        NOP                                         ;6521
        ADD     a,e                                 ;6522
        LD      b,(hl)                              ;6523
        LD      d,e                                 ;6524
        LD      b,a                                 ;6525
        INC     b                                   ;6526
        NOP                                         ;6527
        ADD     a,h                                 ;6528
        LD      d,l                                 ;6529
        LD      c,b                                 ;652a
        LD      c,c                                 ;652b
        LD      c,d                                 ;652c
        INC     b                                   ;652d
        RRCA                                        ;652e
        ADD     a,c                                 ;652f
        LD      de,0x203                            ;6530
        INC     b                                   ;6533
        NOP                                         ;6534
bD_l6535h:
        SUB     h                                   ;6535
        DEC     d                                   ;6536
        INC     c                                   ;6537
        DEC     c                                   ;6538
        LD      c,0x22                              ;6539
        INC     hl                                  ;653b
        LD      e,0x1f                              ;653c
        LD      c,(hl)                              ;653e
        LD      c,(hl)                              ;653f
        LD      e,0x1f                              ;6540
        LD      h,0x27                              ;6542
        LD      hl,(0x292b)                         ;6544
        LD      hl,(0x292b)                         ;6547
        INC     bc                                  ;654a
        NOP                                         ;654b
        XOR     l                                   ;654c
        LD      d,l                                 ;654d
        ADD     hl,sp                               ;654e
        JR      c,bD_l65a7h                         ;654f
        NOP                                         ;6551
        LD      d,(hl)                              ;6552
        NOP                                         ;6553
        NOP                                         ;6554
        INC     de                                  ;6555
        LD      (bc),a                              ;6556
        LD      (bc),a                              ;6557
        DJNZ    bD_l6569h                           ;6558
        DJNZ    bD_l656bh                           ;655a
        RRCA                                        ;655c
        RLA                                         ;655d
        LD      bc,0x1408                           ;655e
        NOP                                         ;6561
        INC     d                                   ;6562
        NOP                                         ;6563
        NOP                                         ;6564
        LD      a,(bc)                              ;6565
        INC     c                                   ;6566
        ADD     hl,bc                               ;6567
        NOP                                         ;6568
bD_l6569h:
        NOP                                         ;6569
        RRA                                         ;656a
bD_l656bh:
        LD      c,(hl)                              ;656b
        LD      e,0x1f                              ;656c
        RRA                                         ;656e
        LD      e,0x1e                              ;656f
        JR      z,bD_l659dh                         ;6571
        DEC     hl                                  ;6573
        ADD     hl,hl                               ;6574
        LD      hl,(0x1f2e)                         ;6575
        DEC     l                                   ;6578
        JR      nc,bD_l657fh                        ;6579
        NOP                                         ;657b
        ADD     a,c                                 ;657c
        INC     de                                  ;657d
        INC     bc                                  ;657e
bD_l657fh:
        LD      (bc),a                              ;657f
        INC     b                                   ;6580
bD_l6581h:
        RRCA                                        ;6581
        ADD     a,c                                 ;6582
        RLA                                         ;6583
        INC     bc                                  ;6584
        LD      bc,0x138b                           ;6585
        LD      (bc),a                              ;6588
        LD      (de),a                              ;6589
        NOP                                         ;658a
        LD      a,(bc)                              ;658b
        INC     c                                   ;658c
        INC     bc                                  ;658d
        INC     bc                                  ;658e
        DEC     d                                   ;658f
        LD      c,0x14                              ;6590
        DEC     b                                   ;6592
        NOP                                         ;6593
        SUB     b                                   ;6594
        JR      nz,bD_l65b8h                        ;6595
        LD      (0x4e23),hl                         ;6597
        LD      c,(hl)                              ;659a
        LD      e,0x1f                              ;659b
bD_l659dh:
        LD      sp,0x2625                           ;659d
        DAA                                         ;65a0
        LD      hl,(0x4b2e)                         ;65a1
        JR      z,$+8                               ;65a4
        LD      (bc),a                              ;65a6
bD_l65a7h:
        ADD     a,d                                 ;65a7
        DJNZ    bD_l65b9h                           ;65a8
        DEC     b                                   ;65aa
        LD      bc,0x889                            ;65ab
        INC     d                                   ;65ae
        NOP                                         ;65af
        DEC     c                                   ;65b0
        DEC     bc                                  ;65b1
        LD      bc,0x504                            ;65b2
        ADD     hl,bc                               ;65b5
        INC     bc                                  ;65b6
        NOP                                         ;65b7
bD_l65b8h:
        ADD     a,e                                 ;65b8
bD_l65b9h:
        LD      a,(bc)                              ;65b9
        INC     c                                   ;65ba
        LD      c,a                                 ;65bb
        INC     b                                   ;65bc
        NOP                                         ;65bd
        LD      (bc),a                              ;65be
        LD      e,0x2                               ;65bf
        RRA                                         ;65c1
        ADC     a,h                                 ;65c2
        JR      z,$+34                              ;65c3
        LD      hl,0x2022                           ;65c5
        LD      hl,0x2922                           ;65c8
        INC     l                                   ;65cb
        INC     h                                   ;65cc
        DEC     h                                   ;65cd
        LD      h,0x5                               ;65ce
        RRCA                                        ;65d0
        ADD     a,d                                 ;65d1
        LD      de,0x612                            ;65d2
        NOP                                         ;65d5
        AND     (hl)                                ;65d6
        DEC     d                                   ;65d7
        INC     d                                   ;65d8
        NOP                                         ;65d9
        NOP                                         ;65da
        INC     de                                  ;65db
        LD      (bc),a                              ;65dc
        DJNZ    $+17                                ;65dd
        LD      de,0xf10                            ;65df
        NOP                                         ;65e2
        DEC     d                                   ;65e3
        LD      c,0x14                              ;65e4
        NOP                                         ;65e6
        DEC     d                                   ;65e7
        INC     d                                   ;65e8
        NOP                                         ;65e9
        INC     hl                                  ;65ea
        JR      z,bD_l660dh                         ;65eb
        LD      hl,0x2322                           ;65ed
        JR      z,bD_l6612h                         ;65f0
        DAA                                         ;65f2
        INC     l                                   ;65f3
        INC     h                                   ;65f4
        DEC     h                                   ;65f5
        DEC     h                                   ;65f6
        DAA                                         ;65f7
        INC     l                                   ;65f8
        INC     h                                   ;65f9
        NOP                                         ;65fa
        NOP                                         ;65fb
        INC     de                                  ;65fc
        INC     bc                                  ;65fd
        LD      (bc),a                              ;65fe
        ADD     a,c                                 ;65ff
        LD      (de),a                              ;6600
        INC     bc                                  ;6601
        NOP                                         ;6602
        ADD     a,c                                 ;6603
        DEC     d                                   ;6604
        INC     bc                                  ;6605
        LD      c,0x82                              ;6606
        INC     d                                   ;6608
        NOP                                         ;6609
        EX      af,af'                              ;660a
        RRCA                                        ;660b
        LD      (bc),a                              ;660c
bD_l660dh:
        NOP                                         ;660d
        ADD     a,d                                 ;660e
        INC     de                                  ;660f
        LD      (de),a                              ;6610
        INC     b                                   ;6611
bD_l6612h:
        NOP                                         ;6612
        ADD     a,l                                 ;6613
        LD      hl,0x2322                           ;6614
        JR      z,bD_l6639h                         ;6617
        INC     bc                                  ;6619
        LD      hl,0x2585                           ;661a
        LD      h,0x27                              ;661d
        JR      nc,$+51                             ;661f
        INC     bc                                  ;6621
        LD      h,0x82                              ;6622
        NOP                                         ;6624
        INC     de                                  ;6625
        INC     bc                                  ;6626
        LD      (bc),a                              ;6627
        ADD     a,l                                 ;6628
        JR      $+27                                ;6629
        JR      c,bD_l662dh                         ;662b
bD_l662dh:
        LD      d,a                                 ;662d
        DEC     b                                   ;662e
        LD      bc,0x2a9                            ;662f
        RRCA                                        ;6632
        RLA                                         ;6633
        LD      bc,0x801                            ;6634
        DEC     c                                   ;6637
        DEC     bc                                  ;6638
bD_l6639h:
        LD      bc,0xa00                            ;6639
        LD      c,0xc                               ;663c
        ADD     hl,bc                               ;663e
        NOP                                         ;663f
        LD      a,(bc)                              ;6640
        INC     c                                   ;6641
        LD      hl,0x2221                           ;6642
        INC     hl                                  ;6645
        JR      z,bD_l6668h                         ;6646
        LD      hl,0x4021                           ;6648
        LD      b,c                                 ;664b
        LD      b,d                                 ;664c
        DAA                                         ;664d
        INC     l                                   ;664e
        INC     h                                   ;664f
        DEC     h                                   ;6650
        LD      h,0x48                              ;6651
        LD      c,c                                 ;6653
        LD      c,d                                 ;6654
        DEC     sp                                  ;6655
        JR      c,bD_l6691h                         ;6656
        DEC     sp                                  ;6658
        LD      d,(hl)                              ;6659
        EX      af,af'                              ;665a
        LD      (bc),a                              ;665b
        INC     bc                                  ;665c
        LD      bc,0x89a                            ;665d
        DEC     c                                   ;6660
        DEC     bc                                  ;6661
        LD      bc,0xd01                            ;6662
        LD      c,0xc                               ;6665
        ADD     hl,bc                               ;6667
bD_l6668h:
        NOP                                         ;6668
        LD      a,(bc)                              ;6669
        INC     c                                   ;666a
        INC     bc                                  ;666b
        LD      (0x2a29),hl                         ;666c
        INC     l                                   ;666f
        INC     sp                                  ;6670
        JR      nc,bD_l66abh                        ;6671
        ADD     hl,sp                               ;6673
        LD      h,0x54                              ;6674
        LD      d,h                                 ;6676
        LD      a,(de)                              ;6677
        DEC     de                                  ;6678
        INC     bc                                  ;6679
        LD      (bc),a                              ;667a
        ADD     a,e                                 ;667b
        INC     (hl)                                ;667c
        LD      a,(de)                              ;667d
        DEC     de                                  ;667e
        DEC     b                                   ;667f
        LD      bc,0x281                            ;6680
        ADD     hl,bc                               ;6683
        LD      bc,0x489                            ;6684
        DEC     b                                   ;6687
        INC     bc                                  ;6688
        INC     bc                                  ;6689
        LD      b,0x7                               ;668a
        DEC     c                                   ;668c
        INC     c                                   ;668d
        LD      c,a                                 ;668e
        INC     b                                   ;668f
        NOP                                         ;6690
bD_l6691h:
        SBC     a,c                                 ;6691
        LD      d,b                                 ;6692
        LD      a,(0x2752)                          ;6693
        LD      l,0x2d                              ;6696
        INC     l                                   ;6698
        DEC     h                                   ;6699
        LD      h,0x2                               ;669a
        INC     e                                   ;669c
        LD      d,(hl)                              ;669d
        INC     a                                   ;669e
        DEC     a                                   ;669f
        LD      d,h                                 ;66a0
        LD      d,h                                 ;66a1
        CPL                                         ;66a2
        LD      bc,0x1d01                           ;66a3
        LD      c,h                                 ;66a6
        LD      c,l                                 ;66a7
        LD      a,(de)                              ;66a8
        DEC     de                                  ;66a9
        LD      (bc),a                              ;66aa
bD_l66abh:
        INC     bc                                  ;66ab
        LD      bc,0x202                            ;66ac
        DEC     bc                                  ;66af
        LD      bc,0x683                            ;66b0
        DEC     b                                   ;66b3
        DEC     c                                   ;66b4
        INC     b                                   ;66b5
        LD      c,0x91                              ;66b6
        INC     c                                   ;66b8
        DAA                                         ;66b9
        LD      l,0x2d                              ;66ba
        INC     l                                   ;66bc
        INC     a                                   ;66bd
        DEC     a                                   ;66be
        INC     a                                   ;66bf
        DEC     a                                   ;66c0
        DEC     sp                                  ;66c1
        CPL                                         ;66c2
        DEC     sp                                  ;66c3
        JR      c,$+64                              ;66c4
        CCF                                         ;66c6
        LD      c,h                                 ;66c7
        LD      c,l                                 ;66c8
        EX      af,af'                              ;66c9
        LD      (bc),a                              ;66ca
        DJNZ    bD_l66ceh                           ;66cb
        EX      af,af'                              ;66cd
bD_l66ceh:
        INC     bc                                  ;66ce
        NOP                                         ;66cf
        SUB     b                                   ;66d0
        LD      b,d                                 ;66d1
        ADD     hl,de                               ;66d2
        ADD     hl,de                               ;66d3
        LD      b,h                                 ;66d4
        LD      c,e                                 ;66d5
        LD      b,d                                 ;66d6
        LD      b,h                                 ;66d7
        LD      c,e                                 ;66d8
        LD      b,l                                 ;66d9
        INC     de                                  ;66da
        INC     de                                  ;66db
        LD      b,(hl)                              ;66dc
        DEC     (hl)                                ;66dd
        LD      b,l                                 ;66de
        LD      b,(hl)                              ;66df
        INC     (hl)                                ;66e0
        EX      af,af'                              ;66e1
        LD      de,0x1082                           ;66e2
        INC     d                                   ;66e5
        LD      b,0x18                              ;66e6
        ADD     a,d                                 ;66e8
        DJNZ    bD_l6701h                           ;66e9
        LD      b,0x0                               ;66eb
        ADD     a,c                                 ;66ed
        INC     d                                   ;66ee
        RLCA                                        ;66ef
        NOP                                         ;66f0
        SUB     b                                   ;66f1
        LD      b,e                                 ;66f2
        LD      b,h                                 ;66f3
        LD      b,d                                 ;66f4
        ADD     hl,de                               ;66f5
        LD      b,h                                 ;66f6
        LD      c,e                                 ;66f7
        LD      b,e                                 ;66f8
        LD      b,h                                 ;66f9
        LD      b,l                                 ;66fa
        LD      b,(hl)                              ;66fb
        LD      b,l                                 ;66fc
        INC     de                                  ;66fd
        LD      b,(hl)                              ;66fe
        INC     (hl)                                ;66ff
        LD      b,l                                 ;6700
bD_l6701h:
        LD      b,(hl)                              ;6701
        EX      af,af'                              ;6702
        LD      de,0x1808                           ;6703
        DJNZ    bD_l6708h                           ;6706
bD_l6708h:
        ADC     a,e                                 ;6708
        LD      c,e                                 ;6709
        DEC     hl                                  ;670a
        DAA                                         ;670b
        DEC     hl                                  ;670c
        JR      z,bD_l6739h                         ;670d
        DEC     hl                                  ;670f
        ADD     hl,hl                               ;6710
        LD      (0x2523),a                          ;6711
        DEC     b                                   ;6714
        INC     hl                                  ;6715
        ADD     a,h                                 ;6716
        LD      c,l                                 ;6717
        LD      a,(de)                              ;6718
        NOP                                         ;6719
        DEC     de                                  ;671a
        INC     b                                   ;671b
        LD      (de),a                              ;671c
        ADD     a,h                                 ;671d
        JR      bD_l676ah                           ;671e
        NOP                                         ;6720
        LD      c,c                                 ;6721
        INC     b                                   ;6722
        JR      bD_l6735h                           ;6723
        NOP                                         ;6725
        ADD     a,d                                 ;6726
        DEC     hl                                  ;6727
        INC     l                                   ;6728
        INC     b                                   ;6729
        DEC     l                                   ;672a
        ADD     a,d                                 ;672b
        LD      l,0x2b                              ;672c
        EX      af,af'                              ;672e
        INC     hl                                  ;672f
        EX      af,af'                              ;6730
        LD      (de),a                              ;6731
bD_l6732h:
        EX      af,af'                              ;6732
        JR      $+18                                ;6733
bD_l6735h:
        NOP                                         ;6735
        ADC     a,b                                 ;6736
        JR      z,bD_l675fh                         ;6737
bD_l6739h:
        DEC     hl                                  ;6739
        ADD     hl,hl                               ;673a
        LD      hl,(0x2629)                         ;673b
        JR      z,bD_l6748h                         ;673e
        INC     hl                                  ;6740
        EX      af,af'                              ;6741
        LD      (de),a                              ;6742
        EX      af,af'                              ;6743
        JR      bD_l6756h                           ;6744
        NOP                                         ;6746
        ADC     a,e                                 ;6747
bD_l6748h:
        LD      h,0x27                              ;6748
        INC     l                                   ;674a
        DEC     l                                   ;674b
        DEC     l                                   ;674c
        LD      l,0x27                              ;674d
        LD      h,0x23                              ;674f
        INC     hl                                  ;6751
        DEC     h                                   ;6752
        DEC     b                                   ;6753
        INC     hl                                  ;6754
        ADD     a,h                                 ;6755
