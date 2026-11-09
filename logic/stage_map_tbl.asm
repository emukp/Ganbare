b9_lb546h:
        ADD     a,0x21                              ;b546
        LD      l,c                                 ;b548
        INC     hl                                  ;b549
        LD      h,a                                 ;b54a
        INC     h                                   ;b54b
        ADC     a,b                                 ;b54c
        LD      h,0x8a                              ;b54d
        INC     a                                   ;b54f
        DEC     bc                                  ;b550
        LD      b,0x7                               ;b551
        NOP                                         ;b553
        ADD     hl,bc                               ;b554
        LD      (bc),a                              ;b555
        DJNZ    b9_lb55dh                           ;b556
        LD      de,0x1401                           ;b558
        INC     b                                   ;b55b
        RLA                                         ;b55c
b9_lb55dh:
        INC     bc                                  ;b55d
        LD      b,0x2                               ;b55e
        NOP                                         ;b560
        INC     b                                   ;b561
        LD      (bc),a                              ;b562
        LD      b,0x5                               ;b563
        EX      af,af'                              ;b565
        INC     hl                                  ;b566
        ADD     hl,bc                               ;b567
        INC     h                                   ;b568
        DEC     c                                   ;b569
        RLCA                                        ;b56a
        LD      a,(bc)                              ;b56b
        LD      bc,0x400                            ;b56c
        LD      (bc),a                              ;b56f
        DEC     b                                   ;b570
        DEC     b                                   ;b571
        LD      b,0x4                               ;b572
        EX      af,af'                              ;b574
        LD      b,0x9                               ;b575
        LD      bc,0x70b                            ;b577
        RRCA                                        ;b57a
        EX      af,af'                              ;b57b
        LD      de,0x1209                           ;b57c
        INC     bc                                  ;b57f
        LD      a,(bc)                              ;b580
        LD      bc,0x200                            ;b581
        LD      (bc),a                              ;b584
        EX      af,af'                              ;b585
        LD      bc,0x240a                           ;b586
        INC     c                                   ;b589
        INC     hl                                  ;b58a
        RRCA                                        ;b58b
        LD      h,0x15                              ;b58c
        LD      c,b                                 ;b58e
        ADD     hl,de                               ;b58f
        LD      b,a                                 ;b590
        DEC     de                                  ;b591
        LD      c,c                                 ;b592
        DEC     e                                   ;b593
        DEC     h                                   ;b594
        ADD     hl,bc                               ;b595
        NOP                                         ;b596
        NOP                                         ;b597
        DEC     b                                   ;b598
        LD      (bc),a                              ;b599
        DEC     bc                                  ;b59a
        INC     h                                   ;b59b
        INC     c                                   ;b59c
        LD      h,0x17                              ;b59d
        RLCA                                        ;b59f
        ADD     hl,de                               ;b5a0
        INC     bc                                  ;b5a1
        INC     e                                   ;b5a2
        DEC     b                                   ;b5a3
        DEC     e                                   ;b5a4
        EX      af,af'                              ;b5a5
        RRA                                         ;b5a6
        LD      hl,0xf                              ;b5a7
        LD      bc,0x2208                           ;b5aa
        ADD     hl,bc                               ;b5ad
        INC     h                                   ;b5ae
        DEC     bc                                  ;b5af
        LD      h,0xf                               ;b5b0
        JR      z,$+18                              ;b5b2
        DEC     hl                                  ;b5b4
        JR      b9_lb5e3h                           ;b5b5
        LD      a,(de)                              ;b5b7
        ADD     hl,bc                               ;b5b8
        DEC     e                                   ;b5b9
        RRCA                                        ;b5ba
        RRA                                         ;b5bb
        DJNZ    b9_lb5deh                           ;b5bc
        DEC     c                                   ;b5be
        INC     h                                   ;b5bf
        INC     hl                                  ;b5c0
        DAA                                         ;b5c1
        LD      (0x734),a                           ;b5c2
        JR      c,b9_lb5dch                         ;b5c5
        RLCA                                        ;b5c7
