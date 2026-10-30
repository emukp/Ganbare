        DEFB    0x25,0x00,0x02,0x02,0x86,0x00,0x01,0x01  ;a7dd ; data:gfx
        DEFB    0x02,0x0c,0x30,0x13,0x00,0x85,0x03,0x07  ;a7e5
        DEFB    0x0b,0x05,0x03,0x0c,0x00,0x02,0xc0,0x81  ;a7ed
        DEFB    0x80,0x04,0x00,0x02,0x04,0x8a,0x00,0x02  ;a7f5
        DEFB    0x02,0x04,0x38,0x00,0x00,0x03,0x07,0x03  ;a7fd
        DEFB    0x0e,0x00,0x81,0xc0,0x0d,0x00,0x86,0x07  ;a805
        DEFB    0x0f,0x1f,0x17,0x09,0x07,0x0b,0x00,0x84  ;a80d
        DEFB    0x80,0xc0,0xc0,0x80,0x04,0x00,0x02,0x04  ;a815
        DEFB    0x8a,0x00,0x02,0x02,0x04,0x38,0x00,0x07  ;a81d
        DEFB    0x0f,0x0f,0x07,0x0d,0x00,0x82,0x80,0xc0  ;a825
        DEFB    0x0c,0x00,0x00                      ;a82d
