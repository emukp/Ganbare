        DEFB    0xed                                ;9d01
        DEC     sp                                  ;9d02
        OR      d                                   ;9d03
        LD      (hl),0x70                           ;9d04
        LD      a,b                                 ;9d06
        INC     de                                  ;9d07
        INC     hl                                  ;9d08
        RET     po                                  ;9d09
        DEC     d                                   ;9d0a
        EX      de,hl                               ;9d0b
        OR      c                                   ;9d0c
        LD      c,(hl)                              ;9d0d
        ADC     a,c                                 ;9d0e
        RET     pe                                  ;9d0f
        LD      e,0x10                              ;9d10
        LD      a,(hl)                              ;9d12
        LD      h,a                                 ;9d13
        LD      h,a                                 ;9d14
        ADC     a,c                                 ;9d15
        RST     DCOMPR                              ;9d16
        RET     pe                                  ;9d17
        SUB     b                                   ;9d18
        RET     pe                                  ;9d19
        DJNZ    bE_l9cfah                           ;9d1a
        SBC     a,b                                 ;9d1c
        ADC     a,c                                 ;9d1d
        DEFB    0xed                                ;9d1e
        XOR     h                                   ;9d1f
        LD      a,b                                 ;9d20
        LD      a,c                                 ;9d21
        LD      (de),a                              ;9d22
        LD      d,h                                 ;9d23
        JR      nz,$+123                            ;9d24
        ADD     a,c                                 ;9d26
        LD      d,d                                 ;9d27
        XOR     h                                   ;9d28
        CP      l                                   ;9d29
        AND     (hl)                                ;9d2a
        SBC     a,b                                 ;9d2b
        LD      b,e                                 ;9d2c
        SUB     d                                   ;9d2d
        ADD     a,a                                 ;9d2e
        RRCA                                        ;9d2f
        SBC     a,d                                 ;9d30
        AND     (hl)                                ;9d31
bE_l9d32h:
        INC     b                                   ;9d32
        DJNZ    bE_l9cb9h                           ;9d33
        JR      c,$-84                              ;9d35
        AND     b                                   ;9d37
        SBC     a,e                                 ;9d38
        CALL    0x4098                              ;9d39
        LD      d,h                                 ;9d3c
        ADD     hl,bc                               ;9d3d
        AND     (hl)                                ;9d3e
bE_l9d3fh:
        CP      l                                   ;9d3f
        RST     GETYPR                              ;9d40
        JP      (hl)                                ;9d41
        LD      b,(hl)                              ;9d42
        LD      b,(hl)                              ;9d43
        ADC     a,d                                 ;9d44
        LD      h,h                                 ;9d45
        LD      e,d                                 ;9d46
        LD      a,(bc)                              ;9d47
        ADD     a,h                                 ;9d48
        LD      b,0x4b                              ;9d49
        DEC     b                                   ;9d4b
        SUB     b                                   ;9d4c
        LD      h,0x36                              ;9d4d
        DEC     b                                   ;9d4f
        SBC     a,0x57                              ;9d50
        LD      l,b                                 ;9d52
        LD      b,0x9a                              ;9d53
        LD      l,e                                 ;9d55
        LD      e,h                                 ;9d56
        LD      bc,bE_l8967h                        ;9d57
        XOR     e                                   ;9d5a
        AND     (hl)                                ;9d5b
        LD      (hl),b                              ;9d5c
        LD      (de),a                              ;9d5d
        NOP                                         ;9d5e
        XOR     e                                   ;9d5f
        LD      h,a                                 ;9d60
        INC     hl                                  ;9d61
        LD      b,l                                 ;9d62
        LD      h,l                                 ;9d63
        LD      bc,0x2314                           ;9d64
        LD      bc,SetBanks4_5_6                    ;9d67
        LD      bc,0x7667                           ;9d6a
        LD      bc,0xbcbc                           ;9d6d
        LD      a,(de)                              ;9d70
        LD      d,(hl)                              ;9d71
        LD      b,a                                 ;9d72
        DAA                                         ;9d73
        AND     h                                   ;9d74
        DJNZ    bE_l9d3fh                           ;9d75
        DEC     de                                  ;9d77
        INC     de                                  ;9d78
        LD      a,(de)                              ;9d79
        OR      b                                   ;9d7a
        JR      bE_l9de8h                           ;9d7b
        LD      hl,0xa162                           ;9d7d
        ADD     a,c                                 ;9d80
        LD      a,c                                 ;9d81
        AND     (hl)                                ;9d82
        DEC     de                                  ;9d83
        ADD     a,a                                 ;9d84
        DJNZ    bE_l9d32h                           ;9d85
        LD      a,d                                 ;9d87
        SBC     a,h                                 ;9d88
        NOP                                         ;9d89
        INC     (hl)                                ;9d8a
        AND     d                                   ;9d8b
        LD      e,0xeb                              ;9d8c
        LD      a,l                                 ;9d8e
        LD      a,(de)                              ;9d8f
        AND     c                                   ;9d90
        ADC     a,0xde                              ;9d91
        JP      z,0x1dc                             ;9d93
        DJNZ    bE_l9d99h                           ;9d96
        XOR     e                                   ;9d98
