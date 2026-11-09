        DEFB    0xdd,0xf0,0xa                       ;6942
        DEFB    0xdd,0xf0,0x9                       ;6945
        DEC     c                                   ;6948
        RST     KEYINT                              ;6949
        DEC     c                                   ;694a
        RET     nc                                  ;694b
        DEC     c                                   ;694c
        NOP                                         ;694d
        RET     nc                                  ;694e
        ADD     hl,bc                               ;694f
        RET     nc                                  ;6950
        LD      a,l                                 ;6951
        RLCA                                        ;6952
        SBC     a,c                                 ;6953
        RLCA                                        ;6954
        LD      a,l                                 ;6955
        RLCA                                        ;6956
        SBC     a,c                                 ;6957
        RRCA                                        ;6958
        RET     nc                                  ;6959
        LD      a,c                                 ;695a
        SBC     a,c                                 ;695b
        DEFB    0xfd,0xdd,0xd0                      ;695c
        SBC     a,c                                 ;695f
        DEFB    0xdd,0xff,0xfd                      ;6960
        ADD     hl,bc                               ;6963
        RST     OUTDO                               ;6964
        RET     p                                   ;6965
        RRCA                                        ;6966
        NOP                                         ;6967
        RET     nc                                  ;6968
        ADD     hl,bc                               ;6969
        SBC     a,c                                 ;696a
        SUB     b                                   ;696b
        DEFB    0xfd,0xdd,0xd9                      ;696c
        SBC     a,c                                 ;696f
        RST     OUTDO                               ;6970
        RST     KEYINT                              ;6971
        DEFB    0xfd,0x99,0xff                      ;6972
        NOP                                         ;6975
        NOP                                         ;6976
        ADD     hl,bc                               ;6977
        RET     p                                   ;6978
        SBC     a,c                                 ;6979
        SBC     a,c                                 ;697a
        NOP                                         ;697b
        NOP                                         ;697c
        CALL    z,ERAFNK                            ;697d
        CALL    z,ERAFNK                            ;6980
        XOR     0xcc                                ;6983
        NOP                                         ;6985
        XOR     0xee                                ;6986
        NOP                                         ;6988
        INC     de                                  ;6989
        XOR     0x2                                 ;698a
        XOR     d                                   ;698c
        ADD     a,e                                 ;698d
        AND     a                                   ;698e
        LD      (hl),a                              ;698f
        AND     a                                   ;6990
        DEC     b                                   ;6991
        LD      (hl),a                              ;6992
        LD      (bc),a                              ;6993
        NOP                                         ;6994
        ADD     a,c                                 ;6995
        LD      (hl),b                              ;6996
        EX      af,af'                              ;6997
        NOP                                         ;6998
        INC     bc                                  ;6999
        CP      e                                   ;699a
        INC     b                                   ;699b
        NOP                                         ;699c
        INC     b                                   ;699d
        CP      e                                   ;699e
        SBC     a,h                                 ;699f
        NOP                                         ;69a0
        SBC     a,c                                 ;69a1
        NOP                                         ;69a2
        ADD     hl,bc                               ;69a3
        RET     po                                  ;69a4
        NOP                                         ;69a5
        CALL    pe,0xcee0                           ;69a6
        LD      c,0xc0                              ;69a9
        NOP                                         ;69ab
        RET     nz                                  ;69ac
        INC     c                                   ;69ad
        NOP                                         ;69ae
        NOP                                         ;69af
        LD      c,0xe0                              ;69b0
        LD      a,(bc)                              ;69b2
        XOR     d                                   ;69b3
        CALL    pe,0xac0                            ;69b4
        XOR     d                                   ;69b7
        CALL    z,0x7c0                             ;69b8
        LD      (hl),a                              ;69bb
        INC     b                                   ;69bc
        NOP                                         ;69bd
        SBC     a,l                                 ;69be
        RRCA                                        ;69bf
        RST     CALLF                               ;69c0
        LD      a,l                                 ;69c1
        LD      (0xf700),hl                         ;69c2
        LD      (0x22),hl                           ;69c5
        LD      (0xcc22),hl                         ;69c8
        LD      (0xcc22),hl                         ;69cb
        CALL    z,0xcc22                            ;69ce
        CALL    z,0xcc22                            ;69d1
        CALL    z,0xee22                            ;69d4
        CALL    z,0xee22                            ;69d7
        XOR     0x22                                ;69da
        INC     bc                                  ;69dc
        XOR     0xc0                                ;69dd
        RRCA                                        ;69df
        RST     CALLF                               ;69e0
        LD      a,l                                 ;69e1
        DEFB    0xfd,0x0,0xf7                       ;69e2
        XOR     l                                   ;69e5
        RET     p                                   ;69e6
        NOP                                         ;69e7
        RST     CALLF                               ;69e8
        XOR     a                                   ;69e9
        NOP                                         ;69ea
        NOP                                         ;69eb
        RLCA                                        ;69ec
        AND     b                                   ;69ed
        ADD     hl,bc                               ;69ee
        SUB     b                                   ;69ef
        RLCA                                        ;69f0
        AND     b                                   ;69f1
        LD      (0x799),hl                          ;69f2
        LD      (0x9022),hl                         ;69f5
        LD      (0xcc22),hl                         ;69f8
        LD      (0xcc22),hl                         ;69fb
        CALL    z,0xa50a                            ;69fe
        LD      a,(bc)                              ;6a01
        AND     l                                   ;6a02
        LD      a,(bc)                              ;6a03
        AND     l                                   ;6a04
        LD      a,(bc)                              ;6a05
        AND     l                                   ;6a06
        LD      a,(bc)                              ;6a07
        AND     l                                   ;6a08
        LD      a,(bc)                              ;6a09
        AND     l                                   ;6a0a
        LD      a,(bc)                              ;6a0b
        AND     l                                   ;6a0c
        LD      a,(bc)                              ;6a0d
        AND     l                                   ;6a0e
        LD      a,(bc)                              ;6a0f
        AND     l                                   ;6a10
        LD      a,(bc)                              ;6a11
        AND     l                                   ;6a12
        LD      a,(bc)                              ;6a13
        AND     l                                   ;6a14
        LD      a,(bc)                              ;6a15
        AND     l                                   ;6a16
        LD      a,(bc)                              ;6a17
        AND     l                                   ;6a18
        LD      a,(bc)                              ;6a19
        AND     l                                   ;6a1a
        LD      a,(bc)                              ;6a1b
        AND     l                                   ;6a1c
        LD      a,(bc)                              ;6a1d
        AND     l                                   ;6a1e
        LD      a,(bc)                              ;6a1f
        SBC     a,c                                 ;6a20
        LD      sp,hl                               ;6a21
        ADD     hl,bc                               ;6a22
        SBC     a,c                                 ;6a23
        SBC     a,c                                 ;6a24
        SUB     b                                   ;6a25
        RET     po                                  ;6a26
        SBC     a,c                                 ;6a27
        SBC     a,c                                 ;6a28
        INC     c                                   ;6a29
        ADC     a,0x9                               ;6a2a
        SBC     a,c                                 ;6a2c
        INC     c                                   ;6a2d
        CALL    z,0x9909                            ;6a2e
        SUB     b                                   ;6a31
        NOP                                         ;6a32
        SBC     a,c                                 ;6a33
        SBC     a,c                                 ;6a34
        INC     c                                   ;6a35
        RET     nz                                  ;6a36
        ADD     hl,bc                               ;6a37
        RET     nz                                  ;6a38
        CALL    z,0x9ee                             ;6a39
        RET     nz                                  ;6a3c
        CALL    z,0x9cc                             ;6a3d
        NOP                                         ;6a40
        INC     c                                   ;6a41
        RET     nz                                  ;6a42
        ADD     hl,bc                               ;6a43
        NOP                                         ;6a44
        LD      (hl),b                              ;6a45
        LD      (hl),a                              ;6a46
        NOP                                         ;6a47
        NOP                                         ;6a48
        INC     c                                   ;6a49
        RLCA                                        ;6a4a
        NOP                                         ;6a4b
        NOP                                         ;6a4c
        CALL    z,BEEP                              ;6a4d
        LD      c,0xce                              ;6a50
        XOR     0x0                                 ;6a52
        INC     c                                   ;6a54
        CALL    z,ERAFNK                            ;6a55
        NOP                                         ;6a58
        CALL    z,BEEP                              ;6a59
        NOP                                         ;6a5c
        XOR     d                                   ;6a5d
        AND     b                                   ;6a5e
        NOP                                         ;6a5f
        RLCA                                        ;6a60
        RLCA                                        ;6a61
        LD      (hl),a                              ;6a62
        NOP                                         ;6a63
        NOP                                         ;6a64
        RET     nz                                  ;6a65
        LD      (hl),a                              ;6a66
        NOP                                         ;6a67
        INC     c                                   ;6a68
        CALL    z,VDP_DW                            ;6a69
        CALL    pe,0xe0ee                           ;6a6c
        RLCA                                        ;6a6f
        CALL    z,0xe0cc                            ;6a70
        RLCA                                        ;6a73
        CALL    z,0xe0cc                            ;6a74
        RLCA                                        ;6a77
        INC     c                                   ;6a78
        CALL    z,0x700                             ;6a79
        LD      a,(bc)                              ;6a7c
        XOR     d                                   ;6a7d
        NOP                                         ;6a7e
        NOP                                         ;6a7f
        LD      (hl),a                              ;6a80
        LD      (hl),a                              ;6a81
        LD      (hl),b                              ;6a82
        INC     bc                                  ;6a83
        LD      (hl),a                              ;6a84
        LD      (hl),a                              ;6a85
        LD      (hl),b                              ;6a86
        INC     bc                                  ;6a87
        LD      (hl),a                              ;6a88
        LD      (hl),a                              ;6a89
        LD      (hl),b                              ;6a8a
        INC     bc                                  ;6a8b
        INC     sp                                  ;6a8c
        INC     sp                                  ;6a8d
        LD      (hl),b                              ;6a8e
        INC     bc                                  ;6a8f
        INC     sp                                  ;6a90
        INC     sp                                  ;6a91
        LD      (hl),b                              ;6a92
        RLCA                                        ;6a93
        INC     sp                                  ;6a94
        INC     sp                                  ;6a95
        LD      (hl),b                              ;6a96
        NOP                                         ;6a97
        INC     sp                                  ;6a98
        INC     sp                                  ;6a99
        LD      (hl),b                              ;6a9a
        INC     bc                                  ;6a9b
        INC     sp                                  ;6a9c
        ADD     a,c                                 ;6a9d
        LD      (hl),b                              ;6a9e
        INC     bc                                  ;6a9f
        INC     sp                                  ;6aa0
        ADD     a,c                                 ;6aa1
        LD      (hl),b                              ;6aa2
        INC     bc                                  ;6aa3
        INC     sp                                  ;6aa4
        ADD     a,c                                 ;6aa5
        LD      (hl),b                              ;6aa6
        INC     bc                                  ;6aa7
        INC     sp                                  ;6aa8
