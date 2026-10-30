bF_lb776h:
        JR      c,$+50                              ;b776
        SUB     a                                   ;b778
        RET     c                                   ;b779
        LD      d,a                                 ;b77a
        LD      l,b                                 ;b77b
        LD      c,h                                 ;b77c
        SBC     a,b                                 ;b77d
        DAA                                         ;b77e
        LD      e,h                                 ;b77f
        ADD     a,a                                 ;b780
        LD      l,b                                 ;b781
        RLA                                         ;b782
        XOR     b                                   ;b783
        DAA                                         ;b784
        LD      l,b                                 ;b785
        ADC     a,l                                 ;b786
        LD      b,b                                 ;b787
        LD      h,a                                 ;b788
        XOR     b                                   ;b789
        LD      c,h                                 ;b78a
        DJNZ    bF_lb7b4h                           ;b78b
        CP      b                                   ;b78d
        LD      c,(hl)                              ;b78e
        LD      (hl),b                              ;b78f
        LD      e,(hl)                              ;b790
        LD      (hl),b                              ;b791
        LD      e,(hl)                              ;b792
        ADD     a,b                                 ;b793
        DAA                                         ;b794
        RET     z                                   ;b795
bF_lb796h:
        SBC     a,(hl)                              ;b796
        AND     b                                   ;b797
bF_lb798h:
        SBC     a,(hl)                              ;b798
        OR      b                                   ;b799
        SBC     a,(hl)                              ;b79a
        RET     nz                                  ;b79b
        ADD     a,a                                 ;b79c
        RET     c                                   ;b79d
        SCF                                         ;b79e
bF_lb79fh:
        LD      b,b                                 ;b79f
        CCF                                         ;b7a0
        ADD     a,b                                 ;b7a1
        SBC     a,b                                 ;b7a2
        AND     b                                   ;b7a3
        DEC     de                                  ;b7a4
        RET     z                                   ;b7a5
bF_lb7a6h:
        SBC     a,b                                 ;b7a6
        JR      nc,bF_lb740h                        ;b7a7
        SUB     b                                   ;b7a9
        LD      l,0xb0                              ;b7aa
        INC     a                                   ;b7ac
        RET     z                                   ;b7ad
        ADC     a,(hl)                              ;b7ae
        RET     nz                                  ;b7af
        SBC     a,(hl)                              ;b7b0
        RET     nz                                  ;b7b1
        LD      d,a                                 ;b7b2
        RET     nc                                  ;b7b3
bF_lb7b4h:
        ADC     a,(hl)                              ;b7b4
        CALL    c,0xd827                            ;b7b5
        DAA                                         ;b7b8
bF_lb7b9h:
        JR      nz,bF_lb7e7h                        ;b7b9
        XOR     b                                   ;b7bb
        ADD     hl,hl                               ;b7bc
bF_lb7bdh:
        LD      d,b                                 ;b7bd
        ADD     a,a                                 ;b7be
        RET     pe                                  ;b7bf
        DAA                                         ;b7c0
bF_lb7c1h:
        LD      d,b                                 ;b7c1
        ADC     a,(hl)                              ;b7c2
        LD      d,b                                 ;b7c3
        LD      c,b                                 ;b7c4
bF_lb7c5h:
        RET     c                                   ;b7c5
        LD      (hl),a                              ;b7c6
        LD      l,b                                 ;b7c7
        RLA                                         ;b7c8
        LD      b,b                                 ;b7c9
        LD      a,b                                 ;b7ca
        CP      b                                   ;b7cb
        LD      d,a                                 ;b7cc
        RET     z                                   ;b7cd
        DAA                                         ;b7ce
bF_lb7cfh:
        SUB     b                                   ;b7cf
        SBC     a,h                                 ;b7d0
        LD      a,b                                 ;b7d1
        DEC     l                                   ;b7d2
