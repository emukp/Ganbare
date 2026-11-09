        DEFB    0x00,0x00,0x00,0x00,0x33,0x33,0xee,0xee  ;9775 ; data:gfx
        DEFB    0x33,0x33,0xee,0xee,0x33,0x33,0xee,0xee  ;977d
        DEFB    0x33,0x33,0xee,0xee,0x33,0x33,0xee  ;9785
        DEFB    0xee                                ;978c
        INC     sp                                  ;978d
        INC     sp                                  ;978e
        XOR     0xee                                ;978f
        INC     sp                                  ;9791
        INC     sp                                  ;9792
        XOR     0xee                                ;9793
        NOP                                         ;9795
        NOP                                         ;9796
        NOP                                         ;9797
        NOP                                         ;9798
        NOP                                         ;9799
        NOP                                         ;979a
        NOP                                         ;979b
        NOP                                         ;979c
        NOP                                         ;979d
        NOP                                         ;979e
        NOP                                         ;979f
        NOP                                         ;97a0
        NOP                                         ;97a1
        NOP                                         ;97a2
        NOP                                         ;97a3
        XOR     c                                   ;97a4
        NOP                                         ;97a5
        NOP                                         ;97a6
        XOR     c                                   ;97a7
        SBC     a,d                                 ;97a8
        NOP                                         ;97a9
        LD      a,(bc)                              ;97aa
        SBC     a,d                                 ;97ab
        ADC     a,b                                 ;97ac
        NOP                                         ;97ad
        LD      a,(bc)                              ;97ae
        ADC     a,b                                 ;97af
        XOR     b                                   ;97b0
        NOP                                         ;97b1
        NOP                                         ;97b2
        SBC     a,b                                 ;97b3
        ADC     a,b                                 ;97b4
        NOP                                         ;97b5
        NOP                                         ;97b6
