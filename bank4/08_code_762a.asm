b4_l762ah:
        DEC     bc                                  ;762a
        CP      e                                   ;762b
        CP      e                                   ;762c
        RLCA                                        ;762d
        NOP                                         ;762e
        DEC     bc                                  ;762f
        CP      e                                   ;7630
        LD      (hl),a                              ;7631
        LD      (hl),a                              ;7632
        NOP                                         ;7633
        DEC     bc                                  ;7634
b4_l7635h:
        LD      (hl),a                              ;7635
        LD      (hl),a                              ;7636
        LD      a,(b4_l7700h)                       ;7637
        LD      (hl),a                              ;763a
        LD      (hl),e                              ;763b
        AND     b                                   ;763c
        INC     sp                                  ;763d
        INC     sp                                  ;763e
        LD      (hl),a                              ;763f
        LD      (hl),b                              ;7640
        INC     sp                                  ;7641
        INC     sp                                  ;7642
        INC     bc                                  ;7643
        LD      (hl),a                              ;7644
        INC     bc                                  ;7645
        INC     sp                                  ;7646
        INC     sp                                  ;7647
        SCF                                         ;7648
        DJNZ    b4_l7606h                           ;7649
        SUB     b                                   ;764b
        OR      b                                   ;764c
        DEC     bc                                  ;764d
        CP      e                                   ;764e
        CP      e                                   ;764f
        LD      a,(bc)                              ;7650
        NOP                                         ;7651
        DEC     bc                                  ;7652
        CP      e                                   ;7653
        INC     sp                                  ;7654
        LD      a,d                                 ;7655
        NOP                                         ;7656
        NOP                                         ;7657
        INC     bc                                  ;7658
        LD      a,d                                 ;7659
        NOP                                         ;765a
        NOP                                         ;765b
        DEC     bc                                  ;765c
        CP      e                                   ;765d
        SUB     l                                   ;765e
        OR      b                                   ;765f
        CP      e                                   ;7660
        CP      e                                   ;7661
        NOP                                         ;7662
        NOP                                         ;7663
        CP      e                                   ;7664
        NOP                                         ;7665
        INC     bc                                  ;7666
        LD      a,(0x0)                             ;7667
        INC     sp                                  ;766a
        XOR     d                                   ;766b
        NOP                                         ;766c
        XOR     d                                   ;766d
        INC     sp                                  ;766e
        NOP                                         ;766f
        LD      a,(bc)                              ;7670
        XOR     d                                   ;7671
        NOP                                         ;7672
        LD      a,(bc)                              ;7673
        DEC     b                                   ;7674
        CP      e                                   ;7675
        DEC     b                                   ;7676
        NOP                                         ;7677
        SUB     (hl)                                ;7678
        INC     bc                                  ;7679
        NOP                                         ;767a
        LD      a,(bc)                              ;767b
        JR      nc,b4_l76b1h                        ;767c
        JR      nc,b4_l762ah                        ;767e
        AND     e                                   ;7680
        INC     sp                                  ;7681
        INC     sp                                  ;7682
        LD      a,(bc)                              ;7683
        JR      nc,b4_l7689h                        ;7684
        INC     bc                                  ;7686
        AND     b                                   ;7687
        INC     bc                                  ;7688
b4_l7689h:
        INC     sp                                  ;7689
        INC     sp                                  ;768a
        XOR     d                                   ;768b
        XOR     d                                   ;768c
        NOP                                         ;768d
        NOP                                         ;768e
        EX      af,af'                              ;768f
        CP      e                                   ;7690
        ADC     a,b                                 ;7691
        NOP                                         ;7692
        DEC     bc                                  ;7693
        CP      e                                   ;7694
        CP      e                                   ;7695
        LD      a,(bc)                              ;7696
b4_l7697h:
        NOP                                         ;7697
        DEC     bc                                  ;7698
        CP      e                                   ;7699
        INC     bc                                  ;769a
        NOP                                         ;769b
        ADC     a,b                                 ;769c
b4_l769dh:
        CP      e                                   ;769d
        NOP                                         ;769e