bF_lb7d3h:
        LD      d,b                                 ;b7d3
        ADD     a,a                                 ;b7d4
        RET     c                                   ;b7d5
        DAA                                         ;b7d6
        CALL    z,0x2018                            ;b7d7
        ADD     a,a                                 ;b7da
        RET     z                                   ;b7db
        ADC     a,(hl)                              ;b7dc
        LD      d,b                                 ;b7dd
        LD      l,0x70                              ;b7de
        RLA                                         ;b7e0
        AND     b                                   ;b7e1
        ADD     hl,hl                               ;b7e2
        RET     pe                                  ;b7e3
        LD      d,a                                 ;b7e4
        ADC     a,b                                 ;b7e5
        ADD     a,a                                 ;b7e6
bF_lb7e7h:
        LD      d,b                                 ;b7e7
        DEC     hl                                  ;b7e8
        CP      b                                   ;b7e9
        DAA                                         ;b7ea
        JR      nc,bF_lb825h                        ;b7eb
bF_lb7edh:
        ADD     a,b                                 ;b7ed
        LD      e,0xb0                              ;b7ee
        SBC     a,(hl)                              ;b7f0
        CP      b                                   ;b7f1
        DEC     sp                                  ;b7f2
        LD      b,b                                 ;b7f3
        DAA                                         ;b7f4
        SBC     a,b                                 ;b7f5
        DAA                                         ;b7f6
        LD      e,b                                 ;b7f7
bF_lb7f8h:
        RLA                                         ;b7f8
        JR      nz,bF_lb864h                        ;b7f9
        SBC     a,b                                 ;b7fb
        RLA                                         ;b7fc
        JR      nz,bF_lb857h                        ;b7fd
bF_lb7ffh:
        XOR     b                                   ;b7ff
        LD      l,l                                 ;b800
        LD      h,b                                 ;b801
        SUB     a                                   ;b802
        CALL    c,0x103a                            ;b803
        ADD     a,a                                 ;b806
        ADD     a,b                                 ;b807
        SBC     a,l                                 ;b808
        RET     c                                   ;b809
        LD      b,a                                 ;b80a
        JR      nz,bF_lb888h                        ;b80b
        CP      b                                   ;b80d
        SCF                                         ;b80e
        JR      nc,bF_lb85fh                        ;b80f
        SUB     b                                   ;b811
        ADC     a,c                                 ;b812
        CP      b                                   ;b813
        LD      e,b                                 ;b814
        LD      h,b                                 ;b815
        SCF                                         ;b816
        XOR     b                                   ;b817
        DAA                                         ;b818
        JR      nc,bF_lb873h                        ;b819
        JR      nz,bF_lb857h                        ;b81b
        RET     z                                   ;b81d
        DAA                                         ;b81e
        RET     nz                                  ;b81f
        LD      a,0x60                              ;b820
        ADC     a,(hl)                              ;b822
        RET     nz                                  ;b823
        SBC     a,(hl)                              ;b824
bF_lb825h:
        RET     z                                   ;b825
        ADD     a,a                                 ;b826
        LD      d,b                                 ;b827
        LD      a,b                                 ;b828
        CP      b                                   ;b829
        CPL                                         ;b82a
        JR      nc,bF_lb7b4h                        ;b82b
        CP      b                                   ;b82d
        LD      e,e                                 ;b82e
        JR      nc,bF_lb7b9h                        ;b82f
        RET     z                                   ;b831
        LD      d,a                                 ;b832
        XOR     h                                   ;b833
        LD      (hl),a                              ;b834
        ADC     a,b                                 ;b835
        SCF                                         ;b836
        CP      b                                   ;b837
        LD      e,b                                 ;b838
        LD      b,b                                 ;b839
        SCF                                         ;b83a
        RET     z                                   ;b83b
        LD      d,a                                 ;b83c
        LD      l,b                                 ;b83d
        LD      b,a                                 ;b83e
        SBC     a,b                                 ;b83f
        ADD     a,a                                 ;b840
        LD      d,b                                 ;b841
        ADC     a,h                                 ;b842
        CP      b                                   ;b843
        LD      h,a                                 ;b844
        LD      l,b                                 ;b845
        JR      z,$-110                             ;b846
        ADC     a,e                                 ;b848
        CP      b                                   ;b849
        LD      d,a                                 ;b84a
        LD      b,b                                 ;b84b
        LD      e,c                                 ;b84c
        RET     z                                   ;b84d
        LD      (hl),a                              ;b84e
        LD      l,b                                 ;b84f
        LD      a,b                                 ;b850
        JR      c,bF_lb8bah                         ;b851
        LD      d,b                                 ;b853
        LD      l,(hl)                              ;b854
        OR      b                                   ;b855
        LD      l,(hl)                              ;b856