bE_l97b7h:
        NOP                                         ;97b7
        NOP                                         ;97b8
        NOP                                         ;97b9
        NOP                                         ;97ba
        NOP                                         ;97bb
        NOP                                         ;97bc
        XOR     d                                   ;97bd
        SBC     a,c                                 ;97be
        NOP                                         ;97bf
        NOP                                         ;97c0
        SBC     a,d                                 ;97c1
        ADC     a,b                                 ;97c2
        SUB     b                                   ;97c3
        NOP                                         ;97c4
        ADC     a,b                                 ;97c5
        XOR     b                                   ;97c6
        ADD     a,b                                 ;97c7
        NOP                                         ;97c8
        XOR     b                                   ;97c9
        ADC     a,b                                 ;97ca
        NOP                                         ;97cb
        NOP                                         ;97cc
        ADC     a,b                                 ;97cd
        NOP                                         ;97ce
        NOP                                         ;97cf
        NOP                                         ;97d0
        NOP                                         ;97d1
        NOP                                         ;97d2
        NOP                                         ;97d3
        NOP                                         ;97d4
        POP     hl                                  ;97d5
        SUB     a                                   ;97d6
        XOR     0x97                                ;97d7
        DEFB    0xfd,0x97,0x6                       ;97d9
        SBC     a,b                                 ;97dc
        DEC     c                                   ;97dd
        SBC     a,b                                 ;97de
        LD      c,0x98                              ;97df
        LD      b,0x2                               ;97e1
        LD      h,l                                 ;97e3
        LD      (bc),a                              ;97e4
        LD      l,e                                 ;97e5
        INC     bc                                  ;97e6
        LD      l,c                                 ;97e7
        EX      af,af'                              ;97e8
        LD      l,h                                 ;97e9
        ADD     hl,bc                               ;97ea
        LD      h,e                                 ;97eb
        ADD     hl,bc                               ;97ec
        LD      l,c                                 ;97ed
        RLCA                                        ;97ee
        LD      bc,0x386                            ;97ef
        AND     e                                   ;97f2
        INC     b                                   ;97f3
        XOR     l                                   ;97f4
        DEC     bc                                  ;97f5
        ADD     a,e                                 ;97f6
        DEC     c                                   ;97f7
        ADC     a,b                                 ;97f8
        LD      c,0x6a                              ;97f9
        LD      c,0x6e                              ;97fb
        INC     b                                   ;97fd
        INC     b                                   ;97fe
        LD      h,l                                 ;97ff
        DEC     b                                   ;9800
        LD      h,a                                 ;9801
        ADD     hl,bc                               ;9802
        LD      l,e                                 ;9803
        DEC     bc                                  ;9804
        LD      h,l                                 ;9805
        INC     bc                                  ;9806
        EX      af,af'                              ;9807
        LD      h,h                                 ;9808
        ADD     hl,bc                               ;9809
        LD      l,c                                 ;980a
        ADD     hl,bc                               ;980b
        LD      l,(hl)                              ;980c
        NOP                                         ;980d
        RLCA                                        ;980e
        EX      af,af'                              ;980f
        LD      l,b                                 ;9810
        DEC     bc                                  ;9811
        LD      l,d                                 ;9812
        RRCA                                        ;9813
        LD      l,b                                 ;9814
        LD      a,(de)                              ;9815
        LD      h,(hl)                              ;9816
        DEC     e                                   ;9817
        LD      l,b                                 ;9818
        LD      h,0x6a                              ;9819
        ADD     hl,hl                               ;981b
        LD      h,(hl)                              ;981c
        LD      a,a                                 ;981d
        SBC     a,b                                 ;981e
        SBC     a,b                                 ;981f
        SBC     a,b                                 ;9820
        AND     l                                   ;9821
        SBC     a,b                                 ;9822
        OR      h                                   ;9823
        SBC     a,b                                 ;9824
        POP     bc                                  ;9825
        SBC     a,b                                 ;9826
        CALL    nc,0xd69b                           ;9827
        SBC     a,b                                 ;982a
        DEFB    0xed                                ;982b
        SBC     a,b                                 ;982c
        INC     b                                   ;982d
        SBC     a,c                                 ;982e
        RLA                                         ;982f
        SBC     a,c                                 ;9830
        INC     h                                   ;9831
        SBC     a,c                                 ;9832
        INC     sp                                  ;9833
        SBC     a,c                                 ;9834
        CALL    nc,0x4c9b                           ;9835
        SBC     a,c                                 ;9838
        LD      h,c                                 ;9839
        SBC     a,c                                 ;983a
        SUB     d                                   ;983b
        SBC     a,c                                 ;983c
        SBC     a,c                                 ;983d
        SBC     a,c                                 ;983e
        XOR     (hl)                                ;983f
        SBC     a,c                                 ;9840
        POP     bc                                  ;9841
        SBC     a,c                                 ;9842
        CALL    nc,0xca9b                           ;9843
        SBC     a,c                                 ;9846
        PUSH    hl                                  ;9847
        SBC     a,c                                 ;9848
        OR      0x99                                ;9849
        LD      de,0x229a                           ;984b
        SBC     a,d                                 ;984e
        LD      sp,0xd49a                           ;984f
        SBC     a,e                                 ;9852
        LD      c,b                                 ;9853
        SBC     a,d                                 ;9854
        LD      e,a                                 ;9855
        SBC     a,d                                 ;9856
        LD      l,(hl)                              ;9857
        SBC     a,d                                 ;9858
        ADD     a,a                                 ;9859
        SBC     a,d                                 ;985a
        SUB     (hl)                                ;985b
        SBC     a,d                                 ;985c
        AND     l                                   ;985d
        SBC     a,d                                 ;985e
        CALL    nc,0xba9b                           ;985f
        SBC     a,d                                 ;9862
        RST     8                                   ;9863
        SBC     a,d                                 ;9864
        JP      po,0x139a                           ;9865
        SBC     a,e                                 ;9868
        LD      h,0x9b                              ;9869
        ADD     hl,sp                               ;986b
        SBC     a,e                                 ;986c
        CALL    nc,0x509b                           ;986d
        SBC     a,e                                 ;9870
        LD      h,a                                 ;9871
        SBC     a,e                                 ;9872
        HALT                                        ;9873
        SBC     a,e                                 ;9874
        ADC     a,l                                 ;9875
        SBC     a,e                                 ;9876
        AND     b                                   ;9877
        SBC     a,e                                 ;9878
        OR      c                                   ;9879
        SBC     a,e                                 ;987a
        CALL    nc,0xd59b                           ;987b
        SBC     a,e                                 ;987e
        INC     c                                   ;987f
        LD      (bc),a                              ;9880
        DJNZ    bE_l9885h                           ;9881
        SUB     h                                   ;9883
        INC     bc                                  ;9884