b4_l6aa9h:
        ADC     a,d                                 ;6aa9
        LD      (hl),b                              ;6aaa
        LD      (hl),a                              ;6aab
        INC     sp                                  ;6aac
        INC     sp                                  ;6aad
        RET     p                                   ;6aae
        LD      (hl),a                              ;6aaf
        CCF                                         ;6ab0
        INC     sp                                  ;6ab1
        RET     p                                   ;6ab2
b4_l6ab3h:
        LD      (hl),a                              ;6ab3
        INC     bc                                  ;6ab4
        RST     KEYINT                              ;6ab5
        ADD     a,c                                 ;6ab6
        SBC     a,c                                 ;6ab7
        ADD     hl,bc                               ;6ab8
        NOP                                         ;6ab9
        CP      h                                   ;6aba
        INC     sp                                  ;6abb
        NOP                                         ;6abc
        INC     sp                                  ;6abd
        NOP                                         ;6abe
        NOP                                         ;6abf
        INC     sp                                  ;6ac0
        INC     sp                                  ;6ac1
        NOP                                         ;6ac2
        INC     sp                                  ;6ac3
        INC     sp                                  ;6ac4
        SCF                                         ;6ac5
        INC     bc                                  ;6ac6
        INC     sp                                  ;6ac7
        SCF                                         ;6ac8
        LD      (hl),a                              ;6ac9
        INC     sp                                  ;6aca
        SCF                                         ;6acb
        LD      (hl),a                              ;6acc
        NOP                                         ;6acd
        INC     sp                                  ;6ace
        LD      (hl),b                              ;6acf
        NOP                                         ;6ad0
        NOP                                         ;6ad1
        SCF                                         ;6ad2
        INC     bc                                  ;6ad3
        JR      nc,b4_l6ae0h                        ;6ad4
        LD      (hl),b                              ;6ad6
        LD      (hl),e                              ;6ad7
        LD      a,(0xaa)                            ;6ad8
        LD      a,d                                 ;6adb
        XOR     d                                   ;6adc
        LD      (hl),a                              ;6add
        LD      a,(bc)                              ;6ade
        XOR     d                                   ;6adf
