        DEFB    0xfd,0xf2,0x22                      ;7893
        LD      (STACKPTR),hl                       ;7896
        LD      (0xfd22),hl                         ;7899
        JP      p,0x22f2                            ;789c
        RST     KEYINT                              ;789f
        RST     KEYINT                              ;78a0
        CPL                                         ;78a1
        LD      (HNTFN),hl                          ;78a2
        RST     KEYINT                              ;78a5
        LD      (0x222f),hl                         ;78a6
        DEC     l                                   ;78a9
        ADD     a,e                                 ;78aa
        RST     OUTDO                               ;78ab
        DEFB    0xfd,0x2f,0x3                       ;78ac
        RST     OUTDO                               ;78af
        RST     KEYINT                              ;78b0
        CPL                                         ;78b1
        DEFB    0xdd,0xfd,0xfd                      ;78b2
        CPL                                         ;78b5
        DEFB    0xfd,0xdf,0xdf                      ;78b6
        LD      (0xdfdf),hl                         ;78b9
        DEFB    0xdd,0x2f,0xdd                      ;78bc
        DEC     l                                   ;78bf
        DEFB    0xfd,0x2d                           ;78c0
        RST     OUTDO                               ;78c2
        DEFB    0xfd,0xdd,0x2d                      ;78c3
        DEFB    0xdd,0xfd,0xdd                      ;78c6
        RST     KEYINT                              ;78c9
        JP      p,0x2222                            ;78ca
        RST     OUTDO                               ;78cd
        RST     KEYINT                              ;78ce
        LD      (0xff22),hl                         ;78cf
        JP      p,0x22f2                            ;78d2
        RST     OUTDO                               ;78d5
        RST     KEYINT                              ;78d6
        JP      p,0xd222                            ;78d7
        RST     KEYINT                              ;78da
        LD      (0xfd22),hl                         ;78db
        DEFB    0xfd,0xf2,0x22                      ;78de
        RST     OUTDO                               ;78e1
        RST     KEYINT                              ;78e2
        RST     KEYINT                              ;78e3
        LD      (SLTSL),hl                          ;78e4
        JP      p,0x22f2                            ;78e7
        DEFB    0xdd,0xdf,0xfd                      ;78ea
        DEC     c                                   ;78ed
        CPL                                         ;78ee
        RST     OUTDO                               ;78ef
        DEFB    0xdd,0x2d                           ;78f0
        DEFB    0xdd,0xdd,0xdf                      ;78f2
        LD      (0xddd2),hl                         ;78f5
        DEFB    0xfd,0x2d                           ;78f8
        DEFB    0xdd,0xfd,0xfd                      ;78fa
        DEC     l                                   ;78fd
        DEFB    0xfd,0xdd,0xdf                      ;78fe
        DEC     l                                   ;7901
        DEFB    0xdd,0xd2,0xdf                      ;7902
        CPL                                         ;7905
        RST     OUTDO                               ;7906