b4_l769fh:
        AND     b                                   ;769f
        AND     b                                   ;76a0
        DEC     bc                                  ;76a1
        NOP                                         ;76a2
        NOP                                         ;76a3
        INC     bc                                  ;76a4
        DEC     b                                   ;76a5
        NOP                                         ;76a6
        LD      (bc),a                              ;76a7
        INC     sp                                  ;76a8
        ADD     a,e                                 ;76a9
        JR      nc,b4_l76dfh                        ;76aa
        INC     bc                                  ;76ac
        INC     bc                                  ;76ad
        JR      nc,b4_l7635h                        ;76ae
        INC     sp                                  ;76b0
b4_l76b1h:
        JR      nc,b4_l76b6h                        ;76b1
        NOP                                         ;76b3
        INC     bc                                  ;76b4
        EX      af,af'                              ;76b5
b4_l76b6h:
        NOP                                         ;76b6
        ADC     a,e                                 ;76b7
        RLCA                                        ;76b8
        LD      (hl),a                              ;76b9
        LD      (hl),b                              ;76ba
        NOP                                         ;76bb
        LD      (hl),e                              ;76bc
        AND     a                                   ;76bd
        LD      (hl),a                              ;76be
        LD      (hl),a                              ;76bf
        LD      a,(b4_sub_7777h)                    ;76c0
        INC     bc                                  ;76c3
        CP      e                                   ;76c4
        ADD     a,c                                 ;76c5
        OR      b                                   ;76c6
        INC     bc                                  ;76c7
        CP      e                                   ;76c8
        RST     KEYINT                              ;76c9
        NOP                                         ;76ca
        CP      e                                   ;76cb
        CP      e                                   ;76cc
        OR      b                                   ;76cd
        RLCA                                        ;76ce
        CP      e                                   ;76cf
        CP      e                                   ;76d0
        OR      b                                   ;76d1
        INC     sp                                  ;76d2
        CP      e                                   ;76d3
        CP      e                                   ;76d4
        NOP                                         ;76d5
        INC     sp                                  ;76d6
        CP      e                                   ;76d7
        OR      b                                   ;76d8
        RLCA                                        ;76d9
        XOR     d                                   ;76da
        CP      e                                   ;76db
        NOP                                         ;76dc
        LD      a,d                                 ;76dd
        XOR     d                                   ;76de
b4_l76dfh:
        OR      b                                   ;76df
        INC     bc                                  ;76e0
        LD      a,(bc)                              ;76e1
        AND     b                                   ;76e2
        INC     sp                                  ;76e3
        XOR     d                                   ;76e4
        XOR     d                                   ;76e5
        AND     b                                   ;76e6
        LD      a,(0xa7a)                           ;76e7
        AND     e                                   ;76ea
        LD      (hl),a                              ;76eb
        AND     a                                   ;76ec
        AND     b                                   ;76ed
        JR      nc,b4_l7697h                        ;76ee
        AND     b                                   ;76f0
        JR      nc,b4_l769dh                        ;76f1
        AND     b                                   ;76f3
        INC     sp                                  ;76f4
        AND     e                                   ;76f5
        XOR     d                                   ;76f6
        JR      nc,b4_l7703h                        ;76f7
        AND     b                                   ;76f9
        LD      a,(bc)                              ;76fa
        LD      (hl),a                              ;76fb
        XOR     d                                   ;76fc
        JR      nc,b4_l769fh                        ;76fd
        LD      (hl),a                              ;76ff
b4_l7700h:
        LD      (hl),a                              ;7700
        LD      (hl),b                              ;7701
        INC     sp                                  ;7702
b4_l7703h:
        NOP                                         ;7703
        LD      a,(0x333)                           ;7704
        AND     e                                   ;7707
        INC     bc                                  ;7708
        JR      nc,b4_l773eh                        ;7709
        INC     bc                                  ;770b
        INC     sp                                  ;770c
