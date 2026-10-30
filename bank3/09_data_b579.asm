        DEFW    0xb57f,0xb58e,0xb5c8                ;b579 ; data:table
        INC     (ix+0x1)                            ;b57f
        LD      hl,0xcd87                           ;b582
        LD      de,0x8838                           ;b585
        LD      b,0x2                               ;b588
        CALL    DrawBcdNumber                       ;b58a
        RET                                         ;b58d
        LD      a,(0xcd82)                          ;b58e
        OR      a                                   ;b591
        RET     z                                   ;b592
        LD      a,0x1                               ;b593
        LD      (0xcd91),a                          ;b595
        LD      a,(0xcd82)                          ;b598
        CP      0x2                                 ;b59b
        JR      z,b3_lb5c0h                         ;b59d
        LD      de,(0xcd86)                         ;b59f
        CALL    b3_sub_b539h                        ;b5a3
        JR      c,b3_lb5bch                         ;b5a6
        LD      de,0x3020                           ;b5a8
        LD      a,0xe                               ;b5ab
        CALL    0x4eb9                              ;b5ad
        LD      a,0x1                               ;b5b0
        LD      (0xcdb0),a                          ;b5b2
        LD      a,0x91                              ;b5b5
        CALL    ProcessSoundCommand                 ;b5b7
        JR      b3_lb5c0h                           ;b5ba
b3_lb5bch:
        LD      a,0x6e                              ;b5bc
        JR      b3_lb5c2h                           ;b5be
b3_lb5c0h:
        LD      a,0x7                               ;b5c0
b3_lb5c2h:
        CALL    b3_sub_b836h                        ;b5c2
        INC     (ix+0x1)                            ;b5c5
        RET                                         ;b5c8
        LD      a,(0xcd5b)                          ;b5c9
        OR      a                                   ;b5cc
        RET     nz                                  ;b5cd
        LD      a,(0xcd31)                          ;b5ce
        OR      a                                   ;b5d1
        RET     nz                                  ;b5d2
        CALL    b3_sub_b67ah                        ;b5d3
        DEFB    0xc5,0xcd,0x34,0x83,0xc1,0xc5,0xcd,0x34  ;b5d6 ; data:code-gap
        DEFB    0x83,0xc1,0xc5,0xcd,0x34,0x83,0xc1,0x3e  ;b5de
        DEFB    0x07,0xb8,0xc0,0xc3,0x7a,0xb6       ;b5e6
        LD      a,(0xcd12)                          ;b5ec
        AND     0xc                                 ;b5ef
        LD      b,a                                 ;b5f1
        LD      a,0x18                              ;b5f2
        SUB     b                                   ;b5f4
        LD      b,a                                 ;b5f5
        LD      a,(0xcd30)                          ;b5f6
        ADD     a,b                                 ;b5f9
        LD      (ix+0xb),a                          ;b5fa
        LD      (0xcd30),a                          ;b5fd
        LD      hl,0xcd31                           ;b600
        INC     (hl)                                ;b603
        LD      (ix+0xe),0x1                        ;b604
        LD      (ix+0xc),0x0                        ;b608
        LD      a,(ix+0x0)                          ;b60c
        CP      0x7                                 ;b60f
        JR      z,b3_lb623h                         ;b611
        LD      de,0xb058                           ;b613
        LD      (ix+0x5),d                          ;b616
        LD      (ix+0x3),e                          ;b619
        LD      (ix+0x1),0x2                        ;b61c
        JP      0x893d                              ;b620
