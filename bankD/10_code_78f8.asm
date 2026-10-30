bD_l78f8h:
        DEC     (hl)                                ;78f8
        DEC     (hl)                                ;78f9
        SCF                                         ;78fa
        LD      d,c                                 ;78fb
        DEC     (hl)                                ;78fc
        DEC     (hl)                                ;78fd
bD_l78feh:
        JR      c,$+83                              ;78fe
        LD      b,c                                 ;7900
        LD      b,c                                 ;7901
bD_l7902h:
        ADD     hl,sp                               ;7902
        INC     bc                                  ;7903
        RRA                                         ;7904
        XOR     (hl)                                ;7905
        ADD     a,e                                 ;7906
bD_l7907h:
        SCF                                         ;7907
        SCF                                         ;7908
        DEC     (hl)                                ;7909
        HALT                                        ;790a
        JR      c,bD_l7945h                         ;790b
        DEC     (hl)                                ;790d
        LD      (hl),a                              ;790e
        ADD     hl,sp                               ;790f
        ADD     hl,sp                               ;7910
        LD      b,c                                 ;7911
        LD      (hl),a                              ;7912
        LD      e,l                                 ;7913
        DEC     e                                   ;7914
        DEC     de                                  ;7915
bD_l7916h:
        DEC     e                                   ;7916
        LD      d,b                                 ;7917
        SUB     c                                   ;7918
        SCF                                         ;7919
        SCF                                         ;791a
        LD      d,c                                 ;791b
        SUB     c                                   ;791c
        JR      c,bD_l7957h                         ;791d
        LD      d,c                                 ;791f
        SUB     c                                   ;7920
        ADD     hl,sp                               ;7921
        ADD     hl,sp                               ;7922
        DEC     de                                  ;7923
        DEC     e                                   ;7924
        DEC     de                                  ;7925
bD_l7926h:
        ADD     a,e                                 ;7926
        SCF                                         ;7927
        SCF                                         ;7928
        LD      l,e                                 ;7929
        HALT                                        ;792a
        JR      c,bD_l7965h                         ;792b
        LD      l,e                                 ;792d
        LD      (hl),a                              ;792e
        ADD     hl,sp                               ;792f
        ADD     hl,sp                               ;7930
        LD      l,e                                 ;7931
        LD      (hl),a                              ;7932
        LD      d,d                                 ;7933
        INC     bc                                  ;7934
        ADD     hl,de                               ;7935
        ADC     a,h                                 ;7936
        LD      d,e                                 ;7937
        INC     e                                   ;7938
        LD      a,(de)                              ;7939
        INC     e                                   ;793a
        LD      d,h                                 ;793b
        DEC     e                                   ;793c
        DEC     de                                  ;793d
        DEC     e                                   ;793e
        LD      a,(bc)                              ;793f
        INC     hl                                  ;7940
        LD      (0x425),hl                          ;7941
        ADD     hl,de                               ;7944
bD_l7945h:
        ADC     a,b                                 ;7945
        LD      a,(de)                              ;7946
        INC     e                                   ;7947
        LD      a,(de)                              ;7948
        INC     e                                   ;7949
        DEC     de                                  ;794a
        DEC     e                                   ;794b
        DEC     de                                  ;794c
        DEC     e                                   ;794d
        INC     b                                   ;794e
        LD      (0x1903),hl                         ;794f
        XOR     (hl)                                ;7952
        LD      a,b                                 ;7953
        LD      a,(de)                              ;7954
        INC     e                                   ;7955
        LD      a,(de)                              ;7956
bD_l7957h:
        LD      a,c                                 ;7957
        DEC     de                                  ;7958
        DEC     e                                   ;7959
        DEC     de                                  ;795a
        LD      a,d                                 ;795b
        INC     hl                                  ;795c
        LD      (0xa25),hl                          ;795d
        LD      e,l                                 ;7960
        DEC     e                                   ;7961
        DEC     de                                  ;7962
        DEC     e                                   ;7963
        RRCA                                        ;7964
bD_l7965h:
        LD      h,d                                 ;7965
        LD      h,d                                 ;7966
        JR      nz,bD_l796ah                        ;7967
        LD      h,d                                 ;7969