bE_l9d99h:
        SBC     a,b                                 ;9d99
        ADC     a,c                                 ;9d9a
bE_l9d9bh:
        XOR     e                                   ;9d9b
        LD      b,e                                 ;9d9c
        INC     h                                   ;9d9d
        SBC     a,0xed                              ;9d9e
        LD      d,(hl)                              ;9da0
        ADC     a,c                                 ;9da1
        AND     a                                   ;9da2
        LD      c,b                                 ;9da3
        LD      h,d                                 ;9da4
        LD      b,b                                 ;9da5
        ADD     hl,sp                               ;9da6
        LD      b,h                                 ;9da7
        ADD     hl,bc                               ;9da8
        LD      b,h                                 ;9da9
        SBC     a,a                                 ;9daa
        LD      a,(0x60a5)                          ;9dab
        LD      (bc),a                              ;9dae
        JR      nz,$+61                             ;9daf
        LD      hl,(0x6946)                         ;9db1
        LD      (bc),a                              ;9db4
        ADD     a,b                                 ;9db5
        DEC     hl                                  ;9db6
        LD      a,b                                 ;9db7
        SBC     a,c                                 ;9db8
        LD      a,d                                 ;9db9
        LD      b,(hl)                              ;9dba
        LD      d,h                                 ;9dbb
        INC     hl                                  ;9dbc
        LD      b,e                                 ;9dbd
        LD      h,l                                 ;9dbe
        CP      h                                   ;9dbf
        LD      bc,0x1bc                            ;9dc0
        LD      d,h                                 ;9dc3
        DEFB    0xed                                ;9dc4
        SBC     a,0x5a                              ;9dc5
        CP      d                                   ;9dc7
        CALL    0x6945                              ;9dc8
        ADD     a,h                                 ;9dcb
        LD      b,e                                 ;9dcc
        LD      hl,0x468b                           ;9dcd
        SUB     a                                   ;9dd0
        LD      (bc),a                              ;9dd1
        LD      l,(hl)                              ;9dd2
        ADD     a,a                                 ;9dd3
        SBC     a,d                                 ;9dd4
        LD      h,a                                 ;9dd5
        CP      d                                   ;9dd6
        OR      (hl)                                ;9dd7
        LD      (hl),a                              ;9dd8
        XOR     e                                   ;9dd9
        HALT                                        ;9dda
        AND     a                                   ;9ddb
        RLA                                         ;9ddc
        AND     b                                   ;9ddd
        AND     (hl)                                ;9dde
        LD      a,e                                 ;9ddf
        XOR     c                                   ;9de0
        LD      l,c                                 ;9de1
        ADC     a,c                                 ;9de2
        LD      h,a                                 ;9de3
        XOR     e                                   ;9de4
        LD      h,(hl)                              ;9de5
        XOR     b                                   ;9de6
        SBC     a,b                                 ;9de7