b3_lb623h:
        LD      (ix+0x1),0x1                        ;b623
        LD      de,(0xcd4a)                         ;b627
        LD      (ix+0x5),d                          ;b62b
        LD      (ix+0x3),e                          ;b62e
        LD      a,(0xcd4c)                          ;b631
        LD      (ix+0x1f),a                         ;b634
        AND     0x1                                 ;b637
        LD      (ix+0xf),a                          ;b639
        LD      de,0x0                              ;b63c
        CALL    0x87e4                              ;b63f
        CALL    0x87eb                              ;b642
        LD      a,(0xcd14)                          ;b645
        OR      a                                   ;b648
        CALL    nz,0x87b7                           ;b649
        LD      a,(0xcd31)                          ;b64c
        CP      0x1                                 ;b64f
        RET     nz                                  ;b651
        CALL    0x9763                              ;b652
        LD      d,(ix+0x5)                          ;b655
        LD      e,(ix+0x3)                          ;b658
        LD      (0xcd4a),de                         ;b65b
        LD      a,(ix+0x1f)                         ;b65f
        LD      (0xcd4c),a                          ;b662
        LD      a,(ix+0x1f)                         ;b665
        AND     0x1                                 ;b668
        LD      (ix+0xf),a                          ;b66a
        CALL    0x893d                              ;b66d
        LD      de,0x0                              ;b670
        CALL    0x87e4                              ;b673
        CALL    0x87eb                              ;b676
        RET                                         ;b679
b3_sub_b67ah:
        XOR     a                                   ;b67a
        LD      (0xcd31),a                          ;b67b
        LD      (0xcd14),a                          ;b67e
        LD      a,0x10                              ;b681
        LD      (0xcd30),a                          ;b683
        RET                                         ;b686
        LD      de,0x8070                           ;b687
        JP      0x8334                              ;b68a
        LD      (ix+0xa),0x10                       ;b68d
        RET                                         ;b691
        LD      a,(ix+0x1)                          ;b692
        CALL    JumpIndex                           ;b695
        DEFW    0xb6a4,0xb72e,0xb790,0xb7b4         ;b698 ; data:table
        DEFW    0xb7b3,0xb824                       ;b6a0
        LD      a,(0xc27e)                          ;b6a4
        OR      a                                   ;b6a7
        JR      nz,b3_lb6ddh                        ;b6a8
        CALL    b3_sub_b71dh                        ;b6aa
        LD      a,(hl)                              ;b6ad
        AND     0x80                                ;b6ae
        LD      b,0x4                               ;b6b0
        DEFB    0x28,0x02,0x06,0x00,0x7e,0xe6,0x7f,0x80  ;b6b2 ; data:code-gap
        DEFB    0x11,0x16,0xb7,0xcd,0x88,0x40,0x1a,0xcd  ;b6ba
        DEFB    0x36,0xb8,0xcd,0x1d,0xb7,0x7e,0x47,0xe6  ;b6c2
        DEFB    0x7f,0xfe,0x02,0x28,0x15,0x3e,0x00,0xcd  ;b6ca
        DEFB    0x86,0x42,0xdd,0x34,0x01,0x3e,0x26,0xcd  ;b6d2
        DEFB    0x8f,0x82,0xc9                      ;b6da
b3_lb6b6h: equ     #b6b6
b3_lb6cfh: equ     #b6cf
b3_lb6ddh:
        LD      a,0xf                               ;b6dd
        CALL    b3_sub_b836h                        ;b6df
        JR      b3_lb6cfh                           ;b6e2
b3_lb6e4h: equ     #b6e4
        DEFB    0xdd,0x36,0x0b,0x70,0x78,0xe6,0x80,0x28  ;b6e4 ; data:code-gap
        DEFB    0x1d,0x3a,0x80,0xc2,0xfe,0x06,0x3e,0x1e  ;b6ec
        DEFB    0x20,0x02,0x3e,0x1f,0xe5,0xc5,0xcd,0x86  ;b6f4
        DEFB    0x42,0xc1,0xe1,0x3e,0x80,0x77,0x3e,0x01  ;b6fc
        DEFB    0x32,0x7e,0xc2,0xc3,0xab,0xb7,0xaf,0x77  ;b704
        DEFB    0xed,0x5b,0x65,0xc2,0xcd,0x58,0x59,0xc3  ;b70c
        DEFB    0xab,0xb7,0x0f,0x12,0x14,0x0f,0x0f,0x66  ;b714
        DEFB    0x13                                ;b71c
b3_lb6f8h: equ     #b6f8
b3_lb70ah: equ     #b70a
b3_lb716h: equ     #b716
b3_sub_b71dh:
        LD      a,(0xc28d)                          ;b71d
        LD      b,a                                 ;b720
        LD      hl,0xc340                           ;b721
        LD      a,(0xc281)                          ;b724
