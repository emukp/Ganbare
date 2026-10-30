b5_l86c3h:
        RLCA                                        ;86c3
        XOR     d                                   ;86c4
        ADD     a,c                                 ;86c5
        AND     b                                   ;86c6
        INC     bc                                  ;86c7
        XOR     d                                   ;86c8
        SUB     l                                   ;86c9
        RLCA                                        ;86ca
        XOR     d                                   ;86cb
        XOR     d                                   ;86cc
        NOP                                         ;86cd
        LD      (hl),l                              ;86ce
        XOR     d                                   ;86cf
        AND     b                                   ;86d0
        LD      d,l                                 ;86d1
        LD      d,a                                 ;86d2
        XOR     d                                   ;86d3
        DEC     b                                   ;86d4
        LD      d,a                                 ;86d5
        LD      d,l                                 ;86d6
        AND     b                                   ;86d7
        LD      (hl),a                              ;86d8
        LD      (hl),a                              ;86d9
        LD      d,l                                 ;86da
        RLCA                                        ;86db
        LD      (hl),a                              ;86dc
        LD      (hl),a                              ;86dd
        DEC     b                                   ;86de
        INC     b                                   ;86df
        XOR     d                                   ;86e0
        ADD     a,c                                 ;86e1
        NOP                                         ;86e2
        INC     bc                                  ;86e3
        XOR     d                                   ;86e4
        SBC     a,b                                 ;86e5
        LD      d,l                                 ;86e6
        NOP                                         ;86e7
        XOR     d                                   ;86e8
        XOR     d                                   ;86e9
        LD      d,l                                 ;86ea
        LD      d,l                                 ;86eb
        NOP                                         ;86ec
        XOR     d                                   ;86ed
        LD      (hl),l                              ;86ee
        LD      d,a                                 ;86ef
        LD      d,l                                 ;86f0
        LD      a,(bc)                              ;86f1
        LD      (hl),a                              ;86f2
        LD      d,a                                 ;86f3
        LD      (hl),a                              ;86f4
        LD      (hl),b                              ;86f5
        RLCA                                        ;86f6
        LD      (hl),a                              ;86f7
        RLCA                                        ;86f8
        LD      (hl),a                              ;86f9
        LD      (hl),a                              ;86fa
        RLCA                                        ;86fb
        LD      (hl),a                              ;86fc
        RLCA                                        ;86fd
        RLCA                                        ;86fe
        XOR     d                                   ;86ff
        ADD     a,c                                 ;8700
        AND     b                                   ;8701
        INC     bc                                  ;8702
        XOR     d                                   ;8703
        SUB     c                                   ;8704
        RLCA                                        ;8705
        XOR     d                                   ;8706
        XOR     d                                   ;8707
        NOP                                         ;8708
        LD      (hl),l                              ;8709
        XOR     d                                   ;870a
        NOP                                         ;870b
        LD      d,l                                 ;870c
        LD      d,a                                 ;870d
        AND     b                                   ;870e
        LD      d,l                                 ;870f
        LD      d,a                                 ;8710
        LD      d,l                                 ;8711
        DEC     b                                   ;8712
        LD      (hl),a                              ;8713
        LD      (hl),a                              ;8714
        LD      d,l                                 ;8715
        INC     bc                                  ;8716
        LD      (hl),a                              ;8717
        ADD     a,c                                 ;8718
        DEC     b                                   ;8719
        INC     b                                   ;871a
        XOR     d                                   ;871b
        ADD     a,c                                 ;871c
        NOP                                         ;871d
        INC     bc                                  ;871e
        XOR     d                                   ;871f
        CP      b                                   ;8720
        LD      d,l                                 ;8721
        NOP                                         ;8722
        XOR     d                                   ;8723
        XOR     d                                   ;8724
        LD      d,l                                 ;8725
        LD      d,l                                 ;8726
        NOP                                         ;8727
        XOR     d                                   ;8728
        LD      (hl),l                              ;8729
        LD      d,a                                 ;872a
        LD      d,l                                 ;872b
        NOP                                         ;872c
        LD      (hl),a                              ;872d
        LD      d,a                                 ;872e
        LD      (hl),a                              ;872f
        LD      (hl),l                              ;8730
        RLCA                                        ;8731
        LD      (hl),a                              ;8732
        RLCA                                        ;8733
        LD      (hl),a                              ;8734
        LD      (hl),a                              ;8735
        RLCA                                        ;8736
        LD      (hl),a                              ;8737
        RLCA                                        ;8738
        XOR     d                                   ;8739
        AND     b                                   ;873a
        NOP                                         ;873b
        XOR     d                                   ;873c
        XOR     d                                   ;873d
        DEC     b                                   ;873e
        LD      d,l                                 ;873f
        LD      a,(bc)                              ;8740
        AND     b                                   ;8741
        LD      d,l                                 ;8742
        LD      d,l                                 ;8743
        LD      d,b                                 ;8744
        DEC     b                                   ;8745
        LD      d,a                                 ;8746
        LD      d,l                                 ;8747
        LD      d,l                                 ;8748
        LD      (hl),a                              ;8749
        LD      d,a                                 ;874a
        DEC     b                                   ;874b
        LD      (hl),a                              ;874c
        RLCA                                        ;874d
        LD      (hl),b                              ;874e
        LD      (hl),a                              ;874f
        LD      d,a                                 ;8750
        LD      d,b                                 ;8751
        NOP                                         ;8752
        LD      (hl),a                              ;8753
        LD      d,a                                 ;8754
        LD      (hl),a                              ;8755
        NOP                                         ;8756
        RLCA                                        ;8757
        LD      (hl),l                              ;8758
        EX      af,af'                              ;8759
        XOR     d                                   ;875a
        ADD     a,c                                 ;875b
        LD      a,(bc)                              ;875c
        INC     bc                                  ;875d
        XOR     d                                   ;875e
        SUB     h                                   ;875f
        LD      d,b                                 ;8760
        LD      a,(bc)                              ;8761
        XOR     d                                   ;8762
        XOR     d                                   ;8763
        LD      d,l                                 ;8764
        LD      d,b                                 ;8765
        XOR     d                                   ;8766
        XOR     d                                   ;8767
        LD      (hl),a                              ;8768
        LD      d,l                                 ;8769
        LD      a,(bc)                              ;876a
        XOR     d                                   ;876b
        LD      (hl),b                              ;876c
        LD      (hl),a                              ;876d
        LD      d,b                                 ;876e
        XOR     d                                   ;876f
        LD      (hl),a                              ;8770
        LD      (hl),a                              ;8771
        LD      d,l                                 ;8772
        NOP                                         ;8773
        INC     bc                                  ;8774
        XOR     d                                   ;8775
        ADD     a,c                                 ;8776
        AND     b                                   ;8777
        INC     bc                                  ;8778
        XOR     d                                   ;8779
        SUB     d                                   ;877a
        RLCA                                        ;877b
        XOR     d                                   ;877c
        XOR     d                                   ;877d
        AND     b                                   ;877e
        LD      (hl),a                              ;877f
        XOR     d                                   ;8780
        AND     b                                   ;8781
        RLCA                                        ;8782
        LD      (hl),l                              ;8783
        XOR     d                                   ;8784
        RLCA                                        ;8785
        LD      d,l                                 ;8786
        LD      (hl),a                              ;8787
        RET     po                                  ;8788
        LD      d,l                                 ;8789
        LD      (hl),a                              ;878a
        NOP                                         ;878b
        RLCA                                        ;878c
        DEC     b                                   ;878d
        NOP                                         ;878e
        ADD     a,d                                 ;878f
        LD      c,0x0                               ;8790
        INC     bc                                  ;8792
        LD      (hl),b                              ;8793
        LD      (bc),a                              ;8794
        LD      (hl),a                              ;8795
        LD      (bc),a                              ;8796
        NOP                                         ;8797
        ADD     a,(hl)                              ;8798
        RLCA                                        ;8799
        LD      (hl),b                              ;879a
        LD      (hl),b                              ;879b
        NOP                                         ;879c
        LD      (hl),b                              ;879d
        LD      (hl),b                              ;879e
        RRCA                                        ;879f
        NOP                                         ;87a0
        ADC     a,(hl)                              ;87a1
        DEC     bc                                  ;87a2
        AND     b                                   ;87a3
        LD      a,(bc)                              ;87a4
        OR      b                                   ;87a5
        LD      d,a                                 ;87a6
        LD      (hl),b                              ;87a7
        LD      (hl),a                              ;87a8
        LD      (hl),b                              ;87a9
        LD      d,a                                 ;87aa
        NOP                                         ;87ab
        NOP                                         ;87ac
        LD      (hl),b                              ;87ad
        LD      (hl),a                              ;87ae
        LD      (hl),b                              ;87af
        INC     bc                                  ;87b0
        NOP                                         ;87b1
        ADD     a,c                                 ;87b2
        LD      (hl),a                              ;87b3
        INC     bc                                  ;87b4
        NOP                                         ;87b5
        ADD     a,c                                 ;87b6
        RLCA                                        ;87b7
        LD      c,0x0                               ;87b8
        ADC     a,e                                 ;87ba
        RLCA                                        ;87bb
        LD      (hl),b                              ;87bc
        RLCA                                        ;87bd
        LD      (hl),l                              ;87be
        RLCA                                        ;87bf
        RLCA                                        ;87c0
        NOP                                         ;87c1
        LD      (hl),b                              ;87c2
        NOP                                         ;87c3
        LD      (hl),a                              ;87c4
        LD      (hl),b                              ;87c5
        INC     bc                                  ;87c6
        NOP                                         ;87c7
        ADD     a,c                                 ;87c8
        LD      (hl),b                              ;87c9
        LD      de,0x9400                           ;87ca
        LD      (hl),a                              ;87cd
        RLCA                                        ;87ce
        LD      (hl),l                              ;87cf
        LD      d,a                                 ;87d0
        RLCA                                        ;87d1
        LD      (hl),a                              ;87d2
        RLCA                                        ;87d3
        LD      (hl),b                              ;87d4
        NOP                                         ;87d5
        LD      (hl),a                              ;87d6
        RLCA                                        ;87d7
        RLCA                                        ;87d8
        NOP                                         ;87d9
        NOP                                         ;87da
        RLCA                                        ;87db
        LD      (hl),b                              ;87dc
        NOP                                         ;87dd
        NOP                                         ;87de
        RLCA                                        ;87df
        LD      (hl),a                              ;87e0
        INC     bc                                  ;87e1
        NOP                                         ;87e2
        ADD     a,c                                 ;87e3
        RLCA                                        ;87e4
        EX      af,af'                              ;87e5
        NOP                                         ;87e6
        ADD     a,c                                 ;87e7
        LD      a,(bc)                              ;87e8
        INC     bc                                  ;87e9
        XOR     d                                   ;87ea
        ADD     a,c                                 ;87eb
        LD      d,b                                 ;87ec
        INC     bc                                  ;87ed
        XOR     d                                   ;87ee
        SUB     h                                   ;87ef
        LD      d,l                                 ;87f0
        NOP                                         ;87f1
        XOR     d                                   ;87f2
        XOR     d                                   ;87f3
        LD      d,l                                 ;87f4
        LD      d,l                                 ;87f5
        LD      a,(bc)                              ;87f6
        XOR     d                                   ;87f7
        LD      (hl),l                              ;87f8
        LD      d,a                                 ;87f9
        LD      d,b                                 ;87fa
        XOR     d                                   ;87fb
        LD      (hl),a                              ;87fc
        LD      d,a                                 ;87fd
        LD      (hl),a                              ;87fe
        LD      c,0x0                               ;87ff
        RLCA                                        ;8801
        RLCA                                        ;8802
        LD      (hl),b                              ;8803
        INC     b                                   ;8804
        NOP                                         ;8805
        ADD     a,h                                 ;8806
        XOR     0xaa                                ;8807
        XOR     d                                   ;8809
        XOR     0x8                                 ;880a
        XOR     d                                   ;880c
        ADC     a,b                                 ;880d
        XOR     (hl)                                ;880e
        XOR     0xae                                ;880f
        XOR     d                                   ;8811
        JP      pe,0xaaaa                           ;8812
        XOR     (hl)                                ;8815
        INC     c                                   ;8816
        XOR     d                                   ;8817
        ADD     a,h                                 ;8818
        XOR     0xea                                ;8819
        XOR     0xae                                ;881b
        LD      b,0xaa                              ;881d
        LD      (bc),a                              ;881f
        XOR     (hl)                                ;8820
        DEC     b                                   ;8821
        XOR     d                                   ;8822
        ADD     a,e                                 ;8823
        XOR     (hl)                                ;8824
        JP      pe,0xcee                            ;8825
        XOR     d                                   ;8828
        LD      (bc),a                              ;8829
        XOR     0x82                                ;882a
        XOR     d                                   ;882c
        XOR     0x4                                 ;882d
        XOR     d                                   ;882f
        ADD     a,c                                 ;8830
        XOR     0x8                                 ;8831
        XOR     d                                   ;8833
        ADD     a,e                                 ;8834
        JP      pe,0xeeaa                           ;8835
        INC     c                                   ;8838
        XOR     d                                   ;8839
        ADD     a,h                                 ;883a
        XOR     0xae                                ;883b
        XOR     0xee                                ;883d
        INC     b                                   ;883f
        XOR     d                                   ;8840
        ADD     a,e                                 ;8841
        XOR     (hl)                                ;8842
        XOR     0xee                                ;8843
        DEC     b                                   ;8845
        XOR     d                                   ;8846
        ADD     a,h                                 ;8847
        JP      pe,0xaeaa                           ;8848
        XOR     0x40                                ;884b
        XOR     d                                   ;884d
        EX      af,af'                              ;884e
        XOR     0x4                                 ;884f
        NOP                                         ;8851
        SBC     a,(hl)                              ;8852
        XOR     d                                   ;8853
        AND     b                                   ;8854
        NOP                                         ;8855
        NOP                                         ;8856
        XOR     d                                   ;8857
        AND     b                                   ;8858
        INC     c                                   ;8859
        CALL    z,0xa0aa                            ;885a
        RLCA                                        ;885d
        LD      (hl),a                              ;885e
        XOR     d                                   ;885f
        AND     b                                   ;8860
        RLCA                                        ;8861
        LD      (hl),a                              ;8862
        XOR     d                                   ;8863
        AND     b                                   ;8864
        NOP                                         ;8865
        NOP                                         ;8866
        XOR     d                                   ;8867
        XOR     d                                   ;8868
        NOP                                         ;8869
        LD      (hl),l                              ;886a
        XOR     d                                   ;886b
        XOR     d                                   ;886c
        NOP                                         ;886d
        LD      (hl),a                              ;886e
        XOR     d                                   ;886f
        XOR     d                                   ;8870
        LD      b,0x0                               ;8871
        INC     b                                   ;8873
        CALL    z,0x7797                            ;8874
        LD      (hl),b                              ;8877
        RLCA                                        ;8878
        LD      (hl),a                              ;8879
        LD      (hl),a                              ;887a
        DEC     b                                   ;887b
        LD      d,b                                 ;887c
        LD      (hl),a                              ;887d
        NOP                                         ;887e
        DEC     b                                   ;887f
