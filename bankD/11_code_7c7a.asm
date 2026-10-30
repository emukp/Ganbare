bD_l7c7ah:
        INC     b                                   ;7c7a
        DAA                                         ;7c7b
        ADC     a,c                                 ;7c7c
        LD      (hl),d                              ;7c7d
        DAA                                         ;7c7e
        DAA                                         ;7c7f
        LD      l,d                                 ;7c80
        LD      h,a                                 ;7c81
        LD      l,d                                 ;7c82
        LD      l,e                                 ;7c83
        LD      h,h                                 ;7c84
        LD      c,l                                 ;7c85
        INC     b                                   ;7c86
        DAA                                         ;7c87
        RST     KEYINT                              ;7c88
        ADD     a,d                                 ;7c89
        JR      z,bD_l7cb3h                         ;7c8a
        JR      z,$+105                             ;7c8c
        LD      l,h                                 ;7c8e
        LD      a,(hl)                              ;7c8f
        DAA                                         ;7c90
        LD      c,l                                 ;7c91
        LD      e,a                                 ;7c92
        ADD     a,e                                 ;7c93
        ADD     a,d                                 ;7c94
        JR      nc,bD_l7cc7h                        ;7c95
        LD      hl,(0x2a2b)                         ;7c97
        DEC     hl                                  ;7c9a
        DEC     l                                   ;7c9b
        INC     l                                   ;7c9c
        LD      l,0x2f                              ;7c9d
        LD      l,0x33                              ;7c9f
        LD      sp,0x3233                           ;7ca1
        DEC     (hl)                                ;7ca4
        LD      a,h                                 ;7ca5
        LD      a,l                                 ;7ca6
        LD      e,(hl)                              ;7ca7
        LD      e,a                                 ;7ca8
        LD      h,h                                 ;7ca9
        LD      h,l                                 ;7caa
        LD      h,(hl)                              ;7cab
        LD      h,l                                 ;7cac
        LD      h,l                                 ;7cad
        INC     sp                                  ;7cae
        LD      (0x3333),a                          ;7caf
        DEC     (hl)                                ;7cb2
bD_l7cb3h:
        INC     (hl)                                ;7cb3
        DEC     (hl)                                ;7cb4
        LD      c,a                                 ;7cb5
        LD      h,b                                 ;7cb6
        LD      h,c                                 ;7cb7
        LD      h,d                                 ;7cb8
        LD      h,(hl)                              ;7cb9
        LD      c,a                                 ;7cba
        LD      h,l                                 ;7cbb
        LD      e,a                                 ;7cbc
        LD      (0x3033),a                          ;7cbd
        LD      h,(hl)                              ;7cc0
        INC     (hl)                                ;7cc1
        DEC     (hl)                                ;7cc2
        INC     sp                                  ;7cc3
        JR      nc,bD_l7d15h                        ;7cc4
        LD      h,b                                 ;7cc6
bD_l7cc7h:
        LD      h,c                                 ;7cc7
        LD      h,d                                 ;7cc8
        LD      h,(hl)                              ;7cc9
        LD      c,a                                 ;7cca
        LD      h,l                                 ;7ccb
        LD      e,a                                 ;7ccc
        JR      nc,bD_l7cffh                        ;7ccd
bD_l7ccfh:
        LD      hl,(0x2a2b)                         ;7ccf
        DEC     hl                                  ;7cd2
        DEC     l                                   ;7cd3
        INC     l                                   ;7cd4
        LD      h,e                                 ;7cd5
        LD      h,d                                 ;7cd6
        ADD     a,e                                 ;7cd7
        ADD     a,d                                 ;7cd8
        LD      b,h                                 ;7cd9
        LD      c,l                                 ;7cda
        LD      h,l                                 ;7cdb
        LD      l,c                                 ;7cdc
        LD      hl,(0x302b)                         ;7cdd
        LD      c,d                                 ;7ce0
        DEC     l                                   ;7ce1
        INC     l                                   ;7ce2
        LD      hl,(0x302b)                         ;7ce3
        JR      nc,bD_l7d12h                        ;7ce6
        DEC     hl                                  ;7ce8
        LD      hl,(0x2d2b)                         ;7ce9
        INC     l                                   ;7cec
        DEC     l                                   ;7ced
        INC     l                                   ;7cee
        LD      l,0x2f                              ;7cef
        LD      sp,0x3130                           ;7cf1
        JR      nc,$+44                             ;7cf4
        DEC     hl                                  ;7cf6
        LD      hl,(0x2d2b)                         ;7cf7
        INC     l                                   ;7cfa
        DEC     l                                   ;7cfb
        INC     l                                   ;7cfc
        LD      l,0x2f                              ;7cfd
