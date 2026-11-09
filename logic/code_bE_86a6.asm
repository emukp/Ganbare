bE_l86a6h:
        ADD     a,c                                 ;86a6
        DEC     (hl)                                ;86a7
        INC     bc                                  ;86a8
        LD      l,b                                 ;86a9
        ADD     a,c                                 ;86aa
        DEC     (hl)                                ;86ab
        INC     bc                                  ;86ac
        LD      l,b                                 ;86ad
        ADD     a,c                                 ;86ae
        DEC     (hl)                                ;86af
        INC     bc                                  ;86b0
        LD      l,b                                 ;86b1
        ADD     a,c                                 ;86b2
        DEC     (hl)                                ;86b3
        INC     bc                                  ;86b4
        LD      l,b                                 ;86b5
        ADD     a,c                                 ;86b6
        DEC     (hl)                                ;86b7
        INC     bc                                  ;86b8
        SCF                                         ;86b9
        SUB     b                                   ;86ba
        LD      (hl),a                              ;86bb
        NOP                                         ;86bc
        NOP                                         ;86bd
        ADC     a,h                                 ;86be
        LD      (hl),a                              ;86bf
        NOP                                         ;86c0
        NOP                                         ;86c1
        ADC     a,h                                 ;86c2
        LD      (hl),a                              ;86c3
        NOP                                         ;86c4
        NOP                                         ;86c5
        ADC     a,h                                 ;86c6
        LD      (hl),a                              ;86c7
        NOP                                         ;86c8
        NOP                                         ;86c9
        ADC     a,h                                 ;86ca
        NOP                                         ;86cb
        PUSH    bc                                  ;86cc
        INC     bc                                  ;86cd
        LD      (bc),a                              ;86ce
        INC     bc                                  ;86cf
        LD      (bc),a                              ;86d0
        INC     b                                   ;86d1
        DEC     b                                   ;86d2
        INC     b                                   ;86d3
        DEC     b                                   ;86d4
        LD      b,0x4                               ;86d5
        DEC     b                                   ;86d7
        RLCA                                        ;86d8
        INC     b                                   ;86d9
        DEC     b                                   ;86da
        RLCA                                        ;86db
        ADD     hl,bc                               ;86dc
        INC     bc                                  ;86dd
        LD      (bc),a                              ;86de
        INC     bc                                  ;86df
        LD      (bc),a                              ;86e0
        INC     b                                   ;86e1
        LD      b,0x4                               ;86e2
        DEC     b                                   ;86e4
        INC     b                                   ;86e5
        DEC     b                                   ;86e6
        LD      b,0x7                               ;86e7
        LD      b,0x4                               ;86e9
        DEC     b                                   ;86eb
        ADD     hl,bc                               ;86ec
        LD      (bc),a                              ;86ed
        INC     bc                                  ;86ee
        JR      nc,bE_l86f3h                        ;86ef
        LD      b,0x4                               ;86f1