b3_lb727h:
        CP      (hl)                                ;b727
        INC     hl                                  ;b728
        RET     z                                   ;b729
        INC     hl                                  ;b72a
        DJNZ    b3_lb727h                           ;b72b
        RET                                         ;b72d
        LD      a,(0xcd82)                          ;b72e
        OR      a                                   ;b731
        RET     z                                   ;b732
        CP      0x2                                 ;b733
        JP      z,b3_lb828h                         ;b735
        LD      a,0x1                               ;b738
        LD      (0xcd91),a                          ;b73a
        LD      (0xcd2e),a                          ;b73d
        CALL    b3_sub_b75eh                        ;b740
        LD      (ix+0xb),0x80                       ;b743
        INC     (ix+0x1)                            ;b747
        LD      a,(0xc27e)                          ;b74a
        OR      a                                   ;b74d
        RET     nz                                  ;b74e
        CALL    b3_sub_b71dh                        ;b74f
        LD      a,(hl)                              ;b752
        CP      0x83                                ;b753
        RET     z                                   ;b755
        INC     a                                   ;b756
        LD      (hl),a                              ;b757
        RET                                         ;b758
b3_lb759h:
        LD      (ix+0x1),0x4                        ;b759
        RET                                         ;b75d
b3_sub_b75eh:
        LD      c,0x17                              ;b75e
        LD      a,(0xc273)                          ;b760
        OR      a                                   ;b763
        JR      z,b3_lb776h                         ;b764
        LD      c,0x37                              ;b766
        LD      a,(0xc274)                          ;b768
        OR      a                                   ;b76b
        JR      z,b3_lb776h                         ;b76c
        LD      a,(0xc27e)                          ;b76e
        OR      a                                   ;b771
        JR      z,b3_lb776h                         ;b772
        LD      c,0x46                              ;b774
b3_lb776h:
        LD      a,(0xc28f)                          ;b776
        CP      c                                   ;b779
        CALL    nc,b3_sub_b7a6h                     ;b77a
        LD      b,a                                 ;b77d
        LD      a,r                                 ;b77e
        AND     0xf                                 ;b780
        ADD     a,b                                 ;b782
        CP      c                                   ;b783
        JR      c,b3_lb787h                         ;b784
        SUB     c                                   ;b786
b3_lb787h:
        LD      hl,0xc28f                           ;b787
        LD      (hl),a                              ;b78a
        ADD     a,0x20                              ;b78b
        JP      b3_sub_b836h                        ;b78d
        DEC     (ix+0xb)                            ;b790
        RET     nz                                  ;b793
        LD      a,0x11                              ;b794
        CALL    b3_sub_b836h                        ;b796
        CALL    b3_sub_b7d3h                        ;b799
        JR      nc,b3_lb7abh                        ;b79c
        LD      (ix+0xb),0x80                       ;b79e
        INC     (ix+0x1)                            ;b7a2
        RET                                         ;b7a5
b3_sub_b7a6h:
        SUB     c                                   ;b7a6
        JR      nc,b3_sub_b7a6h                     ;b7a7
        ADD     a,c                                 ;b7a9
        RET                                         ;b7aa
b3_lb7abh:
        LD      (ix+0xb),0x60                       ;b7ab
        LD      (ix+0x1),0x5                        ;b7af
        RET                                         ;b7b3
        DEC     (ix+0xb)                            ;b7b4
        RET     nz                                  ;b7b7
        LD      a,0x15                              ;b7b8
        CALL    b3_sub_b836h                        ;b7ba
        XOR     a                                   ;b7bd
        LD      (isDrawKonamiLogoFinished),a        ;b7be
        LD      (0xcd2e),a                          ;b7c1
        LD      a,0x3                               ;b7c4
        LD      (BlockQueue),a                      ;b7c6
        LD      a,0x8b                              ;b7c9
        CALL    ProcessSoundCommand                 ;b7cb
        CALL    0x67da                              ;b7ce
        JR      b3_lb759h                           ;b7d1