b4_l770dh:
        AND     e                                   ;770d
        JR      nc,b4_l7743h                        ;770e
        NOP                                         ;7710
        NOP                                         ;7711
        XOR     d                                   ;7712
        XOR     d                                   ;7713
        AND     b                                   ;7714
        JR      nc,b4_l7747h                        ;7715
        AND     b                                   ;7717
        AND     b                                   ;7718
        INC     sp                                  ;7719
        INC     bc                                  ;771a
        AND     b                                   ;771b
        INC     bc                                  ;771c
        INC     bc                                  ;771d
        INC     sp                                  ;771e
        INC     bc                                  ;771f
        INC     sp                                  ;7720
        JR      nc,b4_l7753h                        ;7721
        INC     sp                                  ;7723
        INC     sp                                  ;7724
        NOP                                         ;7725
        INC     sp                                  ;7726
        INC     bc                                  ;7727
        INC     sp                                  ;7728
        INC     bc                                  ;7729
        AND     b                                   ;772a
        INC     sp                                  ;772b
        INC     sp                                  ;772c
        JR      nc,b4_l7736h                        ;772d
        INC     sp                                  ;772f
        INC     bc                                  ;7730
        INC     bc                                  ;7731
        LD      (hl),b                              ;7732
        JR      nc,b4_l7765h                        ;7733
        RLCA                                        ;7735
b4_l7736h:
        XOR     d                                   ;7736
        NOP                                         ;7737
        NOP                                         ;7738
        SCF                                         ;7739
        NOP                                         ;773a
        INC     sp                                  ;773b
        INC     bc                                  ;773c
        LD      (hl),b                              ;773d
b4_l773eh:
        NOP                                         ;773e
        NOP                                         ;773f
        LD      (hl),a                              ;7740
        NOP                                         ;7741
        LD      a,(bc)                              ;7742
b4_l7743h:
        SCF                                         ;7743
        LD      a,d                                 ;7744
        NOP                                         ;7745
        NOP                                         ;7746
b4_l7747h:
        LD      (hl),a                              ;7747
        AND     b                                   ;7748
        OR      d                                   ;7749
        NOP                                         ;774a
        XOR     d                                   ;774b
        XOR     d                                   ;774c
        NOP                                         ;774d
        XOR     d                                   ;774e
        AND     b                                   ;774f
        NOP                                         ;7750
        LD      a,(bc)                              ;7751
        XOR     d                                   ;7752
b4_l7753h:
        XOR     d                                   ;7753
        NOP                                         ;7754
        LD      a,(bc)                              ;7755
        XOR     d                                   ;7756
        NOP                                         ;7757
        NOP                                         ;7758
        AND     b                                   ;7759
        AND     b                                   ;775a
        XOR     d                                   ;775b
        LD      a,(bc)                              ;775c
        XOR     d                                   ;775d
        XOR     d                                   ;775e
        AND     b                                   ;775f
        XOR     d                                   ;7760
        XOR     d                                   ;7761
        LD      a,(bc)                              ;7762
        XOR     d                                   ;7763
        AND     b                                   ;7764
b4_l7765h:
        NOP                                         ;7765
        LD      a,(bc)                              ;7766
        INC     sp                                  ;7767
        AND     b                                   ;7768
        NOP                                         ;7769
        INC     sp                                  ;776a
        JR      nc,b4_l770dh                        ;776b
        INC     sp                                  ;776d
        JR      nc,b4_l7773h                        ;776e
        XOR     d                                   ;7770
        AND     b                                   ;7771
        INC     bc                                  ;7772
b4_l7773h:
        NOP                                         ;7773
        NOP                                         ;7774
        JR      nc,b4_sub_7777h                     ;7775
b4_sub_7777h:
        INC     bc                                  ;7777
        INC     bc                                  ;7778
        INC     sp                                  ;7779
        INC     sp                                  ;777a
        INC     bc                                  ;777b
        INC     bc                                  ;777c
        INC     sp                                  ;777d
        LD      (bc),a                              ;777e
        NOP                                         ;777f
        ADD     a,h                                 ;7780
        INC     bc                                  ;7781
        JR      nc,b4_l77b4h                        ;7782
        INC     sp                                  ;7784
        INC     bc                                  ;7785
        NOP                                         ;7786
        ADD     a,l                                 ;7787
        INC     sp                                  ;7788
        JR      nc,b4_l778bh                        ;7789