b9_lb5c8h:
        INC     bc                                  ;b5c8
        AND     b                                   ;b5c9
        INC     de                                  ;b5ca
        ADD     a,d                                 ;b5cb
        LD      a,(de)                              ;b5cc
        JP      0x6521                              ;b5cd
        DEC     h                                   ;b5d0
        AND     h                                   ;b5d1
        ADD     hl,hl                               ;b5d2
        AND     (hl)                                ;b5d3
        LD      hl,(0x3847)                         ;b5d4
        OR      (hl)                                ;b5d7
        LD      c,c                                 ;b5d8
        OR      (hl)                                ;b5d9
        LD      c,c                                 ;b5da
        OR      (hl)                                ;b5db
b9_lb5dch:
        LD      c,d                                 ;b5dc
        OR      (hl)                                ;b5dd
b9_lb5deh:
        LD      c,c                                 ;b5de
        OR      (hl)                                ;b5df
        LD      h,h                                 ;b5e0
        OR      (hl)                                ;b5e1
        LD      (hl),c                              ;b5e2
b9_lb5e3h:
        OR      (hl)                                ;b5e3
b9_lb5e4h:
        LD      d,a                                 ;b5e4
        OR      (hl)                                ;b5e5
        LD      c,c                                 ;b5e6
        OR      (hl)                                ;b5e7
        OR      a                                   ;b5e8
        OR      (hl)                                ;b5e9
        LD      c,c                                 ;b5ea
        OR      (hl)                                ;b5eb
        AND     d                                   ;b5ec
        OR      (hl)                                ;b5ed
        OR      (ix-0xe)                            ;b5ee
        OR      (hl)                                ;b5f1
        RET     z                                   ;b5f2
        OR      (hl)                                ;b5f3
        LD      c,c                                 ;b5f4
        OR      (hl)                                ;b5f5
        DAA                                         ;b5f6
        OR      a                                   ;b5f7
        LD      c,c                                 ;b5f8
        OR      (hl)                                ;b5f9
        JR      nc,$-71                             ;b5fa
        LD      c,c                                 ;b5fc
        OR      a                                   ;b5fd
        LD      h,d                                 ;b5fe
        OR      a                                   ;b5ff
        SUB     a                                   ;b600
b9_lb601h:
        OR      a                                   ;b601
        XOR     h                                   ;b602
        OR      a                                   ;b603
        LD      c,c                                 ;b604
        OR      (hl)                                ;b605
        OR      c                                   ;b606
        OR      a                                   ;b607
        JP      nz,0x64b7                           ;b608
        OR      (hl)                                ;b60b
        LD      (hl),c                              ;b60c
        OR      (hl)                                ;b60d
        RST     CHRGTR                              ;b60e
        OR      a                                   ;b60f
        JR      c,b9_lb5c8h                         ;b610
        LD      c,c                                 ;b612
        OR      (hl)                                ;b613
        LD      c,c                                 ;b614
        OR      (hl)                                ;b615
        DAA                                         ;b616
        OR      a                                   ;b617
        OR      (ix-0xe)                            ;b618
        OR      (hl)                                ;b61b
        LD      c,c                                 ;b61c
        OR      (hl)                                ;b61d
        RET     z                                   ;b61e
        OR      (hl)                                ;b61f
        ADD     hl,bc                               ;b620
        CP      b                                   ;b621
        LD      c,c                                 ;b622
        OR      (hl)                                ;b623
        JP      nz,InitHardware2                    ;b624
        OR      a                                   ;b627
        LD      (hl),c                              ;b628
        OR      (hl)                                ;b629
        LD      c,c                                 ;b62a
        OR      (hl)                                ;b62b
        LD      d,a                                 ;b62c
        OR      (hl)                                ;b62d
        LD      c,c                                 ;b62e
        OR      (hl)                                ;b62f
        SCF                                         ;b630
        CP      b                                   ;b631
        CALL    p,0x1ab7                            ;b632
        CP      b                                   ;b635
        LD      h,d                                 ;b636
        OR      a                                   ;b637
        EX      af,af'                              ;b638
        INC     bc                                  ;b639
        NOP                                         ;b63a
        ADD     a,h                                 ;b63b
        NOP                                         ;b63c
        ADD     a,(hl)                              ;b63d
        LD      bc,0x88                             ;b63e
        RRCA                                        ;b641
        NOP                                         ;b642
        SUB     b                                   ;b643
        NOP                                         ;b644
        INC     de                                  ;b645
        LD      bc,0x16                             ;b646
        NOP                                         ;b649
        LD      b,0x83                              ;b64a
        LD      bc,0x286                            ;b64c
        ADD     hl,bc                               ;b64f
        NOP                                         ;b650
        ADC     a,d                                 ;b651
        LD      (bc),a                              ;b652
        LD      c,0x1                               ;b653
        DJNZ    b9_lb657h                           ;b655
