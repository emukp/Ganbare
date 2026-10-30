bC_la639h:
        RRA                                         ;a639
        RRA                                         ;a63a
        ADD     hl,sp                               ;a63b
        LD      (hl),b                              ;a63c
        JP      po,0xece0                           ;a63d
        JP      po,0x2140                           ;a640
        INC     b                                   ;a643
        NOP                                         ;a644
        SUB     h                                   ;a645
        RET     nz                                  ;a646
        JR      nz,bC_la639h                        ;a647
        RET     p                                   ;a649
        JR      c,bC_la668h                         ;a64a
        ADC     a,(hl)                              ;a64c
        LD      c,0x6e                              ;a64d
        ADC     a,(hl)                              ;a64f
        INC     b                                   ;a650
        EX      af,af'                              ;a651
        INC     e                                   ;a652
        LD      l,a                                 ;a653
        LD      (hl),e                              ;a654
        LD      a,h                                 ;a655
        LD      a,e                                 ;a656
        LD      (hl),h                              ;a657
        SCF                                         ;a658
        INC     bc                                  ;a659
        INC     bc                                  ;a65a
        DJNZ    bC_la5eah                           ;a65b
        RRA                                         ;a65d
        RLCA                                        ;a65e
        DEC     de                                  ;a65f
        INC     l                                   ;a660
        NOP                                         ;a661
        LD      (hl),b                              ;a662
        CALL    pe,0x7cbc                           ;a663
        CP      h                                   ;a666
        LD      e,h                                 ;a667
bC_la668h:
        RET     c                                   ;a668
        ADD     a,b                                 ;a669
        INC     bc                                  ;a66a
        DJNZ    bC_la5fah                           ;a66b
        RET     p                                   ;a66d
        RET     nz                                  ;a66e
        OR      b                                   ;a66f
        LD      l,b                                 ;a670
        NOP                                         ;a671
        LD      h,e                                 ;a672
        POP     af                                  ;a673
        CALL    m,0xfcff                            ;a674
        EI                                          ;a677
        LD      a,b                                 ;a678
        INC     a                                   ;a679
        DEC     b                                   ;a67a
        CCF                                         ;a67b
        ADC     a,e                                 ;a67c
bC_la67dh:
        DAA                                         ;a67d
        LD      d,e                                 ;a67e
        RST     KEYINT                              ;a67f
        ADC     a,h                                 ;a680
        LD      e,0x7e                              ;a681
        CP      0x7e                                ;a683
        CP      (hl)                                ;a685
        INC     a                                   ;a686
        LD      a,b                                 ;a687
        DEC     b                                   ;a688
        RET     m                                   ;a689
        ADD     a,e                                 ;a68a
        RET     z                                   ;a68b
        SUB     h                                   ;a68c
        RST     KEYINT                              ;a68d
        NOP                                         ;a68e
        INC     b                                   ;a68f
        NOP                                         ;a690
        ADC     a,h                                 ;a691
        LD      (bc),a                              ;a692
        LD      b,0x7                               ;a693
        RLCA                                        ;a695
        RRCA                                        ;a696
        INC     bc                                  ;a697
        ADD     hl,hl                               ;a698
        CPL                                         ;a699
        LD      l,0x1f                              ;a69a
        INC     e                                   ;a69c
        DEC     bc                                  ;a69d
        INC     b                                   ;a69e
        NOP                                         ;a69f
        ADC     a,h                                 ;a6a0
        LD      b,b                                 ;a6a1
        LD      h,b                                 ;a6a2
        RET     po                                  ;a6a3
        RET     po                                  ;a6a4
        RET     p                                   ;a6a5
        RET     nz                                  ;a6a6
        SUB     h                                   ;a6a7
        CALL    p,0xf874                            ;a6a8
        JR      c,bC_la67dh                         ;a6ab
        INC     bc                                  ;a6ad
        NOP                                         ;a6ae
        ADC     a,l                                 ;a6af
        INC     bc                                  ;a6b0
        DEC     b                                   ;a6b1
        ADD     hl,bc                               ;a6b2
        JR      bC_la6edh                           ;a6b3
        LD      (hl),b                              ;a6b5
        LD      a,h                                 ;a6b6
        LD      d,(hl)                              ;a6b7
        LD      d,b                                 ;a6b8
        LD      d,c                                 ;a6b9
        JR      nz,bC_la6dfh                        ;a6ba
        INC     d                                   ;a6bc
        INC     bc                                  ;a6bd
        NOP                                         ;a6be
        AND     a                                   ;a6bf
        RET     nz                                  ;a6c0
        AND     b                                   ;a6c1
        SUB     b                                   ;a6c2
        JR      $+30                                ;a6c3
        LD      c,0x3e                              ;a6c5
        LD      l,d                                 ;a6c7
        LD      a,(de)                              ;a6c8
        SBC     a,d                                 ;a6c9
        INC     h                                   ;a6ca
        CALL    nz,0x1028                           ;a6cb
        INC     c                                   ;a6ce
        LD      a,a                                 ;a6cf
        RET     nz                                  ;a6d0
        ADD     a,b                                 ;a6d1
        JP      0x7bfe                              ;a6d2
        JR      c,bC_la713h                         ;a6d5
        RRA                                         ;a6d7
        RRA                                         ;a6d8
        CCF                                         ;a6d9
        CCF                                         ;a6da
        LD      a,a                                 ;a6db
        LD      a,a                                 ;a6dc
        EX      af,af'                              ;a6dd
        INC     a                                   ;a6de
