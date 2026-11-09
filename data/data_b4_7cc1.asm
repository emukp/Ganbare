        DEFB    0xdd,0xf0,0x77                      ;7cc1
        DEFB    0xfd,0x3,0x0                        ;7cc4
        RST     KEYINT                              ;7cc7
        LD      a,a                                 ;7cc8
        DEC     c                                   ;7cc9
        RET     nc                                  ;7cca
        DEC     c                                   ;7ccb
        RST     OUTDO                               ;7ccc
        RET     nc                                  ;7ccd
        NOP                                         ;7cce
        DEFB    0xdd,0xff,0x0                       ;7ccf
        DEC     bc                                  ;7cd2
        RET     nc                                  ;7cd3
        NOP                                         ;7cd4
        RET     p                                   ;7cd5
        OR      a                                   ;7cd6
        NOP                                         ;7cd7
        LD      (hl),a                              ;7cd8
        DEC     bc                                  ;7cd9
        LD      (hl),a                              ;7cda
        RLCA                                        ;7cdb
        LD      a,e                                 ;7cdc
        RLCA                                        ;7cdd
        LD      (hl),b                              ;7cde
        RET     nc                                  ;7cdf
        LD      a,(bc)                              ;7ce0
        DEC     c                                   ;7ce1
        RET     nc                                  ;7ce2
        DEC     c                                   ;7ce3
        RET     nc                                  ;7ce4
        RET     p                                   ;7ce5
        DEFB    0xfd,0xdf,0xd                       ;7ce6
        NOP                                         ;7ce9
        RRCA                                        ;7cea
        RRCA                                        ;7ceb
        DEC     c                                   ;7cec
        DEFB    0xfd,0xd0,0xb0                      ;7ced
        RST     OUTDO                               ;7cf0
        RRCA                                        ;7cf1
        DEFB    0xdd,0x7b,0x0                       ;7cf2
        RET     p                                   ;7cf5
        LD      (iy-0x50),a                         ;7cf6
        LD      (hl),a                              ;7cf9
        RRCA                                        ;7cfa
        RLCA                                        ;7cfb
        LD      (hl),b                              ;7cfc
        OR      a                                   ;7cfd
        NOP                                         ;7cfe
        DEC     bc                                  ;7cff
        CP      e                                   ;7d00
        RLCA                                        ;7d01
        NOP                                         ;7d02
        DEC     bc                                  ;7d03
        AND     b                                   ;7d04
        NOP                                         ;7d05
        RET     p                                   ;7d06
        NOP                                         ;7d07
        DEC     bc                                  ;7d08
        RRCA                                        ;7d09
        DEC     bc                                  ;7d0a
        DEC     bc                                  ;7d0b
        XOR     e                                   ;7d0c
        NOP                                         ;7d0d
        OR      a                                   ;7d0e
        DEC     bc                                  ;7d0f
        XOR     e                                   ;7d10
        DEC     bc                                  ;7d11
        LD      (hl),a                              ;7d12
        DEC     bc                                  ;7d13
        XOR     e                                   ;7d14
        RLCA                                        ;7d15
        LD      (hl),b                              ;7d16
        DEC     bc                                  ;7d17
        XOR     e                                   ;7d18
        RLCA                                        ;7d19
        NOP                                         ;7d1a
        DEC     bc                                  ;7d1b
        XOR     e                                   ;7d1c
        DEC     c                                   ;7d1d
        RET     p                                   ;7d1e
        NOP                                         ;7d1f
        LD      (hl),b                              ;7d20
        CP      e                                   ;7d21
        LD      (hl),b                              ;7d22
        RRCA                                        ;7d23
        NOP                                         ;7d24
        LD      a,(bc)                              ;7d25
        OR      b                                   ;7d26
        OR      b                                   ;7d27
        RET     p                                   ;7d28
        OR      b                                   ;7d29
        NOP                                         ;7d2a
        LD      a,e                                 ;7d2b
        NOP                                         ;7d2c
        CP      d                                   ;7d2d
        OR      b                                   ;7d2e
        LD      (hl),a                              ;7d2f
        OR      b                                   ;7d30
        CP      d                                   ;7d31
        OR      b                                   ;7d32
        RLCA                                        ;7d33
        LD      (hl),b                              ;7d34
        CP      d                                   ;7d35
        OR      b                                   ;7d36
        RET     nc                                  ;7d37
        LD      (hl),b                              ;7d38
        CP      d                                   ;7d39
        OR      b                                   ;7d3a
        NOP                                         ;7d3b
        RET     nc                                  ;7d3c
        CP      d                                   ;7d3d
        OR      b                                   ;7d3e
        DEC     bc                                  ;7d3f
        XOR     e                                   ;7d40
        NOP                                         ;7d41
        ADD     hl,bc                               ;7d42
        DEC     bc                                  ;7d43
        AND     b                                   ;7d44
        NOP                                         ;7d45
        SBC     a,c                                 ;7d46
        OR      0x0                                 ;7d47
        DEC     bc                                  ;7d49
        ADD     hl,bc                               ;7d4a
        SBC     a,c                                 ;7d4b
        DEC     bc                                  ;7d4c
        XOR     e                                   ;7d4d
        ADD     hl,bc                               ;7d4e
        SBC     a,c                                 ;7d4f
        DEC     bc                                  ;7d50
        XOR     e                                   ;7d51
        ADD     hl,bc                               ;7d52
        SBC     a,c                                 ;7d53
        DEC     bc                                  ;7d54
        XOR     e                                   ;7d55
        ADD     hl,hl                               ;7d56
        SBC     a,c                                 ;7d57
        DEC     bc                                  ;7d58
        OR      b                                   ;7d59
        ADD     hl,hl                               ;7d5a
        SBC     a,c                                 ;7d5b
        NOP                                         ;7d5c
        LD      (bc),a                              ;7d5d
        SBC     a,c                                 ;7d5e
        SBC     a,c                                 ;7d5f
        SUB     b                                   ;7d60
        NOP                                         ;7d61
        CP      d                                   ;7d62
        OR      b                                   ;7d63
        SBC     a,c                                 ;7d64
        NOP                                         ;7d65
        LD      a,(bc)                              ;7d66
        OR      b                                   ;7d67
        SBC     a,c                                 ;7d68
        SUB     b                                   ;7d69
        OR      b                                   ;7d6a
        NOP                                         ;7d6b
        SBC     a,c                                 ;7d6c
        SUB     b                                   ;7d6d
        CP      d                                   ;7d6e
        OR      b                                   ;7d6f
        SBC     a,c                                 ;7d70
        SUB     b                                   ;7d71
        CP      d                                   ;7d72
        OR      b                                   ;7d73
        SBC     a,c                                 ;7d74
        SUB     d                                   ;7d75
        CP      d                                   ;7d76
        OR      b                                   ;7d77
        SBC     a,c                                 ;7d78
        SUB     d                                   ;7d79
        DEC     bc                                  ;7d7a
        OR      b                                   ;7d7b
        SBC     a,c                                 ;7d7c
        SBC     a,c                                 ;7d7d
        JR      nz,b4_l7d80h                        ;7d7e