b5_sub_8880h:
        LD      d,b                                 ;8880
        NOP                                         ;8881
        LD      d,l                                 ;8882
        DEC     b                                   ;8883
        LD      d,b                                 ;8884
        LD      d,l                                 ;8885
        LD      (hl),a                              ;8886
        DEC     b                                   ;8887
        LD      d,b                                 ;8888
        LD      (hl),a                              ;8889
        NOP                                         ;888a
        DEC     b                                   ;888b
        LD      d,b                                 ;888c
        INC     b                                   ;888d
        NOP                                         ;888e
        ADC     a,l                                 ;888f
        XOR     d                                   ;8890
        CALL    z,ERAFNK                            ;8891
        XOR     d                                   ;8894
        LD      (hl),a                              ;8895
        LD      (hl),a                              ;8896
        NOP                                         ;8897
        XOR     d                                   ;8898
        LD      (hl),a                              ;8899
        LD      (hl),a                              ;889a
        NOP                                         ;889b
        XOR     d                                   ;889c
        INC     bc                                  ;889d
        NOP                                         ;889e
        ADC     a,e                                 ;889f
        XOR     d                                   ;88a0
        LD      d,a                                 ;88a1
        NOP                                         ;88a2
        XOR     d                                   ;88a3
        XOR     d                                   ;88a4
        LD      (hl),a                              ;88a5
        NOP                                         ;88a6
        XOR     d                                   ;88a7
        XOR     d                                   ;88a8
        NOP                                         ;88a9
        NOP                                         ;88aa
        INC     bc                                  ;88ab
        XOR     d                                   ;88ac
        SUB     h                                   ;88ad
        AND     b                                   ;88ae
        RLCA                                        ;88af
        LD      d,l                                 ;88b0
        XOR     d                                   ;88b1
        AND     b                                   ;88b2
        RLCA                                        ;88b3
        LD      (hl),a                              ;88b4
        XOR     d                                   ;88b5
        AND     b                                   ;88b6
        NOP                                         ;88b7
        NOP                                         ;88b8
        XOR     d                                   ;88b9
        NOP                                         ;88ba
        LD      (hl),l                              ;88bb
        LD      d,l                                 ;88bc
        XOR     d                                   ;88bd
        NOP                                         ;88be
        LD      (hl),a                              ;88bf
        LD      (hl),a                              ;88c0
        XOR     0x3                                 ;88c1
        NOP                                         ;88c3
        CP      h                                   ;88c4
        RET     po                                  ;88c5
        RLCA                                        ;88c6
        LD      d,l                                 ;88c7