bC_la6dfh:
        JP      nz,0xd01                            ;a6df
        DI                                          ;a6e2
        LD      h,c                                 ;a6e3
        LD      (bc),a                              ;a6e4
        LD      b,0x7e                              ;a6e5
        INC     b                                   ;a6e7
        CALL    m,0xfe02                            ;a6e8
        AND     b                                   ;a6eb
        RRCA                                        ;a6ec
bC_la6edh:
        INC     bc                                  ;a6ed
        NOP                                         ;a6ee
        CCF                                         ;a6ef
        LD      a,a                                 ;a6f0
        INC     a                                   ;a6f1
        LD      bc,0x704                            ;a6f2
        INC     bc                                  ;a6f5
        NOP                                         ;a6f6
        JR      bC_la6ffh                           ;a6f7
        LD      bc,0x603                            ;a6f9
        RET     p                                   ;a6fc
        RET     nz                                  ;a6fd
        INC     a                                   ;a6fe
bC_la6ffh:
        CP      0xf2                                ;a6ff
        INC     c                                   ;a701
        SBC     a,(hl)                              ;a702
        CALL    m,0x80f8                            ;a703
        NOP                                         ;a706
        INC     c                                   ;a707
        OR      b                                   ;a708
        LD      b,b                                 ;a709
        LD      h,b                                 ;a70a
        JR      nc,bC_la713h                        ;a70b
        NOP                                         ;a70d
        ADC     a,d                                 ;a70e
        LD      (bc),a                              ;a70f
        LD      b,0x7                               ;a710
        RLCA                                        ;a712
bC_la713h:
        RRCA                                        ;a713
        INC     bc                                  ;a714
        ADD     hl,hl                               ;a715
        CPL                                         ;a716
        LD      l,0x1f                              ;a717
        LD      b,0x0                               ;a719
        ADC     a,d                                 ;a71b
        LD      b,b                                 ;a71c
        LD      h,b                                 ;a71d
        RET     po                                  ;a71e
        RET     po                                  ;a71f
        RET     p                                   ;a720
        RET     nz                                  ;a721
        SUB     h                                   ;a722
        CALL    p,0xf874                            ;a723
        DEC     b                                   ;a726
        NOP                                         ;a727
        ADC     a,e                                 ;a728
        INC     bc                                  ;a729
        DEC     b                                   ;a72a
        ADD     hl,bc                               ;a72b
        JR      bC_la766h                           ;a72c
        LD      (hl),b                              ;a72e
        LD      a,h                                 ;a72f
        LD      d,(hl)                              ;a730
        LD      d,b                                 ;a731
        LD      d,c                                 ;a732
        JR      nz,bC_la73ah                        ;a733
        NOP                                         ;a735
        SET     0,b                                 ;a736
        AND     b                                   ;a738
        SUB     b                                   ;a739
bC_la73ah:
        JR      bC_la758h                           ;a73a
        LD      c,0x3e                              ;a73c
        LD      l,d                                 ;a73e
        LD      a,(de)                              ;a73f
        SBC     a,d                                 ;a740
        INC     h                                   ;a741
        INC     hl                                  ;a742
        SCF                                         ;a743
        LD      (hl),b                              ;a744
        CALL    m,0xccfb                            ;a745
        ADC     a,(hl)                              ;a748
        ADD     a,a                                 ;a749
        ADD     a,a                                 ;a74a
        LD      b,b                                 ;a74b
        LD      hl,0x1811                           ;a74c
        LD      e,0x3f                              ;a74f
        CCF                                         ;a751
        CALL    nz,0xeec                            ;a752
        SCF                                         ;a755
        RST     OUTDO                               ;a756
        CCF                                         ;a757