b4_l6ae0h:
        LD      (hl),a                              ;6ae0
        LD      (hl),a                              ;6ae1
        XOR     d                                   ;6ae2
        LD      (hl),a                              ;6ae3
        LD      (hl),a                              ;6ae4
        NOP                                         ;6ae5
        AND     a                                   ;6ae6
        LD      (hl),a                              ;6ae7
        NOP                                         ;6ae8
        NOP                                         ;6ae9
        LD      (hl),a                              ;6aea
        LD      (hl),b                              ;6aeb
        NOP                                         ;6aec
        NOP                                         ;6aed
        LD      (hl),a                              ;6aee
        NOP                                         ;6aef
        DEC     bc                                  ;6af0
        CP      e                                   ;6af1
        NOP                                         ;6af2
        INC     bc                                  ;6af3
        JR      nc,b4_l6af6h                        ;6af4
b4_l6af6h:
        INC     bc                                  ;6af6
        RLCA                                        ;6af7
        INC     sp                                  ;6af8
        ADD     a,c                                 ;6af9
        SCF                                         ;6afa
        INC     b                                   ;6afb
        LD      (hl),a                              ;6afc
        ADD     a,c                                 ;6afd
        LD      (hl),b                              ;6afe
        INC     bc                                  ;6aff
        NOP                                         ;6b00
        ADC     a,e                                 ;6b01
        INC     bc                                  ;6b02
        JR      nc,b4_l6b05h                        ;6b03