bE_l9885h:
        LD      a,(bc)                              ;9885
        RLCA                                        ;9886
        INC     de                                  ;9887
bE_l9888h:
        RLCA                                        ;9888
        ADC     a,a                                 ;9889
        ADD     hl,bc                               ;988a
        INC     c                                   ;988b
        ADD     hl,bc                               ;988c
        SUB     c                                   ;988d
        LD      c,0x6                               ;988e
        LD      c,0x89                              ;9890
        RRCA                                        ;9892
        DEC     c                                   ;9893
        INC     d                                   ;9894
        LD      c,0x14                              ;9895
        SUB     d                                   ;9897
        LD      b,0x3                               ;9898
        LD      (bc),a                              ;989a
        INC     b                                   ;989b
        RLCA                                        ;989c
        INC     b                                   ;989d
        SUB     b                                   ;989e
        LD      a,(bc)                              ;989f
        INC     b                                   ;98a0
        LD      a,(bc)                              ;98a1
        ADD     a,e                                 ;98a2
        DEC     bc                                  ;98a3
        NOP                                         ;98a4
        RLCA                                        ;98a5
        LD      bc,0x308                            ;98a6
        INC     bc                                  ;98a9
        INC     b                                   ;98aa
        NOP                                         ;98ab
        DEC     bc                                  ;98ac
        DJNZ    $+15                                ;98ad
        LD      c,0xe                               ;98af
        RLCA                                        ;98b1
        LD      c,0x82                              ;98b2
        LD      b,0x1                               ;98b4
        NOP                                         ;98b6
        DEC     b                                   ;98b7
        LD      de,0x30d                            ;98b8
        LD      c,0x14                              ;98bb
        DJNZ    bE_l98c0h                           ;98bd
        LD      (de),a                              ;98bf
bE_l98c0h:
        DJNZ    bE_l98cch                           ;98c0
        LD      (bc),a                              ;98c2
        LD      bc,0x406                            ;98c3
        LD      b,0x80                              ;98c6
        LD      a,(bc)                              ;98c8
        EX      af,af'                              ;98c9
        DEC     bc                                  ;98ca
        INC     c                                   ;98cb
bE_l98cch:
        DEC     bc                                  ;98cc
        SUB     d                                   ;98cd
        RRCA                                        ;98ce
        INC     bc                                  ;98cf
        RRCA                                        ;98d0
        ADD     a,b                                 ;98d1
        DJNZ    $+4                                 ;98d2
        INC     de                                  ;98d4
        DJNZ    bE_l98e2h                           ;98d5
        LD      (bc),a                              ;98d7
        LD      (bc),a                              ;98d8
        DEC     b                                   ;98d9
        LD      de,0x307                            ;98da
        INC     d                                   ;98dd
        INC     d                                   ;98de
        LD      d,0x5                               ;98df
        LD      a,(de)                              ;98e1
