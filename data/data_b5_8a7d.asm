        DEFB    0xdd,0xbb,0xb0                      ;8a7d
        DEFB    0xdd,0xdd,0xbb                      ;8a80
        DEC     c                                   ;8a83
        RST     OUTDO                               ;8a84
        RST     OUTDO                               ;8a85
        CP      e                                   ;8a86
        RRCA                                        ;8a87
        RST     KEYINT                              ;8a88
        RST     KEYINT                              ;8a89
        CP      e                                   ;8a8a
        NOP                                         ;8a8b
        RET     p                                   ;8a8c
        RET     p                                   ;8a8d
        CP      e                                   ;8a8e
        CP      e                                   ;8a8f
        DEC     bc                                  ;8a90
        DEC     bc                                  ;8a91
        INC     b                                   ;8a92
        CP      e                                   ;8a93
        ADC     a,h                                 ;8a94
        OR      b                                   ;8a95
        NOP                                         ;8a96
        NOP                                         ;8a97
        DEC     bc                                  ;8a98
        DEC     c                                   ;8a99
        DEFB    0xdd,0xdd,0xd0                      ;8a9a
        DEFB    0xdd,0xfd,0xdf                      ;8a9d
        DEFB    0xdd,0x4,0xff                       ;8aa0
        SUB     b                                   ;8aa3
        NOP                                         ;8aa4
        LD      (hl),b                              ;8aa5
        RET     p                                   ;8aa6
        RET     p                                   ;8aa7
        OR      b                                   ;8aa8
        LD      (hl),b                              ;8aa9
        DEC     bc                                  ;8aaa
        CP      e                                   ;8aab
        OR      b                                   ;8aac
        RLCA                                        ;8aad
        DEC     bc                                  ;8aae
        CP      e                                   ;8aaf
        CP      e                                   ;8ab0
        RLCA                                        ;8ab1
        NOP                                         ;8ab2
        OR      b                                   ;8ab3
        EX      af,af'                              ;8ab4
        CP      e                                   ;8ab5
        ADD     a,c                                 ;8ab6
        DEC     bc                                  ;8ab7
        INC     bc                                  ;8ab8
        CP      e                                   ;8ab9
        SUB     h                                   ;8aba
        DEC     bc                                  ;8abb
        CP      e                                   ;8abc
        CP      e                                   ;8abd
        NOP                                         ;8abe
        CP      e                                   ;8abf
        OR      b                                   ;8ac0
        NOP                                         ;8ac1
        DEFB    0xdd,0xb0,0xd                       ;8ac2
        DEFB    0xdd,0xff,0xd                       ;8ac5
        DEFB    0xdd,0xff,0xf0                      ;8ac8
        RST     KEYINT                              ;8acb
        RST     KEYINT                              ;8acc
        RET     p                                   ;8acd
        RLCA                                        ;8ace
        INC     c                                   ;8acf
        CP      e                                   ;8ad0
        ADD     a,c                                 ;8ad1
        NOP                                         ;8ad2
        INC     bc                                  ;8ad3
        CP      e                                   ;8ad4
        ADC     a,(hl)                              ;8ad5
        DEFB    0xdd,0x0,0xbb                       ;8ad6
        CP      e                                   ;8ad9
        DEFB    0xfd,0xdd,0xb                       ;8ada
        CP      e                                   ;8add
        RRCA                                        ;8ade
        RST     KEYINT                              ;8adf
        DEC     bc                                  ;8ae0
        CP      e                                   ;8ae1
        NOP                                         ;8ae2
        NOP                                         ;8ae3
        INC     bc                                  ;8ae4
        CP      e                                   ;8ae5
        ADC     a,b                                 ;8ae6
        OR      b                                   ;8ae7
        NOP                                         ;8ae8
        CP      e                                   ;8ae9
        CP      e                                   ;8aea
        DEC     c                                   ;8aeb
        DEFB    0xdd,0x0,0xb0                       ;8aec
        INC     bc                                  ;8aef
        DEFB    0xdd,0x90,0xd                       ;8af0
        DEFB    0xfd,0xff,0xf0                      ;8af3
        RRCA                                        ;8af6
        RST     KEYINT                              ;8af7
        RET     p                                   ;8af8
        RLCA                                        ;8af9
        RRCA                                        ;8afa
        RRCA                                        ;8afb
        DEC     bc                                  ;8afc
        NOP                                         ;8afd
        OR      b                                   ;8afe
        OR      b                                   ;8aff
        CP      e                                   ;8b00
        OR      b                                   ;8b01
        INC     bc                                  ;8b02
        CP      e                                   ;8b03
        SUB     (hl)                                ;8b04
        OR      b                                   ;8b05
        NOP                                         ;8b06
        NOP                                         ;8b07
        LD      (hl),b                              ;8b08
        DEC     bc                                  ;8b09
        DEFB    0xdd,0xd0,0x7                       ;8b0a
        NOP                                         ;8b0d
        RST     OUTDO                               ;8b0e
        DEFB    0xdd,0x7,0x70                       ;8b0f
        RST     KEYINT                              ;8b12
        DEFB    0xfd,0xd0,0x77                      ;8b13
        RRCA                                        ;8b16
        RST     KEYINT                              ;8b17
        NOP                                         ;8b18
        LD      (hl),a                              ;8b19
        LD      (hl),b                              ;8b1a
        INC     bc                                  ;8b1b
        NOP                                         ;8b1c
        ADD     a,c                                 ;8b1d
        DEC     c                                   ;8b1e
        INC     b                                   ;8b1f
        DEFB    0xdd,0xa3,0xdf                      ;8b20
        DEFB    0xfd,0xdd,0xf                       ;8b23
        NOP                                         ;8b26
        RLCA                                        ;8b27
        LD      (hl),b                              ;8b28
        NOP                                         ;8b29
        LD      (hl),a                              ;8b2a
        LD      (hl),a                              ;8b2b
        DEC     bc                                  ;8b2c
        LD      (hl),a                              ;8b2d
        NOP                                         ;8b2e
        NOP                                         ;8b2f
        DEC     bc                                  ;8b30
        LD      (hl),b                              ;8b31
        DEFB    0xdd,0xdd,0xb                       ;8b32
        DEC     c                                   ;8b35
        RST     KEYINT                              ;8b36
        DEFB    0xfd,0xd0,0xf                       ;8b37
        NOP                                         ;8b3a
        RRCA                                        ;8b3b
        RET     nc                                  ;8b3c
        NOP                                         ;8b3d
        DEC     bc                                  ;8b3e
        OR      b                                   ;8b3f
        DEC     bc                                  ;8b40
        DEFB    0xdd,0xb,0xbb                       ;8b41
        CP      e                                   ;8b44
        INC     b                                   ;8b45
        NOP                                         ;8b46
        INC     bc                                  ;8b47
        LD      d,l                                 ;8b48
        ADC     a,d                                 ;8b49
        LD      d,b                                 ;8b4a
        SBC     a,c                                 ;8b4b
        SBC     a,c                                 ;8b4c
        NOP                                         ;8b4d
        NOP                                         ;8b4e
        SBC     a,c                                 ;8b4f
        NOP                                         ;8b50
        DEFB    0xdd,0xdd,0x90                      ;8b51
        INC     bc                                  ;8b54
        DEFB    0xdd,0xbf,0xd                       ;8b55
        DEFB    0xdd,0xdf,0xff                      ;8b58
        DEC     c                                   ;8b5b
        RST     KEYINT                              ;8b5c
        NOP                                         ;8b5d
        NOP                                         ;8b5e
        SUB     b                                   ;8b5f
        NOP                                         ;8b60
        RLCA                                        ;8b61
        LD      (hl),a                              ;8b62
        RST     OUTDO                               ;8b63
        RET     p                                   ;8b64
        NOP                                         ;8b65
        RST     KEYINT                              ;8b66
        RET     p                                   ;8b67
        RLCA                                        ;8b68
        LD      d,a                                 ;8b69
        NOP                                         ;8b6a
        NOP                                         ;8b6b
        SUB     b                                   ;8b6c
        LD      (hl),l                              ;8b6d
        LD      (hl),l                              ;8b6e
        RET     nc                                  ;8b6f
        ADD     hl,bc                               ;8b70
        RLCA                                        ;8b71
        LD      d,l                                 ;8b72
        DEFB    0xdd,0xd0,0x7                       ;8b73
        LD      d,a                                 ;8b76
        DEFB    0xfd,0xdd,0x0                       ;8b77