bD_l796ah:
        LD      h,d                                 ;796a
        JR      nz,bD_l796eh                        ;796b
        LD      h,e                                 ;796d
bD_l796eh:
        LD      h,e                                 ;796e
        JR      nz,bD_l798ch                        ;796f
        DEC     e                                   ;7971
        DEC     de                                  ;7972
        ADD     a,e                                 ;7973
        JR      nz,bD_l78feh                        ;7974
        ADC     a,b                                 ;7976
        RRCA                                        ;7977
        JR      nz,bD_l7902h                        ;7978
        ADC     a,b                                 ;797a
        DEC     a                                   ;797b
        JR      nz,bD_l7907h                        ;797c
        ADC     a,c                                 ;797e
        LD      a,0x52                              ;797f
        INC     bc                                  ;7981
        ADD     hl,de                               ;7982
        ADC     a,h                                 ;7983
        LD      d,e                                 ;7984
        INC     e                                   ;7985
        LD      a,(de)                              ;7986
        INC     e                                   ;7987
        LD      d,h                                 ;7988
        DEC     e                                   ;7989
        DEC     de                                  ;798a
        DEC     e                                   ;798b
bD_l798ch:
        LD      a,(bc)                              ;798c
        INC     sp                                  ;798d
        LD      h,0x33                              ;798e
        INC     b                                   ;7990
        ADD     hl,de                               ;7991
        ADC     a,h                                 ;7992
        LD      a,(de)                              ;7993
        INC     e                                   ;7994
        LD      a,(de)                              ;7995
        INC     e                                   ;7996
        DEC     de                                  ;7997
        DEC     e                                   ;7998
        DEC     de                                  ;7999
        DEC     e                                   ;799a
        INC     sp                                  ;799b
        LD      h,0x26                              ;799c
        INC     sp                                  ;799e
        INC     bc                                  ;799f
        ADD     hl,de                               ;79a0
        ADC     a,(hl)                              ;79a1
        LD      a,b                                 ;79a2
        LD      a,(de)                              ;79a3
        INC     e                                   ;79a4
        LD      a,(de)                              ;79a5
        LD      a,c                                 ;79a6
        DEC     de                                  ;79a7
        DEC     e                                   ;79a8
        DEC     de                                  ;79a9
        LD      a,d                                 ;79aa
        INC     sp                                  ;79ab
        LD      h,0x33                              ;79ac
        EX      af,af'                              ;79ae
        LD      e,l                                 ;79af
        INC     bc                                  ;79b0
        RRA                                         ;79b1
        ADD     a,c                                 ;79b2
        RRCA                                        ;79b3
        INC     bc                                  ;79b4
        LD      h,d                                 ;79b5
        ADD     a,c                                 ;79b6
        LD      bc,0x6203                           ;79b7
        ADD     a,c                                 ;79ba
        LD      bc,0x6303                           ;79bb
        INC     bc                                  ;79be
        RRA                                         ;79bf
        ADD     a,c                                 ;79c0
        ADD     a,e                                 ;79c1
        INC     bc                                  ;79c2
        ADC     a,b                                 ;79c3
        ADD     a,c                                 ;79c4
        RRCA                                        ;79c5
        INC     bc                                  ;79c6
        ADC     a,b                                 ;79c7
        ADD     a,c                                 ;79c8
        DEC     a                                   ;79c9
        INC     bc                                  ;79ca
        ADC     a,c                                 ;79cb
        AND     c                                   ;79cc
        LD      a,0xa                               ;79cd
        LD      a,(bc)                              ;79cf
        ADD     a,(hl)                              ;79d0
        ADD     a,(hl)                              ;79d1
        RRCA                                        ;79d2
        RRCA                                        ;79d3
        ADD     a,a                                 ;79d4
        ADD     a,a                                 ;79d5
        LD      bc,0x8a01                           ;79d6
        ADD     a,a                                 ;79d9
        LD      bc,0x8b01                           ;79da
        ADD     a,a                                 ;79dd
        LD      h,b                                 ;79de
        LD      h,b                                 ;79df
        LD      a,(bc)                              ;79e0
        LD      a,(bc)                              ;79e1
        LD      h,c                                 ;79e2
        LD      h,c                                 ;79e3
        RRCA                                        ;79e4
        RRCA                                        ;79e5
        LD      h,c                                 ;79e6
        LD      h,h                                 ;79e7
        LD      bc,0x6101                           ;79e8
        LD      h,l                                 ;79eb
        LD      bc,0x401                            ;79ec
        DAA                                         ;79ef
        ADC     a,h                                 ;79f0
        LD      a,(de)                              ;79f1
        INC     e                                   ;79f2
        LD      a,(de)                              ;79f3
        INC     e                                   ;79f4
        DEC     de                                  ;79f5
        DEC     e                                   ;79f6
        DEC     de                                  ;79f7
        DEC     e                                   ;79f8
        INC     sp                                  ;79f9
        LD      h,0x26                              ;79fa
        INC     sp                                  ;79fc
        INC     b                                   ;79fd
        DAA                                         ;79fe
        INC     b                                   ;79ff
        LD      e,0x4                               ;7a00
        RRA                                         ;7a02
        INC     b                                   ;7a03
        LD      (hl),0xc                            ;7a04
        LD      bc,bD_l6c94h                        ;7a06
        LD      bc,0x9201                           ;7a09
        LD      l,l                                 ;7a0c
        LD      (bc),a                              ;7a0d
        LD      (bc),a                              ;7a0e
        SUB     e                                   ;7a0f
        LD      l,(hl)                              ;7a10
        INC     bc                                  ;7a11
        INC     bc                                  ;7a12
        SUB     h                                   ;7a13
        LD      l,a                                 ;7a14