b4_l7d80h:
        RET     nc                                  ;7d80
        RRCA                                        ;7d81
        LD      (hl),b                              ;7d82
        LD      (hl),b                              ;7d83
        NOP                                         ;7d84
        NOP                                         ;7d85
        OR      a                                   ;7d86
        OR      b                                   ;7d87
        NOP                                         ;7d88
        NOP                                         ;7d89
        LD      a,e                                 ;7d8a
        LD      (hl),b                              ;7d8b
        CP      e                                   ;7d8c
        OR      b                                   ;7d8d
        NOP                                         ;7d8e
        NOP                                         ;7d8f
        LD      (hl),a                              ;7d90
        LD      (hl),b                              ;7d91
        OR      a                                   ;7d92
        LD      (hl),b                              ;7d93
        NOP                                         ;7d94
        NOP                                         ;7d95
        XOR     e                                   ;7d96
        LD      (hl),b                              ;7d97
        RET     nc                                  ;7d98
        RET     p                                   ;7d99
        XOR     e                                   ;7d9a
        LD      (hl),b                              ;7d9b
        LD      (hl),b                              ;7d9c
        RET     p                                   ;7d9d
        XOR     e                                   ;7d9e
        LD      (hl),b                              ;7d9f
        RET     p                                   ;7da0
        NOP                                         ;7da1
        XOR     e                                   ;7da2
        LD      (hl),b                              ;7da3
        RET     p                                   ;7da4
        RET     p                                   ;7da5
        XOR     e                                   ;7da6
        LD      (hl),b                              ;7da7
        NOP                                         ;7da8
        NOP                                         ;7da9
        LD      a,e                                 ;7daa
        LD      (hl),b                              ;7dab
        CP      e                                   ;7dac
        OR      b                                   ;7dad
        NOP                                         ;7dae
        NOP                                         ;7daf
        LD      (hl),a                              ;7db0
        LD      (hl),b                              ;7db1
        AND     a                                   ;7db2
        LD      (hl),b                              ;7db3
        NOP                                         ;7db4
        NOP                                         ;7db5
        XOR     e                                   ;7db6
        LD      (hl),b                              ;7db7
        NOP                                         ;7db8
        NOP                                         ;7db9
        DEC     bc                                  ;7dba
        LD      (hl),b                              ;7dbb
        SBC     a,c                                 ;7dbc
        SBC     a,c                                 ;7dbd
        LD      (0x1c00),hl                         ;7dbe
        AND     a                                   ;7dc1
        INC     b                                   ;7dc2
        NOP                                         ;7dc3
        ADD     a,c                                 ;7dc4
        ADC     a,0x3                               ;7dc5
        XOR     0x81                                ;7dc7
        ADC     a,0x3                               ;7dc9
        XOR     0x81                                ;7dcb
        ADC     a,0x3                               ;7dcd
        XOR     0x4                                 ;7dcf
        NOP                                         ;7dd1
        ADD     a,c                                 ;7dd2
        LD      a,e                                 ;7dd3
        INC     bc                                  ;7dd4
        CP      e                                   ;7dd5
        ADD     a,c                                 ;7dd6
        LD      a,e                                 ;7dd7
        INC     bc                                  ;7dd8
        CP      e                                   ;7dd9
        INC     b                                   ;7dda
        DEC     bc                                  ;7ddb
        INC     e                                   ;7ddc
        LD      a,e                                 ;7ddd
        INC     b                                   ;7dde
        DEC     bc                                  ;7ddf
        EX      af,af'                              ;7de0
        NOP                                         ;7de1
        INC     b                                   ;7de2
        CALL    z,0xce81                            ;7de3
        INC     bc                                  ;7de6
        XOR     0x81                                ;7de7
        ADC     a,0x3                               ;7de9
        XOR     0x81                                ;7deb
        ADC     a,0x3                               ;7ded
        XOR     0x81                                ;7def
        ADC     a,0x3                               ;7df1
        XOR     0x81                                ;7df3
        ADC     a,0x3                               ;7df5
        XOR     0x81                                ;7df7
        ADC     a,0x1f                              ;7df9
        XOR     0x8                                 ;7dfb
        NOP                                         ;7dfd
        ADC     a,b                                 ;7dfe
        LD      a,(bc)                              ;7dff
        XOR     (hl)                                ;7e00
        LD      a,(bc)                              ;7e01
        XOR     d                                   ;7e02
        DEC     bc                                  ;7e03
        CP      h                                   ;7e04
        DEC     bc                                  ;7e05
        CP      e                                   ;7e06
        DEC     b                                   ;7e07
        NOP                                         ;7e08
        INC     bc                                  ;7e09
        CP      e                                   ;7e0a
        DEC     b                                   ;7e0b
        NOP                                         ;7e0c
        ADD     a,a                                 ;7e0d
        LD      a,e                                 ;7e0e
        XOR     e                                   ;7e0f
        LD      a,e                                 ;7e10
        RLCA                                        ;7e11
        OR      a                                   ;7e12
        CP      d                                   ;7e13
        CP      e                                   ;7e14
        INC     b                                   ;7e15
        NOP                                         ;7e16
        ADC     a,b                                 ;7e17
        XOR     d                                   ;7e18
        XOR     (hl)                                ;7e19
        LD      a,(bc)                              ;7e1a
        XOR     d                                   ;7e1b
        CP      e                                   ;7e1c
        CP      h                                   ;7e1d
        DEC     bc                                  ;7e1e
        CP      e                                   ;7e1f
        INC     b                                   ;7e20
        NOP                                         ;7e21
        INC     b                                   ;7e22
        CP      e                                   ;7e23
        INC     b                                   ;7e24
        NOP                                         ;7e25
        INC     bc                                  ;7e26
        XOR     e                                   ;7e27
        ADD     a,l                                 ;7e28
        LD      a,e                                 ;7e29
        OR      a                                   ;7e2a
        OR      a                                   ;7e2b
        CP      d                                   ;7e2c
        CP      e                                   ;7e2d
        INC     b                                   ;7e2e
        NOP                                         ;7e2f
        ADC     a,b                                 ;7e30
        XOR     d                                   ;7e31
        XOR     (hl)                                ;7e32
        LD      a,(bc)                              ;7e33
        AND     b                                   ;7e34
        CP      e                                   ;7e35
        CP      h                                   ;7e36
        DEC     bc                                  ;7e37
        OR      b                                   ;7e38
        INC     b                                   ;7e39
        NOP                                         ;7e3a
        INC     bc                                  ;7e3b
        CP      e                                   ;7e3c
        DEC     b                                   ;7e3d
        NOP                                         ;7e3e
        ADC     a,b                                 ;7e3f
        OR      a                                   ;7e40
        CP      d                                   ;7e41
        CP      d                                   ;7e42
        NOP                                         ;7e43
        CP      e                                   ;7e44
        XOR     e                                   ;7e45
        LD      a,e                                 ;7e46
        LD      (hl),b                              ;7e47
        INC     b                                   ;7e48
        NOP                                         ;7e49
        ADC     a,b                                 ;7e4a
        CALL    z,0xcce                             ;7e4b
        CALL    z,SLTSL                             ;7e4e
        RRCA                                        ;7e51
        RST     KEYINT                              ;7e52
        INC     b                                   ;7e53
        NOP                                         ;7e54
        ADD     a,c                                 ;7e55
        DEC     bc                                  ;7e56
        INC     bc                                  ;7e57
        CP      e                                   ;7e58
        INC     b                                   ;7e59
        NOP                                         ;7e5a
        ADC     a,b                                 ;7e5b
        RLCA                                        ;7e5c
        LD      a,e                                 ;7e5d
        XOR     e                                   ;7e5e
        LD      a,e                                 ;7e5f
        RLCA                                        ;7e60
        OR      a                                   ;7e61
        CP      d                                   ;7e62
        CP      e                                   ;7e63
        INC     b                                   ;7e64
        NOP                                         ;7e65
        ADC     a,b                                 ;7e66
        CALL    z,0xcce                             ;7e67
        CALL    z,SLTSL                             ;7e6a
        RRCA                                        ;7e6d
        RST     KEYINT                              ;7e6e
        INC     b                                   ;7e6f
        NOP                                         ;7e70
        INC     b                                   ;7e71
        CP      e                                   ;7e72
        INC     b                                   ;7e73
        NOP                                         ;7e74
        INC     bc                                  ;7e75
        XOR     e                                   ;7e76
        ADD     a,l                                 ;7e77
        LD      a,e                                 ;7e78
        OR      a                                   ;7e79
        OR      a                                   ;7e7a
        CP      d                                   ;7e7b
        CP      e                                   ;7e7c
        INC     b                                   ;7e7d
        NOP                                         ;7e7e
        ADC     a,b                                 ;7e7f
        CALL    z,0xcce                             ;7e80
        CALL    z,SLTSL                             ;7e83
        RRCA                                        ;7e86
        RST     KEYINT                              ;7e87
        INC     b                                   ;7e88
        NOP                                         ;7e89
        INC     bc                                  ;7e8a
        CP      e                                   ;7e8b
        ADD     a,c                                 ;7e8c
        OR      b                                   ;7e8d
        INC     b                                   ;7e8e
        NOP                                         ;7e8f
        LD      (bc),a                              ;7e90
        XOR     e                                   ;7e91
        ADC     a,e                                 ;7e92
        AND     a                                   ;7e93
        LD      (hl),b                              ;7e94
        OR      a                                   ;7e95
        OR      a                                   ;7e96
        CP      d                                   ;7e97
        LD      (hl),b                              ;7e98
        RST     CALLF                               ;7e99
        LD      (hl),a                              ;7e9a
        RST     CALLF                               ;7e9b
        RST     CALLF                               ;7e9c
        NOP                                         ;7e9d
        INC     bc                                  ;7e9e
        OR      a                                   ;7e9f
        ADD     a,l                                 ;7ea0
        RET     nc                                  ;7ea1
        DEC     bc                                  ;7ea2
        LD      (hl),a                              ;7ea3
        LD      (hl),a                              ;7ea4
        RET     p                                   ;7ea5
        INC     bc                                  ;7ea6
        NOP                                         ;7ea7
        ADC     a,b                                 ;7ea8
        RET     nc                                  ;7ea9
        DEC     bc                                  ;7eaa
        LD      a,a                                 ;7eab
        LD      a,e                                 ;7eac
        NOP                                         ;7ead
        OR      a                                   ;7eae
        OR      a                                   ;7eaf
        RST     CALLF                               ;7eb0
        EX      af,af'                              ;7eb1
        NOP                                         ;7eb2
        ADC     a,h                                 ;7eb3
        LD      a,e                                 ;7eb4
        CP      a                                   ;7eb5
        LD      a,a                                 ;7eb6
        LD      a,a                                 ;7eb7
        CP      a                                   ;7eb8
        LD      (hl),a                              ;7eb9
        CP      a                                   ;7eba
        OR      a                                   ;7ebb
        LD      (hl),a                              ;7ebc
        LD      a,a                                 ;7ebd
        LD      (hl),a                              ;7ebe
        LD      (hl),a                              ;7ebf
        INC     b                                   ;7ec0
        NOP                                         ;7ec1
        ADC     a,b                                 ;7ec2
        CP      a                                   ;7ec3
        LD      a,e                                 ;7ec4
        LD      a,a                                 ;7ec5
        LD      a,a                                 ;7ec6
        LD      (hl),a                              ;7ec7
        RST     CALLF                               ;7ec8
        OR      a                                   ;7ec9
        OR      a                                   ;7eca
        EX      af,af'                              ;7ecb
        NOP                                         ;7ecc
        LD      (bc),a                              ;7ecd
        LD      a,a                                 ;7ece
        ADD     a,d                                 ;7ecf
        LD      (hl),a                              ;7ed0
        LD      a,a                                 ;7ed1
        INC     bc                                  ;7ed2
        LD      a,e                                 ;7ed3
        ADD     a,l                                 ;7ed4
        NOP                                         ;7ed5
        LD      (hl),a                              ;7ed6
        LD      (hl),a                              ;7ed7
        OR      b                                   ;7ed8
        DEC     c                                   ;7ed9
        INC     bc                                  ;7eda
        NOP                                         ;7edb
        ADC     a,b                                 ;7edc
        RRCA                                        ;7edd
        OR      a                                   ;7ede
        RST     CALLF                               ;7edf
        OR      b                                   ;7ee0
        DEC     c                                   ;7ee1
        LD      a,a                                 ;7ee2
        LD      a,e                                 ;7ee3
        LD      a,e                                 ;7ee4
        ADD     hl,bc                               ;7ee5
        NOP                                         ;7ee6
        ADD     a,l                                 ;7ee7
        LD      (0xdf2d),hl                         ;7ee8
        DEFB    0xfd,0x2f,0x3                       ;7eeb
        RST     OUTDO                               ;7eee
        ADD     a,0x2f                              ;7eef
        DEFB    0xdd,0xfd,0xfd                      ;7ef1
        CPL                                         ;7ef4
        DEFB    0xfd,0xdf,0xdf                      ;7ef5
        LD      (0xdfdf),hl                         ;7ef8
        DEFB    0xdd,0x2f,0xdd                      ;7efb
        DEC     l                                   ;7efe
        DEFB    0xfd,0x2d                           ;7eff
        RST     OUTDO                               ;7f01
        DEFB    0xfd,0xdd,0x2d                      ;7f02
        DEFB    0xdd,0xfd,0xd0                      ;7f05
        LD      (0xd22d),hl                         ;7f08
        LD      (0xdf2f),ix                         ;7f0b
        RST     KEYINT                              ;7f0f
        LD      (0x2d22),hl                         ;7f10
        DEFB    0xfd,0xf2,0x22                      ;7f13
        LD      (STACKPTR),hl                       ;7f16
        LD      (0xfd22),hl                         ;7f19
        JP      p,0x22f2                            ;7f1c
        RST     KEYINT                              ;7f1f
        RST     KEYINT                              ;7f20
        CPL                                         ;7f21
        LD      (0xf2f),hl                          ;7f22
        RST     KEYINT                              ;7f25
        LD      (0xbb2f),hl                         ;7f26
        LD      a,e                                 ;7f29
        LD      a,e                                 ;7f2a
        CP      e                                   ;7f2b
        AND     a                                   ;7f2c
        AND     a                                   ;7f2d
        XOR     e                                   ;7f2e
        AND     a                                   ;7f2f
        LD      (hl),a                              ;7f30
        OR      a                                   ;7f31
        CP      e                                   ;7f32
        LD      a,e                                 ;7f33
        DEC     bc                                  ;7f34
        LD      (hl),b                              ;7f35
        INC     bc                                  ;7f36
        LD      a,e                                 ;7f37
        INC     bc                                  ;7f38
        DEC     bc                                  ;7f39
        ADD     a,h                                 ;7f3a
        LD      (hl),b                              ;7f3b
        OR      b                                   ;7f3c
        OR      b                                   ;7f3d
        OR      a                                   ;7f3e
        INC     b                                   ;7f3f
        NOP                                         ;7f40
        INC     b                                   ;7f41
        LD      (hl),a                              ;7f42
        SBC     a,l                                 ;7f43
        NOP                                         ;7f44
        DEFB    0xfd,0xf0,0xd0                      ;7f45
        LD      (hl),b                              ;7f48
        RRCA                                        ;7f49
        DEFB    0xdd,0xf0,0xb7                      ;7f4a
        NOP                                         ;7f4d
        RST     KEYINT                              ;7f4e
        RST     KEYINT                              ;7f4f
        LD      (hl),a                              ;7f50
        LD      (hl),b                              ;7f51
        RRCA                                        ;7f52
        NOP                                         ;7f53
        LD      (hl),b                              ;7f54
        LD      (hl),b                              ;7f55
        DEC     c                                   ;7f56
        RET     p                                   ;7f57
        LD      (hl),a                              ;7f58
        NOP                                         ;7f59
        RST     OUTDO                               ;7f5a
        RRCA                                        ;7f5b
        NOP                                         ;7f5c
        RRCA                                        ;7f5d
        RRCA                                        ;7f5e
        NOP                                         ;7f5f
        NOP                                         ;7f60
        INC     bc                                  ;7f61
        RET     p                                   ;7f62
        SBC     a,h                                 ;7f63
        DEC     c                                   ;7f64
        RRCA                                        ;7f65
        RST     OUTDO                               ;7f66
        NOP                                         ;7f67
        RRCA                                        ;7f68
        DEFB    0xdd,0xf0,0x7                       ;7f69
        RST     KEYINT                              ;7f6c
        RST     KEYINT                              ;7f6d
        NOP                                         ;7f6e
        LD      a,e                                 ;7f6f
        NOP                                         ;7f70
        RET     p                                   ;7f71
        RLCA                                        ;7f72
        OR      a                                   ;7f73
        RRCA                                        ;7f74
        RET     nc                                  ;7f75
        RLCA                                        ;7f76
        DEC     bc                                  ;7f77
        RET     p                                   ;7f78
        DEFB    0xfd,0x0,0x77                       ;7f79
        NOP                                         ;7f7c
        RET     p                                   ;7f7d
        RET     p                                   ;7f7e
        NOP                                         ;7f7f
        INC     bc                                  ;7f80
        RRCA                                        ;7f81
        RST     KEYINT                              ;7f82
        NOP                                         ;7f83
        RST     KEYINT                              ;7f84
        RET     p                                   ;7f85
        RLCA                                        ;7f86
        LD      (hl),a                              ;7f87
        RST     KEYINT                              ;7f88
        NOP                                         ;7f89
        LD      (hl),a                              ;7f8a
        LD      a,e                                 ;7f8b
        RST     KEYINT                              ;7f8c
        NOP                                         ;7f8d
        LD      a,d                                 ;7f8e
        XOR     e                                   ;7f8f
        RST     KEYINT                              ;7f90
        NOP                                         ;7f91
        LD      a,e                                 ;7f92
        XOR     e                                   ;7f93
        RET     p                                   ;7f94
        NOP                                         ;7f95
        LD      a,e                                 ;7f96
        LD      (hl),a                              ;7f97
        NOP                                         ;7f98
        RLCA                                        ;7f99
        AND     a                                   ;7f9a
        LD      (hl),b                              ;7f9b
        NOP                                         ;7f9c
        CP      d                                   ;7f9d
        AND     a                                   ;7f9e
        NOP                                         ;7f9f
        DEC     bc                                  ;7fa0
        XOR     e                                   ;7fa1
        AND     b                                   ;7fa2
        NOP                                         ;7fa3
        OR      a                                   ;7fa4
        LD      (hl),b                              ;7fa5
        RRCA                                        ;7fa6
        RST     KEYINT                              ;7fa7
        XOR     e                                   ;7fa8
        AND     a                                   ;7fa9
        RRCA                                        ;7faa
        RST     KEYINT                              ;7fab
        OR      a                                   ;7fac
        OR      a                                   ;7fad
        NOP                                         ;7fae
        RST     KEYINT                              ;7faf
        XOR     e                                   ;7fb0
        AND     a                                   ;7fb1
        NOP                                         ;7fb2
        RST     KEYINT                              ;7fb3
        LD      (hl),a                              ;7fb4
        CP      e                                   ;7fb5
        NOP                                         ;7fb6
        RRCA                                        ;7fb7
        RLCA                                        ;7fb8
        AND     a                                   ;7fb9
        AND     b                                   ;7fba
        NOP                                         ;7fbb
        NOP                                         ;7fbc
        CP      d                                   ;7fbd
        AND     a                                   ;7fbe
        NOP                                         ;7fbf
        NOP                                         ;7fc0
        DEC     bc                                  ;7fc1
        XOR     e                                   ;7fc2
        AND     b                                   ;7fc3
        RET     p                                   ;7fc4
        RST     KEYINT                              ;7fc5
        RST     KEYINT                              ;7fc6
        NOP                                         ;7fc7
        DEFB    0xfd,0xdf,0xf0                      ;7fc8
        RLCA                                        ;7fcb
        DEFB    0xfd,0xdf,0x0                       ;7fcc
        LD      (hl),a                              ;7fcf
        DEFB    0xfd,0xf0,0x7                       ;7fd0
        LD      a,e                                 ;7fd3
        RST     KEYINT                              ;7fd4
        NOP                                         ;7fd5
        LD      a,e                                 ;7fd6
        XOR     e                                   ;7fd7
        RET     p                                   ;7fd8
        RLCA                                        ;7fd9
        XOR     e                                   ;7fda
        CP      e                                   ;7fdb
        NOP                                         ;7fdc
        LD      a,e                                 ;7fdd
        OR      a                                   ;7fde
        LD      a,e                                 ;7fdf
        RLCA                                        ;7fe0
        XOR     e                                   ;7fe1
        XOR     e                                   ;7fe2
        CP      e                                   ;7fe3
        NOP                                         ;7fe4
        RST     KEYINT                              ;7fe5
        DEFB    0xdd,0xf0,0x70                      ;7fe6
        RRCA                                        ;7fe9
        DEFB    0xdd,0xff,0x77                      ;7fea
        NOP                                         ;7fed
        DEFB    0xfd,0xff,0xb7                      ;7fee
        LD      (hl),b                              ;7ff1
        RRCA                                        ;7ff2
        RST     KEYINT                              ;7ff3
        CP      d                                   ;7ff4
        OR      a                                   ;7ff5
        NOP                                         ;7ff6
        RST     KEYINT                              ;7ff7
        CP      e                                   ;7ff8
        CP      d                                   ;7ff9
        LD      (hl),b                              ;7ffa
        RRCA                                        ;7ffb
        OR      a                                   ;7ffc
        LD      a,e                                 ;7ffd
        OR      a                                   ;7ffe
        NOP                                         ;7fff