b5_l8b7ah:
        LD      (hl),a                              ;8b7a
        RST     KEYINT                              ;8b7b
        RST     KEYINT                              ;8b7c
        RET     nc                                  ;8b7d
        LD      (hl),a                              ;8b7e
        RRCA                                        ;8b7f
        RST     KEYINT                              ;8b80
        RLCA                                        ;8b81
        LD      (hl),b                              ;8b82
        DEFB    0xfd,0xf0,0x0                       ;8b83
        NOP                                         ;8b86
        RST     KEYINT                              ;8b87
        NOP                                         ;8b88
        DEC     c                                   ;8b89
        DEFB    0xdd,0x0,0xf                        ;8b8a
        DEFB    0xfd,0xfd,0x70                      ;8b8d
        NOP                                         ;8b90
        RST     KEYINT                              ;8b91
        RRCA                                        ;8b92
        LD      (hl),a                              ;8b93
        LD      (hl),b                              ;8b94
        RLCA                                        ;8b95
        INC     b                                   ;8b96
        LD      (hl),a                              ;8b97
        ADC     a,c                                 ;8b98
        LD      (hl),b                              ;8b99
        NOP                                         ;8b9a
        NOP                                         ;8b9b
        LD      (hl),b                              ;8b9c
        ADD     hl,bc                               ;8b9d
        ADD     hl,bc                               ;8b9e
        SUB     b                                   ;8b9f
        ADD     hl,bc                               ;8ba0
        SBC     a,c                                 ;8ba1
        INC     b                                   ;8ba2
        NOP                                         ;8ba3
        LD      (bc),a                              ;8ba4
        DEFB    0xdd,0x95                           ;8ba5
        RET     p                                   ;8ba7
        LD      d,l                                 ;8ba8
        RST     KEYINT                              ;8ba9
        DEFB    0xdd,0xdd,0x9                       ;8baa
        NOP                                         ;8bad
        DEFB    0xfd,0xfd,0xd0                      ;8bae
        LD      (hl),a                              ;8bb1
        RRCA                                        ;8bb2
        RRCA                                        ;8bb3
        RET     p                                   ;8bb4
        NOP                                         ;8bb5
        SUB     b                                   ;8bb6
        SBC     a,a                                 ;8bb7
        ADD     hl,bc                               ;8bb8
        SBC     a,c                                 ;8bb9
        SBC     a,c                                 ;8bba
        SUB     b                                   ;8bbb
        DEC     b                                   ;8bbc
        SBC     a,c                                 ;8bbd
        AND     b                                   ;8bbe
        SUB     b                                   ;8bbf
        NOP                                         ;8bc0
        LD      d,a                                 ;8bc1
        NOP                                         ;8bc2
        SBC     a,c                                 ;8bc3
        DEC     b                                   ;8bc4
        LD      d,a                                 ;8bc5
        NOP                                         ;8bc6
        SBC     a,c                                 ;8bc7