b9_lb657h:
        LD      b,0x2                               ;b657
        NOP                                         ;b659
        ADD     a,e                                 ;b65a
        NOP                                         ;b65b
        ADD     a,h                                 ;b65c
        NOP                                         ;b65d
        LD      b,0x0                               ;b65e
        ADC     a,d                                 ;b660
        NOP                                         ;b661
        LD      c,0x1                               ;b662
        LD      b,0x88                              ;b664
        NOP                                         ;b666
        ADC     a,(hl)                              ;b667
        LD      bc,0x110                            ;b668
        SUB     h                                   ;b66b
        NOP                                         ;b66c
        RLA                                         ;b66d
        NOP                                         ;b66e
        DEC     e                                   ;b66f
        LD      bc,0x8218                           ;b670
        DEC     b                                   ;b673
        ADC     a,c                                 ;b674
        INC     b                                   ;b675
        INC     c                                   ;b676
        LD      b,0x8f                              ;b677
        LD      b,0x95                              ;b679
        INC     bc                                  ;b67b
        RLA                                         ;b67c
        DEC     b                                   ;b67d
        SBC     a,c                                 ;b67e
        INC     b                                   ;b67f
        SBC     a,h                                 ;b680
        DEC     b                                   ;b681
        DEC     e                                   ;b682
        DEC     b                                   ;b683
        LD      hl,0xa204                           ;b684
        LD      (bc),a                              ;b687
        DEC     h                                   ;b688
        LD      b,0xa9                              ;b689
        LD      (bc),a                              ;b68b
        LD      hl,(0x2d06)                         ;b68c
        INC     bc                                  ;b68f
        XOR     a                                   ;b690
        LD      bc,0x1b1                            ;b691
        INC     (hl)                                ;b694
        DEC     b                                   ;b695
        LD      (hl),0x2                            ;b696
        OR      a                                   ;b698
        NOP                                         ;b699
        JR      c,b9_lb69eh                         ;b69a
        CP      d                                   ;b69c
        NOP                                         ;b69d
b9_lb69eh:
        DEC     a                                   ;b69e
        LD      bc,0x140                            ;b69f
        LD      a,(bc)                              ;b6a2
        ADD     a,c                                 ;b6a3
        NOP                                         ;b6a4
        ADD     a,e                                 ;b6a5
        NOP                                         ;b6a6
        ADD     a,l                                 ;b6a7
        NOP                                         ;b6a8
        ADD     a,(hl)                              ;b6a9
        NOP                                         ;b6aa
        EX      af,af'                              ;b6ab
        NOP                                         ;b6ac
        DEC     bc                                  ;b6ad
        LD      bc,0x10d                            ;b6ae
        RRCA                                        ;b6b1
        LD      bc,0x110                            ;b6b2
        SUB     d                                   ;b6b5
        LD      bc,0x8308                           ;b6b6
        LD      bc,0x284                            ;b6b9
        ADD     a,a                                 ;b6bc
        LD      (bc),a                              ;b6bd
        EX      af,af'                              ;b6be
        NOP                                         ;b6bf
        ADC     a,d                                 ;b6c0
        LD      (bc),a                              ;b6c1
        LD      c,0x1                               ;b6c2
        LD      de,0x1401                           ;b6c4
        NOP                                         ;b6c7
        LD      a,(bc)                              ;b6c8
        ADD     a,c                                 ;b6c9
        NOP                                         ;b6ca
        ADD     a,h                                 ;b6cb
        NOP                                         ;b6cc
        ADC     a,b                                 ;b6cd
        LD      bc,SCALXY                           ;b6ce
        SUB     b                                   ;b6d1
        LD      bc,0x193                            ;b6d2
        RLA                                         ;b6d5
        LD      bc,0x1a                             ;b6d6
        LD      e,0x1                               ;b6d9
        JR      nz,b9_lb6ddh                        ;b6db