bC_la7fch: equ     #a7fc
bC_la801h: equ     #a801
bC_la824h: equ     #a824
        LD      d,d                                 ;a830
        ADC     a,b                                 ;a831
        ADD     a,b                                 ;a832
        LD      sp,hl                               ;a833
        RST     KEYINT                              ;a834
        RST     KEYINT                              ;a835
        RST     KEYINT                              ;a836
        RST     KEYINT                              ;a837
        RST     KEYINT                              ;a838
        RST     KEYINT                              ;a839
        INC     l                                   ;a83a
        ADC     a,c                                 ;a83b
        NOP                                         ;a83c
        EI                                          ;a83d
        RST     KEYINT                              ;a83e
        RST     KEYINT                              ;a83f
        RST     KEYINT                              ;a840
        RST     KEYINT                              ;a841
        ADD     a,b                                 ;a842
        EI                                          ;a843
        RET     p                                   ;a844
        ADC     a,c                                 ;a845
        NOP                                         ;a846
        EI                                          ;a847
        RST     KEYINT                              ;a848
        RST     KEYINT                              ;a849
        RST     KEYINT                              ;a84a
        RST     KEYINT                              ;a84b
        NOP                                         ;a84c
        AND     (iy-0x74)                           ;a84d
        ADD     a,b                                 ;a850
        LD      sp,hl                               ;a851
        RST     KEYINT                              ;a852
        RST     KEYINT                              ;a853
        RST     KEYINT                              ;a854
        RST     KEYINT                              ;a855
        NOP                                         ;a856
        JP      m,0x8d0e                            ;a857
        NOP                                         ;a85a
        EI                                          ;a85b
        RST     KEYINT                              ;a85c
        RST     KEYINT                              ;a85d
        RST     KEYINT                              ;a85e
        RST     KEYINT                              ;a85f
        NOP                                         ;a860
        CALL    m,0x8e09                            ;a861
        ADD     a,b                                 ;a864
        LD      sp,hl                               ;a865
        RST     KEYINT                              ;a866
        RST     KEYINT                              ;a867
        RST     KEYINT                              ;a868
        RST     KEYINT                              ;a869
        RST     KEYINT                              ;a86a
        RST     KEYINT                              ;a86b
        CALL    nc,0x808e                           ;a86c
        LD      sp,hl                               ;a86f
        LD      (hl),h                              ;a870
        DEC     b                                   ;a871
        LD      d,b                                 ;a872
        INC     bc                                  ;a873
        NOP                                         ;a874
        JP      m,0x8f52                            ;a875
        ADD     a,b                                 ;a878
        LD      sp,hl                               ;a879
        RST     KEYINT                              ;a87a
        RST     KEYINT                              ;a87b
        RST     KEYINT                              ;a87c
        RST     KEYINT                              ;a87d
        LD      b,b                                 ;a87e
        JP      m,0x9012                            ;a87f
        NOP                                         ;a882
        EI                                          ;a883
        RST     KEYINT                              ;a884
        RST     KEYINT                              ;a885
        RST     KEYINT                              ;a886
        RST     KEYINT                              ;a887
        NOP                                         ;a888
        CALL    m,0x9104                            ;a889
        ADD     a,b                                 ;a88c
        DEFB    0xfd,0xff,0xff                      ;a88d
        RST     KEYINT                              ;a890
        RST     KEYINT                              ;a891
        ADD     a,b                                 ;a892
        CP      0x2a                                ;a893
        SUB     d                                   ;a895
        NOP                                         ;a896
        LD      (iy+0x5),h                          ;a897
        LD      (hl),a                              ;a89a
        RLCA                                        ;a89b
        NOP                                         ;a89c
        CP      0x2a                                ;a89d
        SUB     d                                   ;a89f
        NOP                                         ;a8a0
        LD      (iy+0x5),h                          ;a8a1
        LD      d,b                                 ;a8a4
        NOP                                         ;a8a5
        NOP                                         ;a8a6
        CP      0x60                                ;a8a7
        SUB     e                                   ;a8a9
        ADD     a,b                                 ;a8aa
        CP      0xff                                ;a8ab
        RST     KEYINT                              ;a8ad
        RST     KEYINT                              ;a8ae
        RST     KEYINT                              ;a8af
        RST     KEYINT                              ;a8b0
        RST     KEYINT                              ;a8b1
        LD      h,b                                 ;a8b2
        SUB     e                                   ;a8b3
        ADD     a,b                                 ;a8b4
        CP      0xff                                ;a8b5
        RST     KEYINT                              ;a8b7
        RST     KEYINT                              ;a8b8
        RST     KEYINT                              ;a8b9
        RST     KEYINT                              ;a8ba
        RST     KEYINT                              ;a8bb
        ADD     a,h                                 ;a8bc
        SUB     h                                   ;a8bd
        NOP                                         ;a8be
        DEFB    0xfd,0xff,0xff                      ;a8bf
        RST     KEYINT                              ;a8c2
        RST     KEYINT                              ;a8c3
        RST     KEYINT                              ;a8c4
        RST     KEYINT                              ;a8c5
        RRA                                         ;a8c6
        SUB     l                                   ;a8c7
        ADD     a,b                                 ;a8c8
        CP      0x74                                ;a8c9
        DEC     b                                   ;a8cb
        LD      d,b                                 ;a8cc
        INC     bc                                  ;a8cd
        LD      b,b                                 ;a8ce
        RST     KEYINT                              ;a8cf
        EXX                                         ;a8d0
        SUB     l                                   ;a8d1
        ADD     a,b                                 ;a8d2
        LD      sp,hl                               ;a8d3
        RST     KEYINT                              ;a8d4
        RST     KEYINT                              ;a8d5
        RST     KEYINT                              ;a8d6
        RST     KEYINT                              ;a8d7
        LD      b,b                                 ;a8d8
        JP      m,0x95d9                            ;a8d9
        ADD     a,b                                 ;a8dc
        LD      sp,hl                               ;a8dd
        LD      (hl),a                              ;a8de
        RLCA                                        ;a8df
        LD      b,a                                 ;a8e0
        INC     bc                                  ;a8e1
        NOP                                         ;a8e2
        EI                                          ;a8e3
        ADC     a,a                                 ;a8e4
        SUB     (hl)                                ;a8e5
        NOP                                         ;a8e6
        EI                                          ;a8e7
        LD      (hl),h                              ;a8e8
        DEC     b                                   ;a8e9
        LD      d,b                                 ;a8ea
        INC     bc                                  ;a8eb
        NOP                                         ;a8ec
        CALL    m,0x9783                            ;a8ed
        NOP                                         ;a8f0
        LD      b,(iy+0x5)                          ;a8f1
        LD      (hl),h                              ;a8f4
        DEC     b                                   ;a8f5
        LD      b,b                                 ;a8f6
        CP      0x98                                ;a8f7
        SBC     a,b                                 ;a8f9
        ADD     a,b                                 ;a8fa
        LD      sp,hl                               ;a8fb
        LD      (hl),h                              ;a8fc
        DEC     b                                   ;a8fd
        LD      d,b                                 ;a8fe
        INC     bc                                  ;a8ff
        RET     nz                                  ;a900
        JP      m,0x99ba                            ;a901
        NOP                                         ;a904
        LD      (iy+0x5),h                          ;a905
        LD      d,b                                 ;a908
        INC     bc                                  ;a909
        ADD     a,b                                 ;a90a
        CP      0xf1                                ;a90b
        SBC     a,d                                 ;a90d
        NOP                                         ;a90e
        LD      (iy+0x5),h                          ;a90f
        LD      (hl),a                              ;a912
        RLCA                                        ;a913
        NOP                                         ;a914
        CP      0xe0                                ;a915
        SBC     a,e                                 ;a917
        NOP                                         ;a918
        LD      (iy+0x5),h                          ;a919
        LD      d,b                                 ;a91c
        INC     bc                                  ;a91d
        RET     nz                                  ;a91e
        DEFB    0xfd,0x81,0x9c                      ;a91f
        NOP                                         ;a922
        DEFB    0xfd,0xff,0xff                      ;a923
        RST     KEYINT                              ;a926
        RST     KEYINT                              ;a927
        ADD     a,b                                 ;a928
        CP      0xa4                                ;a929
        SBC     a,l                                 ;a92b
        NOP                                         ;a92c
        DEFB    0xfd,0xff,0xff                      ;a92d
        RST     KEYINT                              ;a930
        RST     KEYINT                              ;a931
        ADD     a,b                                 ;a932
        CP      0xd4                                ;a933
        ADC     a,(hl)                              ;a935
        ADD     a,b                                 ;a936
        LD      sp,hl                               ;a937
        LD      (hl),h                              ;a938
        DEC     b                                   ;a939
        LD      d,b                                 ;a93a
        INC     bc                                  ;a93b
        NOP                                         ;a93c
        JP      m,0x9ef1                            ;a93d
        ADD     a,b                                 ;a940
        LD      sp,hl                               ;a941
        RST     KEYINT                              ;a942
        RST     KEYINT                              ;a943
        RST     KEYINT                              ;a944
        RST     KEYINT                              ;a945
        NOP                                         ;a946
        JP      m,0x9ef1                            ;a947
        ADD     a,b                                 ;a94a
        CALL    m,0x777                             ;a94b
        LD      b,a                                 ;a94e
        INC     bc                                  ;a94f
        RST     KEYINT                              ;a950
        RST     KEYINT                              ;a951
        LD      h,a                                 ;a952
        SBC     a,a                                 ;a953
        NOP                                         ;a954
        LD      (iy+0x5),h                          ;a955
        LD      d,b                                 ;a958
        INC     bc                                  ;a959
        ADD     a,b                                 ;a95a
        CP      0xbe                                ;a95b
        AND     b                                   ;a95d
        ADD     a,b                                 ;a95e
        LD      sp,hl                               ;a95f
        LD      d,(hl)                              ;a960
        NOP                                         ;a961
        HALT                                        ;a962
        LD      b,0x0                               ;a963
        EI                                          ;a965
        AND     b                                   ;a966
        AND     d                                   ;a967
        ADD     a,b                                 ;a968
        LD      sp,hl                               ;a969
        LD      (hl),h                              ;a96a
        DEC     b                                   ;a96b
        LD      (hl),0x2                            ;a96c
        NOP                                         ;a96e
        EI                                          ;a96f
        RST     CALLF                               ;a970
        AND     e                                   ;a971
        ADD     a,b                                 ;a972
        DEFB    0xfd,0xff,0xff                      ;a973
        RST     KEYINT                              ;a976
        RST     KEYINT                              ;a977
        LD      b,b                                 ;a978