bE_l9de8h:
        LD      b,b                                 ;9de8
        LD      h,a                                 ;9de9
        LD      bc,0xa6ab                           ;9dea
        HALT                                        ;9ded
        DJNZ    bE_l9d9bh                           ;9dee
        POP     bc                                  ;9df0
        LD      (0x4423),a                          ;9df1
        LD      bc,0xba2a                           ;9df4
        ADD     hl,sp                               ;9df7
        XOR     h                                   ;9df8
        CP      d                                   ;9df9
        XOR     e                                   ;9dfa
        XOR     h                                   ;9dfb
        LD      b,l                                 ;9dfc
        HALT                                        ;9dfd
        ADC     a,c                                 ;9dfe
        XOR     e                                   ;9dff
        RET     z                                   ;9e00
        SBC     a,b                                 ;9e01
        LD      h,a                                 ;9e02
        XOR     e                                   ;9e03
        XOR     d                                   ;9e04
        LD      a,h                                 ;9e05
        LD      bc,0x620                            ;9e06
        LD      bc,bE_l8967h                        ;9e09
        INC     hl                                  ;9e0c
        LD      h,h                                 ;9e0d
        LD      a,(bc)                              ;9e0e
        DEC     d                                   ;9e0f
        XOR     e                                   ;9e10
        JP      z,0x5210                            ;9e11
        DEFB    0xed                                ;9e14
        DEFB    0xed                                ;9e15
        LD      d,h                                 ;9e16
        SBC     a,b                                 ;9e17
        XOR     h                                   ;9e18
        CP      l                                   ;9e19
        LD      bc,0x5440                           ;9e1a
        LD      hl,0x2a01                           ;9e1d
        LD      b,l                                 ;9e20
        AND     h                                   ;9e21
        LD      (0x1316),a                          ;9e22
        INC     hl                                  ;9e25
        LD      de,0xa40a                           ;9e26
        LD      e,d                                 ;9e29
        LD      c,b                                 ;9e2a
        LD      a,c                                 ;9e2b
        LD      a,(bc)                              ;9e2c
        AND     d                                   ;9e2d
        LD      a,e                                 ;9e2e
        OR      c                                   ;9e2f
        INC     hl                                  ;9e30
        NOP                                         ;9e31
        JR      z,bE_l9e34h                         ;9e32
bE_l9e34h:
        SBC     a,b                                 ;9e34
        OR      d                                   ;9e35
        ADD     a,a                                 ;9e36
        LD      b,e                                 ;9e37
        LD      hl,0x7705                           ;9e38
        LD      h,l                                 ;9e3b
        CP      d                                   ;9e3c
        CP      c                                   ;9e3d
        LD      h,h                                 ;9e3e
        SBC     a,d                                 ;9e3f
        INC     de                                  ;9e40
        LD      h,h                                 ;9e41
        LD      (hl),h                              ;9e42
        LD      (de),a                              ;9e43
        LD      h,a                                 ;9e44
        LD      (de),a                              ;9e45
        DAA                                         ;9e46
        LD      b,0x7                               ;9e47
        LD      b,0x65                              ;9e49
        RLCA                                        ;9e4b
        DEC     d                                   ;9e4c
        LD      bc,0x7626                           ;9e4d
        LD      bc,0x3427                           ;9e50
        LD      b,0xb                               ;9e53
bE_l9e55h:
        ADC     a,c                                 ;9e55
        LD      d,(hl)                              ;9e56
        SBC     a,d                                 ;9e57
        LD      bc,0xb2b                            ;9e58
        JR      nc,bE_l9e8fh                        ;9e5b
        XOR     d                                   ;9e5d
        RES     1,c                                 ;9e5e
        LD      (hl),h                              ;9e60
        LD      (0x6754),a                          ;9e61
        LD      (de),a                              ;9e64
        LD      (hl),0x79                           ;9e65
        ADC     a,c                                 ;9e67
        ADC     a,c                                 ;9e68
        RES     7,h                                 ;9e69
        INC     hl                                  ;9e6b
bE_l9e6ch:
        RLCA                                        ;9e6c
        ADD     a,e                                 ;9e6d
        LD      a,(0xcc2a)                          ;9e6e
        LD      bc,0x6847                           ;9e71
        ADC     a,c                                 ;9e74
        SUB     b                                   ;9e75
        INC     h                                   ;9e76
        OR      b                                   ;9e77
        JR      nz,bE_l9e7ch                        ;9e78
        LD      b,b                                 ;9e7a
        LD      c,c                                 ;9e7b