bD_l7cffh:
        LD      l,0x2f                              ;7cff
        LD      sp,0x3130                           ;7d01
        JR      nc,$+44                             ;7d04
        DEC     hl                                  ;7d06
        JR      nc,bD_l7ccfh                        ;7d07
        JR      nc,bD_l7d38h                        ;7d09
        INC     l                                   ;7d0b
        LD      hl,(0x2e2b)                         ;7d0c
        CPL                                         ;7d0f
        DEC     l                                   ;7d10
        INC     l                                   ;7d11
bD_l7d12h:
        LD      sp,0x3130                           ;7d12
bD_l7d15h:
        JR      nc,bD_l7d44h                        ;7d15
        INC     l                                   ;7d17
        DEC     l                                   ;7d18
        INC     l                                   ;7d19
        DEC     l                                   ;7d1a
        INC     l                                   ;7d1b
        LD      l,0x2f                              ;7d1c
        LD      (0x3633),a                          ;7d1e
        INC     sp                                  ;7d21
        DEC     (hl)                                ;7d22
        INC     (hl)                                ;7d23
        SCF                                         ;7d24
        DEC     (hl)                                ;7d25
        JR      c,$+59                              ;7d26
        ADD     hl,sp                               ;7d28
        LD      a,(0x3c3b)                          ;7d29
        INC     a                                   ;7d2c
        DEC     a                                   ;7d2d
        INC     sp                                  ;7d2e
        LD      (hl),0x33                           ;7d2f
        LD      (0x3735),a                          ;7d31
        DEC     (hl)                                ;7d34
        INC     (hl)                                ;7d35
        JR      c,bD_l7d71h                         ;7d36
bD_l7d38h:
        LD      a,(0x3b30)                          ;7d38
        INC     a                                   ;7d3b
        DEC     a                                   ;7d3c
        JR      nc,bD_l7d72h                        ;7d3d
        LD      (0x3333),a                          ;7d3f
        DEC     (hl)                                ;7d42
        INC     (hl)                                ;7d43
bD_l7d44h:
        DEC     (hl)                                ;7d44
        DEC     (hl)                                ;7d45
        JR      c,bD_l7d81h                         ;7d46
        ADD     hl,sp                               ;7d48
        LD      a,(0x3c3b)                          ;7d49
        INC     a                                   ;7d4c
        DEC     a                                   ;7d4d
        LD      (0x3303),a                          ;7d4e
        SBC     a,l                                 ;7d51
        INC     (hl)                                ;7d52
        DEC     (hl)                                ;7d53
        INC     (hl)                                ;7d54
        DEC     (hl)                                ;7d55
        LD      hl,(0x2a2b)                         ;7d56
        DEC     hl                                  ;7d59
        DEC     l                                   ;7d5a
        INC     l                                   ;7d5b
        LD      l,0x2f                              ;7d5c
        INC     sp                                  ;7d5e
        INC     sp                                  ;7d5f
        LD      (0x3433),a                          ;7d60
        DEC     (hl)                                ;7d63
        INC     (hl)                                ;7d64
        DEC     (hl)                                ;7d65
        LD      h,l                                 ;7d66
        LD      e,(hl)                              ;7d67
        LD      d,(hl)                              ;7d68
        LD      h,l                                 ;7d69
        JR      nc,bD_l7db9h                        ;7d6a
        LD      h,(hl)                              ;7d6c
        JR      nc,$+50                             ;7d6d
        INC     bc                                  ;7d6f
        CCF                                         ;7d70
bD_l7d71h:
        ADD     a,c                                 ;7d71
bD_l7d72h:
        LD      a,d                                 ;7d72
        INC     bc                                  ;7d73
        LD      b,c                                 ;7d74
        ADC     a,b                                 ;7d75
        LD      c,a                                 ;7d76
        LD      e,(hl)                              ;7d77
        LD      c,d                                 ;7d78
        LD      e,(hl)                              ;7d79
        LD      h,(hl)                              ;7d7a
        JR      nc,bD_l7dadh                        ;7d7b
        LD      c,l                                 ;7d7d
        INC     bc                                  ;7d7e
        CCF                                         ;7d7f
        ADD     a,c                                 ;7d80