bC_la758h:
        LD      a,a                                 ;a758
        RST     KEYINT                              ;a759
        EI                                          ;a75a
        LD      (hl),c                              ;a75b
        OR      c                                   ;a75c
        POP     hl                                  ;a75d
        JP      po,0xc326                           ;a75e
        CP      c                                   ;a761
        INC     e                                   ;a762
        EX      af,af'                              ;a763
        RRCA                                        ;a764
        INC     bc                                  ;a765
bC_la766h:
        INC     c                                   ;a766
        SCF                                         ;a767
        LD      (hl),e                              ;a768
        LD      a,c                                 ;a769
        LD      a,b                                 ;a76a
        CCF                                         ;a76b
        LD      e,0xe                               ;a76c
        RLA                                         ;a76e
        LD      de,0x300                            ;a76f
        JR      c,$+18                              ;a772
        RET     p                                   ;a774
        RET     z                                   ;a775
        JR      nc,bC_la758h                        ;a776
        RET     nz                                  ;a778
        ADD     a,b                                 ;a779
        INC     b                                   ;a77a
        ADC     a,(hl)                              ;a77b
        LD      c,(hl)                              ;a77c
        LD      e,0x1c                              ;a77d
        RET     c                                   ;a77f
        INC     a                                   ;a780
        LD      b,(hl)                              ;a781
        NOP                                         ;a782
        LD      sp,0x200                            ;a783
        DJNZ    bC_la78bh                           ;a786
        NOP                                         ;a788
        LD      (bc),a                              ;a789
        LD      (bc),a                              ;a78a
bC_la78bh:
        ADD     a,(hl)                              ;a78b
        NOP                                         ;a78c
        LD      bc,0x201                            ;a78d
        INC     c                                   ;a790
        JR      nc,bC_la797h                        ;a791
        NOP                                         ;a793
        ADD     a,e                                 ;a794
        INC     bc                                  ;a795
        RLCA                                        ;a796
bC_la797h:
        INC     bc                                  ;a797
        LD      c,0x0                               ;a798
        ADD     a,c                                 ;a79a
        RET     nz                                  ;a79b
        DEC     c                                   ;a79c
        NOP                                         ;a79d
        ADD     a,l                                 ;a79e
        INC     bc                                  ;a79f
        INC     b                                   ;a7a0
        EX      af,af'                              ;a7a1
        INC     b                                   ;a7a2
        INC     bc                                  ;a7a3
        INC     c                                   ;a7a4
        NOP                                         ;a7a5
        ADD     a,h                                 ;a7a6
        RET     nz                                  ;a7a7
        NOP                                         ;a7a8
        CP      b                                   ;a7a9
        JR      c,bC_la7afh                         ;a7aa
        NOP                                         ;a7ac
        LD      (bc),a                              ;a7ad
        INC     b                                   ;a7ae
bC_la7afh:
        ADC     a,d                                 ;a7af
        NOP                                         ;a7b0
        LD      (bc),a                              ;a7b1
        LD      (bc),a                              ;a7b2
        INC     b                                   ;a7b3
        JR      c,bC_la7b6h                         ;a7b4
bC_la7b6h:
        RLCA                                        ;a7b6
        RRCA                                        ;a7b7
        RRCA                                        ;a7b8
        RLCA                                        ;a7b9
        DEC     c                                   ;a7ba
        NOP                                         ;a7bb
        ADD     a,h                                 ;a7bc
        ADD     a,b                                 ;a7bd
        RET     nz                                  ;a7be
        NOP                                         ;a7bf
        JR      c,bC_la7cch                         ;a7c0
        NOP                                         ;a7c2
        ADD     a,(hl)                              ;a7c3
        RLCA                                        ;a7c4
        EX      af,af'                              ;a7c5
        DJNZ    bC_la7d8h                           ;a7c6
        EX      af,af'                              ;a7c8
        RLCA                                        ;a7c9
        DEC     bc                                  ;a7ca
        NOP                                         ;a7cb
bC_la7cch:
        ADD     a,l                                 ;a7cc
        ADD     a,b                                 ;a7cd
        LD      b,b                                 ;a7ce
        NOP                                         ;a7cf
        LD      a,h                                 ;a7d0
        LD      a,h                                 ;a7d1
        INC     bc                                  ;a7d2
        NOP                                         ;a7d3
        LD      (bc),a                              ;a7d4
        INC     b                                   ;a7d5
        ADD     a,l                                 ;a7d6
        NOP                                         ;a7d7
bC_la7d8h:
        LD      (bc),a                              ;a7d8
        LD      (bc),a                              ;a7d9
        INC     b                                   ;a7da
        JR      c,bC_la7ddh                         ;a7db
bC_la7ddh: equ     #a7dd