bF_lb857h:
        RET     nz                                  ;b857
        INC     e                                   ;b858
        CALL    pe,0x5877                           ;b859
        LD      a,l                                 ;b85c
        DJNZ    bF_lb7edh                           ;b85d
bF_lb85fh:
        DJNZ    bF_lb7ffh                           ;b85f
        DJNZ    bF_lb89ah                           ;b861
        XOR     b                                   ;b863
bF_lb864h:
        LD      d,a                                 ;b864
        JR      nc,bF_lb8b3h                        ;b865
        CP      b                                   ;b867
        LD      e,0x10                              ;b868
        LD      e,0x20                              ;b86a
        LD      h,a                                 ;b86c
        SBC     a,b                                 ;b86d
        DEC     hl                                  ;b86e
        JR      nc,bF_lb7f8h                        ;b86f
        ADC     a,b                                 ;b871
        LD      l,(hl)                              ;b872
bF_lb873h:
        LD      h,b                                 ;b873
        LD      e,(hl)                              ;b874
        LD      (hl),b                              ;b875
        LD      l,(hl)                              ;b876
        LD      (hl),b                              ;b877
        DAA                                         ;b878
        XOR     b                                   ;b879
        LD      e,b                                 ;b87a
        JR      nz,$+96                             ;b87b
        LD      d,b                                 ;b87d
        LD      e,(hl)                              ;b87e
        LD      h,b                                 ;b87f
        LD      d,a                                 ;b880
        XOR     b                                   ;b881
        LD      (hl),a                              ;b882
        CP      b                                   ;b883
        SCF                                         ;b884
        ADD     a,b                                 ;b885
        LD      a,(hl)                              ;b886
bF_sub_b887h:
        ADD     a,b                                 ;b887
bF_lb888h:
        LD      l,b                                 ;b888
        RET     c                                   ;b889
        SBC     a,a                                 ;b88a
        LD      h,b                                 ;b88b
        ADD     a,a                                 ;b88c
        CP      h                                   ;b88d
        LD      (hl),a                              ;b88e
        LD      l,b                                 ;b88f
        LD      c,e                                 ;b890
        ADC     a,b                                 ;b891
        SCF                                         ;b892
        LD      b,b                                 ;b893
        DEC     l                                   ;b894
        RET     nz                                  ;b895
        LD      a,h                                 ;b896
        RET     pe                                  ;b897
        LD      l,(hl)                              ;b898
        LD      (hl),b                              ;b899
bF_lb89ah:
        LD      l,(hl)                              ;b89a
bF_lb89bh:
        ADD     a,b                                 ;b89b
        LD      h,a                                 ;b89c
        RET     z                                   ;b89d
        INC     l                                   ;b89e
        JR      nz,bF_lb918h                        ;b89f
        LD      c,b                                 ;b8a1
        DAA                                         ;b8a2
        RET     nz                                  ;b8a3
        ADC     a,(hl)                              ;b8a4
        RET     nz                                  ;b8a5
        SBC     a,(hl)                              ;b8a6
        RET     z                                   ;b8a7
        DEC     sp                                  ;b8a8
        JR      nc,bF_lb923h                        ;b8a9
        RET     pe                                  ;b8ab
        DAA                                         ;b8ac
        CP      h                                   ;b8ad
        JR      z,bF_lb8e8h                         ;b8ae
        ADD     a,a                                 ;b8b0
        DJNZ    bF_lb8f0h                           ;b8b1
bF_lb8b3h:
        CP      b                                   ;b8b3
        INC     a                                   ;b8b4
        LD      c,b                                 ;b8b5
        LD      e,(hl)                              ;b8b6
        LD      d,b                                 ;b8b7
        LD      l,(hl)                              ;b8b8
        LD      d,b                                 ;b8b9