b3_sub_b7d3h:
        LD      hl,(PlayerScore)                    ;b7d3
        LD      a,l                                 ;b7d6
        AND     0xf                                 ;b7d7
        CP      0x5                                 ;b7d9
        LD      de,0x300                            ;b7db
        JR      z,b3_lb803h                         ;b7de
        LD      de,0x1000                           ;b7e0
        RST     DCOMPR                              ;b7e3
        LD      de,0x990                            ;b7e4
        JR      nc,b3_lb803h                        ;b7e7
        LD      hl,(PlayerScore)                    ;b7e9
        LD      de,0x31                             ;b7ec
        RST     DCOMPR                              ;b7ef
        LD      de,0x100                            ;b7f0
        JR      c,b3_lb803h                         ;b7f3
        LD      de,(PlayerScore)                    ;b7f5
        LD      a,e                                 ;b7f9
        SUB     0x30                                ;b7fa
        DAA                                         ;b7fc
        LD      e,a                                 ;b7fd
        LD      a,d                                 ;b7fe
        SBC     a,0x0                               ;b7ff
        DAA                                         ;b801
        LD      d,a                                 ;b802
b3_lb803h:
        LD      (0xee80),de                         ;b803
        LD      hl,0xee81                           ;b807
        LD      de,0x9a3a                           ;b80a zh: x=154,y=58 (after "我收下了")
        LD      b,0x2                               ;b80d
        CALL    DrawBcdNumber                       ;b80f
        LD      de,(0xee80)                         ;b812
        LD      hl,(PlayerScore)                    ;b816
        RST     DCOMPR                              ;b819
        PUSH    af                                  ;b81a
        LD      de,(0xee80)                         ;b81b
        CALL    0x5958                              ;b81f
        POP     af                                  ;b822
        RET                                         ;b823
        DEC     (ix+0xb)                            ;b824
        RET     nz                                  ;b827
b3_lb828h:
        XOR     a                                   ;b828
        LD      (0xcd2e),a                          ;b829
        INC     a                                   ;b82c
        LD      (0xc4a2),a                          ;b82d
        CALL    DisableScreen                       ;b830
        JP      0x72b8                              ;b833
b3_sub_b836h:
        PUSH    af                                  ;b836
        CALL    0x92ad                              ;b837
        LD      a,0x16                              ;b83a
        CALL    PrintDialogText                     ;b83c
        POP     af                                  ;b83f
        JP      PrintDialogText                     ;b840
        LD      de,0x4030                           ;b843
        LD      hl,b3_la008h                        ;b846
        CALL    b3_sub_b8a2h                        ;b849
        LD      de,0xc830                           ;b84c
        LD      hl,0xf010                           ;b84f
        CALL    b3_sub_b8a2h                        ;b852
        LD      de,0x4828                           ;b855
        LD      hl,0x7800                           ;b858
        CALL    b3_sub_b8b3h                        ;b85b
        LD      de,0x48a0                           ;b85e
        LD      hl,0x7000                           ;b861
        CALL    b3_sub_b8b3h                        ;b864
        LD      hl,b3_lb882h                        ;b867
        LD      b,0x8                               ;b86a
b3_lb86ch:
        PUSH    bc                                  ;b86c
        LD      e,(hl)                              ;b86d
b3_lb86eh:
        INC     hl                                  ;b86e
        LD      d,(hl)                              ;b86f
b3_lb870h:
        INC     hl                                  ;b870
        LD      c,(hl)                              ;b871
        INC     hl                                  ;b872
        LD      b,(hl)                              ;b873
        INC     hl                                  ;b874
        PUSH    hl                                  ;b875
        LD      l,c                                 ;b876
        LD      h,b                                 ;b877
        CALL    0x4ef1                              ;b878
        POP     hl                                  ;b87b
        POP     bc                                  ;b87c
        DJNZ    b3_lb86ch                           ;b87d
        JP      b3_lbc43h                           ;b87f
b3_lb882h: equ     #b882
        DEFB    0x28,0x40,0x08,0x90,0xa0,0x40,0x08,0x98  ;b882 ; data:code-gap
        DEFB    0x28,0xc8,0x10,0xe0,0xa0,0xc8,0x10,0xe8  ;b88a
        DEFB    0x28,0xdc,0x00,0x90,0x34,0xd0,0x00,0xa0  ;b892
        DEFB    0x34,0xe8,0x00,0x98,0x40,0xdc,0x00,0xa8  ;b89a
