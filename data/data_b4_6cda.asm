        DEFB    0xdd,0x99,0x99                      ;6cda
        SUB     a                                   ;6cdd
        DEFB    0xfd,0x99,0x99                      ;6cde
        SUB     a                                   ;6ce1
        RST     KEYINT                              ;6ce2
        SBC     a,c                                 ;6ce3
        SBC     a,c                                 ;6ce4
        LD      (hl),a                              ;6ce5
        RST     KEYINT                              ;6ce6
        SBC     a,c                                 ;6ce7
        SUB     a                                   ;6ce8
        LD      (hl),a                              ;6ce9
        RST     KEYINT                              ;6cea
        SBC     a,c                                 ;6ceb
        SBC     a,c                                 ;6cec
        SUB     a                                   ;6ced
        RRCA                                        ;6cee
        INC     bc                                  ;6cef
        SBC     a,c                                 ;6cf0
        ADD     a,c                                 ;6cf1
        SUB     a                                   ;6cf2
        RLCA                                        ;6cf3
        SBC     a,c                                 ;6cf4
        SBC     a,(hl)                              ;6cf5
        LD      (hl),b                              ;6cf6
        SBC     a,c                                 ;6cf7
        SBC     a,c                                 ;6cf8
        SUB     a                                   ;6cf9
        LD      (hl),b                              ;6cfa
        SBC     a,d                                 ;6cfb
        RLCA                                        ;6cfc
        LD      (hl),a                              ;6cfd
        AND     b                                   ;6cfe
        SBC     a,d                                 ;6cff
        LD      a,(bc)                              ;6d00
        LD      (hl),a                              ;6d01
        AND     b                                   ;6d02
        XOR     d                                   ;6d03
        NOP                                         ;6d04
        LD      a,d                                 ;6d05
        AND     b                                   ;6d06
        AND     a                                   ;6d07
        NOP                                         ;6d08
        XOR     d                                   ;6d09
        LD      (hl),b                              ;6d0a
        LD      a,d                                 ;6d0b
        NOP                                         ;6d0c
        RLCA                                        ;6d0d
        LD      (hl),b                              ;6d0e
        LD      a,d                                 ;6d0f
        LD      a,(bc)                              ;6d10
        LD      (hl),a                              ;6d11
        AND     b                                   ;6d12
        RLCA                                        ;6d13
        INC     bc                                  ;6d14
        SBC     a,c                                 ;6d15
        RST     KEYINT                              ;6d16
        RLCA                                        ;6d17
        LD      a,c                                 ;6d18
        SBC     a,c                                 ;6d19
        SBC     a,c                                 ;6d1a
        LD      a,(bc)                              ;6d1b
        LD      (hl),a                              ;6d1c
        LD      (hl),b                              ;6d1d
        XOR     c                                   ;6d1e
        LD      a,(bc)                              ;6d1f
        LD      (hl),a                              ;6d20
        AND     b                                   ;6d21
        XOR     c                                   ;6d22
        LD      a,(bc)                              ;6d23
        AND     a                                   ;6d24
        NOP                                         ;6d25
        XOR     d                                   ;6d26
        RLCA                                        ;6d27
        XOR     d                                   ;6d28
        NOP                                         ;6d29
        LD      a,d                                 ;6d2a
        RLCA                                        ;6d2b
        LD      (hl),b                              ;6d2c
        NOP                                         ;6d2d
        AND     a                                   ;6d2e
        LD      a,(bc)                              ;6d2f
        LD      (hl),a                              ;6d30
        AND     b                                   ;6d31
        AND     a                                   ;6d32
        LD      a,c                                 ;6d33
        SBC     a,c                                 ;6d34
        SBC     a,c                                 ;6d35
        LD      (hl),a                              ;6d36
        LD      (hl),a                              ;6d37
        SBC     a,c                                 ;6d38
        LD      (hl),a                              ;6d39
        LD      a,d                                 ;6d3a
        LD      (hl),a                              ;6d3b
        LD      (hl),a                              ;6d3c
        LD      (hl),b                              ;6d3d
        LD      (hl),a                              ;6d3e
        LD      (hl),b                              ;6d3f
        LD      (hl),b                              ;6d40
        LD      (hl),a                              ;6d41
        RLCA                                        ;6d42
        NOP                                         ;6d43
        LD      (hl),a                              ;6d44
        LD      (hl),b                              ;6d45
        LD      (hl),a                              ;6d46
        AND     b                                   ;6d47
        LD      (hl),b                              ;6d48
        LD      a,(bc)                              ;6d49
        LD      a,(bc)                              ;6d4a
        RLCA                                        ;6d4b
        LD      a,d                                 ;6d4c
        LD      a,(bc)                              ;6d4d
        AND     b                                   ;6d4e
        LD      (hl),b                              ;6d4f
        LD      (hl),a                              ;6d50
        RLCA                                        ;6d51
        LD      (hl),a                              ;6d52
        SBC     a,c                                 ;6d53
        SUB     a                                   ;6d54
        LD      a,c                                 ;6d55
        SUB     a                                   ;6d56
        RLCA                                        ;6d57
        LD      (hl),a                              ;6d58
        NOP                                         ;6d59
        AND     b                                   ;6d5a
        NOP                                         ;6d5b
        LD      (hl),a                              ;6d5c
        LD      (hl),b                              ;6d5d
        LD      (hl),a                              ;6d5e
        RLCA                                        ;6d5f
        RLCA                                        ;6d60
        LD      (hl),b                              ;6d61
        RLCA                                        ;6d62
        LD      a,(bc)                              ;6d63
        AND     a                                   ;6d64
        LD      (hl),a                              ;6d65
        AND     b                                   ;6d66
        AND     b                                   ;6d67
        LD      (hl),a                              ;6d68
        XOR     d                                   ;6d69
        LD      (hl),b                              ;6d6a
        NOP                                         ;6d6b
        LD      a,d                                 ;6d6c
        AND     b                                   ;6d6d
        LD      (hl),b                              ;6d6e
        RLCA                                        ;6d6f
        NOP                                         ;6d70
        RLCA                                        ;6d71
        NOP                                         ;6d72
        LD      a,d                                 ;6d73
        LD      (hl),a                              ;6d74
        LD      (hl),a                              ;6d75
        NOP                                         ;6d76
        LD      a,d                                 ;6d77
        LD      (hl),b                              ;6d78
        LD      (hl),a                              ;6d79
        NOP                                         ;6d7a
        LD      (hl),a                              ;6d7b
        LD      (hl),b                              ;6d7c
        LD      (hl),b                              ;6d7d
        NOP                                         ;6d7e
        LD      (hl),a                              ;6d7f
        RLCA                                        ;6d80
        LD      (hl),b                              ;6d81
        NOP                                         ;6d82
        LD      (hl),a                              ;6d83
        LD      (hl),b                              ;6d84
        NOP                                         ;6d85
        NOP                                         ;6d86
        LD      (hl),b                              ;6d87
        NOP                                         ;6d88
        LD      (hl),b                              ;6d89
        NOP                                         ;6d8a
        LD      (hl),b                              ;6d8b
        LD      (hl),b                              ;6d8c
        NOP                                         ;6d8d
        NOP                                         ;6d8e
        LD      (hl),b                              ;6d8f
        NOP                                         ;6d90
        LD      (hl),b                              ;6d91
        NOP                                         ;6d92
        DEC     c                                   ;6d93
        RRCA                                        ;6d94
        DEC     c                                   ;6d95
        CP      d                                   ;6d96
        NOP                                         ;6d97
        RRCA                                        ;6d98
        RRCA                                        ;6d99
        DEFB    0xfd,0xf0,0xf                       ;6d9a
        RST     OUTDO                               ;6d9d
        DEFB    0xfd,0xf0,0x70                      ;6d9e
        RET     nc                                  ;6da1
        RST     KEYINT                              ;6da2
        DEFB    0xfd,0x99,0x77                      ;6da3
        RRCA                                        ;6da6
        DEFB    0xfd,0x99,0x99                      ;6da7
        LD      (hl),a                              ;6daa
        RST     KEYINT                              ;6dab
        SBC     a,c                                 ;6dac
        SBC     a,c                                 ;6dad
        AND     a                                   ;6dae
        RRCA                                        ;6daf
        SBC     a,c                                 ;6db0
        SBC     a,d                                 ;6db1
        LD      (hl),a                              ;6db2
        LD      (hl),a                              ;6db3
        NOP                                         ;6db4
        NOP                                         ;6db5
        RLCA                                        ;6db6
        LD      a,d                                 ;6db7
        NOP                                         ;6db8
        NOP                                         ;6db9
        RLCA                                        ;6dba
        AND     b                                   ;6dbb
        NOP                                         ;6dbc
        NOP                                         ;6dbd
        LD      (hl),a                              ;6dbe
        AND     b                                   ;6dbf
        NOP                                         ;6dc0
        RLCA                                        ;6dc1
        LD      (hl),a                              ;6dc2
        AND     a                                   ;6dc3
        NOP                                         ;6dc4
        RLCA                                        ;6dc5
        LD      a,d                                 ;6dc6
        SBC     a,c                                 ;6dc7
        NOP                                         ;6dc8
        LD      a,d                                 ;6dc9
        LD      sp,hl                               ;6dca
        SBC     a,c                                 ;6dcb
        RLCA                                        ;6dcc
        XOR     c                                   ;6dcd
        SBC     a,c                                 ;6dce
        SBC     a,c                                 ;6dcf
        LD      a,a                                 ;6dd0
        INC     bc                                  ;6dd1
        SBC     a,c                                 ;6dd2
        AND     c                                   ;6dd3
        NOP                                         ;6dd4
        DEC     c                                   ;6dd5
        NOP                                         ;6dd6
        RET     nc                                  ;6dd7
        NOP                                         ;6dd8
        DEFB    0xdd,0x0,0xd0                       ;6dd9
        LD      (hl),b                              ;6ddc
        RST     KEYINT                              ;6ddd
        DEC     c                                   ;6dde
        DEC     c                                   ;6ddf
        LD      (hl),a                              ;6de0
        RRCA                                        ;6de1
        DEFB    0xfd,0xd,0x97                       ;6de2
        LD      a,a                                 ;6de5
        DEFB    0xfd,0x0,0x99                       ;6de6
        LD      (hl),b                              ;6de9
        RST     KEYINT                              ;6dea
        DEC     c                                   ;6deb
        SBC     a,c                                 ;6dec
        LD      (hl),a                              ;6ded
        RRCA                                        ;6dee
        DEC     c                                   ;6def
        SBC     a,c                                 ;6df0
        SUB     a                                   ;6df1
        LD      a,a                                 ;6df2
        DEFB    0xdd,0x7,0x7                        ;6df3
        NOP                                         ;6df6
        SUB     h                                   ;6df7
        RLCA                                        ;6df8
        LD      (hl),b                              ;6df9
        RLCA                                        ;6dfa
        NOP                                         ;6dfb
        RLCA                                        ;6dfc
        NOP                                         ;6dfd
        NOP                                         ;6dfe
        LD      (hl),b                              ;6dff
        NOP                                         ;6e00
        LD      (hl),b                              ;6e01
        NOP                                         ;6e02
        NOP                                         ;6e03
        RLCA                                        ;6e04
        NOP                                         ;6e05
        LD      (hl),b                              ;6e06
        NOP                                         ;6e07
        RLCA                                        ;6e08
        NOP                                         ;6e09
        NOP                                         ;6e0a
        LD      (hl),b                              ;6e0b
        INC     b                                   ;6e0c
        NOP                                         ;6e0d
        ADC     a,a                                 ;6e0e
        AND     b                                   ;6e0f
        LD      (hl),a                              ;6e10
        NOP                                         ;6e11
        RLCA                                        ;6e12
        LD      a,d                                 ;6e13
        LD      (hl),b                              ;6e14
        LD      a,(bc)                              ;6e15
        AND     a                                   ;6e16
        RLCA                                        ;6e17
        XOR     d                                   ;6e18
        NOP                                         ;6e19
        LD      a,d                                 ;6e1a
        NOP                                         ;6e1b
        LD      (hl),a                              ;6e1c
        RLCA                                        ;6e1d
        INC     bc                                  ;6e1e
        LD      (hl),b                              ;6e1f
        ADD     a,h                                 ;6e20
        NOP                                         ;6e21
        LD      (hl),a                              ;6e22
        LD      a,(bc)                              ;6e23
        LD      (hl),a                              ;6e24
        INC     bc                                  ;6e25
        NOP                                         ;6e26
        ADD     a,(hl)                              ;6e27
        LD      (hl),a                              ;6e28
        RLCA                                        ;6e29
        LD      (hl),b                              ;6e2a
        NOP                                         ;6e2b
        LD      (hl),b                              ;6e2c
        RLCA                                        ;6e2d
        INC     b                                   ;6e2e
        NOP                                         ;6e2f
        ADD     a,c                                 ;6e30
        RLCA                                        ;6e31
        INC     bc                                  ;6e32
        NOP                                         ;6e33
        ADD     a,c                                 ;6e34
        AND     a                                   ;6e35
        INC     bc                                  ;6e36
        NOP                                         ;6e37
        ADD     a,l                                 ;6e38
        LD      a,d                                 ;6e39
        NOP                                         ;6e3a
        NOP                                         ;6e3b
        RLCA                                        ;6e3c
        LD      (hl),b                              ;6e3d
        INC     bc                                  ;6e3e
        NOP                                         ;6e3f
        ADD     a,c                                 ;6e40
        LD      (hl),a                              ;6e41
        RLCA                                        ;6e42
        NOP                                         ;6e43
        ADD     a,c                                 ;6e44
        LD      (hl),b                              ;6e45
        INC     b                                   ;6e46
        NOP                                         ;6e47
        ADC     a,c                                 ;6e48
        LD      (hl),b                              ;6e49
        LD      (hl),a                              ;6e4a
        LD      (hl),b                              ;6e4b
        RLCA                                        ;6e4c
        RLCA                                        ;6e4d
        NOP                                         ;6e4e
        LD      (hl),b                              ;6e4f
        NOP                                         ;6e50
        NOP                                         ;6e51
        INC     bc                                  ;6e52
        LD      (hl),b                              ;6e53
        INC     bc                                  ;6e54
        NOP                                         ;6e55
        ADC     a,c                                 ;6e56
        RLCA                                        ;6e57
        NOP                                         ;6e58
        LD      (hl),b                              ;6e59
        LD      (hl),b                              ;6e5a
        RLCA                                        ;6e5b
        NOP                                         ;6e5c
        NOP                                         ;6e5d
        LD      (hl),b                              ;6e5e
        LD      (hl),b                              ;6e5f
        LD      b,0x0                               ;6e60
        SBC     a,b                                 ;6e62
        LD      (hl),b                              ;6e63
        NOP                                         ;6e64
        LD      a,(bc)                              ;6e65
        LD      (hl),a                              ;6e66
        LD      a,d                                 ;6e67
        LD      (hl),b                              ;6e68
        RLCA                                        ;6e69
        XOR     d                                   ;6e6a
        AND     a                                   ;6e6b
        LD      (hl),b                              ;6e6c
        NOP                                         ;6e6d
        LD      (hl),a                              ;6e6e
        LD      (hl),b                              ;6e6f
        LD      (hl),b                              ;6e70
        LD      a,(bc)                              ;6e71
        NOP                                         ;6e72
        AND     a                                   ;6e73
        NOP                                         ;6e74
        RLCA                                        ;6e75
        XOR     d                                   ;6e76
        LD      a,d                                 ;6e77
        NOP                                         ;6e78
        NOP                                         ;6e79
        LD      (hl),a                              ;6e7a
        LD      b,0x0                               ;6e7b
        AND     a                                   ;6e7d
        RLCA                                        ;6e7e
        LD      (hl),a                              ;6e7f
        NOP                                         ;6e80
        LD      (hl),b                              ;6e81
        LD      a,d                                 ;6e82
        RLCA                                        ;6e83
        XOR     d                                   ;6e84
        LD      (hl),b                              ;6e85
        LD      (hl),a                              ;6e86
        RLCA                                        ;6e87
        LD      (hl),a                              ;6e88
        AND     b                                   ;6e89
        LD      (hl),a                              ;6e8a
        RLCA                                        ;6e8b
        RLCA                                        ;6e8c
        LD      (hl),b                              ;6e8d
        AND     a                                   ;6e8e
        RLCA                                        ;6e8f
        LD      a,(bc)                              ;6e90
        LD      (hl),b                              ;6e91
        LD      a,d                                 ;6e92
        RLCA                                        ;6e93
        LD      (hl),b                              ;6e94
        NOP                                         ;6e95
        LD      (hl),a                              ;6e96
        RLCA                                        ;6e97
        LD      a,(bc)                              ;6e98
        NOP                                         ;6e99
        LD      (hl),b                              ;6e9a
        RLCA                                        ;6e9b
        AND     b                                   ;6e9c
        LD      (hl),b                              ;6e9d
        LD      (hl),a                              ;6e9e
        RLCA                                        ;6e9f
        NOP                                         ;6ea0
        NOP                                         ;6ea1
        LD      (hl),b                              ;6ea2
        AND     a                                   ;6ea3
        NOP                                         ;6ea4
        INC     bc                                  ;6ea5
        RLCA                                        ;6ea6
        OR      l                                   ;6ea7
        LD      (hl),a                              ;6ea8
        RLCA                                        ;6ea9
        AND     a                                   ;6eaa
        LD      (hl),b                              ;6eab
        AND     a                                   ;6eac
        LD      (hl),b                              ;6ead
        RLCA                                        ;6eae
        LD      a,d                                 ;6eaf
        LD      (hl),a                              ;6eb0
        NOP                                         ;6eb1
        XOR     d                                   ;6eb2
        AND     a                                   ;6eb3
        RLCA                                        ;6eb4
        RLCA                                        ;6eb5
        NOP                                         ;6eb6
        NOP                                         ;6eb7
        LD      a,(bc)                              ;6eb8
        NOP                                         ;6eb9
        RLCA                                        ;6eba
        AND     a                                   ;6ebb
        AND     a                                   ;6ebc
        RLCA                                        ;6ebd
        NOP                                         ;6ebe
        RLCA                                        ;6ebf
        NOP                                         ;6ec0
        NOP                                         ;6ec1
        LD      (hl),a                              ;6ec2
        LD      a,(bc)                              ;6ec3
        RLCA                                        ;6ec4
        RLCA                                        ;6ec5
        LD      a,(bc)                              ;6ec6
        AND     b                                   ;6ec7
        LD      a,(bc)                              ;6ec8
        LD      (hl),b                              ;6ec9
        RLCA                                        ;6eca
        RLCA                                        ;6ecb
        AND     a                                   ;6ecc
        RLCA                                        ;6ecd
        LD      (hl),b                              ;6ece
        RLCA                                        ;6ecf
        LD      (hl),b                              ;6ed0
        NOP                                         ;6ed1
        LD      (hl),b                              ;6ed2
        LD      (hl),a                              ;6ed3
        RLCA                                        ;6ed4
        NOP                                         ;6ed5
        RLCA                                        ;6ed6
        RLCA                                        ;6ed7
        NOP                                         ;6ed8
        LD      (hl),b                              ;6ed9
        NOP                                         ;6eda
        LD      (hl),b                              ;6edb
        AND     a                                   ;6edc
        DEC     b                                   ;6edd
        NOP                                         ;6ede
        AND     b                                   ;6edf
        RLCA                                        ;6ee0
        XOR     d                                   ;6ee1
        LD      (hl),b                              ;6ee2
        AND     a                                   ;6ee3
        LD      a,(bc)                              ;6ee4
        LD      (hl),a                              ;6ee5
        LD      (hl),b                              ;6ee6
        LD      (hl),a                              ;6ee7
        RLCA                                        ;6ee8
        LD      (hl),b                              ;6ee9
        LD      (hl),b                              ;6eea
        LD      (hl),a                              ;6eeb
        RLCA                                        ;6eec
        AND     b                                   ;6eed
        LD      (hl),b                              ;6eee
        LD      a,d                                 ;6eef
        NOP                                         ;6ef0
        RLCA                                        ;6ef1
        LD      (hl),b                              ;6ef2
        AND     a                                   ;6ef3
        NOP                                         ;6ef4
        AND     b                                   ;6ef5
        LD      (hl),b                              ;6ef6
        LD      (hl),a                              ;6ef7
        RLCA                                        ;6ef8
        LD      a,(bc)                              ;6ef9
        LD      (hl),b                              ;6efa
        RLCA                                        ;6efb
        NOP                                         ;6efc
        NOP                                         ;6efd
        LD      (hl),b                              ;6efe
        LD      (hl),a                              ;6eff
        JR      nz,b4_l6f02h                        ;6f00