b4_l7907h:
        DEFB    0xdd,0xfd,0xff                      ;7907
        RST     KEYINT                              ;790a
        JP      p,0xdf22                            ;790b
        RST     KEYINT                              ;790e
        RST     KEYINT                              ;790f
        LD      (HNTFN),hl                          ;7910
        JP      p,0xdf22                            ;7913
        RST     OUTDO                               ;7916
        JP      p,0xdd22                            ;7917
        CPL                                         ;791a
        RST     KEYINT                              ;791b
        LD      (HNTFN),hl                          ;791c
        JP      p,0xdff2                            ;791f
        DEFB    0xfd,0xf2,0x22                      ;7922
        CPL                                         ;7925
        RST     KEYINT                              ;7926
        RST     KEYINT                              ;7927
        LD      (0xdf22),hl                         ;7928
        DEFB    0xdd,0xdd,0x22                      ;792b
        DEFB    0xdd,0x2d                           ;792e
        OR      c                                   ;7930
        RST     OUTDO                               ;7931
        LD      (0xdd2d),hl                         ;7932
        DEC     l                                   ;7935
        JP      nc,0xdf2f                           ;7936
        RST     OUTDO                               ;7939
        LD      (0xffdd),ix                         ;793a
        DEFB    0xfd,0xd2,0x2d                      ;793e
        DEFB    0xfd,0x2f,0xff                      ;7941
        LD      (0x22f2),hl                         ;7944
        LD      (0x272b),hl                         ;7947
        RST     KEYINT                              ;794a
        RST     KEYINT                              ;794b
        JP      p,0xdff2                            ;794c
        RST     OUTDO                               ;794f
        JP      p,0xff22                            ;7950
        RST     KEYINT                              ;7953
        LD      (0xff22),hl                         ;7954
        LD      (0xf222),hl                         ;7957
        RST     KEYINT                              ;795a
        JP      p,0x222f                            ;795b
        CPL                                         ;795e
        LD      (0x2f22),hl                         ;795f
        INC     b                                   ;7962
        LD      (b4_l7284h),hl                      ;7963
        LD      (0x2272),hl                         ;7966
        INC     bc                                  ;7969
        SBC     a,c                                 ;796a
        EXX                                         ;796b
        LD      (0x9999),hl                         ;796c
        SUB     d                                   ;796f
        LD      (0x9299),hl                         ;7970
        SUB     d                                   ;7973
        JP      p,0x9299                            ;7974
        LD      (0x99f2),hl                         ;7977
        LD      (HNTFN),hl                          ;797a
        SBC     a,c                                 ;797d
        CPL                                         ;797e
        CPL                                         ;797f
        DEFB    0xdd,0x92,0x2f                      ;7980
        DEFB    0xfd,0xff,0x92                      ;7983
        DEC     l                                   ;7986
        DEFB    0xdd,0xdf,0x22                      ;7987
        ADD     hl,hl                               ;798a
        SBC     a,c                                 ;798b
        SBC     a,c                                 ;798c
        LD      (0x9929),hl                         ;798d
        SBC     a,c                                 ;7990
        LD      (0x2922),hl                         ;7991
        SBC     a,c                                 ;7994
        JP      p,0x2222                            ;7995
        SBC     a,c                                 ;7998
        RST     KEYINT                              ;7999
        LD      (0x9922),hl                         ;799a
        JP      p,0x22f2                            ;799d
        SBC     a,c                                 ;79a0
        RST     KEYINT                              ;79a1
        CPL                                         ;79a2
        LD      (0xff29),hl                         ;79a3
        RST     KEYINT                              ;79a6
        LD      (0xd2f),hl                          ;79a7
        RRCA                                        ;79aa
        RST     OUTDO                               ;79ab
        DEFB    0xfd,0xf,0xdd                       ;79ac
        RST     KEYINT                              ;79af
        DEFB    0xdd,0xff,0xfd                      ;79b0
        DEFB    0xdd,0xfd,0x0                       ;79b3
        RST     KEYINT                              ;79b6
        RST     OUTDO                               ;79b7
        RST     OUTDO                               ;79b8
        RRCA                                        ;79b9
        RET     nc                                  ;79ba
        DEFB    0xfd,0xdd,0xf0                      ;79bb
        DEFB    0xfd,0xff,0xdf                      ;79be
        RET     p                                   ;79c1
        RET     p                                   ;79c2
        DEFB    0xfd,0xff,0x3                       ;79c3
        RRCA                                        ;79c6
        ADD     a,c                                 ;79c7
        DEFB    0xfd,0x3,0xdf                       ;79c8
        SBC     a,l                                 ;79cb
        RRCA                                        ;79cc
        DEFB    0xfd,0xdd,0x0                       ;79cd
        RRCA                                        ;79d0
        DEFB    0xdd,0xd0,0xdd                      ;79d1
        NOP                                         ;79d4
        DEFB    0xdd,0xdf,0xd0                      ;79d5
        RRCA                                        ;79d8
        DEFB    0xfd,0xfd,0xff                      ;79d9
        NOP                                         ;79dc
        DEFB    0xdd,0xdf,0x0                       ;79dd
        RST     KEYINT                              ;79e0
        RST     OUTDO                               ;79e1
        RST     KEYINT                              ;79e2
        RET     p                                   ;79e3
        DEC     c                                   ;79e4
        RST     KEYINT                              ;79e5
        RST     KEYINT                              ;79e6
        NOP                                         ;79e7
        RET     nc                                  ;79e8
        LD      a,(bc)                              ;79e9
        NOP                                         ;79ea
        ADD     a,c                                 ;79eb
        RET     p                                   ;79ec
        INC     bc                                  ;79ed
        NOP                                         ;79ee
        SBC     a,c                                 ;79ef
        RET     p                                   ;79f0
        NOP                                         ;79f1
        NOP                                         ;79f2
        RET     nc                                  ;79f3
        RST     KEYINT                              ;79f4
        NOP                                         ;79f5
        NOP                                         ;79f6
        RET     nc                                  ;79f7
        RST     KEYINT                              ;79f8
        NOP                                         ;79f9
        RET     p                                   ;79fa
        RET     nc                                  ;79fb
        RST     OUTDO                               ;79fc
        RET     p                                   ;79fd
        RET     p                                   ;79fe
        NOP                                         ;79ff
        JP      c,TAPOOF                            ;7a00
        NOP                                         ;7a03
        RST     KEYINT                              ;7a04
        NOP                                         ;7a05
        DEFB    0xfd,0xf,0xf0                       ;7a06
        INC     bc                                  ;7a09
        RET     nc                                  ;7a0a
        SUB     d                                   ;7a0b
        DEC     c                                   ;7a0c
        DEFB    0xfd,0xd,0xf                        ;7a0d
        NOP                                         ;7a10
        NOP                                         ;7a11
        RET     p                                   ;7a12
        NOP                                         ;7a13
        DEFB    0xfd,0xf0,0xf0                      ;7a14
        DEFB    0xfd,0xff,0xdf                      ;7a17
        NOP                                         ;7a1a
        RET     p                                   ;7a1b
        DEFB    0xfd,0xff,0x3                       ;7a1c
        RRCA                                        ;7a1f
        ADD     a,c                                 ;7a20
        DEFB    0xfd,0x4,0x0                        ;7a21
        ADD     a,c                                 ;7a24
        RST     KEYINT                              ;7a25
        INC     bc                                  ;7a26
        NOP                                         ;7a27
        ADD     a,l                                 ;7a28
        DEFB    0xdd,0xf0,0x0                       ;7a29
        NOP                                         ;7a2c
        DEFB    0xdd,0x3,0x0                        ;7a2d
        ADC     a,l                                 ;7a30
        DEC     c                                   ;7a31
        RET     p                                   ;7a32
        NOP                                         ;7a33
        NOP                                         ;7a34
        DEC     c                                   ;7a35
        RET     nc                                  ;7a36
        NOP                                         ;7a37
        NOP                                         ;7a38
        RET     p                                   ;7a39
        RET     nc                                  ;7a3a
        NOP                                         ;7a3b
        NOP                                         ;7a3c
        RET     p                                   ;7a3d
        INC     bc                                  ;7a3e
        NOP                                         ;7a3f
        ADD     a,c                                 ;7a40
        RST     OUTDO                               ;7a41
        INC     bc                                  ;7a42
        NOP                                         ;7a43
        ADD     a,c                                 ;7a44
        RST     KEYINT                              ;7a45
        INC     bc                                  ;7a46
        NOP                                         ;7a47
        ADD     a,c                                 ;7a48
        DEFB    0xdd,0x3,0x0                        ;7a49
        ADD     a,c                                 ;7a4c
        RST     OUTDO                               ;7a4d
        INC     bc                                  ;7a4e
        NOP                                         ;7a4f
        ADD     a,c                                 ;7a50
        RET     p                                   ;7a51
        INC     bc                                  ;7a52
        NOP                                         ;7a53
        ADD     a,c                                 ;7a54
        RET     nc                                  ;7a55
        DEC     c                                   ;7a56
        NOP                                         ;7a57
        LD      (bc),a                              ;7a58
        RET     p                                   ;7a59
        SBC     a,h                                 ;7a5a
        DEC     c                                   ;7a5b
        RET     p                                   ;7a5c
        DEFB    0xfd,0xff,0xdf                      ;7a5d
        DEFB    0xfd,0x0,0xd0                       ;7a60
        NOP                                         ;7a63
        NOP                                         ;7a64
        RET     p                                   ;7a65
        RRCA                                        ;7a66
        DEC     c                                   ;7a67
        RST     KEYINT                              ;7a68
        RRCA                                        ;7a69
        RET     p                                   ;7a6a
        DEFB    0xdd,0xdf,0xf0                      ;7a6b
        RET     p                                   ;7a6e
        RST     OUTDO                               ;7a6f
        DEFB    0xfd,0xff,0xd                       ;7a70
        RST     KEYINT                              ;7a73
        RST     KEYINT                              ;7a74
        DEFB    0xdd,0xd0,0x7                       ;7a75
        NOP                                         ;7a78
        ADC     a,l                                 ;7a79
        DEFB    0xfd,0x0,0x0                        ;7a7a
        RRCA                                        ;7a7d
        DEFB    0xfd,0x0,0x0                        ;7a7e
        RRCA                                        ;7a81
        RST     OUTDO                               ;7a82
        NOP                                         ;7a83