bF_lb8bah:
        LD      a,(hl)                              ;b8ba
        LD      d,b                                 ;b8bb
        LD      h,a                                 ;b8bc
        LD      l,b                                 ;b8bd
        ADC     a,h                                 ;b8be
        JR      nc,bF_lb90fh                        ;b8bf
        SUB     b                                   ;b8c1
        LD      c,(hl)                              ;b8c2
        AND     b                                   ;b8c3
        LD      e,(hl)                              ;b8c4
        XOR     b                                   ;b8c5
        JR      z,bF_lb908h                         ;b8c6
        LD      (hl),a                              ;b8c8
        ADC     a,b                                 ;b8c9
        SBC     a,h                                 ;b8ca
        RET     pe                                  ;b8cb
        LD      a,(hl)                              ;b8cc
        JR      nz,bF_lb94dh                        ;b8cd
        JR      nc,bF_lb94fh                        ;b8cf
        LD      b,b                                 ;b8d1
        RLA                                         ;b8d2
        RET     z                                   ;b8d3
        ADC     a,e                                 ;b8d4
        ADD     a,b                                 ;b8d5
        LD      a,0xc0                              ;b8d6
        LD      c,(hl)                              ;b8d8
        RET     nz                                  ;b8d9
        LD      a,0xd8                              ;b8da
bF_lb8dch:
        LD      a,(hl)                              ;b8dc
        LD      b,b                                 ;b8dd
        ADC     a,(hl)                              ;b8de
        LD      b,b                                 ;b8df
        RLA                                         ;b8e0
        CP      b                                   ;b8e1
        ADD     hl,de                               ;b8e2
        LD      h,b                                 ;b8e3
        SUB     a                                   ;b8e4
        SBC     a,b                                 ;b8e5
        DEC     l                                   ;b8e6
        XOR     h                                   ;b8e7
bF_lb8e8h:
        ADC     a,h                                 ;b8e8
        JR      nz,bF_lb943h                        ;b8e9
        LD      b,b                                 ;b8eb
        LD      d,a                                 ;b8ec
        CP      b                                   ;b8ed
        LD      l,0x40                              ;b8ee
bF_lb8f0h:
        LD      c,(hl)                              ;b8f0
        LD      (hl),b                              ;b8f1
        DAA                                         ;b8f2
        RET     nz                                  ;b8f3
        ADC     a,(hl)                              ;b8f4
        RET     z                                   ;b8f5
        ADD     a,a                                 ;b8f6
        CP      b                                   ;b8f7
        DAA                                         ;b8f8
        CP      b                                   ;b8f9
        LD      b,a                                 ;b8fa
        JR      nc,bF_lb89bh                        ;b8fb
        SUB     b                                   ;b8fd
        DEC     hl                                  ;b8fe
        XOR     b                                   ;b8ff
        RLA                                         ;b900
        AND     b                                   ;b901
        ADD     hl,hl                               ;b902
        RET     pe                                  ;b903
        LD      b,a                                 ;b904
bF_lb905h:
        JR      nc,bF_lb955h                        ;b905
        CP      b                                   ;b907
bF_lb908h:
        LD      d,a                                 ;b908
        LD      (hl),b                              ;b909
        LD      e,b                                 ;b90a
        CALL    z,0x4019                            ;b90b
bF_lb90eh:
        ADD     a,a                                 ;b90e
bF_lb90fh:
        CP      b                                   ;b90f
        JR      z,bF_lb98ah                         ;b910
        LD      b,a                                 ;b912
        JR      nc,bF_lb963h                        ;b913
        SBC     a,b                                 ;b915
        ADD     hl,sp                               ;b916
        LD      c,b                                 ;b917
bF_lb918h:
        DAA                                         ;b918
        LD      b,b                                 ;b919
        LD      l,(hl)                              ;b91a
        SUB     b                                   ;b91b
        LD      a,(hl)                              ;b91c
        SUB     b                                   ;b91d
        SBC     a,l                                 ;b91e
        CP      b                                   ;b91f
        NOP                                         ;b920
        EX      af,af'                              ;b921
        LD      (hl),a                              ;b922