bD_l7a15h:
        INC     b                                   ;7a15
        INC     b                                   ;7a16
        SUB     l                                   ;7a17
        LD      (hl),b                              ;7a18
        DEC     b                                   ;7a19
        DEC     b                                   ;7a1a
        SUB     (hl)                                ;7a1b
        INC     b                                   ;7a1c
        RRA                                         ;7a1d
        INC     b                                   ;7a1e
        DEC     c                                   ;7a1f
        INC     b                                   ;7a20
        LD      c,0x4                               ;7a21
        JR      nc,bD_l7a25h                        ;7a23
bD_l7a25h:
        DJNZ    $+40                                ;7a25
        DJNZ    bD_l7a2ah                           ;7a27
        INC     b                                   ;7a29
bD_l7a2ah:
        LD      (bc),a                              ;7a2a
        INC     c                                   ;7a2b
        LD      bc,0x178c                           ;7a2c
        JR      bD_l7a48h                           ;7a2f
        JR      $+32                                ;7a31
        LD      hl,0x211e                           ;7a33
        JR      nz,$+31                             ;7a36
        JR      nz,bD_l7a57h                        ;7a38
        INC     b                                   ;7a3a
        LD      h,0xa                               ;7a3b
        LD      bc,0x3a6                            ;7a3d
        DEC     d                                   ;7a40
        INC     bc                                  ;7a41
        DEC     d                                   ;7a42
        INC     hl                                  ;7a43
        LD      (0x101),hl                          ;7a44
        INC     bc                                  ;7a47
bD_l7a48h:
        DEC     d                                   ;7a48
        INC     bc                                  ;7a49
        DEC     d                                   ;7a4a
        INC     hl                                  ;7a4b
        LD      (0x2223),hl                         ;7a4c
        INC     h                                   ;7a4f
        JR      nz,$+38                             ;7a50
        JR      nz,bD_l7a74h                        ;7a52
        LD      h,0x16                              ;7a54
        DEC     b                                   ;7a56
bD_l7a57h:
        LD      bc,0x2201                           ;7a57
        INC     hl                                  ;7a5a
        LD      d,0x5                               ;7a5b
        JR      nz,bD_l7a83h                        ;7a5d
        LD      (0x2623),hl                         ;7a5f
        JR      nz,$+34                             ;7a62
        INC     h                                   ;7a64
        EX      af,af'                              ;7a65
        LD      bc,0x1688                           ;7a66
        DEC     b                                   ;7a69
        LD      bc,0x2201                           ;7a6a
        INC     hl                                  ;7a6d
        LD      d,0x5                               ;7a6e
        INC     bc                                  ;7a70
        LD      bc,0x496                            ;7a71