b4_l7a84h:
        NOP                                         ;7a84
        DEC     c                                   ;7a85
        RET     p                                   ;7a86
        INC     bc                                  ;7a87
        NOP                                         ;7a88
        ADD     a,l                                 ;7a89
        RET     p                                   ;7a8a
        NOP                                         ;7a8b
        NOP                                         ;7a8c
        RRCA                                        ;7a8d
        RRCA                                        ;7a8e
        INC     bc                                  ;7a8f
        NOP                                         ;7a90
        ADD     a,c                                 ;7a91
        DEFB    0xfd,0x3,0x0                        ;7a92
        ADD     a,c                                 ;7a95
        RST     KEYINT                              ;7a96
        INC     bc                                  ;7a97
        NOP                                         ;7a98
        ADD     a,c                                 ;7a99
        DEFB    0xfd,0x3,0x0                        ;7a9a
        ADD     a,c                                 ;7a9d
        DEFB    0xfd,0x3,0x0                        ;7a9e
        ADD     a,c                                 ;7aa1
        RST     KEYINT                              ;7aa2
        INC     bc                                  ;7aa3
        NOP                                         ;7aa4
        ADD     a,c                                 ;7aa5
        RRCA                                        ;7aa6
        INC     c                                   ;7aa7
        NOP                                         ;7aa8
        SBC     a,l                                 ;7aa9
        SUB     d                                   ;7aaa
        LD      (hl),a                              ;7aab
        DEC     hl                                  ;7aac
        OR      a                                   ;7aad
        SUB     d                                   ;7aae
        LD      (hl),a                              ;7aaf
        DEC     hl                                  ;7ab0
        OR      a                                   ;7ab1
        SUB     d                                   ;7ab2
        LD      (hl),a                              ;7ab3
        DEC     hl                                  ;7ab4
        OR      a                                   ;7ab5
        JP      p,0x2b77                            ;7ab6
        OR      a                                   ;7ab9
        JP      p,0x2b77                            ;7aba
        OR      a                                   ;7abd
        JP      p,0x2b77                            ;7abe
        LD      (hl),a                              ;7ac1
        DAA                                         ;7ac2
        LD      (hl),d                              ;7ac3
        CP      e                                   ;7ac4
        LD      (hl),a                              ;7ac5
        SBC     a,c                                 ;7ac6
        INC     bc                                  ;7ac7
        LD      (b4_l779ch),hl                      ;7ac8
        LD      (0x2972),hl                         ;7acb
        LD      (hl),d                              ;7ace
        LD      (0x2972),hl                         ;7acf
        LD      (hl),a                              ;7ad2
        LD      (0x2972),hl                         ;7ad3
        LD      (hl),a                              ;7ad6
        LD      (0x2972),hl                         ;7ad7
        LD      (hl),d                              ;7ada
        LD      (0x2272),hl                         ;7adb
        LD      (hl),a                              ;7ade
        LD      (0x2277),hl                         ;7adf
        LD      (hl),d                              ;7ae2
        LD      (b4_l7227h),hl                      ;7ae3
        INC     bc                                  ;7ae6
        LD      (0x999d),hl                         ;7ae7
        LD      (hl),a                              ;7aea
        LD      (0x9999),hl                         ;7aeb
        LD      (hl),d                              ;7aee
        LD      (0x9999),hl                         ;7aef
        LD      (hl),a                              ;7af2
        LD      (0x9999),hl                         ;7af3
        LD      (hl),a                              ;7af6
        LD      (0x9999),hl                         ;7af7
        LD      (hl),d                              ;7afa
        LD      (0x9999),hl                         ;7afb
        LD      (hl),a                              ;7afe
        LD      (0x9929),hl                         ;7aff
        LD      (hl),d                              ;7b02
        LD      (0x9929),hl                         ;7b03
        INC     bc                                  ;7b06
        LD      (0x9903),hl                         ;7b07
        SBC     a,e                                 ;7b0a
        DEC     hl                                  ;7b0b
        OR      a                                   ;7b0c
        SBC     a,c                                 ;7b0d
        SBC     a,c                                 ;7b0e
        DEC     hl                                  ;7b0f
        OR      a                                   ;7b10
        SBC     a,c                                 ;7b11
        SBC     a,c                                 ;7b12
        DEC     hl                                  ;7b13
        OR      a                                   ;7b14
        SBC     a,c                                 ;7b15
        SBC     a,c                                 ;7b16
        DEC     hl                                  ;7b17
        OR      a                                   ;7b18
        SBC     a,c                                 ;7b19
        SBC     a,c                                 ;7b1a
        DEC     hl                                  ;7b1b
        OR      a                                   ;7b1c
        SBC     a,c                                 ;7b1d
        SUB     d                                   ;7b1e
        LD      a,e                                 ;7b1f
        OR      a                                   ;7b20
        SBC     a,c                                 ;7b21
        DAA                                         ;7b22
        CP      e                                   ;7b23
        LD      (hl),a                              ;7b24
        SBC     a,c                                 ;7b25
        INC     bc                                  ;7b26
        LD      (HERRF),hl                          ;7b27
        LD      (bc),a                              ;7b2a
        JP      p,0xdf02                            ;7b2b
        ADD     a,a                                 ;7b2e
        JP      p,0xff22                            ;7b2f
        RST     KEYINT                              ;7b32
        LD      (0xff22),hl                         ;7b33
        INC     bc                                  ;7b36
        LD      (0xff88),hl                         ;7b37
        JP      p,0x2922                            ;7b3a
        CPL                                         ;7b3d
        LD      (0x2922),hl                         ;7b3e
        INC     bc                                  ;7b41
        LD      (0x99b2),hl                         ;7b42
        LD      (hl),d                              ;7b45
        LD      (0x9972),hl                         ;7b46
        NOP                                         ;7b49
        NOP                                         ;7b4a
        JP      c,TAPOOF                            ;7b4b
        NOP                                         ;7b4e
        JP      c,0xff0                             ;7b4f
        RET     p                                   ;7b52
        JP      c,RG17SA                            ;7b53
        RST     KEYINT                              ;7b56
        NOP                                         ;7b57
        NOP                                         ;7b58
        RET     p                                   ;7b59
        RRCA                                        ;7b5a
        JP      c,Stack                             ;7b5b
        NOP                                         ;7b5e
        JP      c,TAPOOF                            ;7b5f
        RET     p                                   ;7b62
        JP      c,0xff0                             ;7b63
        RRCA                                        ;7b66
        JP      c,TAPOOF                            ;7b67
        NOP                                         ;7b6a
        JP      c,0xdf0                             ;7b6b
        RST     OUTDO                               ;7b6e
        JP      c,0xddf0                            ;7b6f
        RET     p                                   ;7b72
        JP      c,0xdff0                            ;7b73
        INC     bc                                  ;7b76
        NOP                                         ;7b77
        XOR     e                                   ;7b78
        RST     OUTDO                               ;7b79
        NOP                                         ;7b7a
        JP      c,Stack                             ;7b7b
        RRCA                                        ;7b7e
        JP      c,0xfd                              ;7b7f
        RET     nc                                  ;7b82
        JP      c,TAPOOF                            ;7b83
        RET     nc                                  ;7b86
        JP      c,0xd0f0                            ;7b87
        NOP                                         ;7b8a
        JP      c,Stack                             ;7b8b
        NOP                                         ;7b8e
        JP      c,0xd0f0                            ;7b8f
        NOP                                         ;7b92
        JP      c,0xd0f0                            ;7b93
        RET     nc                                  ;7b96
        NOP                                         ;7b97
        NOP                                         ;7b98
        RET     p                                   ;7b99
        RET     nc                                  ;7b9a
        JP      c,0xd0f0                            ;7b9b
        RET     nc                                  ;7b9e
        JP      c,0xd0f0                            ;7b9f
        RET     p                                   ;7ba2
        JP      c,0xf003                            ;7ba3
        AND     d                                   ;7ba6
        JP      c,Stack                             ;7ba7
        ADD     a,b                                 ;7baa
        JP      c,Stack                             ;7bab
        RET     nc                                  ;7bae
        JP      c,TAPOOF                            ;7baf
        RET     nc                                  ;7bb2
        NOP                                         ;7bb3
        NOP                                         ;7bb4
        RET     p                                   ;7bb5
        RET     nc                                  ;7bb6
        RST     KEYINT                              ;7bb7
        RET     p                                   ;7bb8
        RET     p                                   ;7bb9
        NOP                                         ;7bba
        JP      c,Stack                             ;7bbb
        ADD     a,b                                 ;7bbe
        JP      c,Stack                             ;7bbf
        RET     nc                                  ;7bc2
        JP      c,Stack                             ;7bc3
        RET     nc                                  ;7bc6
        JP      c,0x5f0                             ;7bc7
        NOP                                         ;7bca
        SUB     d                                   ;7bcb
        JP      c,TAPOOF                            ;7bcc
        RET     nc                                  ;7bcf
        JP      c,TAPOOF                            ;7bd0
        RRCA                                        ;7bd3
        JP      c,0xd0f0                            ;7bd4
        NOP                                         ;7bd7
        JP      c,0xdf0                             ;7bd8
        NOP                                         ;7bdb
        JP      c,0x6f0                             ;7bdc
        NOP                                         ;7bdf
        ADD     a,d                                 ;7be0
        JP      c,0x6f0                             ;7be1
        NOP                                         ;7be4
        POP     bc                                  ;7be5
        JP      c,TAPOOF                            ;7be6
        NOP                                         ;7be9
        JP      c,TAPOOF                            ;7bea
        NOP                                         ;7bed
        JP      c,TAPOOF                            ;7bee
        NOP                                         ;7bf1
        JP      c,TAPOOF                            ;7bf2
        RET     p                                   ;7bf5
        JP      c,TAPOOF                            ;7bf6
        RRCA                                        ;7bf9
        JP      c,TAPOOF                            ;7bfa
        NOP                                         ;7bfd
        JP      c,TAPOOF                            ;7bfe
        RET     nc                                  ;7c01
        LD      a,(bc)                              ;7c02
        DEC     c                                   ;7c03
        RET     nc                                  ;7c04
        LD      c,0xd0                              ;7c05
        RET     p                                   ;7c07
        DEFB    0xfd,0xdf,0xd                       ;7c08
        NOP                                         ;7c0b
        RRCA                                        ;7c0c
        RET     p                                   ;7c0d
        DEC     c                                   ;7c0e
        DEFB    0xfd,0xe0,0xd                       ;7c0f
        RST     OUTDO                               ;7c12
        RRCA                                        ;7c13
        DEFB    0xdd,0xdf,0xa                       ;7c14
        RET     p                                   ;7c17
        DEFB    0xfd,0xd0,0xd0                      ;7c18
        RST     KEYINT                              ;7c1b
        RRCA                                        ;7c1c
        RET     p                                   ;7c1d
        JP      c,0xff                              ;7c1e
        DEC     c                                   ;7c21
        RET     nc                                  ;7c22
        DEFB    0xdd,0xf0,0x77                      ;7c23
        DEFB    0xfd,0x3,0x0                        ;7c26
        SBC     a,b                                 ;7c29
        LD      a,a                                 ;7c2a
        DEC     c                                   ;7c2b
        RET     nc                                  ;7c2c
        DEC     c                                   ;7c2d
        RST     OUTDO                               ;7c2e
        RET     nc                                  ;7c2f
        DEC     c                                   ;7c30
        DEFB    0xdd,0xf0,0x7d                      ;7c31
        RET     p                                   ;7c34
        RST     OUTDO                               ;7c35
        LD      a,a                                 ;7c36
        RLCA                                        ;7c37
        RET     nc                                  ;7c38
        RST     CALLF                               ;7c39
        DEC     c                                   ;7c3a
        RLCA                                        ;7c3b
        RET     nc                                  ;7c3c
        RET     p                                   ;7c3d
        DEC     c                                   ;7c3e
        NOP                                         ;7c3f
        LD      (hl),b                              ;7c40
        RRCA                                        ;7c41
        INC     bc                                  ;7c42
        NOP                                         ;7c43
        CP      h                                   ;7c44
        RST     OUTDO                               ;7c45
        RET     p                                   ;7c46
        RST     KEYINT                              ;7c47
        NOP                                         ;7c48
        RRCA                                        ;7c49
        RLCA                                        ;7c4a
        LD      a,l                                 ;7c4b
        RET     p                                   ;7c4c
        DEC     c                                   ;7c4d
        RST     KEYINT                              ;7c4e
        RLCA                                        ;7c4f
        RET     nc                                  ;7c50
        RST     CHRGTR                              ;7c51
        RRCA                                        ;7c52
        RET     nc                                  ;7c53
        LD      (hl),b                              ;7c54
        LD      (hl),b                              ;7c55
        RET     p                                   ;7c56
        DEFB    0xfd,0x0,0x70                       ;7c57
        RET     p                                   ;7c5a
        RST     KEYINT                              ;7c5b
        NOP                                         ;7c5c
        NOP                                         ;7c5d
        RET     p                                   ;7c5e
        RRCA                                        ;7c5f
        NOP                                         ;7c60
        SBC     a,a                                 ;7c61
        ADD     hl,bc                               ;7c62
        NOP                                         ;7c63
        SBC     a,c                                 ;7c64
        RRCA                                        ;7c65
        RET     p                                   ;7c66
        RST     KEYINT                              ;7c67
        ADD     hl,bc                               ;7c68
        RST     OUTDO                               ;7c69
        RLCA                                        ;7c6a
        LD      a,l                                 ;7c6b
        RET     p                                   ;7c6c
        DEC     c                                   ;7c6d
        RST     KEYINT                              ;7c6e
        RLCA                                        ;7c6f
        RET     nc                                  ;7c70
        RST     CHRGTR                              ;7c71
        RRCA                                        ;7c72
        RET     nc                                  ;7c73
        LD      (hl),b                              ;7c74
        LD      (hl),b                              ;7c75
        RET     p                                   ;7c76
        ADD     iy,bc                               ;7c77
        LD      (hl),b                              ;7c79
        RET     p                                   ;7c7a
        RST     KEYINT                              ;7c7b