b9_lb6ddh:
        LD      a,(bc)                              ;b6dd
        ADD     a,(hl)                              ;b6de
        NOP                                         ;b6df
        ADC     a,c                                 ;b6e0
        LD      bc,0x18d                            ;b6e1
        LD      c,0x1                               ;b6e4
        SUB     c                                   ;b6e6
        NOP                                         ;b6e7
        LD      (de),a                              ;b6e8
        NOP                                         ;b6e9
        SUB     (hl)                                ;b6ea
        NOP                                         ;b6eb
        RLA                                         ;b6ec
        NOP                                         ;b6ed
        DEC     de                                  ;b6ee
        LD      bc,0x122                            ;b6ef
        LD      a,(de)                              ;b6f2
        ADD     a,c                                 ;b6f3
        DEC     b                                   ;b6f4
        ADC     a,b                                 ;b6f5
        DEC     b                                   ;b6f6
        ADC     a,d                                 ;b6f7
        INC     b                                   ;b6f8
        DEC     bc                                  ;b6f9
        LD      b,0x12                              ;b6fa
        LD      b,0x96                              ;b6fc
        INC     bc                                  ;b6fe
        ADD     hl,de                               ;b6ff
        DEC     b                                   ;b700
        SBC     a,d                                 ;b701
        INC     bc                                  ;b702
        SBC     a,h                                 ;b703
        LD      (bc),a                              ;b704
        SBC     a,a                                 ;b705
        LD      (bc),a                              ;b706
        JR      nz,$+7                              ;b707
        INC     h                                   ;b709
        INC     b                                   ;b70a
        AND     l                                   ;b70b
        LD      bc,0x429                            ;b70c
        XOR     d                                   ;b70f
        LD      bc,0x32d                            ;b710
        OR      c                                   ;b713
        NOP                                         ;b714
        LD      (b9_lb503h),a                       ;b715
        NOP                                         ;b718
        OR      a                                   ;b719
        NOP                                         ;b71a
        JR      c,b9_lb71fh                         ;b71b
        CP      d                                   ;b71d
        NOP                                         ;b71e
b9_lb71fh:
        DEC     a                                   ;b71f
        LD      bc,0x140                            ;b720
        LD      b,d                                 ;b723
        LD      bc,0x143                            ;b724
        INC     b                                   ;b727
        ADD     a,d                                 ;b728
        LD      bc,0x184                            ;b729
        EX      af,af'                              ;b72c
        NOP                                         ;b72d
        DJNZ    b9_lb730h                           ;b72e