bE_l98e2h:
        DJNZ    bE_l98ffh                           ;98e2
        INC     d                                   ;98e4
        LD      e,0xf                               ;98e5
        INC     l                                   ;98e7
        LD      bc,0x1130                           ;98e8
        ADD     hl,sp                               ;98eb
        ADD     hl,bc                               ;98ec
        DEC     bc                                  ;98ed
        NOP                                         ;98ee
        INC     de                                  ;98ef
        NOP                                         ;98f0
        ADC     a,e                                 ;98f1
        LD      (bc),a                              ;98f2
        LD      de,0x1405                           ;98f3
        DEC     b                                   ;98f6
        ADD     a,a                                 ;98f7
        LD      b,0x10                              ;98f8
        ADD     hl,bc                               ;98fa
        INC     bc                                  ;98fb
        ADD     hl,bc                               ;98fc
        SUB     d                                   ;98fd
        LD      a,(bc)                              ;98fe
bE_l98ffh:
        LD      (de),a                              ;98ff
        RRCA                                        ;9900
        LD      (de),a                              ;9901
        RRCA                                        ;9902
        ADD     a,b                                 ;9903
        ADD     hl,bc                               ;9904
        LD      bc,0x203                            ;9905
        EX      af,af'                              ;9908
        INC     b                                   ;9909
        LD      de,0x506                            ;990a
        RLCA                                        ;990d
        INC     d                                   ;990e
        DEC     c                                   ;990f
        DJNZ    $+19                                ;9910
        INC     c                                   ;9912
        LD      (de),a                              ;9913
        RLCA                                        ;9914
        LD      (de),a                              ;9915
        ADD     a,b                                 ;9916
        LD      b,0x2                               ;9917
        LD      a,(bc)                              ;9919
        ADD     hl,bc                               ;991a
        RRCA                                        ;991b
        LD      c,0xc                               ;991c
        INC     de                                  ;991e
        LD      (de),a                              ;991f
        DEC     d                                   ;9920
        NOP                                         ;9921
        LD      d,0x10                              ;9922
        RLCA                                        ;9924
        NOP                                         ;9925
        LD      bc,0x404                            ;9926
        RLCA                                        ;9929
        RLCA                                        ;992a
        EX      af,af'                              ;992b
        INC     c                                   ;992c
        EX      af,af'                              ;992d
        SUB     c                                   ;992e
        DJNZ    bE_l9941h                           ;992f
        LD      de,0xc0f                            ;9931
        INC     b                                   ;9934
        LD      de,bE_l8204h                        ;9935
        RLCA                                        ;9938
        LD      a,(bc)                              ;9939
        RLCA                                        ;993a
        ADC     a,h                                 ;993b
        EX      af,af'                              ;993c
        DJNZ    bE_l9948h                           ;993d
        LD      c,0x9                               ;993f
bE_l9941h:
        SUB     d                                   ;9941
        INC     c                                   ;9942
        INC     d                                   ;9943
        INC     c                                   ;9944
        SUB     c                                   ;9945
        LD      c,0x14                              ;9946
bE_l9948h:
        LD      c,0x88                              ;9948
        LD      (de),a                              ;994a
        INC     de                                  ;994b
        LD      a,(bc)                              ;994c
        LD      bc,0x30c                            ;994d
        LD      bc,0x508                            ;9950
        ADD     hl,bc                               ;9953
        INC     b                                   ;9954
        LD      c,0x14                              ;9955
        DEC     d                                   ;9957
        LD      (bc),a                              ;9958
        DEC     de                                  ;9959
        RLCA                                        ;995a
        INC     sp                                  ;995b
        DJNZ    bE_l9994h                           ;995c
        LD      de,0x339                            ;995e
        JR      bE_l9964h                           ;9961
        NOP                                         ;9963