b5_sub_88c8h:
        LD      d,l                                 ;88c8
        NOP                                         ;88c9
        RLCA                                        ;88ca
        LD      (hl),a                              ;88cb
        LD      (hl),a                              ;88cc
        LD      d,l                                 ;88cd
        DEC     b                                   ;88ce
        LD      d,b                                 ;88cf
        LD      d,l                                 ;88d0
        LD      (hl),a                              ;88d1
        DEC     b                                   ;88d2
        LD      d,b                                 ;88d3
        LD      (hl),a                              ;88d4
        NOP                                         ;88d5
        DEC     b                                   ;88d6
        LD      d,b                                 ;88d7
        NOP                                         ;88d8
        LD      d,l                                 ;88d9
        DEC     b                                   ;88da
        LD      d,b                                 ;88db
        LD      d,l                                 ;88dc
        LD      (hl),a                              ;88dd
        DEC     b                                   ;88de
        LD      d,b                                 ;88df
        LD      (hl),a                              ;88e0
        NOP                                         ;88e1
        DEC     b                                   ;88e2
        LD      d,b                                 ;88e3
        NOP                                         ;88e4
        LD      d,l                                 ;88e5
        DEC     b                                   ;88e6
        LD      d,b                                 ;88e7
        LD      d,l                                 ;88e8
        LD      (hl),a                              ;88e9
        DEC     b                                   ;88ea
        LD      d,b                                 ;88eb
        LD      (hl),a                              ;88ec
        LD      d,l                                 ;88ed
        LD      (hl),b                              ;88ee
        LD      a,(bc)                              ;88ef
        XOR     d                                   ;88f0
        LD      (hl),a                              ;88f1
        LD      (hl),b                              ;88f2
        LD      a,(bc)                              ;88f3
        XOR     d                                   ;88f4
        NOP                                         ;88f5
        NOP                                         ;88f6
        LD      a,(bc)                              ;88f7
        XOR     d                                   ;88f8
        LD      d,l                                 ;88f9
        LD      d,a                                 ;88fa
        NOP                                         ;88fb
        XOR     d                                   ;88fc
        LD      (hl),a                              ;88fd
        LD      (hl),a                              ;88fe
        NOP                                         ;88ff
        XOR     d                                   ;8900
        INC     bc                                  ;8901
        NOP                                         ;8902
        ADC     a,d                                 ;8903
        XOR     0x55                                ;8904
        LD      d,l                                 ;8906
        LD      (hl),b                              ;8907
        LD      c,0x77                              ;8908
        LD      (hl),a                              ;890a
        LD      (hl),b                              ;890b
        NOP                                         ;890c
        OR      b                                   ;890d
        INC     b                                   ;890e
        NOP                                         ;890f
        ADD     a,h                                 ;8910
        LD      (hl),l                              ;8911
        LD      d,l                                 ;8912
        LD      d,l                                 ;8913
        NOP                                         ;8914
        INC     bc                                  ;8915
        LD      (hl),a                              ;8916
        INC     b                                   ;8917
        NOP                                         ;8918
        ADD     a,c                                 ;8919
        DEC     b                                   ;891a
        INC     bc                                  ;891b
        LD      d,l                                 ;891c
        ADD     a,c                                 ;891d
        RLCA                                        ;891e
        INC     bc                                  ;891f
        LD      (hl),a                              ;8920
        ADD     hl,bc                               ;8921
        NOP                                         ;8922
        SBC     a,d                                 ;8923
        DEC     b                                   ;8924
        LD      d,b                                 ;8925
        NOP                                         ;8926
        LD      d,l                                 ;8927
        DEC     b                                   ;8928
        LD      d,b                                 ;8929
        LD      d,l                                 ;892a
        LD      (hl),a                              ;892b
        DEC     b                                   ;892c
        LD      d,b                                 ;892d
        LD      (hl),a                              ;892e
        NOP                                         ;892f
        DEC     b                                   ;8930
        LD      d,b                                 ;8931
        NOP                                         ;8932
        LD      d,l                                 ;8933
        RLCA                                        ;8934
        LD      (hl),b                              ;8935
        LD      d,l                                 ;8936
        LD      (hl),a                              ;8937
        RLCA                                        ;8938
        LD      (hl),b                              ;8939
        LD      (hl),a                              ;893a
        NOP                                         ;893b
        RLCA                                        ;893c
        LD      (hl),b                              ;893d
        EX      af,af'                              ;893e
        NOP                                         ;893f
        ADD     a,l                                 ;8940
        DEC     bc                                  ;8941
        LD      d,l                                 ;8942
        LD      d,l                                 ;8943
        LD      d,a                                 ;8944
        NOP                                         ;8945
        INC     bc                                  ;8946
        LD      (hl),a                              ;8947
        DEC     b                                   ;8948
        NOP                                         ;8949
        INC     bc                                  ;894a
        LD      d,l                                 ;894b
        ADD     a,c                                 ;894c
        LD      d,b                                 ;894d
        INC     bc                                  ;894e
        LD      (hl),a                              ;894f
        ADD     a,c                                 ;8950
        LD      (hl),b                              ;8951
        EX      af,af'                              ;8952
        NOP                                         ;8953
        SBC     a,(hl)                              ;8954
        XOR     d                                   ;8955
        AND     b                                   ;8956
        NOP                                         ;8957
        NOP                                         ;8958
        XOR     d                                   ;8959
        AND     b                                   ;895a
        DEC     b                                   ;895b
        LD      d,l                                 ;895c
        XOR     d                                   ;895d
        AND     b                                   ;895e
        RLCA                                        ;895f
        LD      (hl),a                              ;8960