b4_l6f02h:
        DEC     h                                   ;6f02
        CP      e                                   ;6f03
        ADD     a,h                                 ;6f04
        CP      (hl)                                ;6f05
        XOR     0xeb                                ;6f06
        CP      (hl)                                ;6f08
        INC     bc                                  ;6f09
        XOR     0x83                                ;6f0a
        CP      e                                   ;6f0c
        EX      de,hl                               ;6f0d
        XOR     0x15                                ;6f0e
        CP      e                                   ;6f10
        ADD     a,h                                 ;6f11
        XOR     0xeb                                ;6f12
        EX      de,hl                               ;6f14
        CP      e                                   ;6f15
        INC     bc                                  ;6f16
        XOR     0x83                                ;6f17
        EX      de,hl                               ;6f19
        XOR     0xee                                ;6f1a
        LD      a,(bc)                              ;6f1c
        CP      e                                   ;6f1d
        LD      (bc),a                              ;6f1e
        CP      (hl)                                ;6f1f
        LD      (bc),a                              ;6f20
        EX      de,hl                               ;6f21
        INC     b                                   ;6f22
        CP      e                                   ;6f23
        INC     bc                                  ;6f24
        NOP                                         ;6f25
        SUB     c                                   ;6f26
        DEFB    0xdd,0x0,0x0                        ;6f27
        DEFB    0xdd,0xdd,0x0                       ;6f2a
        DEC     c                                   ;6f2d
        DEFB    0xdd,0xff,0x0                       ;6f2e
        DEFB    0xfd,0xff,0xf0                      ;6f31
        NOP                                         ;6f34
        RST     KEYINT                              ;6f35
        RET     p                                   ;6f36
        RLCA                                        ;6f37
        INC     bc                                  ;6f38
        NOP                                         ;6f39
        ADD     a,c                                 ;6f3a
        LD      (hl),b                              ;6f3b
        INC     bc                                  ;6f3c
        NOP                                         ;6f3d
        ADD     a,c                                 ;6f3e
        LD      (hl),b                              ;6f3f
        INC     bc                                  ;6f40
        NOP                                         ;6f41
        ADC     a,(hl)                              ;6f42
        LD      (hl),a                              ;6f43
        DEFB    0xdd,0xff,0x0                       ;6f44
        NOP                                         ;6f47
        DEFB    0xdd,0xdd,0xf0                      ;6f48
        NOP                                         ;6f4b
        RST     KEYINT                              ;6f4c
        RST     KEYINT                              ;6f4d
        NOP                                         ;6f4e
        NOP                                         ;6f4f
        LD      (hl),b                              ;6f50
        EX      af,af'                              ;6f51
        NOP                                         ;6f52
        SUB     c                                   ;6f53
        DEC     c                                   ;6f54
        DEFB    0xdd,0xd0,0x0                       ;6f55
        DEFB    0xdd,0xff,0xdd                      ;6f58
        NOP                                         ;6f5b
        RST     KEYINT                              ;6f5c
        NOP                                         ;6f5d
        RST     KEYINT                              ;6f5e
        NOP                                         ;6f5f
        NOP                                         ;6f60
        LD      (hl),b                              ;6f61
        RRCA                                        ;6f62
        NOP                                         ;6f63
        RLCA                                        ;6f64
        INC     bc                                  ;6f65
        NOP                                         ;6f66
        ADD     a,c                                 ;6f67
        RLCA                                        ;6f68
        INC     bc                                  ;6f69
        NOP                                         ;6f6a
        ADD     a,a                                 ;6f6b
        DEFB    0xdd,0x0,0x0                        ;6f6c
        DEC     c                                   ;6f6f
        DEFB    0xdd,0xdd,0xd0                      ;6f70
        INC     bc                                  ;6f73
        RST     KEYINT                              ;6f74
        ADD     a,a                                 ;6f75
        DEFB    0xdd,0x0,0xf7                       ;6f76
        LD      a,a                                 ;6f79
        LD      (iy+0x7),b                          ;6f7a
        DEC     b                                   ;6f7d
        NOP                                         ;6f7e
        SUB     c                                   ;6f7f
        RLCA                                        ;6f80
        NOP                                         ;6f81
        NOP                                         ;6f82
        RRCA                                        ;6f83
        RST     CALLF                               ;6f84
        NOP                                         ;6f85
        DEC     c                                   ;6f86
        DEFB    0xdd,0xdd,0xf                       ;6f87
        DEFB    0xdd,0xdf,0xff                      ;6f8a
        RRCA                                        ;6f8d
        RST     KEYINT                              ;6f8e
        RET     p                                   ;6f8f
        LD      a,a                                 ;6f90
        INC     bc                                  ;6f91
        NOP                                         ;6f92
        ADD     a,c                                 ;6f93
        LD      (hl),b                              ;6f94
        INC     bc                                  ;6f95
        NOP                                         ;6f96
        ADD     a,c                                 ;6f97
        RLCA                                        ;6f98
        RLCA                                        ;6f99
        NOP                                         ;6f9a
        ADD     a,c                                 ;6f9b
        RLCA                                        ;6f9c
        INC     bc                                  ;6f9d
        NOP                                         ;6f9e
        ADD     a,c                                 ;6f9f
        LD      (hl),a                              ;6fa0
        INC     bc                                  ;6fa1
        NOP                                         ;6fa2
        SBC     a,d                                 ;6fa3
        LD      (hl),a                              ;6fa4
        DEC     c                                   ;6fa5
        DEFB    0xdd,0xd0,0x7                       ;6fa6
        RST     OUTDO                               ;6fa9
        RST     KEYINT                              ;6faa
        DEFB    0xdd,0xd7,0xff                      ;6fab
        LD      (hl),b                              ;6fae
        RST     KEYINT                              ;6faf
        DEFB    0xfd,0x0,0x7                        ;6fb0
        LD      (hl),a                              ;6fb3
        LD      (hl),a                              ;6fb4
        NOP                                         ;6fb5
        NOP                                         ;6fb6
        LD      (hl),b                              ;6fb7
        LD      (hl),a                              ;6fb8
        RLCA                                        ;6fb9
        LD      (hl),b                              ;6fba
        NOP                                         ;6fbb
        NOP                                         ;6fbc
        LD      (hl),b                              ;6fbd
        DJNZ    b4_l6fc0h                           ;6fbe