bE_l9e7ch:
        LD      (hl),c                              ;9e7c
        LD      b,l                                 ;9e7d
        RLA                                         ;9e7e
        LD      e,c                                 ;9e7f
        LD      b,a                                 ;9e80
        CP      0x59                                ;9e81
bE_l9e83h:
        JP      pe,0xf6ee                           ;9e83
        SBC     a,b                                 ;9e86
        LD      b,l                                 ;9e87
        LD      sp,0x6702                           ;9e88
        ADC     a,c                                 ;9e8b
        LD      d,c                                 ;9e8c
        LD      (bc),a                              ;9e8d
        RST     GETYPR                              ;9e8e
bE_l9e8fh:
        SBC     a,0xe9                              ;9e8f
        CALL    m,0x54e                             ;9e91
        RLA                                         ;9e94
        LD      d,(hl)                              ;9e95
        LD      (de),a                              ;9e96
        LD      sp,0xe169                           ;9e97
        SBC     hl,de                               ;9e9a
        INC     de                                  ;9e9c
        LD      c,c                                 ;9e9d
        JR      nz,$+24                             ;9e9e
        LD      (de),a                              ;9ea0
        ADC     a,c                                 ;9ea1
        LD      l,d                                 ;9ea2
        RLCA                                        ;9ea3
        LD      (hl),b                              ;9ea4
        LD      (0x260),hl                          ;9ea5
        JR      nc,bE_l9e55h                        ;9ea8
        LD      h,b                                 ;9eaa
bE_l9eabh:
        POP     hl                                  ;9eab
        LD      (bc),a                              ;9eac
        ADD     hl,sp                               ;9ead
        LD      h,c                                 ;9eae
        XOR     h                                   ;9eaf
        CP      0x61                                ;9eb0
        SUB     b                                   ;9eb2
        PUSH    hl                                  ;9eb3
        LD      b,l                                 ;9eb4
        LD      bc,0xdbef                           ;9eb5
        LD      b,(hl)                              ;9eb8
        ADD     a,a                                 ;9eb9
        AND     d                                   ;9eba
        OR      (hl)                                ;9ebb
        LD      hl,(0xa792)                         ;9ebc
        INC     hl                                  ;9ebf
        LD      (bc),a                              ;9ec0
        LD      (de),a                              ;9ec1
        INC     hl                                  ;9ec2
        INC     h                                   ;9ec3
        XOR     e                                   ;9ec4
        CP      d                                   ;9ec5
        LD      a,(de)                              ;9ec6
        ADD     a,c                                 ;9ec7
        OR      c                                   ;9ec8
        LD      b,e                                 ;9ec9
        ADC     a,c                                 ;9eca
        SBC     a,b                                 ;9ecb
        ADC     a,c                                 ;9ecc
        XOR     e                                   ;9ecd
        LD      bc,0x6620                           ;9ece
        LD      a,c                                 ;9ed1
        AND     b                                   ;9ed2
        LD      b,l                                 ;9ed3
        CP      h                                   ;9ed4
        AND     b                                   ;9ed5
        LD      d,0x32                              ;9ed6
        DJNZ    bE_l9f13h                           ;9ed8
        XOR     e                                   ;9eda
        DJNZ    $-86                                ;9edb
        LD      bc,0x2102                           ;9edd
        NOP                                         ;9ee0
        DJNZ    bE_l9e6ch                           ;9ee1
        ADC     a,c                                 ;9ee3
        XOR     e                                   ;9ee4
        RES     5,e                                 ;9ee5
        AND     b                                   ;9ee7
        LD      (de),a                              ;9ee8
        JR      c,bE_l9e83h                         ;9ee9
        LD      h,(hl)                              ;9eeb
        LD      (hl),b                              ;9eec
        LD      de,0x2123                           ;9eed
        LD      b,0x32                              ;9ef0
        XOR     d                                   ;9ef2
        ADD     a,l                                 ;9ef3
        LD      l,b                                 ;9ef4
        SBC     a,d                                 ;9ef5
        LD      c,e                                 ;9ef6
        LD      bc,bE_l8409h                        ;9ef7
        DEC     b                                   ;9efa
        AND     a                                   ;9efb
        JR      z,bE_l9f03h                         ;9efc
        LD      c,b                                 ;9efe
        SBC     a,d                                 ;9eff
        CP      h                                   ;9f00
        LD      c,c                                 ;9f01
        LD      l,c                                 ;9f02
