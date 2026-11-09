        DEFB    0xfd,0x4,0xee                       ;6401
        EX      af,af'                              ;6404
        NOP                                         ;6405
        ADD     a,h                                 ;6406
        LD      a,(bc)                              ;6407
        AND     l                                   ;6408
        LD      a,(bc)                              ;6409
        AND     l                                   ;640a
        INC     b                                   ;640b
        NOP                                         ;640c
        ADC     a,h                                 ;640d
        LD      a,(bc)                              ;640e
        AND     l                                   ;640f
        LD      a,(bc)                              ;6410
        AND     l                                   ;6411
        LD      a,(bc)                              ;6412
        AND     l                                   ;6413
        LD      a,(bc)                              ;6414
        AND     l                                   ;6415
        LD      a,(bc)                              ;6416
        AND     l                                   ;6417
        LD      a,(bc)                              ;6418
        AND     l                                   ;6419
        JR      nz,b4_l641ch                        ;641a
b4_l641ch:
        INC     b                                   ;641c
        LD      d,l                                 ;641d
        INC     b                                   ;641e
        XOR     d                                   ;641f
        INC     b                                   ;6420
        LD      (hl),a                              ;6421
        INC     b                                   ;6422
        NOP                                         ;6423
        OR      b                                   ;6424
        LD      e,d                                 ;6425
        AND     b                                   ;6426
        LD      e,d                                 ;6427
        AND     b                                   ;6428
        LD      e,d                                 ;6429
        AND     b                                   ;642a
        LD      e,d                                 ;642b
        AND     b                                   ;642c
        LD      e,d                                 ;642d
        AND     b                                   ;642e
        LD      e,d                                 ;642f
        AND     b                                   ;6430
        LD      e,d                                 ;6431
        AND     b                                   ;6432
        LD      e,d                                 ;6433
        AND     b                                   ;6434
        NOP                                         ;6435
        RRCA                                        ;6436
        DEFB    0xdd,0x0,0x0                        ;6437
        DEFB    0xfd,0xfd,0xd0                      ;643a
        NOP                                         ;643d
        RST     KEYINT                              ;643e
        DEFB    0xdd,0xdd,0xf                       ;643f
        RST     KEYINT                              ;6442
        DEFB    0xdd,0xfd,0xf                       ;6443
        DEFB    0xfd,0x7f,0xdf                      ;6446
        RRCA                                        ;6449
        LD      a,l                                 ;644a
        LD      a,a                                 ;644b
        RST     OUTDO                               ;644c
        RRCA                                        ;644d
        LD      (hl),a                              ;644e
        LD      a,a                                 ;644f
        XOR     a                                   ;6450
        RRCA                                        ;6451
        RST     CALLF                               ;6452
        LD      a,d                                 ;6453
        DEFB    0xdd,0x4,0x50                       ;6454
        INC     b                                   ;6457
        LD      d,l                                 ;6458
        INC     b                                   ;6459
        LD      d,b                                 ;645a
        INC     c                                   ;645b
        LD      d,a                                 ;645c
        INC     b                                   ;645d
        LD      d,b                                 ;645e
        EX      af,af'                              ;645f
        NOP                                         ;6460
        INC     bc                                  ;6461
        LD      d,l                                 ;6462
        ADD     a,c                                 ;6463
        LD      d,b                                 ;6464
        INC     bc                                  ;6465
        XOR     d                                   ;6466
        ADD     a,c                                 ;6467
        AND     b                                   ;6468
        INC     bc                                  ;6469
        XOR     d                                   ;646a
        ADD     a,c                                 ;646b
        AND     b                                   ;646c