bE_l86f3h:
        INC     bc                                  ;86f3
        LD      b,0x4                               ;86f4
        DEC     b                                   ;86f6
        RLCA                                        ;86f7
        EX      af,af'                              ;86f8
        LD      b,0x7                               ;86f9
        INC     b                                   ;86fb
        DEC     b                                   ;86fc
        INC     bc                                  ;86fd
        NOP                                         ;86fe
        NOP                                         ;86ff
        LD      (bc),a                              ;8700
        RLCA                                        ;8701
        NOP                                         ;8702
        NOP                                         ;8703
        LD      b,0x9                               ;8704
        NOP                                         ;8706
        NOP                                         ;8707
        EX      af,af'                              ;8708
        ADD     hl,bc                               ;8709
        NOP                                         ;870a
        NOP                                         ;870b
        EX      af,af'                              ;870c
        LD      b,0x9                               ;870d
        RLCA                                        ;870f
        ADD     hl,bc                               ;8710
        LD      b,0x3                               ;8711
        ADD     hl,bc                               ;8713
        ADD     a,c                                 ;8714
        LD      a,(bc)                              ;8715
        INC     bc                                  ;8716
        DEC     bc                                  ;8717
        ADD     a,c                                 ;8718
        RLA                                         ;8719
        INC     bc                                  ;871a
        JR      bE_l86a6h                           ;871b
        INC     b                                   ;871d
        DEC     b                                   ;871e
        RLCA                                        ;871f
        ADD     hl,bc                               ;8720
        LD      b,0x7                               ;8721
        ADD     hl,bc                               ;8723
        ADD     hl,bc                               ;8724
        LD      a,(bc)                              ;8725
        INC     bc                                  ;8726
        DEC     bc                                  ;8727
        CALL    nz,0x1817                           ;8728
        RLA                                         ;872b
        JR      $+8                                 ;872c
        ADD     hl,bc                               ;872e
        LD      b,0x7                               ;872f
        LD      b,0x9                               ;8731
        LD      b,0x9                               ;8733
        LD      a,(bc)                              ;8735
        DEC     bc                                  ;8736
        LD      a,(bc)                              ;8737
        DEC     bc                                  ;8738
        RLA                                         ;8739
        JR      bE_l8753h                           ;873a
        JR      $+11                                ;873c
        NOP                                         ;873e
        NOP                                         ;873f
        EX      af,af'                              ;8740
        ADD     hl,bc                               ;8741
        NOP                                         ;8742
        NOP                                         ;8743
        EX      af,af'                              ;8744
        DEC     de                                  ;8745
        LD      bc,0x2701                           ;8746
        ADD     hl,de                               ;8749
        LD      bc,0x1a01                           ;874a
        LD      bc,0xc01                            ;874d
        DEC     c                                   ;8750
        INC     c                                   ;8751
        DEC     c                                   ;8752
bE_l8753h:
        LD      b,0x7                               ;8753
        LD      b,0x4                               ;8755
        DEC     b                                   ;8757
        ADD     hl,bc                               ;8758
        LD      b,0x6                               ;8759
        RLCA                                        ;875b
        ADD     hl,bc                               ;875c
        LD      bc,0xd0c                            ;875d
        LD      bc,0x50c                            ;8760
        INC     b                                   ;8763
        DEC     c                                   ;8764
        LD      b,0x7                               ;8765
        LD      b,0x7                               ;8767
        LD      b,0x4                               ;8769
        DEC     b                                   ;876b
        ADD     hl,bc                               ;876c
        INC     b                                   ;876d
        LD      bc,0xc94                            ;876e
        DEC     c                                   ;8771
        INC     c                                   ;8772
        DEC     c                                   ;8773
        LD      b,0x7                               ;8774
        LD      b,0x7                               ;8776
        LD      b,0x7                               ;8778
        LD      b,0x9                               ;877a
        INC     h                                   ;877c
        INC     hl                                  ;877d
        LD      (0x2322),hl                         ;877e
        LD      e,0x21                              ;8781
        INC     hl                                  ;8783
        INC     b                                   ;8784
        LD      l,0x4                               ;8785
        CPL                                         ;8787
        ADC     a,b                                 ;8788
bE_l8789h:
        INC     hl                                  ;8789
        INC     h                                   ;878a
        LD      e,0x22                              ;878b
        INC     h                                   ;878d
        LD      hl,0x211d                           ;878e
        INC     b                                   ;8791
        LD      l,0x4                               ;8792
        CPL                                         ;8794
        CP      h                                   ;8795
        INC     e                                   ;8796
        DJNZ    bE_l87b9h                           ;8797
        LD      (0x1c23),hl                         ;8799
        LD      (0x2420),hl                         ;879c
        DEC     e                                   ;879f
        LD      hl,0x2322                           ;87a0
        LD      e,0x24                              ;87a3
        LD      hl,0x231e                           ;87a5
        JR      nc,bE_l87cdh                        ;87a8
        RRA                                         ;87aa
        JR      nz,$+18                             ;87ab
        INC     h                                   ;87ad
        LD      e,0x22                              ;87ae
        RRA                                         ;87b0
        JR      nz,$+31                             ;87b1
        INC     hl                                  ;87b3
        LD      e,0x22                              ;87b4
        INC     h                                   ;87b6
        DJNZ    bE_l87ddh                           ;87b7