bD_l7d81h:
        JR      nc,bD_l7d86h                        ;7d81
        LD      b,c                                 ;7d83
        ADD     a,d                                 ;7d84
        ADD     a,b                                 ;7d85
bD_l7d86h:
        LD      a,e                                 ;7d86
        INC     bc                                  ;7d87
        LD      b,c                                 ;7d88
        ADC     a,h                                 ;7d89
        LD      b,e                                 ;7d8a
        LD      c,c                                 ;7d8b
        LD      c,b                                 ;7d8c
        LD      c,b                                 ;7d8d
        LD      b,e                                 ;7d8e
        LD      c,e                                 ;7d8f
        JR      nc,bD_l7dc2h                        ;7d90
        LD      b,e                                 ;7d92
        LD      c,h                                 ;7d93
        JR      nc,bD_l7dc6h                        ;7d94
        INC     bc                                  ;7d96
        LD      b,c                                 ;7d97
        SBC     a,l                                 ;7d98
        ADD     a,c                                 ;7d99
        LD      c,b                                 ;7d9a
        LD      c,c                                 ;7d9b
        LD      c,c                                 ;7d9c
        LD      b,e                                 ;7d9d
        JR      nc,bD_l7debh                        ;7d9e
        LD      c,e                                 ;7da0
        LD      b,e                                 ;7da1
        JR      nc,bD_l7df0h                        ;7da2
        LD      c,h                                 ;7da4
        LD      b,e                                 ;7da5
        LD      e,(hl)                              ;7da6
        LD      a,c                                 ;7da7
        LD      c,(hl)                              ;7da8
        LD      c,(hl)                              ;7da9
        LD      h,(hl)                              ;7daa
        LD      d,b                                 ;7dab
        LD      d,c                                 ;7dac
bD_l7dadh:
        LD      d,c                                 ;7dad
        JR      nc,bD_l7e03h                        ;7dae
        LD      d,h                                 ;7db0
        LD      d,h                                 ;7db1
        LD      a,c                                 ;7db2
        LD      d,a                                 ;7db3
        LD      e,c                                 ;7db4
        LD      e,c                                 ;7db5
        INC     b                                   ;7db6
        LD      c,(hl)                              ;7db7
        INC     b                                   ;7db8
bD_l7db9h:
        LD      d,c                                 ;7db9
        INC     b                                   ;7dba
        LD      d,h                                 ;7dbb
        INC     b                                   ;7dbc
bD_l7dbdh:
        LD      e,c                                 ;7dbd
        LD      (bc),a                              ;7dbe
        LD      c,(hl)                              ;7dbf
        ADC     a,a                                 ;7dc0
        LD      a,a                                 ;7dc1
bD_l7dc2h:
        LD      h,(hl)                              ;7dc2
        LD      d,c                                 ;7dc3
        LD      d,c                                 ;7dc4
        LD      d,d                                 ;7dc5
bD_l7dc6h:
        JR      nc,bD_l7e1ch                        ;7dc6
        LD      d,h                                 ;7dc8
        LD      d,l                                 ;7dc9
        JR      nc,bD_l7e25h                        ;7dca
        LD      e,c                                 ;7dcc
        LD      d,a                                 ;7dcd
        LD      a,a                                 ;7dce
        LD      d,b                                 ;7dcf
        INC     bc                                  ;7dd0
        LD      d,c                                 ;7dd1
        ADD     a,c                                 ;7dd2
        JR      nc,$+5                              ;7dd3
        LD      e,d                                 ;7dd5
        ADD     a,c                                 ;7dd6
        LD      (0x5b03),a                          ;7dd7
        ADD     a,c                                 ;7dda
        INC     (hl)                                ;7ddb
        INC     bc                                  ;7ddc
        LD      e,h                                 ;7ddd
        INC     b                                   ;7dde
        LD      d,c                                 ;7ddf
        INC     c                                   ;7de0
        JR      nc,bD_l7de6h                        ;7de1
        LD      d,c                                 ;7de3
        ADD     a,l                                 ;7de4
        LD      d,d                                 ;7de5