bE_l9964h:
        INC     bc                                  ;9964
        LD      (bc),a                              ;9965
        INC     bc                                  ;9966
        ADC     a,(hl)                              ;9967
        INC     b                                   ;9968
        LD      de,0x1407                           ;9969
        RLCA                                        ;996c
        ADC     a,b                                 ;996d
        EX      af,af'                              ;996e
        LD      (de),a                              ;996f
        ADD     hl,bc                               ;9970
        INC     bc                                  ;9971
        ADD     hl,bc                               ;9972
        ADC     a,h                                 ;9973
        DEC     c                                   ;9974
        DJNZ    bE_l9984h                           ;9975
        ADD     a,(hl)                              ;9977
        LD      c,0x14                              ;9978
        INC     d                                   ;997a
        INC     c                                   ;997b
        INC     d                                   ;997c
        SUB     h                                   ;997d
        RLA                                         ;997e
        LD      bc,0x131a                           ;997f
        DEC     de                                  ;9982
        INC     c                                   ;9983
bE_l9984h:
        DEC     de                                  ;9984
        ADD     a,b                                 ;9985
        DEC     e                                   ;9986
        RRCA                                        ;9987
        DEC     e                                   ;9988
        ADD     a,a                                 ;9989
        LD      e,0x14                              ;998a
bE_sub_998ch:
        JR      nz,bE_l999ah                        ;998c
        LD      hl,0x210d                           ;998e
        ADD     a,b                                 ;9991
        INC     bc                                  ;9992
        RLCA                                        ;9993
bE_l9994h:
        NOP                                         ;9994
        RLCA                                        ;9995
        ADD     a,e                                 ;9996
        RRCA                                        ;9997
        DJNZ    bE_l99a4h                           ;9998
bE_l999ah:
        INC     bc                                  ;999a
        INC     d                                   ;999b
        INC     bc                                  ;999c
        SUB     d                                   ;999d
        RLCA                                        ;999e
        INC     b                                   ;999f
        RLCA                                        ;99a0
        SUB     b                                   ;99a1
        INC     c                                   ;99a2
        NOP                                         ;99a3
bE_l99a4h:
        INC     c                                   ;99a4
        SUB     h                                   ;99a5
        RRCA                                        ;99a6
        INC     c                                   ;99a7
        RRCA                                        ;99a8
        ADD     a,c                                 ;99a9
        LD      de,0x1114                           ;99aa
        ADC     a,a                                 ;99ad
        ADD     hl,bc                               ;99ae
        LD      (bc),a                              ;99af
        INC     d                                   ;99b0
        INC     b                                   ;99b1
        NOP                                         ;99b2
        LD      b,0x2                               ;99b3
        EX      af,af'                              ;99b5
        DJNZ    bE_l99c3h                           ;99b6
        LD      c,0xd                               ;99b8
        LD      de,0x140f                           ;99ba
        DJNZ    bE_l99c2h                           ;99bd
        DJNZ    $-118                               ;99bf
        INC     b                                   ;99c1
bE_l99c2h:
        INC     b                                   ;99c2
bE_l99c3h:
        LD      b,0x5                               ;99c3
        EX      af,af'                              ;99c5
        DJNZ    bE_l99d8h                           ;99c6
        LD      de,0xd09                            ;99c8
        NOP                                         ;99cb
        LD      (bc),a                              ;99cc
        INC     bc                                  ;99cd
        DJNZ    bE_l99d9h                           ;99ce
        INC     d                                   ;99d0
        DJNZ    $+12                                ;99d1
        INC     de                                  ;99d3
        LD      (de),a                              ;99d4
        LD      hl,(0x2f12)                         ;99d5
bE_l99d8h:
        DEC     c                                   ;99d8
bE_l99d9h:
        LD      (0x3403),a                          ;99d9
        LD      bc,0xc39                            ;99dc
        LD      b,c                                 ;99df
        RRCA                                        ;99e0
        LD      b,h                                 ;99e1
        LD      de,0x746                            ;99e2
        EX      af,af'                              ;99e5
        LD      (bc),a                              ;99e6
        INC     b                                   ;99e7
        RLCA                                        ;99e8
        EX      af,af'                              ;99e9
        DEC     bc                                  ;99ea
        INC     c                                   ;99eb
        INC     de                                  ;99ec
        DJNZ    bE_l9a03h                           ;99ed
        NOP                                         ;99ef
        RLA                                         ;99f0
        LD      (bc),a                              ;99f1
        JR      bE_l9a08h                           ;99f2
        LD      a,(de)                              ;99f4
        RLCA                                        ;99f5
        DEC     c                                   ;99f6
        LD      bc,0x203                            ;99f7
        ADD     hl,bc                               ;99fa
        LD      (bc),a                              ;99fb
        ADC     a,b                                 ;99fc
        INC     b                                   ;99fd
        LD      de,0x8d04                           ;99fe
        LD      b,0x14                              ;9a01