b3_sub_b8a2h:
        LD      b,0xe                               ;b8a2
b3_lb8a4h:
        PUSH    bc                                  ;b8a4
        PUSH    hl                                  ;b8a5
        CALL    0x4ef1                              ;b8a6
        POP     hl                                  ;b8a9
        POP     bc                                  ;b8aa
        LD      a,0x8                               ;b8ab
        CALL    ADD_DE_A                            ;b8ad
        DJNZ    b3_lb8a4h                           ;b8b0
        RET                                         ;b8b2
b3_sub_b8b3h:
        LD      b,0x10                              ;b8b3
b3_lb8b5h:
        PUSH    bc                                  ;b8b5
        PUSH    hl                                  ;b8b6
        CALL    0x4ef1                              ;b8b7
        POP     hl                                  ;b8ba
        POP     bc                                  ;b8bb
        LD      a,0x8                               ;b8bc
        ADD     a,d                                 ;b8be
        LD      d,a                                 ;b8bf
        DJNZ    b3_lb8b5h                           ;b8c0
        RET                                         ;b8c2
        LD      a,0x1                               ;b8c3
        LD      (0xcdc5),a                          ;b8c5
        LD      a,(ControlsTrigger)                 ;b8c8
        LD      b,a                                 ;b8cb
        AND     0x1                                 ;b8cc
        JR      nz,b3_lb8eah                        ;b8ce
        LD      a,b                                 ;b8d0
        AND     0x4                                 ;b8d1
        JR      nz,b3_lb92dh                        ;b8d3
        LD      a,b                                 ;b8d5
        AND     0x8                                 ;b8d6
        JR      nz,b3_lb927h                        ;b8d8
        LD      a,b                                 ;b8da
        AND     0x2                                 ;b8db
        JR      nz,b3_lb920h                        ;b8dd
        LD      a,b                                 ;b8df
        AND     0x10                                ;b8e0
        JP      nz,b3_lbaf1h                        ;b8e2
b3_lb8e5h:
        XOR     a                                   ;b8e5
        LD      (0xcdc5),a                          ;b8e6
        RET                                         ;b8e9
b3_lb8eah:
        LD      a,(0xcdcc)                          ;b8ea
        OR      a                                   ;b8ed
        JR      nz,b3_lb913h                        ;b8ee
        LD      hl,0xcdb2                           ;b8f0
        LD      a,(hl)                              ;b8f3
        CP      0x1                                 ;b8f4
        JR      z,b3_lb8e5h                         ;b8f6
b3_lb8f8h:
        LD      a,(0xcdc4)                          ;b8f8
        ADD     a,a                                 ;b8fb
        LD      hl,b3_lbad9h                        ;b8fc
        CALL    ADD_HL_A                            ;b8ff
        LD      e,(hl)                              ;b902
        INC     hl                                  ;b903
        LD      d,(hl)                              ;b904
        LD      hl,(0xcdc6)                         ;b905
        LD      a,l                                 ;b908
        ADD     a,e                                 ;b909
        LD      l,a                                 ;b90a
        LD      a,h                                 ;b90b
        ADD     a,d                                 ;b90c
        LD      h,a                                 ;b90d
        LD      (0xcdc6),hl                         ;b90e
        JR      b3_lb936h                           ;b911
b3_lb913h:
        LD      hl,0xcdb2                           ;b913
        LD      a,(hl)                              ;b916
        CP      0x1                                 ;b917
        JR      nz,b3_lb8f8h                        ;b919
        LD      a,0x6                               ;b91b
        JP      b3_lbc6fh                           ;b91d
b3_lb920h:
        LD      a,(0xcdc4)                          ;b920
        INC     a                                   ;b923
        INC     a                                   ;b924
        JR      b3_lb931h                           ;b925
b3_lb927h:
        LD      a,(0xcdc4)                          ;b927
        INC     a                                   ;b92a
        JR      b3_lb931h                           ;b92b
b3_lb92dh:
        LD      a,(0xcdc4)                          ;b92d
        DEC     a                                   ;b930