bD_l7a74h:
        LD      bc,0xf01                            ;7a74
        ADD     hl,de                               ;7a77
        LD      bc,0x1901                           ;7a78
        JR      nz,bD_l7a7eh                        ;7a7b
        INC     bc                                  ;7a7d
bD_l7a7eh:
        DEC     e                                   ;7a7e
        LD      h,0x18                              ;7a7f
        LD      e,0x26                              ;7a81
bD_l7a83h:
        LD      h,0x21                              ;7a83
        JR      nz,bD_l7aadh                        ;7a85
        LD      h,0x1d                              ;7a87
        EX      af,af'                              ;7a89
        LD      h,0x87                              ;7a8a
        RRA                                         ;7a8c
        LD      d,0x5                               ;7a8d
        LD      h,0x26                              ;7a8f
        DEC     e                                   ;7a91
        DEC     h                                   ;7a92
        INC     bc                                  ;7a93
        LD      h,0x81                              ;7a94
        DEC     e                                   ;7a96
        INC     b                                   ;7a97
        LD      h,0x4                               ;7a98
        LD      bc,0x1081                           ;7a9a
        INC     bc                                  ;7a9d
        LD      bc,0x1f86                           ;7a9e
        LD      b,0x1                               ;7aa1
        LD      bc,0x726                            ;7aa3
        INC     b                                   ;7aa6
        LD      bc,0x39e                            ;7aa7
        DEC     d                                   ;7aaa
        JR      $+25                                ;7aab
bD_l7aadh:
        INC     hl                                  ;7aad
        INC     hl                                  ;7aae
        LD      hl,0x211e                           ;7aaf
        DEC     e                                   ;7ab2
        DEC     e                                   ;7ab3
        JR      nz,$+31                             ;7ab4
        LD      h,0x16                              ;7ab6
        DEC     b                                   ;7ab8
        LD      bc,0x2101                           ;7ab9
        LD      hl,0x1817                           ;7abc
        JR      nz,bD_l7ae2h                        ;7abf
        LD      e,0x21                              ;7ac1
        LD      h,0x20                              ;7ac3
        JR      nz,bD_l7ae4h                        ;7ac5
        INC     b                                   ;7ac7
        LD      bc,0x178c                           ;7ac8
        JR      bD_l7ae4h                           ;7acb
        JR      bD_l7aedh                           ;7acd
        LD      hl,0x211e                           ;7acf
        JR      nz,bD_l7af1h                        ;7ad2
        JR      nz,$+31                             ;7ad4
        EX      af,af'                              ;7ad6
        ADD     hl,bc                               ;7ad7
        EX      af,af'                              ;7ad8
        LD      h,0x2                               ;7ad9
        LD      (bc),a                              ;7adb
        ADD     a,(hl)                              ;7adc
        EX      af,af'                              ;7add
        ADD     hl,bc                               ;7ade
        LD      bc,0xb01                            ;7adf
bD_l7ae2h:
        ADD     hl,bc                               ;7ae2
        INC     bc                                  ;7ae3
bD_l7ae4h:
        LD      bc,0xd81                            ;7ae4
        INC     bc                                  ;7ae7
        LD      bc,0xf8a                            ;7ae8
        ADD     hl,bc                               ;7aeb
        LD      a,(bc)                              ;7aec
bD_l7aedh:
        LD      (bc),a                              ;7aed
        LD      (bc),a                              ;7aee
        ADD     hl,bc                               ;7aef
        INC     c                                   ;7af0
bD_l7af1h:
        LD      bc,0xe01                            ;7af1
        INC     bc                                  ;7af4
        LD      bc,0x1081                           ;7af5
        INC     bc                                  ;7af8
        LD      bc,0x203                            ;7af9
        ADD     a,c                                 ;7afc
        LD      de,0x103                            ;7afd
        ADD     a,c                                 ;7b00
        DEC     c                                   ;7b01
        INC     bc                                  ;7b02
        LD      bc,0xd81                            ;7b03
        INC     bc                                  ;7b06
        LD      bc,0xf82                            ;7b07
        LD      c,0x3                               ;7b0a
        LD      (bc),a                              ;7b0c
        ADD     a,c                                 ;7b0d
        DJNZ    bD_l7b13h                           ;7b0e
        LD      bc,0x1fd0                           ;7b10