bE_l9a03h:
        LD      b,0x87                              ;9a03
        ADD     hl,bc                               ;9a05
        DEC     b                                   ;9a06
        ADD     hl,bc                               ;9a07
bE_l9a08h:
        SUB     b                                   ;9a08
        INC     c                                   ;9a09
        INC     b                                   ;9a0a
        INC     c                                   ;9a0b
        SUB     h                                   ;9a0c
        RRCA                                        ;9a0d
        NOP                                         ;9a0e
        RRCA                                        ;9a0f
        ADD     a,d                                 ;9a10
        EX      af,af'                              ;9a11
        LD      bc,0x312                            ;9a12
        ADD     hl,bc                               ;9a15
        LD      b,0x10                              ;9a16
        RLCA                                        ;9a18
        NOP                                         ;9a19
        DEC     bc                                  ;9a1a
        LD      a,(bc)                              ;9a1b
        INC     c                                   ;9a1c
        INC     d                                   ;9a1d
        INC     c                                   ;9a1e
        ADD     a,e                                 ;9a1f
        LD      c,0xb                               ;9a20
        RLCA                                        ;9a22
        LD      bc,0x201                            ;9a23
        INC     d                                   ;9a26
        DEC     bc                                  ;9a27
        RLCA                                        ;9a28
        LD      de,0x1702                           ;9a29
        DEC     bc                                  ;9a2c
        JR      bE_l9a3fh                           ;9a2d
        INC     e                                   ;9a2f
        NOP                                         ;9a30
        DEC     bc                                  ;9a31
        LD      (bc),a                              ;9a32
        LD      de,0xa04                            ;9a33
        RLCA                                        ;9a36
        RLCA                                        ;9a37
        RLCA                                        ;9a38
        ADC     a,h                                 ;9a39
        DEC     bc                                  ;9a3a
        DEC     c                                   ;9a3b
        LD      (de),a                              ;9a3c
        INC     bc                                  ;9a3d
        INC     de                                  ;9a3e
bE_l9a3fh:
        INC     d                                   ;9a3f
        INC     de                                  ;9a40
        ADD     a,c                                 ;9a41
        JR      $+22                                ;9a42
        JR      $-114                               ;9a44
        INC     e                                   ;9a46
        DJNZ    bE_l9a54h                           ;9a47
        LD      (bc),a                              ;9a49
        LD      (bc),a                              ;9a4a
        DEC     b                                   ;9a4b
        INC     d                                   ;9a4c
        RLCA                                        ;9a4d
        LD      b,0x14                              ;9a4e
        RLCA                                        ;9a50
        LD      d,0x11                              ;9a51
        LD      a,(de)                              ;9a53
bE_l9a54h:
        INC     d                                   ;9a54
        DEC     de                                  ;9a55
        INC     c                                   ;9a56
        LD      e,0x8                               ;9a57
        INC     l                                   ;9a59
        DJNZ    bE_l9a8ch                           ;9a5a
        INC     b                                   ;9a5c
        ADD     hl,sp                               ;9a5d
        INC     bc                                  ;9a5e
        RLCA                                        ;9a5f
        INC     bc                                  ;9a60
        EX      af,af'                              ;9a61
        LD      a,(bc)                              ;9a62
        DJNZ    bE_l9a72h                           ;9a63
        INC     c                                   ;9a65
        RLA                                         ;9a66
        INC     bc                                  ;9a67
        JR      bE_l9a6ah                           ;9a68