b5_l8bc8h:
        DEC     b                                   ;8bc8
        LD      (hl),a                              ;8bc9
        NOP                                         ;8bca
        SBC     a,c                                 ;8bcb
        DEC     b                                   ;8bcc
        LD      (hl),b                              ;8bcd
        ADD     hl,bc                               ;8bce
        SBC     a,c                                 ;8bcf
        DEC     b                                   ;8bd0
        LD      (hl),b                              ;8bd1
        ADD     hl,bc                               ;8bd2
        SUB     b                                   ;8bd3
        LD      d,a                                 ;8bd4
        LD      (hl),b                              ;8bd5
        ADD     hl,bc                               ;8bd6
        SUB     b                                   ;8bd7
        LD      d,a                                 ;8bd8
        NOP                                         ;8bd9
        NOP                                         ;8bda
        DEC     b                                   ;8bdb
        LD      (hl),a                              ;8bdc
        NOP                                         ;8bdd
        NOP                                         ;8bde
        JR      b5_l8b7ah                           ;8bdf
        LD      (bc),a                              ;8be1
        NOP                                         ;8be2
        LD      (bc),a                              ;8be3
        SBC     a,c                                 ;8be4
        INC     bc                                  ;8be5
        NOP                                         ;8be6
        POP     bc                                  ;8be7
        SBC     a,c                                 ;8be8
        NOP                                         ;8be9
        LD      (hl),a                              ;8bea
        ADD     hl,bc                               ;8beb
        SBC     a,c                                 ;8bec
        SUB     b                                   ;8bed
        LD      d,a                                 ;8bee
        NOP                                         ;8bef
        SBC     a,c                                 ;8bf0
        SUB     b                                   ;8bf1
        LD      d,a                                 ;8bf2
        NOP                                         ;8bf3
        SBC     a,c                                 ;8bf4
        SUB     b                                   ;8bf5
        RLCA                                        ;8bf6
        LD      (hl),b                              ;8bf7
        SBC     a,c                                 ;8bf8
        SBC     a,c                                 ;8bf9
        DEC     b                                   ;8bfa
        LD      (hl),b                              ;8bfb
        ADD     hl,bc                               ;8bfc
        SBC     a,c                                 ;8bfd
        DEC     b                                   ;8bfe
        LD      (hl),b                              ;8bff
        ADD     hl,bc                               ;8c00
        SBC     a,c                                 ;8c01
        DEC     b                                   ;8c02
        LD      (hl),a                              ;8c03
        NOP                                         ;8c04
        SBC     a,c                                 ;8c05
        DEC     b                                   ;8c06
        LD      d,a                                 ;8c07
        NOP                                         ;8c08
        NOP                                         ;8c09
        DEC     b                                   ;8c0a
        LD      (hl),b                              ;8c0b
        NOP                                         ;8c0c
        LD      d,b                                 ;8c0d
        LD      d,a                                 ;8c0e
        LD      (hl),a                              ;8c0f
        DEC     b                                   ;8c10
        SUB     b                                   ;8c11
        LD      d,a                                 ;8c12
        LD      (hl),b                              ;8c13
        SBC     a,c                                 ;8c14
        SUB     b                                   ;8c15
        RLCA                                        ;8c16
        LD      (hl),b                              ;8c17
        SBC     a,c                                 ;8c18
        SBC     a,c                                 ;8c19
        DEC     b                                   ;8c1a
        LD      (hl),b                              ;8c1b
        ADD     hl,bc                               ;8c1c
        SBC     a,c                                 ;8c1d
        DEC     b                                   ;8c1e
        LD      (hl),a                              ;8c1f
        ADD     hl,bc                               ;8c20
        SBC     a,c                                 ;8c21
        DEC     b                                   ;8c22
        LD      d,a                                 ;8c23
        LD      (hl),b                              ;8c24
        SBC     a,c                                 ;8c25
        DEC     b                                   ;8c26
        LD      d,l                                 ;8c27
        LD      (hl),b                              ;8c28
        INC     b                                   ;8c29
        NOP                                         ;8c2a
        INC     b                                   ;8c2b
        LD      d,l                                 ;8c2c
        DJNZ    b5_l8bc8h                           ;8c2d
        LD      (bc),a                              ;8c2f
        NOP                                         ;8c30
        LD      (bc),a                              ;8c31
        SBC     a,c                                 ;8c32
        INC     bc                                  ;8c33
        NOP                                         ;8c34
        JP      (hl)                                ;8c35
        SBC     a,c                                 ;8c36
        NOP                                         ;8c37
        DEC     b                                   ;8c38
        LD      (hl),b                              ;8c39
        NOP                                         ;8c3a
        LD      d,l                                 ;8c3b
        RLCA                                        ;8c3c
        LD      (hl),b                              ;8c3d
        DEC     b                                   ;8c3e
        SUB     b                                   ;8c3f
        LD      d,a                                 ;8c40
        LD      (hl),b                              ;8c41
        SBC     a,c                                 ;8c42
        SUB     b                                   ;8c43
        LD      d,a                                 ;8c44
        NOP                                         ;8c45
        SBC     a,c                                 ;8c46
        NOP                                         ;8c47
        LD      (hl),a                              ;8c48
        NOP                                         ;8c49
        SBC     a,c                                 ;8c4a
        DEC     b                                   ;8c4b
        LD      (hl),b                              ;8c4c
        ADD     hl,bc                               ;8c4d
        SBC     a,c                                 ;8c4e
        DEC     b                                   ;8c4f
        LD      (hl),b                              ;8c50
        NOP                                         ;8c51
        NOP                                         ;8c52
        DEC     b                                   ;8c53
        LD      (hl),b                              ;8c54
        NOP                                         ;8c55
        NOP                                         ;8c56
        XOR     d                                   ;8c57
        LD      a,(bc)                              ;8c58
        XOR     d                                   ;8c59
        XOR     d                                   ;8c5a
        AND     b                                   ;8c5b
        LD      d,b                                 ;8c5c
        XOR     d                                   ;8c5d
        XOR     d                                   ;8c5e
        DEC     b                                   ;8c5f
        LD      d,a                                 ;8c60
        LD      a,(bc)                              ;8c61
        LD      a,(bc)                              ;8c62
        DEC     b                                   ;8c63
        LD      d,a                                 ;8c64
        NOP                                         ;8c65
        LD      d,b                                 ;8c66
        DEC     b                                   ;8c67
        LD      d,a                                 ;8c68
        DEC     b                                   ;8c69
        LD      d,a                                 ;8c6a
        DEC     b                                   ;8c6b
        LD      d,a                                 ;8c6c
        DEC     b                                   ;8c6d
        LD      d,a                                 ;8c6e
        DEC     b                                   ;8c6f
        LD      d,a                                 ;8c70
        DEC     b                                   ;8c71
        LD      d,a                                 ;8c72
        DEC     b                                   ;8c73
        LD      d,a                                 ;8c74
        DEC     b                                   ;8c75
        LD      d,a                                 ;8c76
        DEC     b                                   ;8c77
        LD      d,a                                 ;8c78
        DEC     b                                   ;8c79
        LD      d,a                                 ;8c7a
        DEC     b                                   ;8c7b
        LD      d,a                                 ;8c7c
        DEC     b                                   ;8c7d
        LD      d,a                                 ;8c7e
        DEC     b                                   ;8c7f
        LD      d,a                                 ;8c80
        DEC     b                                   ;8c81
        LD      d,a                                 ;8c82
        DEC     b                                   ;8c83
        LD      d,a                                 ;8c84
        DEC     b                                   ;8c85
        LD      d,a                                 ;8c86
        DEC     b                                   ;8c87
        LD      d,a                                 ;8c88
        DEC     b                                   ;8c89
        LD      d,a                                 ;8c8a
        DEC     b                                   ;8c8b
        LD      d,a                                 ;8c8c
        DEC     b                                   ;8c8d
        LD      d,a                                 ;8c8e
        DEC     b                                   ;8c8f
        LD      d,a                                 ;8c90
        DEC     b                                   ;8c91
        LD      d,a                                 ;8c92
        DEC     b                                   ;8c93
        LD      d,a                                 ;8c94
        DEC     b                                   ;8c95
        LD      d,a                                 ;8c96
        DEC     b                                   ;8c97
        LD      d,a                                 ;8c98
        DEC     b                                   ;8c99
        LD      d,a                                 ;8c9a
        DEC     b                                   ;8c9b
        LD      d,a                                 ;8c9c
        DEC     b                                   ;8c9d
        LD      d,a                                 ;8c9e
        INC     b                                   ;8c9f
        NOP                                         ;8ca0
        LD      (bc),a                              ;8ca1
        LD      d,l                                 ;8ca2
        ADD     a,(hl)                              ;8ca3
        PUSH    hl                                  ;8ca4
        LD      d,l                                 ;8ca5
        LD      (hl),a                              ;8ca6
        LD      (hl),a                              ;8ca7
        RST     0                                   ;8ca8
        LD      (hl),a                              ;8ca9
        INC     b                                   ;8caa
        NOP                                         ;8cab
        ADC     a,b                                 ;8cac
        DEC     b                                   ;8cad
        LD      d,a                                 ;8cae
        DEC     b                                   ;8caf
        LD      d,a                                 ;8cb0
        DEC     b                                   ;8cb1
        LD      d,a                                 ;8cb2
        DEC     b                                   ;8cb3
        LD      d,a                                 ;8cb4
        JR      nz,b5_l8ceah                        ;8cb5
        ADD     a,e                                 ;8cb7
        XOR     d                                   ;8cb8
        XOR     0xee                                ;8cb9
        LD      b,0xaa                              ;8cbb
        ADD     a,e                                 ;8cbd
        JP      pe,0xeaae                           ;8cbe
        LD      a,(bc)                              ;8cc1
        XOR     d                                   ;8cc2
        ADC     a,l                                 ;8cc3
        XOR     (hl)                                ;8cc4
        XOR     0xaa                                ;8cc5
        XOR     d                                   ;8cc7
        XOR     0xee                                ;8cc8
        XOR     d                                   ;8cca
        XOR     (hl)                                ;8ccb
        XOR     0xee                                ;8ccc
        XOR     d                                   ;8cce
        JP      pe,0x7ae                            ;8ccf
        XOR     d                                   ;8cd2
        LD      (bc),a                              ;8cd3
        JP      pe,0xaa08                           ;8cd4
        LD      (bc),a                              ;8cd7
        XOR     0x82                                ;8cd8
        JP      pe,0x3aa                            ;8cda
        XOR     0x81                                ;8cdd
        XOR     d                                   ;8cdf
        INC     bc                                  ;8ce0
        XOR     0x81                                ;8ce1
        JP      pe,0xaa0b                           ;8ce3
        ADD     a,c                                 ;8ce6
        XOR     (hl)                                ;8ce7
        INC     bc                                  ;8ce8
        XOR     d                                   ;8ce9