bD_l7de6h:
        LD      e,l                                 ;7de6
        LD      e,d                                 ;7de7
        LD      e,d                                 ;7de8
        JR      nc,bD_l7deeh                        ;7de9
bD_l7debh:
        LD      e,e                                 ;7deb
        ADD     a,c                                 ;7dec
        INC     sp                                  ;7ded
bD_l7deeh:
        INC     bc                                  ;7dee
        LD      e,h                                 ;7def
bD_l7df0h:
        AND     d                                   ;7df0
        DEC     (hl)                                ;7df1
        JR      nc,bD_l7e6dh                        ;7df2
        LD      c,(hl)                              ;7df4
        LD      c,(hl)                              ;7df5
        JR      nc,bD_l7e48h                        ;7df6
        LD      d,c                                 ;7df8
        LD      d,c                                 ;7df9
        JR      nc,bD_l7e4fh                        ;7dfa
        LD      d,h                                 ;7dfc
        LD      d,h                                 ;7dfd
        JR      nc,bD_l7e43h                        ;7dfe
        LD      c,h                                 ;7e00
        LD      c,h                                 ;7e01
        LD      c,(hl)                              ;7e02
bD_l7e03h:
        LD      c,(hl)                              ;7e03
        LD      a,a                                 ;7e04
        JR      nc,bD_l7e58h                        ;7e05
        LD      d,c                                 ;7e07
        LD      d,d                                 ;7e08
        JR      nc,bD_l7e5fh                        ;7e09
        LD      d,h                                 ;7e0b
        LD      d,l                                 ;7e0c
        JR      nc,bD_l7e5bh                        ;7e0d
        LD      c,h                                 ;7e0f
        LD      b,e                                 ;7e10
        JR      nc,bD_l7e63h                        ;7e11
        INC     bc                                  ;7e13
        LD      d,c                                 ;7e14
        ADD     a,c                                 ;7e15
        LD      b,e                                 ;7e16
        INC     bc                                  ;7e17
        LD      e,d                                 ;7e18
        ADD     a,c                                 ;7e19
        LD      b,e                                 ;7e1a
        INC     bc                                  ;7e1b
bD_l7e1ch:
        LD      b,(hl)                              ;7e1c
        ADD     a,c                                 ;7e1d
        LD      b,e                                 ;7e1e
        INC     bc                                  ;7e1f
        LD      b,a                                 ;7e20
        INC     b                                   ;7e21
        LD      d,c                                 ;7e22
        INC     b                                   ;7e23
        LD      c,b                                 ;7e24
bD_l7e25h:
        EX      af,af'                              ;7e25
        JR      nc,bD_l7e2bh                        ;7e26
        LD      d,c                                 ;7e28
        ADD     a,l                                 ;7e29
        LD      d,d                                 ;7e2a
bD_l7e2bh:
        LD      e,l                                 ;7e2b
        LD      e,d                                 ;7e2c
        LD      e,d                                 ;7e2d
        LD      b,e                                 ;7e2e
        INC     bc                                  ;7e2f
        LD      b,(hl)                              ;7e30
        ADD     a,c                                 ;7e31
        LD      b,e                                 ;7e32
        INC     bc                                  ;7e33
bD_l7e34h:
        LD      b,a                                 ;7e34
        ADD     a,c                                 ;7e35
        LD      b,e                                 ;7e36
        DEC     b                                   ;7e37
        DAA                                         ;7e38
        LD      (bc),a                              ;7e39
        JR      z,bD_l7dbdh                         ;7e3a
        ADD     hl,hl                               ;7e3c
bD_l7e3dh:
        EX      af,af'                              ;7e3d
        DAA                                         ;7e3e
        ADD     a,c                                 ;7e3f
        LD      a,e                                 ;7e40
bD_l7e41h:
        INC     bc                                  ;7e41
        LD      b,c                                 ;7e42
bD_l7e43h:
        ADC     a,h                                 ;7e43
        LD      b,e                                 ;7e44
bD_l7e45h:
        LD      b,l                                 ;7e45
        LD      b,l                                 ;7e46
        LD      c,b                                 ;7e47
bD_l7e48h:
        LD      b,e                                 ;7e48
        LD      b,(hl)                              ;7e49
        LD      b,(hl)                              ;7e4a
        JR      nc,bD_l7e90h                        ;7e4b
        LD      b,a                                 ;7e4d
        LD      b,a                                 ;7e4e