bE_l87b9h:
        JR      nc,bE_l87ddh                        ;87b9
        DEC     e                                   ;87bb
        LD      (0x2424),hl                         ;87bc
        DEC     e                                   ;87bf
        LD      hl,0x2323                           ;87c0
        LD      e,0x21                              ;87c3
        INC     h                                   ;87c5
        DEC     l                                   ;87c6
        DEC     hl                                  ;87c7
        ADD     hl,hl                               ;87c8
        LD      hl,0x2d01                           ;87c9
        DEC     hl                                  ;87cc
bE_l87cdh:
        ADD     hl,hl                               ;87cd
        LD      bc,0x2d01                           ;87ce
        DEC     hl                                  ;87d1
        INC     bc                                  ;87d2
        LD      bc,0x2dae                           ;87d3
        LD      e,0x22                              ;87d6
        RRA                                         ;87d8
        JR      nz,bE_l87f9h                        ;87d9
        INC     h                                   ;87db
        DEC     e                                   ;87dc
bE_l87ddh:
        LD      (0x2429),hl                         ;87dd
        INC     e                                   ;87e0
        INC     h                                   ;87e1
        DEC     hl                                  ;87e2
        ADD     hl,hl                               ;87e3
        INC     h                                   ;87e4
        INC     hl                                  ;87e5
        RRA                                         ;87e6
        LD      (0x231f),hl                         ;87e7
        LD      e,0x23                              ;87ea
        DEC     e                                   ;87ec
        LD      (0x221c),hl                         ;87ed
        INC     h                                   ;87f0
        JR      z,$+30                              ;87f1
        LD      hl,0x2a28                           ;87f3
        DEC     e                                   ;87f6
        JR      z,bE_l8823h                         ;87f7
bE_l87f9h:
        INC     l                                   ;87f9
        JR      z,bE_l8826h                         ;87fa
        INC     l                                   ;87fc
        LD      bc,0x2c2a                           ;87fd
        LD      bc,0x2c01                           ;8800
        INC     bc                                  ;8803
        LD      bc,0x3004                           ;8804
        CP      h                                   ;8807
        DJNZ    $+50                                ;8808
        DJNZ    bE_l8830h                           ;880a
        INC     e                                   ;880c
        LD      (0x231f),hl                         ;880d
        DEC     e                                   ;8810
        INC     hl                                  ;8811
        DEC     e                                   ;8812
        LD      (0x2625),hl                         ;8813
        DEC     h                                   ;8816
        LD      bc,0x1d22                           ;8817
        LD      (0x2425),hl                         ;881a
        DEC     e                                   ;881d
        LD      hl,0x2322                           ;881e
        LD      e,0x24                              ;8821
bE_l8823h:
        LD      hl,0x2601                           ;8823
bE_l8826h:
        DEC     h                                   ;8826
        LD      bc,0x1d26                           ;8827
        LD      (0x2325),hl                         ;882a
        LD      (0x2022),hl                         ;882d
bE_l8830h:
        INC     h                                   ;8830
        DEC     e                                   ;8831
        LD      hl,0x322                            ;8832
        NOP                                         ;8835
        NOP                                         ;8836
        LD      (bc),a                              ;8837
        LD      de,0x0                              ;8838
        INC     d                                   ;883b
        RRCA                                        ;883c
        NOP                                         ;883d
        NOP                                         ;883e
        LD      c,0x48                              ;883f
        LD      bc,0x4901                           ;8841
        DJNZ    bE_l8846h                           ;8844