bC_la979h:
        CP      0xb5                                ;a979
bC_la97bh:
        AND     h                                   ;a97b
        RET     nz                                  ;a97c
        LD      sp,hl                               ;a97d
        LD      (hl),h                              ;a97e
        DEC     b                                   ;a97f
        LD      h,e                                 ;a980
        INC     b                                   ;a981
        RST     KEYINT                              ;a982
        RST     KEYINT                              ;a983
        SBC     a,h                                 ;a984
        AND     l                                   ;a985
        RET     nz                                  ;a986
        LD      sp,hl                               ;a987
        LD      (hl),h                              ;a988
        DEC     b                                   ;a989
        LD      h,e                                 ;a98a
        INC     b                                   ;a98b
        RST     KEYINT                              ;a98c
        RST     KEYINT                              ;a98d
        ADC     a,a                                 ;a98e
        AND     (hl)                                ;a98f
        RET     nz                                  ;a990
        LD      sp,hl                               ;a991
        LD      (hl),h                              ;a992
        DEC     b                                   ;a993
        LD      (hl),a                              ;a994
        RLCA                                        ;a995
        RST     KEYINT                              ;a996
        RST     KEYINT                              ;a997
        LD      (bc),a                              ;a998
        SBC     a,h                                 ;a999
        ADC     a,c                                 ;a99a
        NOP                                         ;a99b
        CALL    m,0xad03                            ;a99c
        ADC     a,e                                 ;a99f
        NOP                                         ;a9a0
        RST     KEYINT                              ;a9a1
        LD      a,(bc)                              ;a9a2
        CP      a                                   ;a9a3
        SUB     c                                   ;a9a4
        ADD     a,b                                 ;a9a5
        RST     KEYINT                              ;a9a6
        DEC     bc                                  ;a9a7
        RRCA                                        ;a9a8
        SUB     e                                   ;a9a9
        NOP                                         ;a9aa
        RST     KEYINT                              ;a9ab
        INC     c                                   ;a9ac
        RRCA                                        ;a9ad
        SUB     e                                   ;a9ae
        NOP                                         ;a9af
        RST     KEYINT                              ;a9b0
        RRCA                                        ;a9b1
        INC     b                                   ;a9b2
        SUB     l                                   ;a9b3
        ADD     a,b                                 ;a9b4
        DEFB    0xfd,0x15,0x89                      ;a9b5
bC_la9b8h:
        SBC     a,c                                 ;a9b8
        NOP                                         ;a9b9
        CALL    m,0x1f                              ;a9ba
        AND     d                                   ;a9bd
        ADD     a,b                                 ;a9be
        DEFB    0xfc                                ;a9bf