bE_l9a6ah:
        DEC     de                                  ;9a6a
        RLCA                                        ;9a6b
        INC     e                                   ;9a6c
        LD      (bc),a                              ;9a6d
        INC     c                                   ;9a6e
        LD      (bc),a                              ;9a6f
        INC     d                                   ;9a70
bE_l9a71h:
        LD      (bc),a                              ;9a71
bE_l9a72h:
        SUB     c                                   ;9a72
        INC     bc                                  ;9a73
        LD      (bc),a                              ;9a74
        RLCA                                        ;9a75
        LD      a,(bc)                              ;9a76
        RLCA                                        ;9a77
        SUB     d                                   ;9a78
        ADD     hl,bc                               ;9a79
        RLCA                                        ;9a7a
        ADD     hl,bc                               ;9a7b
        ADD     a,e                                 ;9a7c
        LD      c,0x8                               ;9a7d
        LD      c,0x8c                              ;9a7f
        RRCA                                        ;9a81
        INC     de                                  ;9a82
        INC     d                                   ;9a83
        NOP                                         ;9a84
        INC     d                                   ;9a85
        SUB     b                                   ;9a86
        RLCA                                        ;9a87
        LD      bc,0x706                            ;9a88
        INC     bc                                  ;9a8b
bE_l9a8ch:
        RLCA                                        ;9a8c
        ADD     a,b                                 ;9a8d
        EX      af,af'                              ;9a8e
        EX      af,af'                              ;9a8f
        INC     c                                   ;9a90
        DJNZ    bE_l9aa0h                           ;9a91
        RLCA                                        ;9a93
        DEC     c                                   ;9a94
        SUB     c                                   ;9a95
        RLCA                                        ;9a96
        LD      bc,0x30a                            ;9a97
        DEC     bc                                  ;9a9a
        INC     b                                   ;9a9b
        DJNZ    bE_l9aa9h                           ;9a9c
        INC     c                                   ;9a9e
        DEC     c                                   ;9a9f
bE_l9aa0h:
        DEC     c                                   ;9aa0
        LD      c,0x4                               ;9aa1
        LD      c,0x8f                              ;9aa3
        LD      a,(bc)                              ;9aa5
        INC     bc                                  ;9aa6
        DEC     bc                                  ;9aa7
        INC     bc                                  ;9aa8
bE_l9aa9h:
        SUB     c                                   ;9aa9
        RLCA                                        ;9aaa
        LD      c,0x7                               ;9aab
        ADD     a,c                                 ;9aad
        INC     c                                   ;9aae
        DEC     b                                   ;9aaf
        INC     c                                   ;9ab0
        ADD     a,b                                 ;9ab1
        RRCA                                        ;9ab2
        INC     b                                   ;9ab3
        RRCA                                        ;9ab4
        SUB     b                                   ;9ab5
        LD      de,0x110c                           ;9ab6
        SUB     h                                   ;9ab9
        LD      a,(bc)                              ;9aba
        LD      bc,0x314                            ;9abb
        INC     bc                                  ;9abe
        EX      af,af'                              ;9abf
        DEC     b                                   ;9ac0
        ADD     hl,bc                               ;9ac1
        INC     b                                   ;9ac2
        LD      c,0xc                               ;9ac3
        DEC     d                                   ;9ac5
        RLCA                                        ;9ac6
        DEC     de                                  ;9ac7
        LD      (bc),a                              ;9ac8
        INC     sp                                  ;9ac9
        LD      b,0x36                              ;9aca
        DJNZ    bE_l9b07h                           ;9acc
        LD      bc,0x109                            ;9ace
        NOP                                         ;9ad1
        DEC     b                                   ;9ad2
        LD      de,0x90a                            ;9ad3
        INC     c                                   ;9ad6
        LD      (bc),a                              ;9ad7
        RRCA                                        ;9ad8
        EX      af,af'                              ;9ad9
        DJNZ    bE_l9af0h                           ;9ada
        DJNZ    bE_l9a71h                           ;9adc