bE_l8846h:
        INC     b                                   ;8846
        LD      b,c                                 ;8847
        INC     b                                   ;8848
        INC     (hl)                                ;8849
        INC     b                                   ;884a
        LD      (0x3304),a                          ;884b
        INC     b                                   ;884e
        LD      b,c                                 ;884f
        ADC     a,h                                 ;8850
        LD      e,(hl)                              ;8851
        LD      e,d                                 ;8852
        LD      e,d                                 ;8853
        LD      e,(hl)                              ;8854
        LD      e,(hl)                              ;8855
        LD      e,e                                 ;8856
        LD      e,e                                 ;8857
        LD      e,(hl)                              ;8858
        LD      e,(hl)                              ;8859
        LD      e,h                                 ;885a
        LD      e,h                                 ;885b
        LD      e,(hl)                              ;885c
        INC     bc                                  ;885d
        DEC     a                                   ;885e
        ADD     a,c                                 ;885f
        LD      a,0x3                               ;8860
        INC     (hl)                                ;8862
        ADD     a,c                                 ;8863
        LD      h,c                                 ;8864
        INC     bc                                  ;8865
        LD      (0x6181),a                          ;8866
        INC     bc                                  ;8869
        INC     sp                                  ;886a
        ADC     a,(hl)                              ;886b
        LD      e,(hl)                              ;886c
        INC     bc                                  ;886d
        LD      (bc),a                              ;886e
        INC     bc                                  ;886f
        LD      (bc),a                              ;8870
        INC     b                                   ;8871
        DEC     b                                   ;8872
        LD      b,h                                 ;8873
        LD      b,l                                 ;8874
        CCF                                         ;8875
        LD      b,(hl)                              ;8876
        LD      c,d                                 ;8877
        LD      c,d                                 ;8878
        LD      b,(hl)                              ;8879
        INC     bc                                  ;887a
        LD      c,d                                 ;887b
        SUB     c                                   ;887c
        NOP                                         ;887d
        LD      c,e                                 ;887e
        LD      c,h                                 ;887f
        LD      c,l                                 ;8880
        LD      c,(hl)                              ;8881
        LD      c,a                                 ;8882
        LD      d,b                                 ;8883
        LD      d,c                                 ;8884
        LD      b,a                                 ;8885
        LD      b,b                                 ;8886
        INC     b                                   ;8887
        DEC     b                                   ;8888
        LD      c,d                                 ;8889
        LD      b,a                                 ;888a
        LD      b,0x7                               ;888b
        INC     a                                   ;888d
        INC     bc                                  ;888e
        DEC     a                                   ;888f
        OR      h                                   ;8890
        LD      h,b                                 ;8891
        INC     (hl)                                ;8892
        NOP                                         ;8893
        JR      nc,bE_l88f6h                        ;8894
        LD      (0x3000),a                          ;8896
        LD      h,b                                 ;8899
        INC     sp                                  ;889a
        NOP                                         ;889b
        JR      nc,bE_l88dbh                        ;889c
        LD      a,0x6                               ;889e
        ADD     hl,bc                               ;88a0
        INC     (hl)                                ;88a1
        LD      h,c                                 ;88a2
        LD      b,0x9                               ;88a3
        LD      (0xa61),a                           ;88a5
        DEC     bc                                  ;88a8
        INC     sp                                  ;88a9
        LD      e,(hl)                              ;88aa
        RLA                                         ;88ab
        JR      $+5                                 ;88ac
        LD      (bc),a                              ;88ae
        INC     bc                                  ;88af
        JR      nc,$+6                              ;88b0
        DEC     b                                   ;88b2
        RLCA                                        ;88b3
        LD      (bc),a                              ;88b4
        LD      b,0x7                               ;88b5
        LD      (hl),0x37                           ;88b7
        CCF                                         ;88b9
        LD      b,(hl)                              ;88ba
        LD      c,d                                 ;88bb
        LD      c,d                                 ;88bc
        JR      nc,bE_l890ah                        ;88bd
        LD      c,h                                 ;88bf
        LD      c,l                                 ;88c0
        LD      c,(hl)                              ;88c1
        LD      c,a                                 ;88c2
        LD      d,b                                 ;88c3
        LD      d,c                                 ;88c4
        INC     b                                   ;88c5
        SCF                                         ;88c6
        INC     b                                   ;88c7
        LD      c,d                                 ;88c8
        SUB     b                                   ;88c9
        JR      nc,bE_l88ceh                        ;88ca
        INC     bc                                  ;88cc
        LD      (bc),a                              ;88cd