bD_l7b13h:
        LD      b,0x1                               ;7b13
        LD      bc,0x626                            ;7b15
        LD      bc,0x501                            ;7b18
        LD      bc,0x1904                           ;7b1b
        INC     hl                                  ;7b1e
        RLA                                         ;7b1f
        ADD     hl,de                               ;7b20
        LD      h,0x1e                              ;7b21
        LD      hl,0x261d                           ;7b23
bD_l7b26h:
        JR      nz,bD_l7b45h                        ;7b26
        LD      h,0x26                              ;7b28
        RRA                                         ;7b2a
        DJNZ    $+3                                 ;7b2b
        LD      bc,0x2026                           ;7b2d
        JR      bD_l7b49h                           ;7b30
        LD      h,0x20                              ;7b32
        LD      e,0x21                              ;7b34
        LD      h,0x26                              ;7b36
        JR      nz,$+31                             ;7b38
        LD      bc,0x801                            ;7b3a
        ADD     hl,bc                               ;7b3d
        LD      bc,0xb01                            ;7b3e
        ADD     hl,bc                               ;7b41
        LD      bc,0xf01                            ;7b42
bD_l7b45h:
        LD      h,0x1                               ;7b45
        INC     b                                   ;7b47
        ADD     hl,de                               ;7b48
bD_l7b49h:
        LD      h,0x9                               ;7b49
        LD      a,(bc)                              ;7b4b
        LD      bc,0x901                            ;7b4c
        INC     c                                   ;7b4f
        LD      bc,0x2601                           ;7b50
        DJNZ    $+3                                 ;7b53
        LD      bc,0x1f26                           ;7b55
        LD      b,0x1                               ;7b58
        LD      (de),a                              ;7b5a
        LD      a,(de)                              ;7b5b
        LD      (0x133),a                           ;7b5c
        LD      bc,0x1a12                           ;7b5f
        EX      af,af'                              ;7b62
        LD      bc,0x3004                           ;7b63
        AND     d                                   ;7b66
        LD      (0x3033),a                          ;7b67
        JR      nc,bD_l7b7eh                        ;7b6a
        LD      a,(de)                              ;7b6c
        LD      (0x133),a                           ;7b6d
        LD      bc,0x1a12                           ;7b70
        LD      hl,(0x2d2b)                         ;7b73
        CPL                                         ;7b76
        DEC     l                                   ;7b77
        CPL                                         ;7b78
        LD      l,0x30                              ;7b79
        LD      l,0x30                              ;7b7b
        DEC     de                                  ;7b7d
bD_l7b7eh:
        INC     de                                  ;7b7e
        DEC     de                                  ;7b7f
        INC     de                                  ;7b80
        LD      bc,0x2e01                           ;7b81
        JR      nc,bD_l7ba1h                        ;7b84
        INC     de                                  ;7b86
        DEC     de                                  ;7b87
        INC     de                                  ;7b88
        LD      a,(bc)                              ;7b89
        LD      bc,0x288                            ;7b8a
        LD      (de),a                              ;7b8d
        INC     e                                   ;7b8e
        INC     sp                                  ;7b8f
        LD      bc,0x1401                           ;7b90
        DEC     (hl)                                ;7b93
        INC     bc                                  ;7b94
        LD      bc,0x1c81                           ;7b95
        INC     bc                                  ;7b98
        LD      bc,0x1491                           ;7b99
        INC     e                                   ;7b9c
        INC     sp                                  ;7b9d
        JR      nc,bD_l7bd0h                        ;7b9e
bD_l7ba0h:
        INC     d                                   ;7ba0
bD_l7ba1h:
        DEC     (hl)                                ;7ba1
        JR      nc,bD_l7bd4h                        ;7ba2
        LD      bc,0x321c                           ;7ba4
        INC     sp                                  ;7ba7
        LD      bc,0x3414                           ;7ba8
        DEC     (hl)                                ;7bab
        INC     b                                   ;7bac
        DAA                                         ;7bad
        ADD     a,d                                 ;7bae
        JR      z,bD_l7bdah                         ;7baf
        INC     bc                                  ;7bb1
        DAA                                         ;7bb2