b4_l646dh:
        INC     bc                                  ;646d
        XOR     d                                   ;646e
        ADD     a,c                                 ;646f
        AND     b                                   ;6470
        INC     bc                                  ;6471
        XOR     d                                   ;6472
        ADD     a,c                                 ;6473
        AND     b                                   ;6474
        INC     bc                                  ;6475
        XOR     d                                   ;6476
        ADD     a,c                                 ;6477
        AND     b                                   ;6478
        INC     b                                   ;6479
        NOP                                         ;647a
        JR      nz,$+87                             ;647b
        JR      nz,b4_l646dh                        ;647d
        INC     c                                   ;647f
        LD      d,l                                 ;6480
        INC     b                                   ;6481
        LD      (hl),a                              ;6482
        EX      af,af'                              ;6483
        NOP                                         ;6484
        ADD     a,c                                 ;6485
        LD      c,0x3                               ;6486
        XOR     0x81                                ;6488
        LD      c,0x3                               ;648a
        XOR     0x81                                ;648c
        LD      c,0x3                               ;648e
        XOR     0x81                                ;6490
        LD      c,0x3                               ;6492
        XOR     0x81                                ;6494
        LD      c,0x3                               ;6496
        XOR     0x81                                ;6498
        LD      c,0x3                               ;649a
        XOR     0x81                                ;649c
        LD      c,0x3                               ;649e
        XOR     0x81                                ;64a0
        LD      c,0x3                               ;64a2
        XOR     0x4                                 ;64a4
        NOP                                         ;64a6
        ADD     a,c                                 ;64a7
        LD      a,(bc)                              ;64a8
        INC     bc                                  ;64a9
        XOR     d                                   ;64aa
        ADD     a,c                                 ;64ab
        LD      a,(bc)                              ;64ac
        INC     bc                                  ;64ad
        XOR     d                                   ;64ae
        INC     b                                   ;64af
        NOP                                         ;64b0
        INC     d                                   ;64b1
        LD      a,(bc)                              ;64b2
        INC     b                                   ;64b3
        NOP                                         ;64b4
        SBC     a,l                                 ;64b5
        AND     d                                   ;64b6
        LD      sp,hl                               ;64b7
        SBC     a,c                                 ;64b8
        RST     KEYINT                              ;64b9
        XOR     d                                   ;64ba
        LD      (0x9999),hl                         ;64bb
        LD      a,d                                 ;64be
        XOR     l                                   ;64bf
        LD      (0xf799),hl                         ;64c0
        XOR     a                                   ;64c3
        ADD     ix,ix                               ;64c4
        RST     KEYINT                              ;64c6
        XOR     a                                   ;64c7
        RST     KEYINT                              ;64c8
        JP      p,0x22ff                            ;64c9
        CPL                                         ;64cc
        JP      p,0x2972                            ;64cd
        SUB     d                                   ;64d0
        LD      (0x322),hl                          ;64d1
        SBC     a,c                                 ;64d4
        AND     b                                   ;64d5
        NOP                                         ;64d6
        CALL    z,ERAFNK                            ;64d7
        INC     c                                   ;64da
        NOP                                         ;64db
        NOP                                         ;64dc
        RET     nz                                  ;64dd
        RET     nz                                  ;64de
        INC     c                                   ;64df
        RET     nz                                  ;64e0
        INC     c                                   ;64e1
        NOP                                         ;64e2
        CALL    z,ERAFNK                            ;64e3
        INC     c                                   ;64e6
        RET     nz                                  ;64e7
        INC     c                                   ;64e8
        RET     nz                                  ;64e9
        INC     c                                   ;64ea
        CALL    z,0xc0cc                            ;64eb
        INC     c                                   ;64ee
        NOP                                         ;64ef
        NOP                                         ;64f0
        RET     nz                                  ;64f1
        INC     c                                   ;64f2
        NOP                                         ;64f3
        NOP                                         ;64f4
        RET     nz                                  ;64f5
        INC     bc                                  ;64f6
        CALL    z,0xc081                            ;64f7
        INC     bc                                  ;64fa
        CALL    z,0xc081                            ;64fb
        INC     bc                                  ;64fe
        CALL    z,0xc081                            ;64ff
        INC     bc                                  ;6502
        CALL    z,0xc081                            ;6503
        INC     bc                                  ;6506
        CALL    z,0xc081                            ;6507
        INC     bc                                  ;650a
        CALL    z,0xc081                            ;650b
        INC     bc                                  ;650e
        CALL    z,0xc081                            ;650f
        INC     bc                                  ;6512
        CALL    z,0xc081                            ;6513
        INC     b                                   ;6516
        SBC     a,c                                 ;6517
        INC     bc                                  ;6518
        NOP                                         ;6519
        ADD     a,c                                 ;651a
        SBC     a,c                                 ;651b
        INC     bc                                  ;651c
        NOP                                         ;651d
        ADD     a,c                                 ;651e
        SBC     a,c                                 ;651f
        INC     bc                                  ;6520
        NOP                                         ;6521
        ADD     a,c                                 ;6522
        ADD     hl,bc                               ;6523
        INC     bc                                  ;6524
        NOP                                         ;6525
        ADD     a,c                                 ;6526
        ADD     hl,bc                               ;6527
        INC     bc                                  ;6528
        NOP                                         ;6529
        ADD     a,c                                 ;652a
        ADD     hl,bc                               ;652b
        RLA                                         ;652c
        NOP                                         ;652d
        ADD     a,c                                 ;652e
        ADD     hl,bc                               ;652f
        INC     bc                                  ;6530
        NOP                                         ;6531
        ADD     a,c                                 ;6532
        ADD     hl,bc                               ;6533
        INC     bc                                  ;6534
        NOP                                         ;6535
        ADD     a,c                                 ;6536
        ADD     hl,bc                               ;6537
        INC     bc                                  ;6538
        NOP                                         ;6539
        ADD     a,c                                 ;653a
        SBC     a,c                                 ;653b
        INC     bc                                  ;653c
        NOP                                         ;653d
        SBC     a,e                                 ;653e
        SBC     a,c                                 ;653f
        NOP                                         ;6540
        SBC     a,c                                 ;6541
        NOP                                         ;6542
        ADD     hl,bc                               ;6543
        RET     po                                  ;6544
        NOP                                         ;6545
        CALL    pe,0xcee0                           ;6546
        LD      c,0xcc                              ;6549
        ADC     a,0xc0                              ;654b
        INC     c                                   ;654d
        CALL    z,0xecc                             ;654e
        RET     po                                  ;6551
        CALL    z,0xeccc                            ;6552
        ADC     a,0xc                               ;6555
        RET     nz                                  ;6557
        CALL    z,0x4cc                             ;6558
        NOP                                         ;655b
        SBC     a,(hl)                              ;655c
        DEC     bc                                  ;655d
        OR      b                                   ;655e
        NOP                                         ;655f
        NOP                                         ;6560
        SUB     b                                   ;6561
        NOP                                         ;6562
        LD      c,0xe0                              ;6563
        LD      c,0xec                              ;6565
        INC     c                                   ;6567
        CALL    z,0xcc0c                            ;6568
        INC     c                                   ;656b
        NOP                                         ;656c
        NOP                                         ;656d
        CALL    z,0xce00                            ;656e
        NOP                                         ;6571
        RET     nz                                  ;6572
        INC     c                                   ;6573
        CALL    z,0xe0                              ;6574
        CALL    z,0xe0cc                            ;6577
        LD      c,0x8                               ;657a
        NOP                                         ;657c
        SBC     a,b                                 ;657d
        XOR     0xc                                 ;657e
        XOR     0xe0                                ;6580
        CALL    z,0xcc0c                            ;6582
        RET     nz                                  ;6585
        INC     c                                   ;6586
        RET     po                                  ;6587
        CALL    z,0xe000                            ;6588
        ADC     a,0x0                               ;658b
        RET     po                                  ;658d
        RET     nz                                  ;658e
        NOP                                         ;658f
        RET     po                                  ;6590
        RET     po                                  ;6591
        ADC     a,0xc                               ;6592
        RET     po                                  ;6594
        RET     nz                                  ;6595
        INC     b                                   ;6596
        NOP                                         ;6597
        LD      (bc),a                              ;6598
        CP      e                                   ;6599
        ADC     a,e                                 ;659a
        OR      d                                   ;659b
        DEFB    0xdd,0xbb,0xbb                      ;659c
        DEC     l                                   ;659f
        DEFB    0xdd,0xbb,0xbb                      ;65a0
        DEC     l                                   ;65a3
        RST     OUTDO                               ;65a4
        CP      e                                   ;65a5
        INC     bc                                  ;65a6
        LD      (0xb2bd),hl                         ;65a7
        DEFB    0xdd,0xff,0x22                      ;65aa
        DEC     l                                   ;65ad
        DEFB    0xdd,0xdf,0xff                      ;65ae
        DEC     l                                   ;65b1
        RST     OUTDO                               ;65b2
        RST     KEYINT                              ;65b3
        DAA                                         ;65b4
        CPL                                         ;65b5
        JP      p,0x7722                            ;65b6
        JP      p,0xbb2b                            ;65b9
        CP      e                                   ;65bc
        DEFB    0xdd,0xf2,0xbb                      ;65bd
        CP      e                                   ;65c0
        RST     KEYINT                              ;65c1
        JP      p,0xbbbb                            ;65c2
        LD      a,a                                 ;65c5
        LD      (hl),b                              ;65c6
        NOP                                         ;65c7
        CP      e                                   ;65c8
        DAA                                         ;65c9
        LD      a,l                                 ;65ca
        DEFB    0xdd,0xb,0x77                       ;65cb
        DEFB    0xdd,0xdd,0xd2                      ;65ce
        LD      a,d                                 ;65d1
        RST     OUTDO                               ;65d2
        RST     KEYINT                              ;65d3
        JP      nc,0xf2a2                           ;65d4
        LD      (0x22f2),hl                         ;65d7
        DEC     hl                                  ;65da
        OR      d                                   ;65db
        DAA                                         ;65dc
        CP      e                                   ;65dd
        CP      e                                   ;65de
        LD      (0xb27),hl                          ;65df
        LD      (0xd7dd),hl                         ;65e2
        LD      (0xdd03),hl                         ;65e5
        SUB     c                                   ;65e8
        DEC     l                                   ;65e9
        RST     OUTDO                               ;65ea
        RST     KEYINT                              ;65eb
        RST     OUTDO                               ;65ec
        CPL                                         ;65ed
        JP      p,0x2f22                            ;65ee
        LD      (0xdd22),hl                         ;65f1
        RST     CHRGTR                              ;65f4
        JP      p,0xffdf                            ;65f5
        DEFB    0xfd,0xa2,0x3                       ;65f8
        CP      e                                   ;65fb
        CP      l                                   ;65fc
        XOR     d                                   ;65fd
        LD      (0xbbbb),hl                         ;65fe
        LD      a,d                                 ;6601
        XOR     l                                   ;6602
        LD      (0xf7bb),hl                         ;6603
        XOR     a                                   ;6606
        DEC     ix                                  ;6607
        RST     KEYINT                              ;6609
        XOR     a                                   ;660a
        RST     KEYINT                              ;660b
        JP      p,0x22ff                            ;660c
        CPL                                         ;660f
        JP      p,0x2d72                            ;6610
        JP      p,0x2222                            ;6613
        SBC     a,c                                 ;6616
        SBC     a,c                                 ;6617
        RST     KEYINT                              ;6618
        CPL                                         ;6619
        JP      p,0x7a22                            ;661a
        LD      (0x2729),hl                         ;661d
        LD      a,d                                 ;6620
        SUB     d                                   ;6621
        LD      (0xaa27),hl                         ;6622
        DEC     l                                   ;6625
        LD      (ix-0x53),a                         ;6626
        RST     OUTDO                               ;6629
        RST     KEYINT                              ;662a
        RST     CHRGTR                              ;662b
        RST     OUTDO                               ;662c
        JP      p,0xfa2f                            ;662d
        RST     KEYINT                              ;6630
        ADD     hl,hl                               ;6631
        SUB     d                                   ;6632
        JP      m,0x99a2                            ;6633
        SUB     d                                   ;6636
        LD      a,d                                 ;6637
        AND     d                                   ;6638
        ADD     hl,hl                               ;6639
        INC     bc                                  ;663a
        SBC     a,c                                 ;663b
        INC     bc                                  ;663c
        LD      (0x9995),hl                         ;663d
        DEFB    0xdd,0xdd,0xdf                      ;6640
        ADD     hl,hl                               ;6643
        RST     KEYINT                              ;6644
        RST     KEYINT                              ;6645
        DEFB    0xdd,0xd2,0xff                      ;6646
        CPL                                         ;6649
        RST     KEYINT                              ;664a
        JP      nc,0x9222                           ;664b
        CPL                                         ;664e
        JP      p,0x9999                            ;664f
        SUB     d                                   ;6652
        ADD     hl,hl                               ;6653
        INC     b                                   ;6654
        SBC     a,c                                 ;6655
        SBC     a,h                                 ;6656
        RRCA                                        ;6657
        RST     CALLF                               ;6658
        LD      a,l                                 ;6659
        DEFB    0xfd,0x0,0xf7                       ;665a
        XOR     l                                   ;665d
        RET     p                                   ;665e
        NOP                                         ;665f
        RST     CALLF                               ;6660
        XOR     a                                   ;6661
        NOP                                         ;6662
        SUB     b                                   ;6663
        RLCA                                        ;6664
        AND     b                                   ;6665
        ADD     hl,bc                               ;6666
        SBC     a,c                                 ;6667
        RLCA                                        ;6668
        AND     b                                   ;6669
        SBC     a,c                                 ;666a
        SBC     a,c                                 ;666b
        RLCA                                        ;666c
        AND     b                                   ;666d
        SBC     a,c                                 ;666e
        SUB     b                                   ;666f
        LD      (hl),a                              ;6670
        LD      a,d                                 ;6671
        NOP                                         ;6672
        LD      b,0x99                              ;6673
        SBC     a,(hl)                              ;6675
        LD      (0x9972),hl                         ;6676
        SBC     a,c                                 ;6679
        DAA                                         ;667a
        AND     d                                   ;667b
        SBC     a,c                                 ;667c
        SUB     d                                   ;667d
        DAA                                         ;667e
        AND     d                                   ;667f
        SBC     a,c                                 ;6680
        SUB     d                                   ;6681
        LD      a,d                                 ;6682
        LD      (0x2299),hl                         ;6683
        LD      a,d                                 ;6686
        ADD     hl,hl                               ;6687
        SBC     a,c                                 ;6688
        DAA                                         ;6689
        LD      a,d                                 ;668a
        ADD     hl,hl                               ;668b
        SUB     d                                   ;668c
        DAA                                         ;668d
        XOR     d                                   ;668e
        LD      (0x7722),hl                         ;668f
        AND     d                                   ;6692
        LD      (0x9918),hl                         ;6693
        LD      (bc),a                              ;6696
        LD      (0x9902),hl                         ;6697
        LD      (bc),a                              ;669a
        LD      (0x2981),hl                         ;669b
        INC     bc                                  ;669e
        SBC     a,c                                 ;669f
        SUB     (hl)                                ;66a0
        DAA                                         ;66a1
        AND     d                                   ;66a2
        SBC     a,c                                 ;66a3
        SBC     a,c                                 ;66a4
        DAA                                         ;66a5
        XOR     d                                   ;66a6
        SBC     a,c                                 ;66a7
        SBC     a,c                                 ;66a8
        DAA                                         ;66a9
        XOR     d                                   ;66aa
        SBC     a,c                                 ;66ab
        SBC     a,c                                 ;66ac
        SUB     d                                   ;66ad
        LD      a,d                                 ;66ae
        SBC     a,c                                 ;66af
        SBC     a,c                                 ;66b0
        SUB     d                                   ;66b1
        LD      a,d                                 ;66b2
        SBC     a,c                                 ;66b3
        SBC     a,c                                 ;66b4
        SUB     d                                   ;66b5
        LD      (hl),a                              ;66b6
        INC     bc                                  ;66b7
        SBC     a,c                                 ;66b8
        ADD     a,c                                 ;66b9
        DAA                                         ;66ba
        INC     bc                                  ;66bb
        SBC     a,c                                 ;66bc
        ADD     a,c                                 ;66bd
        DAA                                         ;66be
        INC     b                                   ;66bf
        SBC     a,c                                 ;66c0
        ADD     a,c                                 ;66c1
        ADD     hl,hl                               ;66c2
        INC     bc                                  ;66c3
        SBC     a,c                                 ;66c4
        ADD     a,c                                 ;66c5
        ADD     hl,hl                               ;66c6
        INC     bc                                  ;66c7
        SBC     a,c                                 ;66c8
        ADD     a,c                                 ;66c9
        ADD     hl,hl                               ;66ca
        INC     bc                                  ;66cb
        SBC     a,c                                 ;66cc
        ADD     a,c                                 ;66cd
        AND     d                                   ;66ce
        INC     bc                                  ;66cf
        SBC     a,c                                 ;66d0
        ADD     a,l                                 ;66d1
        AND     d                                   ;66d2
        ADD     hl,hl                               ;66d3
        SBC     a,c                                 ;66d4
        SBC     a,c                                 ;66d5
        XOR     d                                   ;66d6
        INC     bc                                  ;66d7
        LD      (b4_l7a84h),hl                      ;66d8
        AND     d                                   ;66db
        LD      (0x1022),hl                         ;66dc
        CP      e                                   ;66df
        INC     b                                   ;66e0
        NOP                                         ;66e1
        ADC     a,b                                 ;66e2
        XOR     d                                   ;66e3
        AND     l                                   ;66e4
        AND     b                                   ;66e5
        XOR     d                                   ;66e6
        LD      (hl),a                              ;66e7
        LD      (hl),l                              ;66e8
        AND     b                                   ;66e9
        LD      (hl),a                              ;66ea
        EX      af,af'                              ;66eb
        NOP                                         ;66ec
        LD      (bc),a                              ;66ed
        INC     c                                   ;66ee
        ADD     a,(hl)                              ;66ef
        CALL    z,0xc0c                             ;66f0
        RET     nz                                  ;66f3
        CALL    z,0x4c0                             ;66f4
        INC     c                                   ;66f7
        ADC     a,c                                 ;66f8
        NOP                                         ;66f9
        CALL    z,0xccc0                            ;66fa
        INC     c                                   ;66fd
        CALL    z,0xccc0                            ;66fe
        SUB     b                                   ;6701
        INC     bc                                  ;6702
        NOP                                         ;6703
        INC     b                                   ;6704
        SBC     a,c                                 ;6705
        INC     b                                   ;6706
        NOP                                         ;6707
        SUB     l                                   ;6708
        LD      a,(bc)                              ;6709
        AND     b                                   ;670a
        XOR     d                                   ;670b
        LD      a,(bc)                              ;670c
        LD      a,(bc)                              ;670d
        AND     b                                   ;670e
        XOR     d                                   ;670f
        LD      a,(bc)                              ;6710
        LD      a,(bc)                              ;6711
        AND     b                                   ;6712
        XOR     d                                   ;6713
        LD      a,(bc)                              ;6714
        LD      a,(bc)                              ;6715
        AND     b                                   ;6716
        XOR     d                                   ;6717
        LD      a,(bc)                              ;6718
        LD      a,(bc)                              ;6719
        AND     b                                   ;671a
        XOR     d                                   ;671b
        LD      a,(bc)                              ;671c
        SUB     b                                   ;671d
        INC     bc                                  ;671e
        NOP                                         ;671f
        INC     b                                   ;6720
        SBC     a,c                                 ;6721
        RET     nz                                  ;6722
        OR      b                                   ;6723
        DEC     b                                   ;6724
        LD      e,d                                 ;6725
        LD      (hl),b                              ;6726
        OR      b                                   ;6727
        DEC     b                                   ;6728
        LD      e,d                                 ;6729
        LD      (hl),b                              ;672a
        NOP                                         ;672b
        DEC     b                                   ;672c
        LD      e,d                                 ;672d
        LD      (hl),b                              ;672e
        RET     nc                                  ;672f
        DEC     b                                   ;6730
        LD      e,d                                 ;6731
        LD      (hl),b                              ;6732
        RET     nc                                  ;6733
        DEC     b                                   ;6734
        LD      e,d                                 ;6735
        LD      (hl),b                              ;6736
        RET     p                                   ;6737
        DEC     b                                   ;6738
        LD      e,d                                 ;6739
        LD      (hl),b                              ;673a
        RET     p                                   ;673b
        DEC     b                                   ;673c
        LD      e,d                                 ;673d
        LD      (hl),b                              ;673e
        RET     p                                   ;673f
        DEC     b                                   ;6740
        LD      e,d                                 ;6741
        LD      (hl),b                              ;6742
        SUB     b                                   ;6743
        DEC     b                                   ;6744
        LD      e,d                                 ;6745
        LD      (hl),b                              ;6746
        SUB     b                                   ;6747
        DEC     b                                   ;6748
        LD      e,d                                 ;6749
        LD      (hl),b                              ;674a
        SUB     b                                   ;674b
        DEC     b                                   ;674c
        LD      e,d                                 ;674d
        LD      (hl),b                              ;674e
        SUB     b                                   ;674f
        DEC     b                                   ;6750
        LD      e,d                                 ;6751
        LD      (hl),b                              ;6752
        SUB     b                                   ;6753
        DEC     b                                   ;6754
        LD      e,d                                 ;6755
        LD      (hl),b                              ;6756
        SUB     b                                   ;6757
        DEC     b                                   ;6758
        LD      e,d                                 ;6759
        LD      (hl),b                              ;675a
        SUB     b                                   ;675b
        DEC     b                                   ;675c
        LD      e,d                                 ;675d
        LD      (hl),b                              ;675e
        SUB     b                                   ;675f
        DEC     b                                   ;6760
        LD      e,d                                 ;6761
        LD      (hl),b                              ;6762
        LD      c,0x0                               ;6763
        SUB     (hl)                                ;6765
        LD      (bc),a                              ;6766
        LD      (0x0),hl                            ;6767
        LD      hl,(0xaa)                           ;676a
        NOP                                         ;676d
        LD      hl,(0xaa)                           ;676e
        NOP                                         ;6771
        DAA                                         ;6772
        LD      (hl),a                              ;6773
        NOP                                         ;6774
        NOP                                         ;6775
        LD      (0x9922),hl                         ;6776
        SBC     a,c                                 ;6779
        SUB     b                                   ;677a
        NOP                                         ;677b
        INC     bc                                  ;677c
        SBC     a,c                                 ;677d
        ADD     a,c                                 ;677e
        NOP                                         ;677f
        INC     bc                                  ;6780
        SBC     a,c                                 ;6781
        ADD     a,c                                 ;6782
        NOP                                         ;6783
        INC     bc                                  ;6784
        SBC     a,c                                 ;6785
        XOR     d                                   ;6786
        NOP                                         ;6787
        SBC     a,c                                 ;6788
        SBC     a,c                                 ;6789
        SUB     b                                   ;678a
        DEC     b                                   ;678b
        SBC     a,c                                 ;678c
        SBC     a,c                                 ;678d
        SUB     b                                   ;678e
        NOP                                         ;678f
        SBC     a,c                                 ;6790
        SBC     a,c                                 ;6791
        NOP                                         ;6792
        XOR     d                                   ;6793
        SBC     a,c                                 ;6794
        SBC     a,c                                 ;6795
        NOP                                         ;6796
        XOR     d                                   ;6797
        SUB     b                                   ;6798
        NOP                                         ;6799
        DEC     b                                   ;679a
        LD      d,l                                 ;679b
        INC     c                                   ;679c
        RET     nz                                  ;679d
        NOP                                         ;679e
        NOP                                         ;679f
        CALL    z,0xaa00                            ;67a0
        XOR     d                                   ;67a3
        INC     c                                   ;67a4
        NOP                                         ;67a5
        XOR     d                                   ;67a6
        XOR     d                                   ;67a7
        NOP                                         ;67a8
        DEC     b                                   ;67a9
        LD      d,l                                 ;67aa
        LD      d,l                                 ;67ab
        RET     po                                  ;67ac
        RLCA                                        ;67ad
        LD      (hl),a                              ;67ae
        LD      (hl),a                              ;67af
        RET     nz                                  ;67b0
        DEC     bc                                  ;67b1
        NOP                                         ;67b2
        INC     b                                   ;67b3
        XOR     0x81                                ;67b4
        INC     sp                                  ;67b6
        INC     bc                                  ;67b7
        XOR     0x94                                ;67b8
        INC     sp                                  ;67ba
        XOR     0xee                                ;67bb
        CALL    z,0xecee                            ;67bd
        CALL    z,0xcc00                            ;67c0
        RET     nz                                  ;67c3
        NOP                                         ;67c4
        LD      d,a                                 ;67c5
        NOP                                         ;67c6
        RLCA                                        ;67c7
        LD      a,(bc)                              ;67c8
        LD      d,a                                 ;67c9
        LD      a,(bc)                              ;67ca
        LD      d,a                                 ;67cb
        LD      a,(bc)                              ;67cc
        LD      d,a                                 ;67cd
        INC     b                                   ;67ce
        NOP                                         ;67cf
        INC     b                                   ;67d0
        XOR     0x81                                ;67d1
        CALL    z,0xee03                            ;67d3
        RET     nz                                  ;67d6
        NOP                                         ;67d7
        CALL    z,0xeeee                            ;67d8
        LD      a,(bc)                              ;67db
        NOP                                         ;67dc
        CALL    z,0xace                             ;67dd
        LD      d,a                                 ;67e0
        NOP                                         ;67e1
        INC     c                                   ;67e2
        LD      a,(bc)                              ;67e3
        LD      d,a                                 ;67e4
        LD      a,(bc)                              ;67e5
        NOP                                         ;67e6
        LD      a,(bc)                              ;67e7
        LD      d,a                                 ;67e8
        LD      a,(bc)                              ;67e9
        LD      d,a                                 ;67ea
        LD      e,d                                 ;67eb
        LD      d,a                                 ;67ec
        XOR     d                                   ;67ed
        LD      d,a                                 ;67ee
        LD      a,d                                 ;67ef
        LD      d,a                                 ;67f0
        LD      a,d                                 ;67f1
        LD      d,a                                 ;67f2
        LD      a,(bc)                              ;67f3
        LD      d,a                                 ;67f4
        LD      a,(bc)                              ;67f5
        LD      d,a                                 ;67f6
        LD      a,(bc)                              ;67f7
        LD      d,a                                 ;67f8
        LD      a,(bc)                              ;67f9
        LD      d,a                                 ;67fa
        LD      a,(bc)                              ;67fb
        LD      d,a                                 ;67fc
        LD      a,(bc)                              ;67fd
        LD      d,a                                 ;67fe
        LD      a,(bc)                              ;67ff
        LD      d,a                                 ;6800
        LD      a,(bc)                              ;6801
        LD      d,a                                 ;6802
        LD      e,d                                 ;6803
        LD      d,a                                 ;6804
        XOR     d                                   ;6805
        LD      d,a                                 ;6806
        LD      a,d                                 ;6807
        LD      d,a                                 ;6808
        LD      a,d                                 ;6809
        LD      d,a                                 ;680a
        LD      a,(bc)                              ;680b
        LD      d,a                                 ;680c
        LD      a,(bc)                              ;680d
        LD      d,a                                 ;680e
        LD      a,(bc)                              ;680f
        LD      d,a                                 ;6810
        LD      a,(bc)                              ;6811
        LD      d,a                                 ;6812
        LD      a,(bc)                              ;6813
        LD      d,a                                 ;6814
        LD      a,(bc)                              ;6815
        LD      d,a                                 ;6816
        INC     b                                   ;6817
        NOP                                         ;6818
        INC     b                                   ;6819
        XOR     0x8                                 ;681a
        CALL    z,VDP_DW                            ;681c
        SBC     a,l                                 ;681f
        CALL    z,0x0                               ;6820
        CALL    z,0x0                               ;6823
        CALL    z,0xcc00                            ;6826
        INC     c                                   ;6829
        NOP                                         ;682a
        CALL    z,0xee                              ;682b
        CALL    z,0xeeee                            ;682e
        INC     c                                   ;6831
        XOR     0x0                                 ;6832
        LD      c,0xe                               ;6834
        XOR     0x0                                 ;6836
        LD      c,0xe                               ;6838
        XOR     0x0                                 ;683a
        LD      c,0xc                               ;683c
        LD      d,b                                 ;683e
        INC     b                                   ;683f
        LD      e,d                                 ;6840
        DJNZ    b4_l6893h                           ;6841
        INC     b                                   ;6843
        LD      e,d                                 ;6844
        EX      af,af'                              ;6845
        LD      d,b                                 ;6846
        INC     b                                   ;6847
        NOP                                         ;6848
        INC     c                                   ;6849
        CALL    z,0x4                               ;684a
        LD      (bc),a                              ;684d
        CP      e                                   ;684e
        AND     e                                   ;684f
        OR      b                                   ;6850
        LD      a,(bc)                              ;6851
        CP      e                                   ;6852
        CP      e                                   ;6853
        OR      b                                   ;6854
        DEC     b                                   ;6855
        CP      e                                   ;6856
        CP      e                                   ;6857
        NOP                                         ;6858
        NOP                                         ;6859
        CP      e                                   ;685a
        CP      e                                   ;685b
        NOP                                         ;685c
        XOR     d                                   ;685d
        CP      e                                   ;685e
        OR      b                                   ;685f
        DEC     b                                   ;6860
        LD      d,l                                 ;6861
        CP      e                                   ;6862
        OR      b                                   ;6863
        NOP                                         ;6864
        NOP                                         ;6865
        CP      e                                   ;6866
        OR      b                                   ;6867
        LD      a,(bc)                              ;6868
        XOR     d                                   ;6869
        CP      e                                   ;686a
        NOP                                         ;686b
        XOR     d                                   ;686c
        XOR     d                                   ;686d
        CP      e                                   ;686e
        DEC     b                                   ;686f
        LD      d,l                                 ;6870
        LD      d,l                                 ;6871
        OR      b                                   ;6872
        INC     bc                                  ;6873
        NOP                                         ;6874
        ADD     a,l                                 ;6875
        OR      b                                   ;6876
        LD      a,(bc)                              ;6877
        XOR     d                                   ;6878
        XOR     d                                   ;6879
        NOP                                         ;687a
        INC     bc                                  ;687b
        XOR     d                                   ;687c
        ADD     a,c                                 ;687d
        NOP                                         ;687e
        INC     bc                                  ;687f
        LD      d,l                                 ;6880
        ADD     a,c                                 ;6881
        RLCA                                        ;6882
        INC     bc                                  ;6883
        LD      (hl),a                              ;6884
        EX      af,af'                              ;6885
        NOP                                         ;6886
        RST     KEYINT                              ;6887
        SBC     a,c                                 ;6888
        SUB     b                                   ;6889
        NOP                                         ;688a
        ADD     hl,bc                               ;688b
        SBC     a,c                                 ;688c
        DEC     b                                   ;688d
        LD      d,b                                 ;688e
        ADD     hl,bc                               ;688f
        SBC     a,c                                 ;6890
        DEC     b                                   ;6891
        RLCA                                        ;6892