bE_l88ceh:
        INC     bc                                  ;88ce
        EX      af,af'                              ;88cf
        INC     b                                   ;88d0
        DEC     b                                   ;88d1
        SCF                                         ;88d2
        JR      c,bE_l88dbh                         ;88d3
        RLCA                                        ;88d5
        LD      c,d                                 ;88d6
        LD      c,d                                 ;88d7
        LD      b,a                                 ;88d8
        ADD     hl,bc                               ;88d9
        INC     b                                   ;88da
bE_l88dbh:
        LD      b,c                                 ;88db
        ADC     a,l                                 ;88dc
        LD      e,(hl)                              ;88dd
        JR      nc,bE_l8910h                        ;88de
        LD      e,(hl)                              ;88e0
        LD      e,(hl)                              ;88e1
        JR      nc,bE_l8914h                        ;88e2
        LD      e,(hl)                              ;88e4
        LD      e,(hl)                              ;88e5
        JR      nc,$+50                             ;88e6
        LD      e,(hl)                              ;88e8
        LD      b,e                                 ;88e9
        INC     bc                                  ;88ea
        LD      b,c                                 ;88eb
        ADC     a,h                                 ;88ec
        LD      b,0x52                              ;88ed
        LD      d,e                                 ;88ef
        LD      d,h                                 ;88f0
        LD      a,(bc)                              ;88f1
        LD      d,l                                 ;88f2
        LD      d,(hl)                              ;88f3
        LD      d,a                                 ;88f4
        RLA                                         ;88f5
bE_l88f6h:
        LD      e,b                                 ;88f6
        DEC     (hl)                                ;88f7
        LD      e,c                                 ;88f8
        INC     b                                   ;88f9
        LD      b,c                                 ;88fa
        ADC     a,h                                 ;88fb
        LD      e,d                                 ;88fc
        JR      nc,bE_l892fh                        ;88fd
        LD      e,d                                 ;88ff
        LD      e,e                                 ;8900
        JR      nc,bE_l8933h                        ;8901
        LD      e,e                                 ;8903
        LD      e,h                                 ;8904
        JR      nc,bE_l8937h                        ;8905
        LD      e,h                                 ;8907
        INC     bc                                  ;8908
        LD      b,c                                 ;8909
bE_l890ah:
        SBC     a,d                                 ;890a
        LD      b,d                                 ;890b
        LD      d,d                                 ;890c
        LD      d,e                                 ;890d
        LD      d,h                                 ;890e
        RLCA                                        ;890f
bE_l8910h:
        LD      d,l                                 ;8910
        LD      d,(hl)                              ;8911
        LD      d,a                                 ;8912
        DEC     bc                                  ;8913
bE_l8914h:
        LD      e,b                                 ;8914
        DEC     (hl)                                ;8915
        LD      e,c                                 ;8916
        JR      bE_l891ch                           ;8917
        LD      (bc),a                              ;8919
        INC     bc                                  ;891a
        LD      (bc),a                              ;891b
bE_l891ch:
        INC     b                                   ;891c
        DEC     b                                   ;891d
        LD      (hl),0x37                           ;891e
        CCF                                         ;8920
        LD      b,(hl)                              ;8921
        LD      c,d                                 ;8922
        LD      c,d                                 ;8923
        LD      b,(hl)                              ;8924
        INC     bc                                  ;8925
        LD      c,d                                 ;8926
        SBC     a,b                                 ;8927
        INC     bc                                  ;8928
        LD      (bc),a                              ;8929
        INC     bc                                  ;892a
        JR      nc,$+6                              ;892b
        DEC     b                                   ;892d
        RLCA                                        ;892e