bE_l9f03h:
        LD      (0x1164),a                          ;9f03
        LD      b,c                                 ;9f06
        JR      nz,bE_l9eabh                        ;9f07
        ADC     a,c                                 ;9f09
        OR      c                                   ;9f0a
        ADD     a,a                                 ;9f0b
        ADD     a,l                                 ;9f0c
        JR      nz,$-110                            ;9f0d
        DEC     bc                                  ;9f0f
        LD      bc,0xcdbb                           ;9f10
bE_l9f13h:
        EX      (sp),hl                             ;9f13
        SUB     h                                   ;9f14
        SBC     a,0x1                               ;9f15
        LD      d,h                                 ;9f17
        RET     po                                  ;9f18
        LD      (hl),d                              ;9f19
        ADD     a,e                                 ;9f1a
        SUB     h                                   ;9f1b
        AND     l                                   ;9f1c
        AND     (hl)                                ;9f1d
        LD      h,l                                 ;9f1e
        LD      b,c                                 ;9f1f
        EX      af,af'                              ;9f20
        LD      bc,0x4523                           ;9f21
        LD      b,d                                 ;9f24
        SUB     (hl)                                ;9f25
        LD      a,b                                 ;9f26
        PUSH    hl                                  ;9f27
        PUSH    de                                  ;9f28
        LD      c,c                                 ;9f29
        LD      (hl),0x10                           ;9f2a
        SUB     0x39                                ;9f2c
        INC     h                                   ;9f2e
        LD      bc,0x7601                           ;9f2f
        SBC     a,b                                 ;9f32
        LD      h,b                                 ;9f33
        LD      (de),a                              ;9f34
        LD      b,l                                 ;9f35
        LD      b,(hl)                              ;9f36
        LD      (de),a                              ;9f37
        LD      a,(bc)                              ;9f38
        CP      d                                   ;9f39
        LD      hl,0x6702                           ;9f3a
        HALT                                        ;9f3d
        LD      hl,0x6700                           ;9f3e
        INC     bc                                  ;9f41
        LD      b,l                                 ;9f42
        AND     b                                   ;9f43
        LD      d,0x23                              ;9f44
        DJNZ    bE_l9f5ah                           ;9f46
        LD      bc,bE_l8789h                        ;9f48
        RLCA                                        ;9f4b
        LD      h,l                                 ;9f4c
        LD      h,a                                 ;9f4d
        LD      a,(de)                              ;9f4e
        LD      l,d                                 ;9f4f
        CP      e                                   ;9f50
        INC     hl                                  ;9f51
        XOR     e                                   ;9f52
        LD      (hl),0x7b                           ;9f53
        LD      d,(hl)                              ;9f55
        AND     d                                   ;9f56
        LD      b,0xab                              ;9f57
        ADC     a,c                                 ;9f59
bE_l9f5ah:
        SBC     a,b                                 ;9f5a
        OR      d                                   ;9f5b
        ADC     a,c                                 ;9f5c
bE_l9f5dh:
        ADD     a,b                                 ;9f5d
        HALT                                        ;9f5e
        ADC     a,c                                 ;9f5f
        INC     hl                                  ;9f60
        ADC     a,c                                 ;9f61
        LD      b,d                                 ;9f62
        INC     hl                                  ;9f63
        LD      (bE_l9888h),a                       ;9f64
        LD      h,a                                 ;9f67
        ADC     a,c                                 ;9f68
        XOR     e                                   ;9f69
        LD      (bc),a                              ;9f6a
        CP      e                                   ;9f6b
        RLC     c                                   ;9f6c
        INC     hl                                  ;9f6e
        ADC     a,c                                 ;9f6f
        LD      (0x1050),a                          ;9f70
        LD      bc,0xd0ee                           ;9f73
        DEC     b                                   ;9f76
        NOP                                         ;9f77
        ADD     a,c                                 ;9f78
        INC     bc                                  ;9f79
        INC     b                                   ;9f7a
        RLCA                                        ;9f7b
        ADD     a,c                                 ;9f7c
        INC     bc                                  ;9f7d
        LD      a,(bc)                              ;9f7e
        NOP                                         ;9f7f
        ADD     a,c                                 ;9f80
        RET     nz                                  ;9f81
        INC     b                                   ;9f82
        RET     po                                  ;9f83
        ADD     a,c                                 ;9f84
        RET     nz                                  ;9f85
        DJNZ    bE_l9f88h                           ;9f86