bD_l7e4fh:
        JR      nc,bD_l7e54h                        ;7e4f
        LD      b,c                                 ;7e51
        SUB     b                                   ;7e52
        ADD     a,c                                 ;7e53
bD_l7e54h:
        LD      c,b                                 ;7e54
        LD      c,b                                 ;7e55
bD_l7e56h:
        LD      b,l                                 ;7e56
        LD      b,e                                 ;7e57
bD_l7e58h:
        JR      nc,$+50                             ;7e58
        LD      b,(hl)                              ;7e5a
bD_l7e5bh:
        LD      b,e                                 ;7e5b
        JR      nc,$+50                             ;7e5c
        LD      b,a                                 ;7e5e
bD_l7e5fh:
        LD      b,e                                 ;7e5f
        JR      z,$+42                              ;7e60
        ADD     hl,hl                               ;7e62
bD_l7e63h:
        INC     bc                                  ;7e63
        DAA                                         ;7e64
        ADD     a,d                                 ;7e65
        JR      z,bD_l7e91h                         ;7e66
        EX      af,af'                              ;7e68
        DAA                                         ;7e69
        ADC     a,c                                 ;7e6a
        INC     hl                                  ;7e6b
        DEC     h                                   ;7e6c
bD_l7e6dh:
        INC     hl                                  ;7e6d
        JR      nz,$+38                             ;7e6e
        DEC     h                                   ;7e70
        DEC     e                                   ;7e71
bD_l7e72h:
        LD      h,0x20                              ;7e72
        RLCA                                        ;7e74
        LD      h,0x88                              ;7e75
        INC     hl                                  ;7e77
        DEC     h                                   ;7e78
        INC     hl                                  ;7e79
        DEC     h                                   ;7e7a
        LD      h,0x20                              ;7e7b
        DEC     e                                   ;7e7d
        DEC     h                                   ;7e7e
        INC     bc                                  ;7e7f
        LD      h,0x81                              ;7e80
        JR      nz,$+6                              ;7e82
        LD      h,0x8                               ;7e84
        LD      bc,0x1784                           ;7e86
        JR      bD_l7ea2h                           ;7e89
        JR      bD_l7e91h                           ;7e8b
        LD      e,0x8d                              ;7e8d
        LD      c,l                                 ;7e8f
bD_l7e90h:
        LD      h,b                                 ;7e90
bD_l7e91h:
        LD      h,c                                 ;7e91
        LD      h,d                                 ;7e92
        JR      nc,bD_l7efbh                        ;7e93
        LD      h,h                                 ;7e95
        LD      h,l                                 ;7e96
        INC     sp                                  ;7e97
        JR      nc,bD_l7ee7h                        ;7e98
        LD      d,(hl)                              ;7e9a
        DEC     (hl)                                ;7e9b
        INC     bc                                  ;7e9c
        JR      nc,bD_l7ea3h                        ;7e9d
        LD      c,(hl)                              ;7e9f
        INC     b                                   ;7ea0
        LD      d,c                                 ;7ea1
bD_l7ea2h:
        INC     b                                   ;7ea2
bD_l7ea3h:
        LD      d,h                                 ;7ea3
        INC     b                                   ;7ea4
        LD      c,h                                 ;7ea5
        DEC     b                                   ;7ea6
        JR      nc,bD_l7e34h                        ;7ea7
        NOP                                         ;7ea9
        LD      hl,(0x2a2b)                         ;7eaa
        DEC     hl                                  ;7ead
        DEC     l                                   ;7eae
        INC     l                                   ;7eaf
        DEC     l                                   ;7eb0
        INC     l                                   ;7eb1
        LD      l,0x2f                              ;7eb2
        LD      a,(bc)                              ;7eb4
        JR      nc,bD_l7e3dh                        ;7eb5
        INC     sp                                  ;7eb7
        LD      (0x3330),a                          ;7eb8