bD_l7bb3h:
        ADD     a,d                                 ;7bb3
        JR      z,bD_l7bdfh                         ;7bb4
        LD      a,(bc)                              ;7bb6
        DAA                                         ;7bb7
        ADD     a,e                                 ;7bb8
        JR      z,bD_l7be4h                         ;7bb9
        JR      z,bD_l7bc9h                         ;7bbb
        DAA                                         ;7bbd
        ADC     a,h                                 ;7bbe
        JR      z,bD_l7c2bh                         ;7bbf
        LD      l,e                                 ;7bc1
        LD      l,h                                 ;7bc2
        LD      (hl),d                              ;7bc3
        LD      (hl),e                              ;7bc4
        LD      (hl),h                              ;7bc5
        LD      (hl),l                              ;7bc6
        LD      h,c                                 ;7bc7
        LD      l,b                                 ;7bc8
bD_l7bc9h:
        LD      (hl),c                              ;7bc9
        LD      e,b                                 ;7bca
        INC     b                                   ;7bcb
        DAA                                         ;7bcc
        ADC     a,h                                 ;7bcd
        LD      l,l                                 ;7bce
        LD      l,(hl)                              ;7bcf
bD_l7bd0h:
        LD      l,a                                 ;7bd0
        LD      (hl),b                              ;7bd1
        HALT                                        ;7bd2
        LD      (hl),e                              ;7bd3
bD_l7bd4h:
        LD      (hl),a                              ;7bd4
        LD      a,b                                 ;7bd5
        LD      l,c                                 ;7bd6
        LD      h,a                                 ;7bd7
        LD      (hl),a                              ;7bd8
        LD      d,(hl)                              ;7bd9
bD_l7bdah:
        INC     b                                   ;7bda
        DAA                                         ;7bdb
        ADC     a,h                                 ;7bdc
        LD      l,d                                 ;7bdd
        LD      l,e                                 ;7bde
bD_l7bdfh:
        LD      l,h                                 ;7bdf
        LD      a,(hl)                              ;7be0
        LD      h,b                                 ;7be1
        LD      (hl),h                              ;7be2
        LD      (hl),e                              ;7be3
bD_l7be4h:
        ADD     a,e                                 ;7be4
        LD      e,b                                 ;7be5
        LD      (hl),c                              ;7be6
        LD      e,b                                 ;7be7
        LD      h,a                                 ;7be8
        LD      b,0x27                              ;7be9
        ADD     a,e                                 ;7beb
        JR      z,bD_l7c17h                         ;7bec
        LD      a,(hl)                              ;7bee
        INC     bc                                  ;7bef
        DAA                                         ;7bf0
        ADC     a,h                                 ;7bf1
        LD      c,a                                 ;7bf2
        LD      l,h                                 ;7bf3
        LD      a,(hl)                              ;7bf4
        DAA                                         ;7bf5
        LD      c,l                                 ;7bf6
        LD      h,b                                 ;7bf7
        LD      h,c                                 ;7bf8
        LD      h,d                                 ;7bf9
        LD      h,(hl)                              ;7bfa
        LD      h,(hl)                              ;7bfb
        LD      h,l                                 ;7bfc
        LD      h,(hl)                              ;7bfd
        INC     bc                                  ;7bfe
        JR      nc,$-125                            ;7bff
        LD      h,(hl)                              ;7c01
        INC     b                                   ;7c02
        JR      nc,$-114                            ;7c03
        LD      c,a                                 ;7c05
        LD      (hl),h                              ;7c06
        LD      (hl),h                              ;7c07
        LD      a,b                                 ;7c08
        LD      d,(hl)                              ;7c09
        LD      e,(hl)                              ;7c0a
        LD      d,(hl)                              ;7c0b
        LD      h,l                                 ;7c0c
        JR      nc,bD_l7c5ch                        ;7c0d
        LD      h,(hl)                              ;7c0f
        LD      h,(hl)                              ;7c10
        INC     b                                   ;7c11
        JR      nc,bD_l7ba0h                        ;7c12
        LD      h,b                                 ;7c14
        LD      h,c                                 ;7c15
        LD      h,d                                 ;7c16