b3_lb931h:
        AND     0x3                                 ;b931
        LD      (0xcdc4),a                          ;b933
b3_lb936h:
        LD      hl,0xcdb3                           ;b936
        LD      de,0xcdb4                           ;b939
        XOR     a                                   ;b93c
        LD      (hl),a                              ;b93d
        LD      bc,0x10                             ;b93e
        LDIR                                        ;b941
        LD      hl,0xcdc9                           ;b943
        XOR     a                                   ;b946
        LD      (hl),a                              ;b947
        INC     hl                                  ;b948
        LD      (hl),a                              ;b949
        INC     hl                                  ;b94a
        LD      (hl),a                              ;b94b
        CALL    b3_sub_b955h                        ;b94c
        CALL    b3_sub_ba47h                        ;b94f
        JP      b3_lba62h                           ;b952
b3_sub_b955h:
        XOR     a                                   ;b955
        LD      (0xcdcc),a                          ;b956
        LD      hl,(0xcdc6)                         ;b959
        CALL    0x5a6a                              ;b95c
        LD      a,(hl)                              ;b95f
        CP      0x6                                 ;b960
        CALL    z,b3_sub_b9abh                      ;b962
        LD      a,(0xcdc4)                          ;b965
        LD      de,b3_lbad9h                        ;b968
        CALL    GetPointerDE2A                      ;b96b
        LD      hl,(0xcdc6)                         ;b96e
        LD      b,0x4                               ;b971
        LD      c,0x1                               ;b973
b3_lb975h:
        CALL    b3_sub_bad2h                        ;b975
        PUSH    hl                                  ;b978
        EXX                                         ;b979
        POP     hl                                  ;b97a
        CALL    0x5a6a                              ;b97b
        LD      a,(hl)                              ;b97e
        EXX                                         ;b97f
        CP      0x1                                 ;b980
        JR      z,b3_lb997h                         ;b982
        CP      0x6                                 ;b984
        JR      z,b3_lb99ch                         ;b986
        OR      a                                   ;b988
        PUSH    de                                  ;b989
        PUSH    hl                                  ;b98a
        PUSH    bc                                  ;b98b
        CALL    nz,b3_sub_ba33h                     ;b98c
        POP     bc                                  ;b98f
        POP     hl                                  ;b990
        POP     de                                  ;b991
        INC     c                                   ;b992
        DJNZ    b3_lb975h                           ;b993
        LD      c,0x0                               ;b995
b3_lb997h:
        LD      a,c                                 ;b997
        LD      (0xcdb2),a                          ;b998
        RET                                         ;b99b
b3_lb99ch:
        INC     c                                   ;b99c
        LD      a,c                                 ;b99d
        CP      0x5                                 ;b99e
        JR      nz,b3_lb9a4h                        ;b9a0
        LD      c,0x0                               ;b9a2
b3_lb9a4h:
        LD      a,0x1                               ;b9a4
        LD      (0xcdcc),a                          ;b9a6
        JR      b3_lb997h                           ;b9a9
b3_sub_b9abh:
        LD      a,(0xcdc4)                          ;b9ab
        ADD     a,0x2                               ;b9ae
        AND     0x3                                 ;b9b0
        LD      de,b3_lbad9h                        ;b9b2
        CALL    GetPointerDE2A                      ;b9b5
        LD      hl,(0xcdc6)                         ;b9b8
        CALL    b3_sub_bad2h                        ;b9bb
        CALL    0x5a6a                              ;b9be
        LD      a,(hl)                              ;b9c1
        CP      0x1                                 ;b9c2
        RET     z                                   ;b9c4
        LD      a,0x1                               ;b9c5
        LD      (0xcdcc),a                          ;b9c7
        RET                                         ;b9ca
        LD      a,(0xcdc4)                          ;b9cb
        RR      a                                   ;b9ce
        JR      nc,b3_lba09h                        ;b9d0
        LD      hl,0xd830                           ;b9d2
        LD      (AbSprAttrTable),hl                 ;b9d5
        LD      (0xee04),hl                         ;b9d8
        LD      bc,0xc03                            ;b9db
        RR      a                                   ;b9de
        JR      c,b3_lb9e5h                         ;b9e0
        LD      a,c                                 ;b9e2
        LD      c,b                                 ;b9e3
        LD      b,a                                 ;b9e4