bD_l7ebbh:
        INC     (hl)                                ;7ebb
        INC     (hl)                                ;7ebc
        EX      af,af'                              ;7ebd
        JR      nc,bD_l7e41h                        ;7ebe
        INC     sp                                  ;7ec0
        INC     bc                                  ;7ec1
        JR      nc,bD_l7e45h                        ;7ec2
        DEC     (hl)                                ;7ec4
        INC     bc                                  ;7ec5
        JR      nc,bD_l7e56h                        ;7ec6
        LD      h,0x6                               ;7ec8
        LD      bc,0x2601                           ;7eca
        RLCA                                        ;7ecd
        LD      bc,0x2601                           ;7ece
        LD      c,0x1                               ;7ed1
        LD      bc,0x726                            ;7ed3
        DEC     b                                   ;7ed6
        LD      bc,0xf81                            ;7ed7
        INC     bc                                  ;7eda
        LD      bc,0x2289                           ;7edb
        LD      bc,0xd01                            ;7ede
        LD      (0x101),hl                          ;7ee1
        DEC     c                                   ;7ee4
        ADD     hl,de                               ;7ee5
        NOP                                         ;7ee6
bD_l7ee7h:
        DJNZ    bD_l7eeah                           ;7ee7
        LD      (bc),a                              ;7ee9
bD_l7eeah:
        JR      nc,bD_l7e72h                        ;7eea
        LD      h,(hl)                              ;7eec
        INC     h                                   ;7eed
        LD      c,(hl)                              ;7eee
        LD      h,a                                 ;7eef
        LD      l,b                                 ;7ef0
        DEC     h                                   ;7ef1
        INC     b                                   ;7ef2
        INC     h                                   ;7ef3
        INC     b                                   ;7ef4
        DEC     h                                   ;7ef5
        INC     b                                   ;7ef6
        INC     h                                   ;7ef7
        INC     b                                   ;7ef8
        DEC     h                                   ;7ef9
        INC     b                                   ;7efa
bD_l7efbh:
        INC     h                                   ;7efb
        INC     b                                   ;7efc
        DEC     h                                   ;7efd
        ADC     a,b                                 ;7efe
        INC     h                                   ;7eff
        ADD     a,a                                 ;7f00
        JR      nc,bD_l7f33h                        ;7f01
        DEC     h                                   ;7f03
        ADC     a,c                                 ;7f04
        ADC     a,b                                 ;7f05
        LD      c,a                                 ;7f06
        INC     b                                   ;7f07
        INC     h                                   ;7f08
        INC     b                                   ;7f09
        DEC     h                                   ;7f0a
        LD      (bc),a                              ;7f0b
        JR      nc,$-120                            ;7f0c
        LD      c,(hl)                              ;7f0e
        LD      c,a                                 ;7f0f
        LD      c,(hl)                              ;7f10
        LD      c,a                                 ;7f11
        LD      d,b                                 ;7f12
        LD      d,c                                 ;7f13
        INC     b                                   ;7f14
        INC     h                                   ;7f15
        INC     b                                   ;7f16
        DEC     h                                   ;7f17
        ADC     a,b                                 ;7f18
        LD      b,(hl)                              ;7f19
        LD      b,a                                 ;7f1a
        JR      nc,bD_l7f4dh                        ;7f1b
        LD      c,b                                 ;7f1d
        LD      c,c                                 ;7f1e
        LD      c,(hl)                              ;7f1f
        LD      c,a                                 ;7f20
        INC     b                                   ;7f21
        INC     h                                   ;7f22
        INC     b                                   ;7f23
        DEC     h                                   ;7f24
        ADC     a,b                                 ;7f25
        LD      c,(hl)                              ;7f26
        LD      c,a                                 ;7f27
        JR      nc,bD_l7f5ah                        ;7f28
        LD      d,b                                 ;7f2a
        LD      d,c                                 ;7f2b
        LD      c,(hl)                              ;7f2c
        LD      c,a                                 ;7f2d
        INC     b                                   ;7f2e
        INC     h                                   ;7f2f
        INC     b                                   ;7f30
        DEC     h                                   ;7f31
        LD      (bc),a                              ;7f32
bD_l7f33h:
        JR      nc,bD_l7ebbh                        ;7f33
        INC     (hl)                                ;7f35
        DEC     (hl)                                ;7f36
        LD      c,(hl)                              ;7f37
        LD      c,a                                 ;7f38
        LD      (hl),0x37                           ;7f39
        INC     b                                   ;7f3b
        INC     h                                   ;7f3c
        INC     b                                   ;7f3d
        DEC     h                                   ;7f3e
        ADD     a,h                                 ;7f3f
        CPL                                         ;7f40
        ADD     hl,hl                               ;7f41
        CPL                                         ;7f42
        ADD     hl,hl                               ;7f43
        INC     b                                   ;7f44
        LD      hl,(0x3b8c)                         ;7f45
        INC     a                                   ;7f48
        DEC     a                                   ;7f49
        LD      a,0x3f                              ;7f4a
        LD      b,b                                 ;7f4c