bE_l892fh:
        LD      (bc),a                              ;892f
        LD      b,0x7                               ;8930
        ADD     hl,sp                               ;8932
bE_l8933h:
        LD      a,(0x463f)                          ;8933
        LD      c,d                                 ;8936
bE_l8937h:
        LD      c,d                                 ;8937
        LD      (bc),a                              ;8938
        LD      (bc),a                              ;8939
        INC     bc                                  ;893a
        LD      (bc),a                              ;893b
        INC     b                                   ;893c
        DEC     b                                   ;893d
        INC     b                                   ;893e
        DEC     b                                   ;893f
        INC     b                                   ;8940
        LD      a,(0x4a04)                          ;8941
        SBC     a,h                                 ;8944
        INC     bc                                  ;8945
        LD      (bc),a                              ;8946
        INC     bc                                  ;8947
        LD      (bc),a                              ;8948
        RLCA                                        ;8949
        LD      b,0x4                               ;894a
        DEC     b                                   ;894c
        LD      a,(0x63b)                           ;894d
        RLCA                                        ;8950
        LD      c,d                                 ;8951
        LD      c,d                                 ;8952
        LD      b,a                                 ;8953
        ADD     hl,bc                               ;8954
        INC     bc                                  ;8955
        LD      (bc),a                              ;8956
        INC     bc                                  ;8957
        LD      (bc),a                              ;8958
        SCF                                         ;8959
        JR      c,bE_l8960h                         ;895a
        DEC     b                                   ;895c
        LD      c,d                                 ;895d
        LD      c,d                                 ;895e
        LD      b,a                                 ;895f
bE_l8960h:
        RLCA                                        ;8960
        INC     bc                                  ;8961
        LD      c,d                                 ;8962
        ADD     a,d                                 ;8963
        LD      b,a                                 ;8964
        LD      b,e                                 ;8965
        INC     bc                                  ;8966
bE_l8967h:
        LD      b,c                                 ;8967
        ADC     a,h                                 ;8968
        LD      b,0x60                              ;8969
        LD      h,h                                 ;896b
        LD      h,h                                 ;896c
        LD      a,(bc)                              ;896d
        LD      h,b                                 ;896e
        LD      h,l                                 ;896f
        LD      h,l                                 ;8970
        RLA                                         ;8971
        LD      h,b                                 ;8972
        LD      sp,0x431                            ;8973
        LD      b,c                                 ;8976
        INC     b                                   ;8977
        LD      h,h                                 ;8978
        INC     b                                   ;8979
        LD      h,l                                 ;897a
        INC     b                                   ;897b
        LD      sp,0x4103                           ;897c
        ADC     a,(hl)                              ;897f
        LD      b,d                                 ;8980
        LD      h,h                                 ;8981
        LD      h,h                                 ;8982
        LD      h,c                                 ;8983
        RLCA                                        ;8984
        LD      h,l                                 ;8985
        LD      h,l                                 ;8986
        LD      h,c                                 ;8987
        DEC     bc                                  ;8988
        LD      sp,0x5e31                           ;8989
        JR      $+62                                ;898c
        INC     bc                                  ;898e
        DEC     a                                   ;898f
        ADD     a,c                                 ;8990
        LD      h,b                                 ;8991
        INC     bc                                  ;8992
        INC     (hl)                                ;8993
        ADD     a,c                                 ;8994
        LD      h,b                                 ;8995
        INC     bc                                  ;8996
        LD      (0x6081),a                          ;8997
        INC     bc                                  ;899a
        INC     sp                                  ;899b
        SBC     a,b                                 ;899c
        INC     h                                   ;899d
        INC     hl                                  ;899e
        DJNZ    bE_l89d1h                           ;899f
        INC     h                                   ;89a1
        LD      e,0x23                              ;89a2
        INC     hl                                  ;89a4
        LD      (0x3623),hl                         ;89a5
        SCF                                         ;89a8
        LD      e,0x46                              ;89a9
        LD      c,d                                 ;89ab
        LD      c,d                                 ;89ac
        JR      nc,bE_l89fah                        ;89ad
        LD      c,h                                 ;89af
        INC     hl                                  ;89b0
        LD      c,(hl)                              ;89b1
        LD      c,a                                 ;89b2
        LD      d,b                                 ;89b3
        LD      (0x3704),hl                         ;89b4
        INC     b                                   ;89b7
        LD      c,d                                 ;89b8
        AND     c                                   ;89b9
        DJNZ    $+33                                ;89ba
        LD      e,0x22                              ;89bc
        INC     e                                   ;89be
        INC     hl                                  ;89bf
        DEC     e                                   ;89c0
        INC     hl                                  ;89c1
        SCF                                         ;89c2
        JR      c,bE_l89e8h                         ;89c3
        INC     hl                                  ;89c5
        LD      c,d                                 ;89c6
        LD      c,d                                 ;89c7
        LD      b,a                                 ;89c8
        LD      (0x4b30),hl                         ;89c9
        LD      c,h                                 ;89cc
        INC     hl                                  ;89cd
        LD      c,(hl)                              ;89ce
        LD      c,a                                 ;89cf
        INC     hl                                  ;89d0