b9_lb730h:
        INC     c                                   ;b730
        LD      bc,0x8201                           ;b731
        LD      bc,PCMPLY                           ;b734
        RLCA                                        ;b737
        LD      bc,PCMREC                           ;b738
        ADC     a,d                                 ;b73b
        LD      bc,0xd                              ;b73c
        LD      c,0x0                               ;b73f
        LD      (de),a                              ;b741
        NOP                                         ;b742
        SUB     e                                   ;b743
        NOP                                         ;b744
        SUB     l                                   ;b745
        NOP                                         ;b746
        LD      d,0x0                               ;b747
        INC     c                                   ;b749
        ADC     a,c                                 ;b74a
        NOP                                         ;b74b
        ADC     a,l                                 ;b74c
        LD      bc,0x18e                            ;b74d
        LD      de,0x9201                           ;b750
        LD      bc,0x16                             ;b753
        LD      a,(de)                              ;b756
        NOP                                         ;b757
        SBC     a,e                                 ;b758
        NOP                                         ;b759
        INC     e                                   ;b75a
        NOP                                         ;b75b
        SBC     a,(hl)                              ;b75c
        NOP                                         ;b75d
        LD      h,0x1                               ;b75e
        ADD     hl,hl                               ;b760
        LD      bc,0x801a                           ;b761
        DEC     b                                   ;b764
        ADC     a,(hl)                              ;b765
        LD      b,0xf                               ;b766
        LD      b,0x94                              ;b768
        INC     bc                                  ;b76a
        SUB     a                                   ;b76b
        INC     bc                                  ;b76c
        SBC     a,b                                 ;b76d
        DEC     b                                   ;b76e
        DEC     de                                  ;b76f
        DEC     b                                   ;b770
        SBC     a,h                                 ;b771
        DEC     b                                   ;b772
        SBC     a,a                                 ;b773
        LD      (bc),a                              ;b774
        JR      nz,b9_lb77bh                        ;b775
        LD      (0x2604),hl                         ;b777
        INC     b                                   ;b77a
b9_lb77bh:
        DAA                                         ;b77b
        LD      b,0xa8                              ;b77c
        INC     bc                                  ;b77e
        DEC     hl                                  ;b77f
        INC     bc                                  ;b780
        XOR     h                                   ;b781
        LD      bc,0x1b1                            ;b782
        INC     sp                                  ;b785
        DEC     b                                   ;b786
        OR      l                                   ;b787
        LD      bc,0x23a                            ;b788
        CP      e                                   ;b78b
        NOP                                         ;b78c
        CP      a                                   ;b78d
        NOP                                         ;b78e
        LD      b,b                                 ;b78f
        LD      (bc),a                              ;b790
        LD      b,l                                 ;b791
        INC     bc                                  ;b792
        LD      c,c                                 ;b793
        LD      bc,0x14e                            ;b794
        LD      a,(bc)                              ;b797
        ADD     a,c                                 ;b798
        LD      bc,0x85                             ;b799
        ADC     a,b                                 ;b79c
        LD      (bc),a                              ;b79d
        DEC     bc                                  ;b79e
        NOP                                         ;b79f
        ADC     a,h                                 ;b7a0
        LD      (bc),a                              ;b7a1
        ADC     a,a                                 ;b7a2
        LD      (bc),a                              ;b7a3
        DJNZ    b9_lb7a7h                           ;b7a4
        INC     de                                  ;b7a6
b9_lb7a7h:
        LD      bc,STOREC                           ;b7a7
        LD      a,(de)                              ;b7aa
        NOP                                         ;b7ab
        LD      (bc),a                              ;b7ac
        ADD     a,c                                 ;b7ad
        LD      bc,0x8                              ;b7ae
        EX      af,af'                              ;b7b1
        ADD     a,h                                 ;b7b2
        LD      bc,0x188                            ;b7b3
        ADC     a,l                                 ;b7b6
        LD      (bc),a                              ;b7b7
        LD      c,0x0                               ;b7b8
        SUB     e                                   ;b7ba
        NOP                                         ;b7bb
        INC     d                                   ;b7bc
        LD      (bc),a                              ;b7bd
        RLA                                         ;b7be
        LD      bc,0x11c                            ;b7bf
        LD      a,(bc)                              ;b7c2
        ADD     a,d                                 ;b7c3
        NOP                                         ;b7c4
        ADD     a,h                                 ;b7c5
        NOP                                         ;b7c6
        ADC     a,b                                 ;b7c7
        LD      bc,0x18b                            ;b7c8
        INC     c                                   ;b7cb
        LD      bc,SCALXY                           ;b7cc
        LD      (de),a                              ;b7cf
        NOP                                         ;b7d0
        SUB     h                                   ;b7d1
        NOP                                         ;b7d2
        RLA                                         ;b7d3
        NOP                                         ;b7d4
        INC     e                                   ;b7d5
        LD      bc,0x820e                           ;b7d6
        LD      (bc),a                              ;b7d9
        ADD     a,h                                 ;b7da
        LD      bc,0x187                            ;b7db
        ADC     a,b                                 ;b7de
        LD      bc,0x109                            ;b7df
        LD      c,0x0                               ;b7e2
        ADC     a,a                                 ;b7e4
        LD      (bc),a                              ;b7e5
        DJNZ    b9_lb7eah                           ;b7e6
        SUB     d                                   ;b7e8
        NOP                                         ;b7e9