b4_l6b05h:
        NOP                                         ;6b05
        LD      (hl),e                              ;6b06
        JR      nc,b4_l6b09h                        ;6b07
b4_l6b09h:
        NOP                                         ;6b09
        LD      a,d                                 ;6b0a
        XOR     d                                   ;6b0b
        XOR     d                                   ;6b0c
        NOP                                         ;6b0d
        JR      nz,b4_l6aa9h                        ;6b0e
        ADD     a,a                                 ;6b10
        RLCA                                        ;6b11
        RST     KEYINT                              ;6b12
        RST     CALLF                               ;6b13
        LD      a,d                                 ;6b14
        SBC     a,c                                 ;6b15
        LD      (hl),a                              ;6b16
        SUB     a                                   ;6b17
        JR      nc,b4_l6ab3h                        ;6b18
        ADC     a,c                                 ;6b1a
        LD      (hl),a                              ;6b1b
        SBC     a,c                                 ;6b1c
        LD      a,c                                 ;6b1d
        AND     a                                   ;6b1e
        AND     a                                   ;6b1f
        LD      a,d                                 ;6b20
        LD      (hl),a                              ;6b21
        LD      (hl),b                              ;6b22
        NOP                                         ;6b23
        INC     de                                  ;6b24
        SBC     a,c                                 ;6b25
        ADC     a,l                                 ;6b26
        LD      (hl),a                              ;6b27
        SBC     a,c                                 ;6b28
        SBC     a,c                                 ;6b29
        LD      (hl),a                              ;6b2a
        LD      (hl),b                              ;6b2b
        SBC     a,c                                 ;6b2c
        SBC     a,c                                 ;6b2d
        LD      a,d                                 ;6b2e
        AND     b                                   ;6b2f
        SBC     a,c                                 ;6b30
        LD      (hl),a                              ;6b31
        AND     a                                   ;6b32
        LD      (hl),b                              ;6b33
        INC     d                                   ;6b34
        SBC     a,c                                 ;6b35
        ADD     a,c                                 ;6b36
        LD      (hl),a                              ;6b37
        INC     bc                                  ;6b38
        SBC     a,c                                 ;6b39
        LD      (bc),a                              ;6b3a
        LD      a,d                                 ;6b3b
        ADD     a,a                                 ;6b3c
        SUB     a                                   ;6b3d
        SBC     a,c                                 ;6b3e
        NOP                                         ;6b3f
        RLCA                                        ;6b40
        LD      (hl),a                              ;6b41
        AND     a                                   ;6b42
        LD      a,c                                 ;6b43
        INC     bc                                  ;6b44
        SBC     a,c                                 ;6b45
        ADD     a,c                                 ;6b46
        LD      (hl),a                              ;6b47
        INC     bc                                  ;6b48
        SBC     a,c                                 ;6b49
        ADC     a,l                                 ;6b4a
        RLCA                                        ;6b4b
        LD      a,c                                 ;6b4c
        SBC     a,c                                 ;6b4d
        SBC     a,c                                 ;6b4e
        RLCA                                        ;6b4f
        LD      a,c                                 ;6b50
        SBC     a,c                                 ;6b51
        SBC     a,c                                 ;6b52
        NOP                                         ;6b53
        LD      a,c                                 ;6b54
        SBC     a,c                                 ;6b55
        SBC     a,c                                 ;6b56
        NOP                                         ;6b57
        INC     bc                                  ;6b58
        SBC     a,c                                 ;6b59
        ADD     a,c                                 ;6b5a
        NOP                                         ;6b5b
        INC     bc                                  ;6b5c
        SBC     a,c                                 ;6b5d
        ADD     a,c                                 ;6b5e
        NOP                                         ;6b5f
        INC     bc                                  ;6b60
        SBC     a,c                                 ;6b61
        ADD     a,c                                 ;6b62
        RLCA                                        ;6b63
        INC     bc                                  ;6b64
        SBC     a,c                                 ;6b65
        JP      b4_l7907h                           ;6b66
        SBC     a,c                                 ;6b69
        SBC     a,c                                 ;6b6a
        NOP                                         ;6b6b
        LD      (hl),a                              ;6b6c
        SBC     a,c                                 ;6b6d
        SBC     a,c                                 ;6b6e
        RLCA                                        ;6b6f
        RLCA                                        ;6b70
        SBC     a,c                                 ;6b71
        SBC     a,c                                 ;6b72
        RLCA                                        ;6b73
        LD      (hl),a                              ;6b74
        SBC     a,c                                 ;6b75
        SBC     a,c                                 ;6b76
        NOP                                         ;6b77
        RLCA                                        ;6b78
        LD      a,c                                 ;6b79
        SBC     a,c                                 ;6b7a
        NOP                                         ;6b7b
        LD      (hl),b                              ;6b7c
        LD      (hl),a                              ;6b7d
        LD      a,c                                 ;6b7e
        NOP                                         ;6b7f
        NOP                                         ;6b80
        RLCA                                        ;6b81
        LD      (hl),a                              ;6b82
        SBC     a,c                                 ;6b83
        SBC     a,c                                 ;6b84
        RST     0                                   ;6b85
        LD      (hl),a                              ;6b86
        SBC     a,c                                 ;6b87
        SUB     b                                   ;6b88
        LD      a,a                                 ;6b89
        RST     0                                   ;6b8a
        SBC     a,c                                 ;6b8b
        SUB     b                                   ;6b8c
        LD      a,h                                 ;6b8d
        LD      a,h                                 ;6b8e
        SBC     a,c                                 ;6b8f
        SUB     a                                   ;6b90
        NOP                                         ;6b91
        NOP                                         ;6b92
        SBC     a,c                                 ;6b93
        INC     c                                   ;6b94
        LD      a,h                                 ;6b95
        LD      a,h                                 ;6b96
        SBC     a,c                                 ;6b97
        RLCA                                        ;6b98
        CALL    z,0x99cc                            ;6b99
        RRCA                                        ;6b9c
        LD      (hl),a                              ;6b9d
        LD      (hl),a                              ;6b9e
        SBC     a,c                                 ;6b9f
        LD      (hl),b                              ;6ba0
        NOP                                         ;6ba1
        NOP                                         ;6ba2
        CALL    z,b4_sub_7777h                      ;6ba3
        RST     8                                   ;6ba6
        LD      (hl),a                              ;6ba7
        CALL    z,0x5ff                             ;6ba8
        LD      (hl),a                              ;6bab
        INC     b                                   ;6bac
        NOP                                         ;6bad
        ADC     a,c                                 ;6bae
        CALL    z,0xccc7                            ;6baf
        CALL    z,0xcf77                            ;6bb2
        LD      (hl),a                              ;6bb5
        RST     0                                   ;6bb6
        LD      a,a                                 ;6bb7
        INC     bc                                  ;6bb8
        LD      (hl),a                              ;6bb9
        INC     b                                   ;6bba
        NOP                                         ;6bbb
        LD      (bc),a                              ;6bbc
        CALL    z,0x9902                            ;6bbd
        AND     l                                   ;6bc0
        CALL    z,0x9f7                             ;6bc1
        SBC     a,c                                 ;6bc4
        LD      (hl),a                              ;6bc5
        LD      (hl),a                              ;6bc6
        ADD     hl,bc                               ;6bc7
        SBC     a,c                                 ;6bc8
        NOP                                         ;6bc9
        NOP                                         ;6bca
        LD      a,c                                 ;6bcb
        SBC     a,c                                 ;6bcc
        LD      (hl),a                              ;6bcd
        CALL    z,0x9970                            ;6bce
        CALL    z,0xc0c7                            ;6bd1
        SBC     a,c                                 ;6bd4
        LD      a,a                                 ;6bd5
        LD      (hl),a                              ;6bd6
        LD      (hl),b                              ;6bd7
        SBC     a,c                                 ;6bd8
        NOP                                         ;6bd9
        NOP                                         ;6bda
        RLCA                                        ;6bdb
        SBC     a,c                                 ;6bdc
        SUB     b                                   ;6bdd
        CALL    z,b4_sub_7c7ch                      ;6bde
        SUB     b                                   ;6be1
        RST     CALLF                               ;6be2
        CALL    z,0x9077                            ;6be3
        INC     bc                                  ;6be6
        LD      (hl),a                              ;6be7
        ADD     a,c                                 ;6be8
        SUB     a                                   ;6be9
        INC     bc                                  ;6bea
        NOP                                         ;6beb
        ADC     a,l                                 ;6bec
        RLCA                                        ;6bed
        LD      (hl),a                              ;6bee
        RST     0                                   ;6bef
        LD      a,h                                 ;6bf0
        INC     c                                   ;6bf1
        LD      (hl),a                              ;6bf2
        LD      (hl),a                              ;6bf3
        CALL    z,0x7f07                            ;6bf4
        LD      (hl),a                              ;6bf7
        LD      (hl),a                              ;6bf8
        SUB     b                                   ;6bf9
        INC     bc                                  ;6bfa
        NOP                                         ;6bfb
        ADC     a,b                                 ;6bfc
        RST     0                                   ;6bfd
        LD      (hl),a                              ;6bfe
        RST     0                                   ;6bff
        ADD     hl,bc                               ;6c00
        CALL    z,b4_sub_7c7fh                      ;6c01
        ADD     hl,bc                               ;6c04
        INC     bc                                  ;6c05
        LD      (hl),a                              ;6c06
        ADD     a,c                                 ;6c07
        ADD     hl,bc                               ;6c08
        INC     bc                                  ;6c09
        NOP                                         ;6c0a
        ADC     a,l                                 ;6c0b
        LD      a,c                                 ;6c0c
        RST     0                                   ;6c0d
        CALL    z,b4_sub_70c7h                      ;6c0e
        CALL    z,b4_sub_77c7h                      ;6c11
        RET     nz                                  ;6c14
        LD      (hl),a                              ;6c15
        LD      a,a                                 ;6c16
        LD      (hl),a                              ;6c17
        LD      (hl),b                              ;6c18
        INC     bc                                  ;6c19
        NOP                                         ;6c1a
        ADD     a,c                                 ;6c1b
        ADD     hl,bc                               ;6c1c
        INC     bc                                  ;6c1d
        SBC     a,c                                 ;6c1e
        ADD     a,c                                 ;6c1f
        SUB     b                                   ;6c20
        INC     bc                                  ;6c21
        SBC     a,c                                 ;6c22
        ADD     a,c                                 ;6c23
        SUB     b                                   ;6c24
        INC     bc                                  ;6c25
        SBC     a,c                                 ;6c26
        ADC     a,l                                 ;6c27
        LD      (hl),b                              ;6c28
        SBC     a,c                                 ;6c29
        SBC     a,c                                 ;6c2a
        SBC     a,d                                 ;6c2b
        LD      (hl),b                              ;6c2c
        SBC     a,c                                 ;6c2d
        SBC     a,c                                 ;6c2e
        LD      (hl),a                              ;6c2f
        NOP                                         ;6c30
        SBC     a,c                                 ;6c31
        SBC     a,c                                 ;6c32
        SUB     a                                   ;6c33
        NOP                                         ;6c34
        INC     bc                                  ;6c35
        SBC     a,c                                 ;6c36
        ADD     a,c                                 ;6c37
        LD      (hl),b                              ;6c38
        INC     bc                                  ;6c39
        SBC     a,c                                 ;6c3a
        ADD     a,c                                 ;6c3b
        SUB     b                                   ;6c3c
        LD      b,0x0                               ;6c3d
        ADD     a,a                                 ;6c3f
        LD      (hl),a                              ;6c40
        LD      a,c                                 ;6c41
        NOP                                         ;6c42
        LD      a,c                                 ;6c43
        SBC     a,c                                 ;6c44
        SBC     a,c                                 ;6c45
        RLCA                                        ;6c46
        INC     bc                                  ;6c47
        SBC     a,c                                 ;6c48
        ADD     a,c                                 ;6c49
        ADD     hl,bc                               ;6c4a
        INC     bc                                  ;6c4b
        SBC     a,c                                 ;6c4c
        ADD     a,c                                 ;6c4d
        ADD     hl,bc                               ;6c4e
        INC     bc                                  ;6c4f
        SBC     a,c                                 ;6c50
        ADD     a,c                                 ;6c51
        ADD     hl,bc                               ;6c52
        INC     bc                                  ;6c53
        SBC     a,c                                 ;6c54
        ADD     a,c                                 ;6c55
        ADD     hl,bc                               ;6c56
        LD      b,0x99                              ;6c57
        ADD     a,c                                 ;6c59
        SUB     b                                   ;6c5a
        INC     bc                                  ;6c5b
        SBC     a,c                                 ;6c5c
        ADD     a,c                                 ;6c5d
        LD      (hl),b                              ;6c5e
        INC     bc                                  ;6c5f
        SBC     a,c                                 ;6c60