bF_lb923h:
        LD      l,b                                 ;b923
        LD      e,e                                 ;b924
        LD      b,b                                 ;b925
        LD      e,(hl)                              ;b926
        ADD     a,b                                 ;b927
        RLA                                         ;b928
        ADC     a,b                                 ;b929
        ADD     a,a                                 ;b92a
        LD      b,b                                 ;b92b
        LD      c,b                                 ;b92c
        RET     c                                   ;b92d
        ADC     a,(hl)                              ;b92e
        LD      b,b                                 ;b92f
        ADC     a,(hl)                              ;b930
        LD      d,b                                 ;b931
        ADD     a,a                                 ;b932
        LD      l,b                                 ;b933
        ADD     a,a                                 ;b934
        LD      h,b                                 ;b935
        LD      e,b                                 ;b936
        RET     c                                   ;b937
        NOP                                         ;b938
        EX      af,af'                              ;b939
        NOP                                         ;b93a
        EX      af,af'                              ;b93b
bF_lb93ch:
        ADD     a,a                                 ;b93c
        CALL    c,0x3047                            ;b93d
        LD      e,(hl)                              ;b940
        SUB     b                                   ;b941
        LD      e,(hl)                              ;b942
bF_lb943h:
        AND     b                                   ;b943
        LD      e,(hl)                              ;b944
        CP      b                                   ;b945
        ADC     a,b                                 ;b946
        JR      nz,bF_lb9b7h                        ;b947
        LD      (hl),b                              ;b949
        LD      b,a                                 ;b94a
        RET     nz                                  ;b94b
        SBC     a,d                                 ;b94c
bF_lb94dh:
        RET     pe                                  ;b94d
        LD      d,a                                 ;b94e
bF_lb94fh:
        JR      nz,bF_lb980h                        ;b94f
        LD      a,b                                 ;b951
        ADC     a,b                                 ;b952
        JR      nz,bF_lb8dch                        ;b953
bF_lb955h:
        LD      c,b                                 ;b955
        LD      l,b                                 ;b956
        JR      nc,bF_lb980h                        ;b957
        LD      a,b                                 ;b959
        LD      l,e                                 ;b95a
        LD      b,b                                 ;b95b
        LD      (hl),a                              ;b95c
        SBC     a,b                                 ;b95d
        LD      c,b                                 ;b95e
        JR      nz,bF_lb8e8h                        ;b95f
        LD      d,b                                 ;b961
        LD      c,d                                 ;b962
bF_lb963h:
        RET     z                                   ;b963
        LD      l,l                                 ;b964
        LD      h,b                                 ;b965
        RLA                                         ;b966
        XOR     b                                   ;b967
        DEC     sp                                  ;b968
        DJNZ    bF_lb982h                           ;b969
        LD      l,b                                 ;b96b
        ADD     a,a                                 ;b96c
        LD      (hl),b                              ;b96d
        LD      c,b                                 ;b96e
        CALL    c,0x7097                            ;b96f
        INC     e                                   ;b972
        CP      b                                   ;b973
        ADC     a,(hl)                              ;b974
bF_lb975h:
        DJNZ    bF_lb905h                           ;b975
        LD      b,b                                 ;b977
        ADC     a,(hl)                              ;b978
        LD      d,b                                 ;b979
        LD      b,a                                 ;b97a
        RET     z                                   ;b97b
        LD      (hl),a                              ;b97c
        LD      l,b                                 ;b97d
bF_lb97eh:
        LD      l,0x70                              ;b97e
bF_lb980h:
        INC     e                                   ;b980
        AND     b                                   ;b981
bF_lb982h:
        LD      (hl),a                              ;b982
bF_lb983h:
        CP      b                                   ;b983
        LD      l,b                                 ;b984
        JR      nc,bF_lb90eh                        ;b985
        LD      a,b                                 ;b987
        LD      l,(hl)                              ;b988
        LD      h,b                                 ;b989