bE_l89d1h:
        LD      (0x2247),hl                         ;89d1
        INC     h                                   ;89d4
        INC     hl                                  ;89d5
        LD      c,d                                 ;89d6
        LD      b,a                                 ;89d7
        INC     hl                                  ;89d8
        LD      (0x343),hl                          ;89d9
        LD      b,c                                 ;89dc
        ADC     a,h                                 ;89dd
        INC     h                                   ;89de
        LD      d,d                                 ;89df
        LD      d,e                                 ;89e0
        LD      d,h                                 ;89e1
        LD      l,0x55                              ;89e2
        LD      d,(hl)                              ;89e4
        LD      d,a                                 ;89e5
        CPL                                         ;89e6
        LD      e,b                                 ;89e7
bE_l89e8h:
        DEC     (hl)                                ;89e8
        LD      e,c                                 ;89e9
        INC     b                                   ;89ea
        LD      b,c                                 ;89eb
        ADC     a,h                                 ;89ec
        LD      e,d                                 ;89ed
        JR      nc,$+50                             ;89ee
        LD      e,d                                 ;89f0
        LD      e,e                                 ;89f1
        JR      nc,bE_l8a24h                        ;89f2
        LD      e,e                                 ;89f4
        LD      e,h                                 ;89f5
        JR      nc,bE_l8a28h                        ;89f6
        LD      e,h                                 ;89f8
        INC     bc                                  ;89f9
bE_l89fah:
        LD      b,c                                 ;89fa
        SBC     a,d                                 ;89fb
        LD      b,d                                 ;89fc
        LD      d,d                                 ;89fd
        LD      d,e                                 ;89fe
        LD      d,h                                 ;89ff
        INC     h                                   ;8a00
        LD      d,l                                 ;8a01
        LD      d,(hl)                              ;8a02
        LD      d,a                                 ;8a03
        LD      l,0x58                              ;8a04
        DEC     (hl)                                ;8a06
        LD      e,c                                 ;8a07
        CPL                                         ;8a08
        INC     h                                   ;8a09
        INC     e                                   ;8a0a
        DJNZ    $+37                                ;8a0b
        LD      (0x3622),hl                         ;8a0d
        SCF                                         ;8a10
        INC     hl                                  ;8a11
        LD      b,(hl)                              ;8a12
        LD      c,d                                 ;8a13
        LD      c,d                                 ;8a14
        LD      b,(hl)                              ;8a15
        INC     bc                                  ;8a16
        LD      c,d                                 ;8a17
        SBC     a,b                                 ;8a18
        DEC     e                                   ;8a19
        DJNZ    bE_l8a4ch                           ;8a1a
        DEC     e                                   ;8a1c
        INC     hl                                  ;8a1d
        INC     e                                   ;8a1e
        DJNZ    bE_l8a44h                           ;8a1f
        LD      (0x3923),hl                         ;8a21