b4_l778bh:
        NOP                                         ;778b
        INC     bc                                  ;778c
        INC     bc                                  ;778d
        NOP                                         ;778e
        ADC     a,e                                 ;778f
        JR      nc,$+5                              ;7790
        NOP                                         ;7792
        NOP                                         ;7793
        JR      nc,$+5                              ;7794
        NOP                                         ;7796
        INC     bc                                  ;7797
        JR      nc,b4_l77cah                        ;7798
        INC     sp                                  ;779a
        INC     bc                                  ;779b
b4_l779ch:
        NOP                                         ;779c
        ADD     a,(hl)                              ;779d
        JR      nc,b4_l77a0h                        ;779e
b4_l77a0h:
        INC     bc                                  ;77a0
        INC     sp                                  ;77a1
        INC     sp                                  ;77a2
        JR      nc,b4_l77bah                        ;77a3
        NOP                                         ;77a5
        ADD     a,h                                 ;77a6
        ADC     a,0xee                              ;77a7
        XOR     0x0                                 ;77a9
        INC     bc                                  ;77ab
        CALL    z,SETMLT                            ;77ac
        INC     bc                                  ;77af
        LD      (hl),a                              ;77b0
        RLCA                                        ;77b1
        NOP                                         ;77b2
        ADD     a,c                                 ;77b3
b4_l77b4h:
        LD      a,(bc)                              ;77b4
        RLCA                                        ;77b5
        NOP                                         ;77b6
        ADD     a,c                                 ;77b7
        LD      (hl),a                              ;77b8
        INC     bc                                  ;77b9
b4_l77bah:
        NOP                                         ;77ba
        ADD     a,l                                 ;77bb
        LD      (hl),a                              ;77bc
        NOP                                         ;77bd
        NOP                                         ;77be
        LD      a,(bc)                              ;77bf
        XOR     d                                   ;77c0
b4_l77c1h:
        LD      b,0x0                               ;77c1
        LD      (bc),a                              ;77c3
        LD      (hl),a                              ;77c4
        LD      (bc),a                              ;77c5
        NOP                                         ;77c6
b4_sub_77c7h:
        LD      (bc),a                              ;77c7
        LD      (hl),a                              ;77c8
        ADD     a,h                                 ;77c9
b4_l77cah:
        NOP                                         ;77ca
        LD      a,(bc)                              ;77cb
        XOR     d                                   ;77cc
        XOR     d                                   ;77cd
        DEC     b                                   ;77ce
        NOP                                         ;77cf
        INC     bc                                  ;77d0
        LD      (hl),a                              ;77d1
        ADD     a,c                                 ;77d2
        NOP                                         ;77d3
        INC     bc                                  ;77d4
        LD      (hl),a                              ;77d5
        ADD     a,c                                 ;77d6
        LD      a,(bc)                              ;77d7
        INC     bc                                  ;77d8
        XOR     d                                   ;77d9
        INC     b                                   ;77da
        NOP                                         ;77db
        INC     b                                   ;77dc
        LD      (hl),a                              ;77dd
        RRCA                                        ;77de
        CP      e                                   ;77df
        OR      c                                   ;77e0
        NOP                                         ;77e1
        CP      e                                   ;77e2
        CP      e                                   ;77e3
        NOP                                         ;77e4
        NOP                                         ;77e5
        CP      e                                   ;77e6
        OR      b                                   ;77e7
        LD      a,(bc)                              ;77e8
        AND     a                                   ;77e9
        CP      e                                   ;77ea
        NOP                                         ;77eb
        XOR     d                                   ;77ec
        XOR     d                                   ;77ed
        NOP                                         ;77ee
        INC     bc                                  ;77ef
        LD      a,(0xbbaa)                          ;77f0
        OR      b                                   ;77f3
        RLCA                                        ;77f4
        LD      (hl),a                              ;77f5
        CP      e                                   ;77f6
        NOP                                         ;77f7
        LD      (hl),a                              ;77f8
        LD      (hl),e                              ;77f9
        OR      b                                   ;77fa
        RLCA                                        ;77fb
        LD      a,d                                 ;77fc
        XOR     d                                   ;77fd
        NOP                                         ;77fe
        LD      (hl),a                              ;77ff
        LD      (hl),a                              ;7800
        LD      a,d                                 ;7801
        LD      a,d                                 ;7802
        AND     a                                   ;7803
        LD      (hl),a                              ;7804
        XOR     d                                   ;7805
        LD      (hl),a                              ;7806
        XOR     d                                   ;7807
        AND     a                                   ;7808
        LD      a,d                                 ;7809
        LD      (hl),a                              ;780a
        XOR     d                                   ;780b
        AND     e                                   ;780c
        LD      a,d                                 ;780d
        LD      (hl),a                              ;780e
        XOR     d                                   ;780f
        AND     e                                   ;7810
        JR      nc,b4_l7823h                        ;7811
        CP      e                                   ;7813
        ADD     a,c                                 ;7814
        DEC     bc                                  ;7815
        INC     bc                                  ;7816
        CP      e                                   ;7817
        ADD     a,c                                 ;7818
        NOP                                         ;7819
        INC     bc                                  ;781a
        CP      e                                   ;781b
        ADC     a,b                                 ;781c
        LD      (hl),b                              ;781d
        DEC     bc                                  ;781e
        CP      e                                   ;781f
        CP      e                                   ;7820
        LD      (hl),a                              ;7821
        NOP                                         ;7822