b5_l8ceah:
        ADC     a,l                                 ;8cea
        XOR     0xaa                                ;8ceb
        XOR     d                                   ;8ced
        XOR     0xea                                ;8cee
        XOR     d                                   ;8cf0
        XOR     (hl)                                ;8cf1
        JP      pe,0xaeaa                           ;8cf2
        JP      pe,0xeaaa                           ;8cf5
        DEC     b                                   ;8cf8
        XOR     d                                   ;8cf9
        INC     bc                                  ;8cfa
        XOR     0x81                                ;8cfb
        XOR     (hl)                                ;8cfd
        INC     b                                   ;8cfe
        XOR     0x8d                                ;8cff
        XOR     (hl)                                ;8d01
        XOR     0xee                                ;8d02
        JP      pe,0xeeee                           ;8d04
        JP      pe,0xeeae                           ;8d07
        XOR     d                                   ;8d0a
        XOR     d                                   ;8d0b
        JP      pe,0xaea                            ;8d0c
        XOR     d                                   ;8d0f
        ADD     a,d                                 ;8d10
        XOR     0xea                                ;8d11
        EX      af,af'                              ;8d13
        XOR     0x8d                                ;8d14
        XOR     (hl)                                ;8d16
        XOR     0xee                                ;8d17
        XOR     (hl)                                ;8d19
        JP      pe,0xeeea                           ;8d1a
        XOR     (hl)                                ;8d1d
        XOR     0xaa                                ;8d1e
        XOR     d                                   ;8d20
        XOR     (hl)                                ;8d21
        XOR     (hl)                                ;8d22
        DEC     c                                   ;8d23
        XOR     d                                   ;8d24
        ADD     a,c                                 ;8d25
        JP      pe,0xaa03                           ;8d26
        ADD     a,c                                 ;8d29
        XOR     0x3                                 ;8d2a
        XOR     d                                   ;8d2c
        ADD     a,d                                 ;8d2d
        XOR     0xea                                ;8d2e
        INC     bc                                  ;8d30
        XOR     d                                   ;8d31
        ADD     a,d                                 ;8d32
        XOR     0xea                                ;8d33
        INC     bc                                  ;8d35
        XOR     d                                   ;8d36
        ADD     a,d                                 ;8d37
        XOR     (hl)                                ;8d38
        JP      pe,0xaa08                           ;8d39
        INC     b                                   ;8d3c
        NOP                                         ;8d3d
        INC     b                                   ;8d3e
        LD      d,l                                 ;8d3f
        XOR     h                                   ;8d40
        LD      (hl),a                              ;8d41
        LD      (hl),b                              ;8d42
        RLCA                                        ;8d43
        LD      (hl),a                              ;8d44
        LD      (hl),a                              ;8d45
        DEC     b                                   ;8d46
        LD      d,b                                 ;8d47
        LD      (hl),a                              ;8d48
        NOP                                         ;8d49
        DEC     b                                   ;8d4a
        LD      d,b                                 ;8d4b
        NOP                                         ;8d4c
        LD      d,l                                 ;8d4d
        DEC     b                                   ;8d4e
        LD      d,b                                 ;8d4f
        LD      d,l                                 ;8d50
        LD      (hl),a                              ;8d51
        DEC     b                                   ;8d52
        LD      d,b                                 ;8d53
        LD      (hl),a                              ;8d54
        NOP                                         ;8d55
        DEC     b                                   ;8d56
        LD      d,b                                 ;8d57
        NOP                                         ;8d58
        RST     OUTDO                               ;8d59
        JP      p,0xff22                            ;8d5a
        JP      p,0x5722                            ;8d5d
        LD      (b5_l9222h),hl                      ;8d60
        DEC     h                                   ;8d63
        LD      (hl),a                              ;8d64
        SBC     a,c                                 ;8d65
        SBC     a,c                                 ;8d66
        LD      (b5_l9957h),hl                      ;8d67
        SBC     a,c                                 ;8d6a
        SUB     d                                   ;8d6b
        DAA                                         ;8d6c
        INC     bc                                  ;8d6d
        SBC     a,c                                 ;8d6e
        ADD     a,c                                 ;8d6f
        LD      (b5_l9903h),hl                      ;8d70
        ADD     a,c                                 ;8d73
        SUB     d                                   ;8d74
        INC     b                                   ;8d75
        SBC     a,c                                 ;8d76
        SUB     e                                   ;8d77
        DEFB    0xfd,0xf2,0x22                      ;8d78
        LD      (0x22ff),hl                         ;8d7b
        DEC     l                                   ;8d7e
        LD      (0xfd2f),ix                         ;8d7f
        LD      (iy+0x22),d                         ;8d83
        RST     KEYINT                              ;8d86
        CPL                                         ;8d87
        LD      (hl),a                              ;8d88
        LD      (hl),d                              ;8d89
        DAA                                         ;8d8a
        INC     b                                   ;8d8b
        LD      (hl),a                              ;8d8c
        RET                                         ;8d8d
        LD      (hl),d                              ;8d8e
        DAA                                         ;8d8f
        LD      (hl),d                              ;8d90
        LD      (hl),d                              ;8d91
        ADD     hl,hl                               ;8d92
        DEC     h                                   ;8d93
        LD      (hl),d                              ;8d94
        ADD     hl,hl                               ;8d95
        SBC     a,c                                 ;8d96
        NOP                                         ;8d97
        LD      (hl),l                              ;8d98
        LD      d,a                                 ;8d99
        INC     c                                   ;8d9a
        NOP                                         ;8d9b
        LD      (hl),l                              ;8d9c
        LD      d,a                                 ;8d9d
        INC     c                                   ;8d9e
        NOP                                         ;8d9f
        LD      (hl),l                              ;8da0
        LD      d,a                                 ;8da1
        INC     c                                   ;8da2
        NOP                                         ;8da3
        LD      (hl),l                              ;8da4
        LD      d,a                                 ;8da5
        INC     c                                   ;8da6
        NOP                                         ;8da7
        LD      (hl),l                              ;8da8
        LD      d,a                                 ;8da9
        INC     c                                   ;8daa
        NOP                                         ;8dab
        LD      (hl),l                              ;8dac
        LD      d,a                                 ;8dad
        INC     c                                   ;8dae
        NOP                                         ;8daf
        LD      (hl),l                              ;8db0
        LD      d,a                                 ;8db1
        INC     c                                   ;8db2
        NOP                                         ;8db3
        LD      (hl),l                              ;8db4
        LD      d,a                                 ;8db5
        INC     c                                   ;8db6
        NOP                                         ;8db7
        LD      (hl),l                              ;8db8
        LD      d,a                                 ;8db9
        NOP                                         ;8dba
        NOP                                         ;8dbb
        LD      (hl),l                              ;8dbc
        LD      d,a                                 ;8dbd
        DEC     b                                   ;8dbe
        NOP                                         ;8dbf
        LD      (hl),l                              ;8dc0
        LD      d,a                                 ;8dc1
        DEC     b                                   ;8dc2
        NOP                                         ;8dc3
        LD      (hl),l                              ;8dc4
        LD      d,a                                 ;8dc5
        DEC     b                                   ;8dc6
        NOP                                         ;8dc7
        LD      (hl),l                              ;8dc8
        LD      d,a                                 ;8dc9
        DEC     b                                   ;8dca
        NOP                                         ;8dcb
        LD      (hl),l                              ;8dcc
        LD      d,a                                 ;8dcd
        DEC     b                                   ;8dce
        NOP                                         ;8dcf
        LD      (hl),l                              ;8dd0
        LD      d,a                                 ;8dd1
        DEC     b                                   ;8dd2
        NOP                                         ;8dd3
        LD      (hl),l                              ;8dd4
        LD      d,a                                 ;8dd5
        NOP                                         ;8dd6
        INC     bc                                  ;8dd7
        CALL    z,SETMLT                            ;8dd8
        INC     bc                                  ;8ddb
        CALL    z,SETMLT                            ;8ddc
        INC     bc                                  ;8ddf
        CALL    z,SETMLT                            ;8de0
        INC     bc                                  ;8de3
        CALL    z,SETMLT                            ;8de4
        INC     bc                                  ;8de7
        CALL    z,SETMLT                            ;8de8
        INC     bc                                  ;8deb
        CALL    z,SETMLT                            ;8dec
        INC     bc                                  ;8def
        CALL    z,SETMLT                            ;8df0
        INC     bc                                  ;8df3
        CALL    z,0x5                               ;8df4
        SBC     a,b                                 ;8df7
        LD      d,a                                 ;8df8
        LD      (hl),l                              ;8df9
        LD      (hl),a                              ;8dfa
        LD      d,b                                 ;8dfb
        LD      d,a                                 ;8dfc
        LD      (hl),l                              ;8dfd
        LD      (hl),a                              ;8dfe
        LD      d,b                                 ;8dff
        LD      d,a                                 ;8e00
        LD      (hl),l                              ;8e01
        LD      (hl),a                              ;8e02
        LD      d,b                                 ;8e03
        LD      d,a                                 ;8e04
        LD      (hl),l                              ;8e05
        LD      (hl),a                              ;8e06
        LD      d,b                                 ;8e07
        LD      d,a                                 ;8e08
        LD      (hl),l                              ;8e09
        LD      (hl),a                              ;8e0a
        LD      d,b                                 ;8e0b
        LD      d,a                                 ;8e0c
        LD      (hl),l                              ;8e0d
        LD      (hl),a                              ;8e0e
        LD      d,b                                 ;8e0f
        EX      af,af'                              ;8e10
        NOP                                         ;8e11
        SBC     a,h                                 ;8e12
        LD      (hl),a                              ;8e13
        LD      d,a                                 ;8e14
        LD      (hl),a                              ;8e15
        LD      d,b                                 ;8e16
        LD      (hl),a                              ;8e17
        LD      d,a                                 ;8e18
        LD      (hl),a                              ;8e19
        LD      d,b                                 ;8e1a
        LD      (hl),a                              ;8e1b
        LD      d,a                                 ;8e1c
        LD      (hl),a                              ;8e1d
        LD      d,b                                 ;8e1e
        LD      (hl),a                              ;8e1f
        LD      d,a                                 ;8e20
        LD      (hl),a                              ;8e21
        LD      d,b                                 ;8e22
        LD      (hl),a                              ;8e23
        LD      d,a                                 ;8e24
        LD      (hl),a                              ;8e25
        LD      d,b                                 ;8e26
        LD      (hl),a                              ;8e27
        LD      d,a                                 ;8e28
        LD      (hl),a                              ;8e29
        LD      d,b                                 ;8e2a
        LD      (hl),a                              ;8e2b
        LD      d,a                                 ;8e2c
        LD      (hl),a                              ;8e2d
        LD      d,b                                 ;8e2e
        INC     b                                   ;8e2f
        NOP                                         ;8e30
        SBC     a,b                                 ;8e31
        LD      (hl),a                              ;8e32
        LD      d,a                                 ;8e33
        LD      (hl),a                              ;8e34
        LD      d,b                                 ;8e35
        LD      (hl),a                              ;8e36
        LD      d,a                                 ;8e37
        LD      (hl),a                              ;8e38
        LD      d,b                                 ;8e39
        LD      (hl),a                              ;8e3a
        LD      d,a                                 ;8e3b
        LD      (hl),a                              ;8e3c
        LD      d,b                                 ;8e3d
        LD      (hl),a                              ;8e3e
        LD      d,a                                 ;8e3f
        LD      (hl),a                              ;8e40
        LD      d,b                                 ;8e41
        LD      (hl),a                              ;8e42
        LD      d,a                                 ;8e43
        LD      (hl),a                              ;8e44
        LD      d,b                                 ;8e45
        LD      (hl),a                              ;8e46
        LD      d,a                                 ;8e47
        LD      (hl),a                              ;8e48
        LD      d,b                                 ;8e49
        INC     b                                   ;8e4a
        NOP                                         ;8e4b
        ADD     a,c                                 ;8e4c
        AND     b                                   ;8e4d
        INC     bc                                  ;8e4e
        NOP                                         ;8e4f
        ADC     a,c                                 ;8e50
        AND     b                                   ;8e51
        LD      c,0xee                              ;8e52
        XOR     0xa0                                ;8e54
        INC     c                                   ;8e56
        CALL    z,0xaacc                            ;8e57
        INC     bc                                  ;8e5a
        NOP                                         ;8e5b
        INC     bc                                  ;8e5c
        XOR     d                                   ;8e5d
        ADD     a,c                                 ;8e5e
        NOP                                         ;8e5f
        INC     bc                                  ;8e60
        XOR     d                                   ;8e61
        ADD     a,c                                 ;8e62
        NOP                                         ;8e63
        INC     bc                                  ;8e64
        XOR     d                                   ;8e65
        ADD     a,c                                 ;8e66
        NOP                                         ;8e67
        INC     bc                                  ;8e68
        XOR     0x8d                                ;8e69
        NOP                                         ;8e6b
        XOR     d                                   ;8e6c
        XOR     d                                   ;8e6d
        AND     b                                   ;8e6e
        NOP                                         ;8e6f
        XOR     d                                   ;8e70
        XOR     d                                   ;8e71
        NOP                                         ;8e72
        CALL    z,0xa0aa                            ;8e73
        INC     c                                   ;8e76
        CALL    z,0x4                               ;8e77
        ADD     a,l                                 ;8e7a
        LD      c,0xee                              ;8e7b
        XOR     0xe0                                ;8e7d
        INC     c                                   ;8e7f
        INC     bc                                  ;8e80
        CALL    z,0x4                               ;8e81
        INC     b                                   ;8e84
        XOR     d                                   ;8e85
        ADD     a,c                                 ;8e86
        NOP                                         ;8e87
        INC     bc                                  ;8e88
        LD      (hl),a                              ;8e89
        ADD     a,c                                 ;8e8a