b4_l6c61h:
        SUB     (hl)                                ;6c61
        LD      (hl),b                              ;6c62
        SBC     a,c                                 ;6c63
        SBC     a,c                                 ;6c64
        SUB     a                                   ;6c65
        LD      (hl),b                              ;6c66
        SBC     a,c                                 ;6c67
        SUB     a                                   ;6c68
        LD      (hl),a                              ;6c69
        LD      (hl),b                              ;6c6a
        SBC     a,c                                 ;6c6b
        LD      (hl),a                              ;6c6c
        LD      (hl),a                              ;6c6d
        NOP                                         ;6c6e
        SBC     a,c                                 ;6c6f
        LD      (hl),a                              ;6c70
        LD      (hl),a                              ;6c71
        NOP                                         ;6c72
        SBC     a,c                                 ;6c73
        LD      (hl),a                              ;6c74
        LD      (hl),a                              ;6c75
        NOP                                         ;6c76
        RLCA                                        ;6c77
        INC     bc                                  ;6c78
        SBC     a,c                                 ;6c79
        SBC     a,h                                 ;6c7a
        RLCA                                        ;6c7b
        LD      a,c                                 ;6c7c
        SBC     a,c                                 ;6c7d
        SBC     a,c                                 ;6c7e
        NOP                                         ;6c7f
        LD      (hl),a                              ;6c80
        SBC     a,c                                 ;6c81
        SBC     a,c                                 ;6c82
        NOP                                         ;6c83
        RLCA                                        ;6c84
        SBC     a,c                                 ;6c85
        SBC     a,c                                 ;6c86
        NOP                                         ;6c87
        RLCA                                        ;6c88
        SBC     a,c                                 ;6c89
        SBC     a,c                                 ;6c8a
        NOP                                         ;6c8b
        RLCA                                        ;6c8c
        LD      a,c                                 ;6c8d
        SBC     a,c                                 ;6c8e
        NOP                                         ;6c8f
        NOP                                         ;6c90
        LD      (hl),a                              ;6c91
        LD      a,c                                 ;6c92
        NOP                                         ;6c93
        NOP                                         ;6c94
        RLCA                                        ;6c95
        LD      (hl),a                              ;6c96
        INC     b                                   ;6c97
        NOP                                         ;6c98
        ADD     a,c                                 ;6c99
        LD      (hl),a                              ;6c9a
        INC     bc                                  ;6c9b
        NOP                                         ;6c9c
        ADD     a,c                                 ;6c9d
        SUB     a                                   ;6c9e
        INC     bc                                  ;6c9f
        NOP                                         ;6ca0
        ADC     a,h                                 ;6ca1
        SBC     a,c                                 ;6ca2
        LD      (hl),a                              ;6ca3
        NOP                                         ;6ca4
        NOP                                         ;6ca5
        SBC     a,c                                 ;6ca6
        SUB     a                                   ;6ca7
        LD      (hl),b                              ;6ca8
        NOP                                         ;6ca9
        SBC     a,c                                 ;6caa
        SBC     a,c                                 ;6cab
        SUB     b                                   ;6cac
        NOP                                         ;6cad
        INC     bc                                  ;6cae
        SBC     a,c                                 ;6caf
        ADD     a,c                                 ;6cb0
        NOP                                         ;6cb1
        INC     bc                                  ;6cb2
        SBC     a,c                                 ;6cb3
        ADC     a,l                                 ;6cb4
        NOP                                         ;6cb5
        AND     a                                   ;6cb6
        LD      (hl),b                              ;6cb7
        NOP                                         ;6cb8
        NOP                                         ;6cb9
        SBC     a,c                                 ;6cba
        LD      (hl),a                              ;6cbb
        LD      (hl),a                              ;6cbc
        NOP                                         ;6cbd
        SBC     a,c                                 ;6cbe
        SBC     a,d                                 ;6cbf
        LD      (hl),a                              ;6cc0
        LD      (hl),a                              ;6cc1
        INC     bc                                  ;6cc2
        SBC     a,c                                 ;6cc3
        ADD     a,c                                 ;6cc4
        SUB     a                                   ;6cc5
        DJNZ    b4_l6c61h                           ;6cc6
        LD      (bc),a                              ;6cc8
        NOP                                         ;6cc9
        ADC     a,e                                 ;6cca
        RLCA                                        ;6ccb
        LD      a,d                                 ;6ccc
        NOP                                         ;6ccd
        RLCA                                        ;6cce
        LD      (hl),a                              ;6ccf
        SBC     a,c                                 ;6cd0
        RLCA                                        ;6cd1
        LD      (hl),a                              ;6cd2
        XOR     c                                   ;6cd3
        SBC     a,c                                 ;6cd4
        LD      a,c                                 ;6cd5
        DEC     d                                   ;6cd6
        SBC     a,c                                 ;6cd7
        SUB     (hl)                                ;6cd8
        LD      (hl),a                              ;6cd9