b9_lb7eah:
        INC     de                                  ;b7ea
        LD      (bc),a                              ;b7eb
        SUB     h                                   ;b7ec
        LD      (bc),a                              ;b7ed
        RLA                                         ;b7ee
        NOP                                         ;b7ef
        JR      b9_lb7f3h                           ;b7f0
        DEC     de                                  ;b7f2
b9_lb7f3h:
        LD      bc,0x830a                           ;b7f3
        LD      bc,0x87                             ;b7f6
        ADC     a,d                                 ;b7f9
        NOP                                         ;b7fa
        RRCA                                        ;b7fb
        NOP                                         ;b7fc
        SUB     b                                   ;b7fd
        NOP                                         ;b7fe
        INC     d                                   ;b7ff
        LD      bc,STOREC                           ;b800
        SBC     a,c                                 ;b803
        LD      bc,SETATR                           ;b804
        LD      e,0x0                               ;b807
        EX      af,af'                              ;b809
        ADD     a,c                                 ;b80a
        LD      (bc),a                              ;b80b
        ADD     a,d                                 ;b80c
        NOP                                         ;b80d
        ADC     a,c                                 ;b80e
        LD      (bc),a                              ;b80f
        LD      c,0x1                               ;b810
        SUB     d                                   ;b812
        LD      bc,STOREC                           ;b813
        JR      b9_lb818h                           ;b816
b9_lb818h:
        INC     e                                   ;b818
        NOP                                         ;b819
        LD      c,0x83                              ;b81a
        LD      bc,0x8a                             ;b81c
        ADC     a,(hl)                              ;b81f
        NOP                                         ;b820
        SUB     e                                   ;b821
        LD      bc,FETCHC                           ;b822
        RLA                                         ;b825
        NOP                                         ;b826
        SBC     a,e                                 ;b827
        LD      bc,0x122                            ;b828
        DEC     h                                   ;b82b
        NOP                                         ;b82c
        AND     (hl)                                ;b82d
        NOP                                         ;b82e
        XOR     c                                   ;b82f
        NOP                                         ;b830
        INC     l                                   ;b831
        NOP                                         ;b832
        JR      nc,$+3                              ;b833
        LD      (hl),0x1                            ;b835
        LD      a,(bc)                              ;b837
        ADD     a,h                                 ;b838
        LD      bc,0x287                            ;b839
        ADC     a,l                                 ;b83c
        LD      (bc),a                              ;b83d
        LD      c,0x0                               ;b83e
        SUB     b                                   ;b840
        LD      (bc),a                              ;b841
        INC     de                                  ;b842
        LD      bc,0x194                            ;b843
        RLA                                         ;b846
        NOP                                         ;b847
        LD      a,(de)                              ;b848
        NOP                                         ;b849
        LD      e,0x2                               ;b84a
        NOP                                         ;b84c
        DEC     b                                   ;b84d
        DEC     b                                   ;b84e
        DEC     b                                   ;b84f
        LD      bc,0x100                            ;b850
        NOP                                         ;b853
        LD      bc,0x101                            ;b854
        LD      bc,0x101                            ;b857
        LD      bc,0x101                            ;b85a
        NOP                                         ;b85d
        LD      bc,0x101                            ;b85e
        LD      bc,0x101                            ;b861
        LD      bc,TUPC                             ;b864
        LD      bc,0x100                            ;b867
        LD      bc,0x1                              ;b86a
        NOP                                         ;b86d
        NOP                                         ;b86e
        JR      nz,b9_lb871h                        ;b86f