b5_l8961h:
        XOR     d                                   ;8961
        AND     b                                   ;8962
        RLCA                                        ;8963
        LD      (hl),a                              ;8964
        XOR     d                                   ;8965
        AND     b                                   ;8966
        NOP                                         ;8967
        NOP                                         ;8968
        XOR     d                                   ;8969
        XOR     d                                   ;896a
        NOP                                         ;896b
        LD      (hl),l                              ;896c
        XOR     d                                   ;896d
        XOR     d                                   ;896e
        NOP                                         ;896f
        LD      (hl),a                              ;8970
        XOR     d                                   ;8971
        XOR     d                                   ;8972
        DEC     b                                   ;8973
        NOP                                         ;8974
        ADC     a,l                                 ;8975
        XOR     d                                   ;8976
        LD      d,l                                 ;8977
        LD      d,l                                 ;8978
        NOP                                         ;8979
        XOR     d                                   ;897a
        LD      (hl),a                              ;897b
        LD      (hl),a                              ;897c
        NOP                                         ;897d
        XOR     d                                   ;897e
        LD      (hl),a                              ;897f
        LD      (hl),a                              ;8980
        NOP                                         ;8981
        XOR     d                                   ;8982
        INC     bc                                  ;8983
        NOP                                         ;8984
        ADC     a,l                                 ;8985
        XOR     d                                   ;8986
        LD      d,a                                 ;8987
        NOP                                         ;8988
        XOR     d                                   ;8989
        XOR     d                                   ;898a
        LD      (hl),a                              ;898b
        NOP                                         ;898c
        XOR     d                                   ;898d
        XOR     d                                   ;898e
        NOP                                         ;898f
        NOP                                         ;8990
        XOR     d                                   ;8991
        XOR     d                                   ;8992
        JR      nz,b5_l8961h                        ;8993
        INC     b                                   ;8995
        NOP                                         ;8996
        SBC     a,b                                 ;8997
        LD      (hl),a                              ;8998
        LD      d,a                                 ;8999
        LD      (hl),l                              ;899a
        LD      (hl),a                              ;899b
        LD      (hl),a                              ;899c
        LD      d,a                                 ;899d
        LD      (hl),l                              ;899e
        LD      (hl),a                              ;899f
        LD      (hl),a                              ;89a0
        LD      d,a                                 ;89a1
        LD      (hl),l                              ;89a2
        LD      (hl),a                              ;89a3
        LD      (hl),a                              ;89a4
        LD      d,a                                 ;89a5
        LD      (hl),l                              ;89a6
        LD      (hl),a                              ;89a7
        LD      (hl),a                              ;89a8
        LD      d,a                                 ;89a9
        LD      (hl),l                              ;89aa
        LD      (hl),a                              ;89ab
        LD      (hl),a                              ;89ac
        LD      d,a                                 ;89ad
        LD      (hl),l                              ;89ae
        LD      (hl),a                              ;89af
        EX      af,af'                              ;89b0
        NOP                                         ;89b1
        INC     b                                   ;89b2
        LD      d,l                                 ;89b3
        INC     b                                   ;89b4
        SBC     a,c                                 ;89b5
        INC     bc                                  ;89b6
        NOP                                         ;89b7
        ADD     a,c                                 ;89b8
        SBC     a,c                                 ;89b9
        INC     bc                                  ;89ba
        NOP                                         ;89bb
        ADD     a,c                                 ;89bc
        SBC     a,c                                 ;89bd
        INC     bc                                  ;89be
        NOP                                         ;89bf
        ADD     a,c                                 ;89c0
        ADD     hl,bc                               ;89c1
        INC     bc                                  ;89c2
        NOP                                         ;89c3
        ADD     a,c                                 ;89c4
        ADD     hl,bc                               ;89c5
        INC     de                                  ;89c6
        NOP                                         ;89c7
        ADD     a,c                                 ;89c8
        ADD     hl,bc                               ;89c9
        INC     bc                                  ;89ca
        NOP                                         ;89cb
        ADD     a,c                                 ;89cc
        ADD     hl,bc                               ;89cd
        INC     bc                                  ;89ce
        NOP                                         ;89cf
        ADD     a,c                                 ;89d0
        ADD     hl,bc                               ;89d1
        INC     bc                                  ;89d2
        NOP                                         ;89d3
        ADD     a,c                                 ;89d4
        SBC     a,c                                 ;89d5