b4_l7823h:
        CP      e                                   ;7823
        CP      e                                   ;7824
        NOP                                         ;7825
        JR      nz,b4_l77c1h                        ;7826
        INC     bc                                  ;7828
        NOP                                         ;7829
        RST     KEYINT                              ;782a
        LD      (0x0),hl                            ;782b
        LD      (bc),a                              ;782e
        LD      (0x200),hl                          ;782f
        LD      (bc),a                              ;7832
        JP      p,0x200                             ;7833
        LD      (0xf2),hl                           ;7836
        LD      (HNTFN),hl                          ;7839
        NOP                                         ;783c
        CPL                                         ;783d
        CPL                                         ;783e
        DEFB    0xdd,0x2,0x2f                       ;783f
        DEFB    0xfd,0xff,0x2                       ;7842
        DEC     l                                   ;7845
        DEFB    0xdd,0xdf,0x22                      ;7846
        JR      nz,b4_l784bh                        ;7849
b4_l784bh:
        NOP                                         ;784b
        LD      (0x20),hl                           ;784c
        NOP                                         ;784f
        LD      (0x2022),hl                         ;7850
        NOP                                         ;7853
        JP      p,0x2222                            ;7854
        NOP                                         ;7857
        RST     KEYINT                              ;7858
        LD      (0x22),hl                           ;7859
        JP      p,0x22f2                            ;785c
        NOP                                         ;785f
        RST     KEYINT                              ;7860
        CPL                                         ;7861
        LD      (HCRUN),hl                          ;7862
        RST     KEYINT                              ;7865
        LD      (HCRUN),hl                          ;7866
        CPL                                         ;7869
        RST     OUTDO                               ;786a
        LD      (0xfdd2),hl                         ;786b
        JP      p,0x2d22                            ;786e
        JP      nc,0xf2f2                           ;7871
        JP      nc,0x22d2                           ;7874
        JP      p,0x22dd                            ;7877
        CPL                                         ;787a
        RST     KEYINT                              ;787b
        DEFB    0xdd,0x2f,0x2f                      ;787c
        DEFB    0xdd,0xd2,0x2f                      ;787f
        DEFB    0xfd,0xff,0xf2                      ;7882
        DEC     l                                   ;7885
        DEFB    0xdd,0xdf,0x22                      ;7886
        DEC     l                                   ;7889
        JP      nc,0x22dd                           ;788a
        CPL                                         ;788d
        RST     OUTDO                               ;788e
        RST     KEYINT                              ;788f
        LD      (0x2d22),hl                         ;7890