b3_lb9e5h:
        LD      l,0xec                              ;b9e5
        LD      h,c                                 ;b9e7
        LD      (0xee02),hl                         ;b9e8
        LD      l,0xf0                              ;b9eb
        LD      h,b                                 ;b9ed
        LD      (0xee06),hl                         ;b9ee
        LD      hl,AbSprColorTable                  ;b9f1
        LD      de,0xee03                           ;b9f4
        LD      c,0x2                               ;b9f7
b3_lb9f9h:
        LD      b,0x10                              ;b9f9
        LD      a,(de)                              ;b9fb
b3_lb9fch:
        LD      (hl),a                              ;b9fc
        INC     hl                                  ;b9fd
        DJNZ    b3_lb9fch                           ;b9fe
        LD      a,0x4                               ;ba00
        CALL    ADD_DE_A                            ;ba02
        DEC     c                                   ;ba05
        JR      nz,b3_lb9f9h                        ;ba06
        RET                                         ;ba08
b3_lba09h:
        LD      hl,0xd830                           ;ba09
        LD      (AbSprAttrTable),hl                 ;ba0c
        LD      de,0xc03                            ;ba0f
        RR      a                                   ;ba12
        LD      a,0xe8                              ;ba14
        LD      (0xee02),a                          ;ba16
        LD      a,0xe0                              ;ba19
        LD      (0xee04),a                          ;ba1b
        JR      nc,b3_lba23h                        ;ba1e
        LD      a,e                                 ;ba20
        LD      e,d                                 ;ba21
        LD      d,a                                 ;ba22
b3_lba23h:
        LD      hl,AbSprColorTable                  ;ba23
        LD      b,0x8                               ;ba26
b3_lba28h:
        LD      (hl),e                              ;ba28
        INC     hl                                  ;ba29
        DJNZ    b3_lba28h                           ;ba2a
        LD      b,0x8                               ;ba2c
b3_lba2eh:
        LD      (hl),d                              ;ba2e
        INC     hl                                  ;ba2f
        DJNZ    b3_lba2eh                           ;ba30
        RET                                         ;ba32
b3_sub_ba33h:
        EX      af,af'                              ;ba33
        LD      a,0x4                               ;ba34
        CP      c                                   ;ba36
        RET     z                                   ;ba37
        EX      af,af'                              ;ba38
        PUSH    hl                                  ;ba39
        PUSH    de                                  ;ba3a
        DEC     c                                   ;ba3b
        LD      e,c                                 ;ba3c
        LD      d,0x0                               ;ba3d
        LD      hl,0xcdc9                           ;ba3f
        ADD     hl,de                               ;ba42
        LD      (hl),a                              ;ba43
        POP     de                                  ;ba44
        POP     hl                                  ;ba45
        RET                                         ;ba46
b3_sub_ba47h:
        LD      a,(0xcdc4)                          ;ba47
        LD      de,b3_lbae1h                        ;ba4a
        CALL    GetPointerDE2A                      ;ba4d
        LD      hl,(0xcdc6)                         ;ba50
        CALL    b3_sub_bad2h                        ;ba53
        LD      c,0x5                               ;ba56
        EXX                                         ;ba58
        LD      hl,0xcdb3                           ;ba59
        LD      de,0xcdbb                           ;ba5c
        EXX                                         ;ba5f
        JR      b3_lba7bh                           ;ba60
b3_lba62h:
        LD      a,(0xcdc4)                          ;ba62
        LD      de,0xbae9                           ;ba65
        CALL    GetPointerDE2A                      ;ba68
        LD      hl,(0xcdc6)                         ;ba6b
        CALL    b3_sub_bad2h                        ;ba6e
        LD      c,0x11                              ;ba71
        EXX                                         ;ba73
        LD      hl,0xcdb7                           ;ba74
        LD      de,0xcdbf                           ;ba77
        EXX                                         ;ba7a