bF_lb98ah:
        LD      e,(hl)                              ;b98a
        LD      (hl),b                              ;b98b
        LD      l,(hl)                              ;b98c
        LD      (hl),b                              ;b98d
        DAA                                         ;b98e
        XOR     b                                   ;b98f
        SBC     a,(hl)                              ;b990
        LD      d,b                                 ;b991
        ADC     a,(hl)                              ;b992
        LD      h,b                                 ;b993
        SBC     a,(hl)                              ;b994
        LD      h,b                                 ;b995
        SUB     a                                   ;b996
        RET     z                                   ;b997
        RLA                                         ;b998
        DJNZ    bF_lb9f3h                           ;b999
        LD      (hl),b                              ;b99b
        DEC     hl                                  ;b99c
        CP      b                                   ;b99d
        LD      e,l                                 ;b99e
        LD      b,b                                 ;b99f
        ADD     a,a                                 ;b9a0
        RET     z                                   ;b9a1
        LD      (hl),a                              ;b9a2
        LD      (hl),b                              ;b9a3
        ADD     hl,hl                               ;b9a4
        CALL    z,bF_sub_b887h                      ;b9a5
        DEC     hl                                  ;b9a8
        XOR     b                                   ;b9a9
        LD      (hl),a                              ;b9aa
        SBC     a,b                                 ;b9ab
        ADD     a,a                                 ;b9ac
        LD      a,b                                 ;b9ad
        LD      c,b                                 ;b9ae
        JR      nz,bF_lb9e0h                        ;b9af
        LD      b,b                                 ;b9b1
        SBC     a,(hl)                              ;b9b2
        SUB     b                                   ;b9b3
        RLA                                         ;b9b4
        XOR     b                                   ;b9b5
        DEC     l                                   ;b9b6
bF_lb9b7h:
        LD      b,b                                 ;b9b7
        LD      h,a                                 ;b9b8
        CP      b                                   ;b9b9
        JR      bF_lb93ch                           ;b9ba
        SUB     a                                   ;b9bc
        ADC     a,b                                 ;b9bd
        DAA                                         ;b9be
        LD      d,b                                 ;b9bf
        LD      l,b                                 ;b9c0
        RET     nz                                  ;b9c1
        ADC     a,(hl)                              ;b9c2
        RET     nz                                  ;b9c3
        SBC     a,(hl)                              ;b9c4
        CALL    z,0x6037                            ;b9c5
        LD      a,b                                 ;b9c8
        RET     z                                   ;b9c9
        LD      l,(hl)                              ;b9ca
        LD      (hl),b                              ;b9cb
        LD      l,(hl)                              ;b9cc
        ADD     a,b                                 ;b9cd
        ADD     a,a                                 ;b9ce
        XOR     b                                   ;b9cf
        LD      l,c                                 ;b9d0
        JR      nz,bF_lb9fah                        ;b9d1
        SBC     a,b                                 ;b9d3
        LD      l,(hl)                              ;b9d4
        LD      (hl),b                              ;b9d5
        LD      l,(hl)                              ;b9d6
        ADD     a,b                                 ;b9d7
        ADD     a,a                                 ;b9d8
        RET     z                                   ;b9d9
        JR      bF_lba0ch                           ;b9da
        LD      (hl),a                              ;b9dc
        LD      b,b                                 ;b9dd
        LD      a,b                                 ;b9de
        RET     c                                   ;b9df
bF_lb9e0h:
        DAA                                         ;b9e0
        JR      nc,$-112                            ;b9e1
        JR      nc,bF_lb983h                        ;b9e3
        JR      nc,bF_lb975h                        ;b9e5
        LD      c,b                                 ;b9e7
        DEC     hl                                  ;b9e8
        JR      nc,bF_lba32h                        ;b9e9
        XOR     b                                   ;b9eb
        DAA                                         ;b9ec
        LD      a,b                                 ;b9ed
        DAA                                         ;b9ee
        JR      nc,bF_lb97eh                        ;b9ef
        JR      nz,$+64                             ;b9f1
bF_lb9f3h:
        RET     nz                                  ;b9f3
        LD      a,0xd8                              ;b9f4
        LD      h,a                                 ;b9f6
        JR      c,bF_lb9f9h                         ;b9f7
bF_lb9f9h:
        EX      af,af'                              ;b9f9
bF_lb9fah:
        INC     e                                   ;b9fa
        LD      h,b                                 ;b9fb
        SUB     a                                   ;b9fc
        SBC     a,h                                 ;b9fd
        LD      e,0xb0                              ;b9fe
        LD      e,0xc0                              ;ba00
        LD      l,0xc0                              ;ba02
        DAA                                         ;ba04
        RET     pe                                  ;ba05
        LD      e,h                                 ;ba06
        LD      h,b                                 ;ba07
        LD      h,a                                 ;ba08
        SBC     a,b                                 ;ba09
        RLA                                         ;ba0a
        LD      b,b                                 ;ba0b