b4_l6fc0h:
        ADC     a,e                                 ;6fc0
        DEFB    0xdd,0xd0,0x0                       ;6fc1
        DEC     c                                   ;6fc4
        RST     KEYINT                              ;6fc5
        DEFB    0xdd,0xd0,0xff                      ;6fc6
        NOP                                         ;6fc9
        RST     KEYINT                              ;6fca
        RST     KEYINT                              ;6fcb
        INC     hl                                  ;6fcc
        NOP                                         ;6fcd
        SBC     a,l                                 ;6fce
        LD      (hl),a                              ;6fcf
        NOP                                         ;6fd0
        NOP                                         ;6fd1
        RLCA                                        ;6fd2
        LD      a,d                                 ;6fd3
        NOP                                         ;6fd4
        NOP                                         ;6fd5
        RLCA                                        ;6fd6
        LD      (hl),b                              ;6fd7
        NOP                                         ;6fd8
        NOP                                         ;6fd9
        LD      (hl),a                              ;6fda
        AND     b                                   ;6fdb
        NOP                                         ;6fdc
        RLCA                                        ;6fdd
        LD      (hl),a                              ;6fde
        NOP                                         ;6fdf
        NOP                                         ;6fe0
        LD      (hl),a                              ;6fe1
        LD      a,d                                 ;6fe2
        NOP                                         ;6fe3
        RLCA                                        ;6fe4
        LD      (hl),a                              ;6fe5
        LD      a,d                                 ;6fe6
        NOP                                         ;6fe7
        LD      (hl),a                              ;6fe8
        LD      a,a                                 ;6fe9
        LD      (hl),a                              ;6fea
        AND     b                                   ;6feb
        RLCA                                        ;6fec
        NOP                                         ;6fed
        SBC     a,d                                 ;6fee
        RST     OUTDO                               ;6fef
        DEC     c                                   ;6ff0
        NOP                                         ;6ff1