b9_lb871h:
        DJNZ    b9_lb873h                           ;b871
b9_lb873h:
        DEC     b                                   ;b873
        NOP                                         ;b874
        DEC     b                                   ;b875
        DJNZ    $+7                                 ;b876
        DEC     b                                   ;b878
        DJNZ    $+18                                ;b879
        NOP                                         ;b87b
        DJNZ    b9_lb88eh                           ;b87c
        NOP                                         ;b87e
        DJNZ    b9_lb891h                           ;b87f
        DJNZ    $+18                                ;b881
        DJNZ    b9_lb895h                           ;b883
        DJNZ    $+18                                ;b885
        DEC     b                                   ;b887
        NOP                                         ;b888
        NOP                                         ;b889
        DJNZ    $+18                                ;b88a
        DJNZ    b9_lb88eh                           ;b88c
b9_lb88eh:
        INC     bc                                  ;b88e
        INC     bc                                  ;b88f
        INC     b                                   ;b890
b9_lb891h:
        INC     bc                                  ;b891
        LD      bc,0x303                            ;b892
b9_lb895h:
        LD      bc,0x101                            ;b895
        LD      bc,0x101                            ;b898
        LD      bc,0x103                            ;b89b
        LD      bc,0x101                            ;b89e
        LD      (bc),a                              ;b8a1
        LD      (bc),a                              ;b8a2
        LD      (bc),a                              ;b8a3
        LD      bc,0x201                            ;b8a4
        LD      (bc),a                              ;b8a7
        INC     bc                                  ;b8a8
        INC     bc                                  ;b8a9
b9_lb8aah:
        LD      bc,0x202                            ;b8aa
        LD      (bc),a                              ;b8ad
        LD      bc,0x0                              ;b8ae
        NOP                                         ;b8b1
        NOP                                         ;b8b2
        NOP                                         ;b8b3
        LD      a,(de)                              ;b8b4
        INC     a                                   ;b8b5
        NOP                                         ;b8b6
        NOP                                         ;b8b7
        NOP                                         ;b8b8
        NOP                                         ;b8b9
        LD      a,(bc)                              ;b8ba
        LD      a,(de)                              ;b8bb
        INC     a                                   ;b8bc
        LD      d,0x0                               ;b8bd
        NOP                                         ;b8bf
        INC     c                                   ;b8c0
        NOP                                         ;b8c1
        JR      nz,$+74                             ;b8c2
        NOP                                         ;b8c4
        LD      a,(bc)                              ;b8c5
        EX      af,af'                              ;b8c6
        NOP                                         ;b8c7
        LD      a,(bc)                              ;b8c8
        LD      a,(de)                              ;b8c9
        INC     a                                   ;b8ca
        NOP                                         ;b8cb
        NOP                                         ;b8cc
        NOP                                         ;b8cd
        NOP                                         ;b8ce
        NOP                                         ;b8cf
        LD      a,(de)                              ;b8d0
        INC     a                                   ;b8d1
        LD      a,(bc)                              ;b8d2
        LD      d,0x6                               ;b8d3
        NOP                                         ;b8d5
        LD      a,(bc)                              ;b8d6
        JR      nz,b9_lb915h                        ;b8d7
        NOP                                         ;b8d9
        NOP                                         ;b8da
        EX      af,af'                              ;b8db
        NOP                                         ;b8dc
        NOP                                         ;b8dd
        LD      l,0x48                              ;b8de
        OR      b                                   ;b8e0
        RET     nz                                  ;b8e1
b9_lb8e2h:
        OR      b                                   ;b8e2
        LD      b,b                                 ;b8e3
        LD      (hl),b                              ;b8e4
        RET     nz                                  ;b8e5
        LD      (hl),b                              ;b8e6
        LD      b,b                                 ;b8e7
        OR      b                                   ;b8e8
        ADD     a,b                                 ;b8e9
        LD      (hl),b                              ;b8ea
        ADD     a,b                                 ;b8eb
StageMapTbl: equ     #b8ec