bF_lba0ch:
        LD      e,(hl)                              ;ba0c
        LD      b,b                                 ;ba0d
        ADC     a,h                                 ;ba0e
        LD      c,b                                 ;ba0f
        DEC     de                                  ;ba10
        LD      b,b                                 ;ba11
        LD      b,a                                 ;ba12
        ADC     a,b                                 ;ba13
bF_lba14h:
        SCF                                         ;ba14
        JR      nz,bF_lba75h                        ;ba15
bF_lba17h:
        AND     b                                   ;ba17
        LD      l,(hl)                              ;ba18
        AND     b                                   ;ba19
        LD      c,h                                 ;ba1a
        CP      b                                   ;ba1b
        SUB     a                                   ;ba1c
        DJNZ    bF_lba9dh                           ;ba1d
        JR      nz,bF_lba9fh                        ;ba1f
        JR      nc,bF_lbaa1h                        ;ba21
        LD      c,b                                 ;ba23
        LD      (hl),a                              ;ba24
bF_lba25h:
        JR      nc,bF_lba7fh                        ;ba25
        SBC     a,b                                 ;ba27
        LD      a,0x20                              ;ba28
        LD      a,(hl)                              ;ba2a
        LD      b,b                                 ;ba2b
        SUB     a                                   ;ba2c
        AND     b                                   ;ba2d
        CPL                                         ;ba2e
        CALL    pe,0x5887                           ;ba2f
bF_lba32h:
        SUB     a                                   ;ba32
        LD      (hl),b                              ;ba33
bF_lba34h:
        DEC     hl                                  ;ba34
        RET     pe                                  ;ba35
        ADD     a,a                                 ;ba36
        JR      nz,bF_lbaa1h                        ;ba37
        SBC     a,b                                 ;ba39
        ADC     a,(hl)                              ;ba3a
        LD      b,b                                 ;ba3b
        ADC     a,(hl)                              ;ba3c
        LD      d,b                                 ;ba3d
        DEC     l                                   ;ba3e
        LD      h,b                                 ;ba3f
        ADD     a,a                                 ;ba40
        RET     z                                   ;ba41
        ADD     hl,hl                               ;ba42
        JR      nc,bF_lbabch                        ;ba43
        ADC     a,b                                 ;ba45
        LD      e,0x20                              ;ba46
        LD      e,0x30                              ;ba48
        LD      (hl),a                              ;ba4a
        LD      c,b                                 ;ba4b
        INC     a                                   ;ba4c
        LD      b,b                                 ;ba4d
bF_lba4eh:
        LD      c,(hl)                              ;ba4e
        SUB     b                                   ;ba4f
        SUB     a                                   ;ba50
        RET     pe                                  ;ba51
        RLA                                         ;ba52
        LD      e,h                                 ;ba53
        RLA                                         ;ba54
        JR      nz,bF_lbaa0h                        ;ba55
        LD      (hl),b                              ;ba57
        ADC     a,b                                 ;ba58
        RET     c                                   ;ba59
        LD      c,(hl)                              ;ba5a
        LD      h,b                                 ;ba5b
        SUB     a                                   ;ba5c
        ADC     a,b                                 ;ba5d
        LD      e,l                                 ;ba5e
        JR      nz,$+89                             ;ba5f
        RET     c                                   ;ba61
        NOP                                         ;ba62
        EX      af,af'                              ;ba63
        DEC     sp                                  ;ba64
        JR      nc,bF_lba9eh                        ;ba65
        RET     z                                   ;ba67
        LD      (hl),a                              ;ba68
        XOR     b                                   ;ba69
        SUB     a                                   ;ba6a
        JR      nz,bF_lba9bh                        ;ba6b
        OR      b                                   ;ba6d
        LD      a,0xc8                              ;ba6e
        SBC     a,e                                 ;ba70
        LD      b,b                                 ;ba71
        SCF                                         ;ba72
        XOR     b                                   ;ba73
        DAA                                         ;ba74