b3_lba7bh:
        PUSH    hl                                  ;ba7b
        LD      a,(0xcdc4)                          ;ba7c
        LD      de,b3_lbad9h                        ;ba7f
        CALL    GetPointerDE2A                      ;ba82
        POP     hl                                  ;ba85
        LD      a,(0xcdb2)                          ;ba86
        OR      a                                   ;ba89
        JR      nz,b3_lba8eh                        ;ba8a
        LD      a,0x4                               ;ba8c
b3_lba8eh:
        LD      b,a                                 ;ba8e
b3_lba8fh:
        PUSH    bc                                  ;ba8f
        PUSH    de                                  ;ba90
        PUSH    hl                                  ;ba91
        CALL    0x5a6a                              ;ba92
        LD      a,(hl)                              ;ba95
        POP     hl                                  ;ba96
        POP     de                                  ;ba97
        POP     bc                                  ;ba98
        PUSH    bc                                  ;ba99
        CALL    b3_sub_baa5h                        ;ba9a
        POP     bc                                  ;ba9d
        CALL    b3_sub_bad2h                        ;ba9e
        INC     c                                   ;baa1
        DJNZ    b3_lba8fh                           ;baa2
        RET                                         ;baa4
b3_sub_baa5h:
        LD      b,a                                 ;baa5
        CP      0x1                                 ;baa6
        LD      a,0x0                               ;baa8
        JR      z,b3_lbaaeh                         ;baaa
        LD      a,0x4                               ;baac
b3_lbaaeh:
        ADD     a,c                                 ;baae
        PUSH    bc                                  ;baaf
        EXX                                         ;bab0
        POP     bc                                  ;bab1
        LD      (hl),b                              ;bab2
        PUSH    bc                                  ;bab3
        LD      c,a                                 ;bab4
        LD      a,0x1                               ;bab5
        CP      (hl)                                ;bab7
        LD      a,c                                 ;bab8
        POP     bc                                  ;bab9
        JR      z,b3_lbacdh                         ;baba
        PUSH    bc                                  ;babc
        LD      c,a                                 ;babd
        DEC     a                                   ;babe
        AND     0x3                                 ;babf
        LD      b,a                                 ;bac1
        LD      a,(0xcdb2)                          ;bac2
        DEC     a                                   ;bac5
        CP      b                                   ;bac6
        LD      a,c                                 ;bac7
        POP     bc                                  ;bac8
        JR      nz,b3_lbacdh                        ;bac9
        ADD     a,0x4                               ;bacb
b3_lbacdh:
        LD      (de),a                              ;bacd
        INC     hl                                  ;bace
        INC     de                                  ;bacf
        EXX                                         ;bad0
        RET                                         ;bad1
b3_sub_bad2h:
        LD      a,l                                 ;bad2
        ADD     a,e                                 ;bad3
        LD      l,a                                 ;bad4
        LD      a,h                                 ;bad5
        ADD     a,d                                 ;bad6
        LD      h,a                                 ;bad7
        RET                                         ;bad8
b3_lbad9h: equ     #bad9
        DEFB    0x00,0xff,0x01,0x00,0x00,0x01,0xff,0x00  ;bad9 ; data:code-gap
        DEFB    0xff,0x00,0x00,0xff,0x01,0x00,0x00,0x01  ;bae1
        DEFB    0x01,0x00,0x00,0x01,0xff,0x00,0x00,0xff  ;bae9
b3_lbae1h: equ     #bae1
b3_lbaf1h:
        XOR     a                                   ;baf1
        LD      (0xcdc5),a                          ;baf2
        LD      a,(0xc27a)                          ;baf5
        OR      a                                   ;baf8
        RET     z                                   ;baf9
        INC     a                                   ;bafa
        LD      (0xcdc8),a                          ;bafb
        LD      a,0x1a                              ;bafe
        CALL    ProcessSoundCommand                 ;bb00
        CALL    DisableScreen                       ;bb03
        CALL    b3_sub_bc3ah                        ;bb06
        CALL    DrawFieldItems                      ;bb09
        CALL    DrawGameHud                         ;bb0c
        CALL    DrawHudLifeBar                      ;bb0f
        CALL    b3_sub_bb1bh                        ;bb12
        CALL    b3_sub_bbaah                        ;bb15
        JP      EnableScreen                        ;bb18