b4_sub_7c7ch:
        ADD     hl,bc                               ;7c7c
        NOP                                         ;7c7d
        RET     p                                   ;7c7e
b4_sub_7c7fh:
        RRCA                                        ;7c7f
        NOP                                         ;7c80
        DEC     b                                   ;7c81
        SBC     a,c                                 ;7c82
        LD      (bc),a                              ;7c83
        ADD     hl,bc                               ;7c84
        LD      (bc),a                              ;7c85
        SBC     a,c                                 ;7c86
        CP      l                                   ;7c87
        NOP                                         ;7c88
        RET     p                                   ;7c89
        SBC     a,c                                 ;7c8a
        SBC     a,c                                 ;7c8b
        NOP                                         ;7c8c
        RET     p                                   ;7c8d
        SBC     a,c                                 ;7c8e
        SUB     b                                   ;7c8f
        RET     nc                                  ;7c90
        RST     KEYINT                              ;7c91
        ADD     hl,bc                               ;7c92
        NOP                                         ;7c93
        RET     nc                                  ;7c94
        RST     KEYINT                              ;7c95
        ADD     hl,bc                               ;7c96
        RET     p                                   ;7c97
        RET     nc                                  ;7c98
        RST     OUTDO                               ;7c99
        RET     p                                   ;7c9a
        RET     p                                   ;7c9b
        RET     nc                                  ;7c9c
        JP      c,0x22f0                            ;7c9d
        RST     OUTDO                               ;7ca0
        DEFB    0xdd,0xdd,0x22                      ;7ca1
        DEFB    0xdd,0x2d                           ;7ca4
        RST     OUTDO                               ;7ca6
        LD      (0xdd2d),hl                         ;7ca7
        DEC     l                                   ;7caa
        SUB     d                                   ;7cab
        CPL                                         ;7cac
        RST     OUTDO                               ;7cad
        RST     OUTDO                               ;7cae
        SBC     a,c                                 ;7caf
        LD      (0xffdd),hl                         ;7cb0
        SBC     a,c                                 ;7cb3
        SUB     d                                   ;7cb4
        DEC     l                                   ;7cb5
        DEFB    0xfd,0x99,0x99                      ;7cb6
        LD      (0x99f2),hl                         ;7cb9
        SBC     a,c                                 ;7cbc
        DEC     hl                                  ;7cbd
        DAA                                         ;7cbe
        DEC     c                                   ;7cbf
        RET     nc                                  ;7cc0