bD_l7c17h:
        LD      b,h                                 ;7c17
        LD      c,l                                 ;7c18
        LD      e,(hl)                              ;7c19
        LD      c,d                                 ;7c1a
        LD      e,(hl)                              ;7c1b
        LD      h,(hl)                              ;7c1c
        JR      nc,bD_l7c4fh                        ;7c1d
        LD      c,l                                 ;7c1f
        INC     b                                   ;7c20
        JR      nc,bD_l7bb3h                        ;7c21
        LD      h,e                                 ;7c23
        LD      h,d                                 ;7c24
        ADD     a,e                                 ;7c25
        ADD     a,d                                 ;7c26
        LD      b,h                                 ;7c27
        LD      e,a                                 ;7c28
        LD      l,c                                 ;7c29
        LD      b,d                                 ;7c2a
bD_l7c2bh:
        JR      nc,bD_l7c7ah                        ;7c2b
        LD      c,d                                 ;7c2d
        LD      c,l                                 ;7c2e
        JR      nc,bD_l7c61h                        ;7c2f
        LD      c,l                                 ;7c31
        LD      c,l                                 ;7c32
        DEC     b                                   ;7c33
        DAA                                         ;7c34
        ADD     a,l                                 ;7c35
        JR      z,bD_l7c61h                         ;7c36
        JR      z,bD_l7c62h                         ;7c38
        ADD     hl,hl                               ;7c3a
        INC     bc                                  ;7c3b
        DAA                                         ;7c3c
        ADD     a,e                                 ;7c3d
        ADD     a,h                                 ;7c3e
        LD      b,b                                 ;7c3f
        LD      a,0x6                               ;7c40
        DAA                                         ;7c42
        ADC     a,d                                 ;7c43
        ADD     a,h                                 ;7c44
        LD      b,b                                 ;7c45
        LD      b,b                                 ;7c46
        LD      l,h                                 ;7c47
        LD      a,l                                 ;7c48
        LD      h,h                                 ;7c49
        LD      e,(hl)                              ;7c4a
        LD      c,l                                 ;7c4b
        LD      d,(hl)                              ;7c4c
        JR      nc,bD_l7c53h                        ;7c4d
bD_l7c4fh:
        DAA                                         ;7c4f
        ADC     a,b                                 ;7c50
        LD      l,h                                 ;7c51
        LD      b,b                                 ;7c52
bD_l7c53h:
        LD      l,e                                 ;7c53
        LD      l,h                                 ;7c54
        LD      c,l                                 ;7c55
        LD      c,l                                 ;7c56
        LD      e,a                                 ;7c57
        LD      c,a                                 ;7c58
        INC     b                                   ;7c59
        JR      nc,bD_l7c60h                        ;7c5a
bD_l7c5ch:
        DAA                                         ;7c5c
        ADD     a,c                                 ;7c5d
        LD      a,(hl)                              ;7c5e
        INC     bc                                  ;7c5f
bD_l7c60h:
        DAA                                         ;7c60
bD_l7c61h:
        SUB     d                                   ;7c61
bD_l7c62h:
        LD      c,a                                 ;7c62
        LD      l,h                                 ;7c63
        LD      b,b                                 ;7c64
        LD      l,h                                 ;7c65
        LD      c,l                                 ;7c66
        LD      h,l                                 ;7c67
        LD      c,l                                 ;7c68
        LD      e,(hl)                              ;7c69
        LD      a,h                                 ;7c6a
        LD      a,l                                 ;7c6b
        LD      (hl),l                              ;7c6c
        LD      h,l                                 ;7c6d
        LD      h,h                                 ;7c6e
        LD      h,l                                 ;7c6f
        LD      d,(hl)                              ;7c70
        LD      c,l                                 ;7c71
        LD      h,l                                 ;7c72
        LD      c,l                                 ;7c73
        LD      b,0x30                              ;7c74
        ADD     a,e                                 ;7c76
        DAA                                         ;7c77
        JR      z,$+43                              ;7c78