bD_l7f4dh:
        LD      b,c                                 ;7f4d
        LD      b,d                                 ;7f4e
        ADD     hl,hl                               ;7f4f
        CPL                                         ;7f50
        CPL                                         ;7f51
        ADD     hl,hl                               ;7f52
        INC     b                                   ;7f53
        LD      hl,(0x3b88)                         ;7f54
        INC     a                                   ;7f57
        DEC     a                                   ;7f58
        LD      (hl),b                              ;7f59
bD_l7f5ah:
        CCF                                         ;7f5a
        LD      b,b                                 ;7f5b
        LD      (hl),c                              ;7f5c
        LD      (hl),d                              ;7f5d
        INC     b                                   ;7f5e
        LD      c,d                                 ;7f5f
        INC     b                                   ;7f60
        LD      c,e                                 ;7f61
        INC     b                                   ;7f62
        LD      c,h                                 ;7f63
        INC     b                                   ;7f64
        LD      c,l                                 ;7f65
        ADD     a,h                                 ;7f66
        ADD     hl,hl                               ;7f67
        CPL                                         ;7f68
        CPL                                         ;7f69
        ADD     hl,hl                               ;7f6a
        INC     b                                   ;7f6b
        LD      hl,(0x91a8)                         ;7f6c
        INC     a                                   ;7f6f
        DEC     a                                   ;7f70
        LD      a,0x93                              ;7f71
        SUB     d                                   ;7f73
        LD      b,c                                 ;7f74
        LD      b,d                                 ;7f75
        CPL                                         ;7f76
        LD      (0x292f),a                          ;7f77
        LD      hl,(0x2a33)                         ;7f7a
        LD      hl,(0x3c3b)                         ;7f7d
        DEC     a                                   ;7f80
        LD      a,0x3f                              ;7f81
        LD      b,b                                 ;7f83
        LD      b,c                                 ;7f84
        LD      b,d                                 ;7f85
        DEC     sp                                  ;7f86
        INC     a                                   ;7f87
        LD      (hl),b                              ;7f88
        LD      (hl),h                              ;7f89
        DJNZ    $+119                               ;7f8a
        HALT                                        ;7f8c
        LD      (hl),a                              ;7f8d
        RRCA                                        ;7f8e
        LD      a,b                                 ;7f8f
        LD      a,c                                 ;7f90
        DEC     c                                   ;7f91
        RRCA                                        ;7f92
        LD      a,b                                 ;7f93
        LD      a,d                                 ;7f94
        LD      c,0x4                               ;7f95
        INC     c                                   ;7f97
        EX      af,af'                              ;7f98
        DEC     c                                   ;7f99
        INC     b                                   ;7f9a
        LD      c,0x8f                              ;7f9b
        SUB     l                                   ;7f9d
        SUB     c                                   ;7f9e
        DEC     a                                   ;7f9f
        LD      a,0x98                              ;7fa0
        SUB     a                                   ;7fa2
        SUB     (hl)                                ;7fa3
        LD      de,0x9a0d                           ;7fa4
        SBC     a,c                                 ;7fa7
        RRCA                                        ;7fa8
        LD      c,0x9b                              ;7fa9
        SBC     a,c                                 ;7fab
        LD      de,0x880f                           ;7fac
        JR      bD_l7fcah                           ;7faf
        JR      bD_l7fcch                           ;7fb1
        LD      a,(de)                              ;7fb3
        DEC     de                                  ;7fb4
        LD      a,(de)                              ;7fb5
        DEC     de                                  ;7fb6
        EX      af,af'                              ;7fb7
        RRCA                                        ;7fb8
        ADC     a,b                                 ;7fb9
        DEC     sp                                  ;7fba
        INC     a                                   ;7fbb
        DEC     a                                   ;7fbc
        LD      a,0x10                              ;7fbd
        LD      e,0x10                              ;7fbf
        LD      de,0xf08                            ;7fc1
        ADD     a,h                                 ;7fc4
        DEC     hl                                  ;7fc5
        LD      sp,0x2b31                           ;7fc6
        INC     b                                   ;7fc9