bE_l9f88h:
        ADC     a,d                                 ;9f88
        JR      bE_l9fc7h                           ;9f89
        INC     a                                   ;9f8b
        JR      bE_l9f8eh                           ;9f8c
bE_l9f8eh:
        NOP                                         ;9f8e
        JR      $+62                                ;9f8f
        INC     a                                   ;9f91
        JR      $+19                                ;9f92
        NOP                                         ;9f94
        SUB     h                                   ;9f95
        LD      bc,0x303                            ;9f96
        LD      bc,0x1800                           ;9f99
        INC     a                                   ;9f9c
        INC     a                                   ;9f9d
        JR      bE_l9fa0h                           ;9f9e
bE_l9fa0h:
        NOP                                         ;9fa0
        JR      bE_l9fdfh                           ;9fa1
        INC     a                                   ;9fa3
        JR      bE_l9fa6h                           ;9fa4
bE_l9fa6h:
        ADD     a,b                                 ;9fa6
        RET     nz                                  ;9fa7
        RET     nz                                  ;9fa8
        ADD     a,b                                 ;9fa9
        EX      af,af'                              ;9faa
        NOP                                         ;9fab
        ADD     a,h                                 ;9fac
        JR      $+62                                ;9fad
        INC     a                                   ;9faf
        JR      bE_l9fb6h                           ;9fb0
        NOP                                         ;9fb2
        ADD     a,h                                 ;9fb3
        JR      $+62                                ;9fb4
bE_l9fb6h:
        INC     a                                   ;9fb6
        JR      bE_l9fbdh                           ;9fb7
        NOP                                         ;9fb9
        ADD     a,h                                 ;9fba
        JR      bE_l9ff9h                           ;9fbb
bE_l9fbdh:
        INC     a                                   ;9fbd
        JR      bE_l9fc4h                           ;9fbe
        NOP                                         ;9fc0
        ADD     a,h                                 ;9fc1
        JR      $+62                                ;9fc2
bE_l9fc4h:
        INC     a                                   ;9fc4
        JR      bE_l9fcbh                           ;9fc5
bE_l9fc7h:
        NOP                                         ;9fc7
        ADC     a,h                                 ;9fc8
        JR      $+62                                ;9fc9
bE_l9fcbh:
        INC     a                                   ;9fcb
        JR      bE_l9fcfh                           ;9fcc
        INC     bc                                  ;9fce
bE_l9fcfh:
        INC     bc                                  ;9fcf
        LD      bc,0x3c18                           ;9fd0
        INC     a                                   ;9fd3
        JR      bE_l9fdah                           ;9fd4
        NOP                                         ;9fd6
        ADC     a,h                                 ;9fd7
        JR      $+62                                ;9fd8
bE_l9fdah:
        INC     a                                   ;9fda
        JR      bE_l9f5dh                           ;9fdb
        RET     nz                                  ;9fdd
        RET     nz                                  ;9fde
bE_l9fdfh:
        ADD     a,b                                 ;9fdf
        JR      $+62                                ;9fe0
        INC     a                                   ;9fe2
        JR      $+5                                 ;9fe3
        NOP                                         ;9fe5
        AND     b                                   ;9fe6
        JR      $+62                                ;9fe7
        INC     a                                   ;9fe9
        JR      bE_l9fech                           ;9fea
bE_l9fech:
        JR      $+62                                ;9fec
        INC     a                                   ;9fee
        JR      bE_l9ff1h                           ;9fef
bE_l9ff1h:
        JR      $+62                                ;9ff1
        INC     a                                   ;9ff3
        JR      bE_l9ff6h                           ;9ff4
bE_l9ff6h:
        NOP                                         ;9ff6
        JR      $+62                                ;9ff7
bE_l9ff9h:
        INC     a                                   ;9ff9
        JR      bE_l9ffch                           ;9ffa
bE_l9ffch:
        JR      $+62                                ;9ffc
        INC     a                                   ;9ffe
        DEFB    0x18                                ;9fff
