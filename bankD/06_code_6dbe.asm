bD_l6dbeh:
        JR      bD_l6dech                           ;6dbe
        LD      (0x2221),hl                         ;6dc0
bD_l6dc3h:
        LD      hl,0x2122                           ;6dc3
        DEC     hl                                  ;6dc6
        JR      bD_l6dd6h                           ;6dc7
        ADC     a,e                                 ;6dc9
        DAA                                         ;6dca
        LD      c,d                                 ;6dcb
        DAA                                         ;6dcc
        LD      c,d                                 ;6dcd
        DAA                                         ;6dce
        LD      c,d                                 ;6dcf
        DAA                                         ;6dd0
        LD      c,d                                 ;6dd1
        SCF                                         ;6dd2
        SCF                                         ;6dd3
        RLA                                         ;6dd4
        INC     b                                   ;6dd5
bD_l6dd6h:
        ADD     hl,de                               ;6dd6
        ADC     a,c                                 ;6dd7
        JR      bD_l6e1fh                           ;6dd8
        LD      b,l                                 ;6dda
bD_l6ddbh:
        INC     l                                   ;6ddb
        LD      c,0xf                               ;6ddc
bD_l6ddeh:
        LD      c,0xf                               ;6dde
        DEC     hl                                  ;6de0
        JR      bD_l6df0h                           ;6de1
        SBC     a,b                                 ;6de3
        DAA                                         ;6de4
        LD      c,d                                 ;6de5
        DAA                                         ;6de6
        LD      c,d                                 ;6de7
        DAA                                         ;6de8
        LD      c,d                                 ;6de9
        DAA                                         ;6dea
        LD      c,d                                 ;6deb
bD_l6dech:
        RLA                                         ;6dec
        SCF                                         ;6ded
        SCF                                         ;6dee
        RLA                                         ;6def
bD_l6df0h:
        SCF                                         ;6df0
        SCF                                         ;6df1
        RLA                                         ;6df2
        SCF                                         ;6df3
        INC     l                                   ;6df4
        LD      b,l                                 ;6df5
bD_l6df6h:
        LD      b,l                                 ;6df6
        INC     l                                   ;6df7
        LD      b,l                                 ;6df8
        LD      b,l                                 ;6df9
        INC     l                                   ;6dfa
        LD      b,l                                 ;6dfb
        JR      $+15                                ;6dfc
        SBC     a,b                                 ;6dfe
        DAA                                         ;6dff
        LD      c,d                                 ;6e00
        DAA                                         ;6e01
        LD      c,d                                 ;6e02
        DAA                                         ;6e03
        LD      c,d                                 ;6e04
        DAA                                         ;6e05
        LD      c,d                                 ;6e06
        SCF                                         ;6e07
        SCF                                         ;6e08
        RLA                                         ;6e09
        JR      nz,bD_l6e2ch                        ;6e0a
        JR      bD_l6e45h                           ;6e0c
        LD      b,a                                 ;6e0e
        LD      b,l                                 ;6e0f
        LD      b,l                                 ;6e10
        INC     l                                   ;6e11
        LD      (0x2b21),hl                         ;6e12
        LD      b,l                                 ;6e15
        LD      b,a                                 ;6e16
        RLCA                                        ;6e17
        DEC     c                                   ;6e18
        ADD     a,c                                 ;6e19
        LD      b,a                                 ;6e1a
        RLCA                                        ;6e1b
        DEC     c                                   ;6e1c
        ADD     a,c                                 ;6e1d
        LD      b,a                                 ;6e1e
bD_l6e1fh:
        RLCA                                        ;6e1f
        DEC     c                                   ;6e20
        ADC     a,d                                 ;6e21
        LD      b,a                                 ;6e22
        DAA                                         ;6e23
        LD      c,d                                 ;6e24
        DAA                                         ;6e25
        LD      c,d                                 ;6e26
        DAA                                         ;6e27
        LD      c,d                                 ;6e28
        DAA                                         ;6e29
        LD      c,d                                 ;6e2a
        RLA                                         ;6e2b
bD_l6e2ch:
        LD      b,0x19                              ;6e2c
        ADC     a,c                                 ;6e2e
        JR      bD_l6e5dh                           ;6e2f
        DEC     (hl)                                ;6e31
        LD      (hl),0x35                           ;6e32
        LD      (hl),0x35                           ;6e34
        LD      (hl),0x2b                           ;6e36
        JR      bD_l6e47h                           ;6e38
        SBC     a,c                                 ;6e3a
        DAA                                         ;6e3b
        LD      c,d                                 ;6e3c
        DAA                                         ;6e3d
        LD      c,d                                 ;6e3e
        DAA                                         ;6e3f
        LD      c,d                                 ;6e40
        DAA                                         ;6e41
        LD      c,d                                 ;6e42
        LD      c,b                                 ;6e43
        LD      b,h                                 ;6e44
bD_l6e45h:
        LD      h,0x44                              ;6e45
bD_l6e47h:
        LD      b,h                                 ;6e47
        LD      h,0x44                              ;6e48
        LD      b,h                                 ;6e4a
        LD      c,b                                 ;6e4b
        LD      b,l                                 ;6e4c
        INC     l                                   ;6e4d
        LD      b,l                                 ;6e4e
        LD      b,l                                 ;6e4f
        INC     l                                   ;6e50
        LD      b,l                                 ;6e51
        LD      b,l                                 ;6e52
        LD      c,b                                 ;6e53
        RLCA                                        ;6e54
        DEC     c                                   ;6e55
        ADD     a,c                                 ;6e56
        LD      c,b                                 ;6e57
        RLCA                                        ;6e58
        DEC     c                                   ;6e59
        ADD     a,c                                 ;6e5a
        LD      c,b                                 ;6e5b
        RLCA                                        ;6e5c
bD_l6e5dh:
        DEC     c                                   ;6e5d
        ADC     a,e                                 ;6e5e
        DAA                                         ;6e5f
        LD      c,d                                 ;6e60
        DAA                                         ;6e61
        LD      c,d                                 ;6e62
        DAA                                         ;6e63
        LD      c,d                                 ;6e64
        DAA                                         ;6e65
        LD      c,d                                 ;6e66
        LD      h,0x44                              ;6e67
        LD      h,0x4                               ;6e69
        JR      nz,bD_l6df6h                        ;6e6b
        LD      a,(0x452c)                          ;6e6d
        INC     l                                   ;6e70
        LD      (0x2221),hl                         ;6e71
        LD      hl,0x182b                           ;6e74
        DEC     c                                   ;6e77
        ADC     a,c                                 ;6e78
        DAA                                         ;6e79
        JR      z,$+15                              ;6e7a
        ADD     hl,hl                               ;6e7c
        DAA                                         ;6e7d
        LD      c,d                                 ;6e7e
        DAA                                         ;6e7f
        LD      c,d                                 ;6e80
        LD      h,0x3                               ;6e81
        LD      b,h                                 ;6e83
        ADD     a,l                                 ;6e84
        LD      h,0x19                              ;6e85
        ADD     hl,de                               ;6e87
        LD      a,(0x32c)                           ;6e88
        LD      b,l                                 ;6e8b
        ADD     a,h                                 ;6e8c
        INC     l                                   ;6e8d
        LD      c,0xf                               ;6e8e
        DEC     hl                                  ;6e90
        JR      bD_l6ea0h                           ;6e91
        SBC     a,b                                 ;6e93
        DAA                                         ;6e94
        LD      c,d                                 ;6e95
        DAA                                         ;6e96
        LD      c,d                                 ;6e97
        DAA                                         ;6e98
        LD      c,d                                 ;6e99
        DAA                                         ;6e9a
        LD      c,d                                 ;6e9b
        LD      h,0x20                              ;6e9c
        JR      nz,bD_l6edah                        ;6e9e
bD_l6ea0h:
        LD      h,0x20                              ;6ea0
        JR      nz,bD_l6edeh                        ;6ea2
        INC     l                                   ;6ea4
        LD      (0x2b21),hl                         ;6ea5
        INC     l                                   ;6ea8
        LD      (0x2b21),hl                         ;6ea9
        JR      bD_l6ebbh                           ;6eac
        SBC     a,b                                 ;6eae
        DAA                                         ;6eaf
        LD      c,d                                 ;6eb0
        DAA                                         ;6eb1
        LD      c,d                                 ;6eb2
        DAA                                         ;6eb3
        LD      c,d                                 ;6eb4
        DAA                                         ;6eb5
        LD      c,d                                 ;6eb6
        LD      h,0x1a                              ;6eb7
        DEC     de                                  ;6eb9
        DEC     de                                  ;6eba
bD_l6ebbh:
        INC     e                                   ;6ebb
        LD      a,(0x4744)                          ;6ebc
        INC     l                                   ;6ebf
        DEC     e                                   ;6ec0
        LD      e,0x1e                              ;6ec1
        RRA                                         ;6ec3
        DEC     hl                                  ;6ec4
        LD      b,l                                 ;6ec5
        LD      b,a                                 ;6ec6
        RLCA                                        ;6ec7
        DEC     c                                   ;6ec8
        ADD     a,c                                 ;6ec9
        LD      b,a                                 ;6eca
        RLCA                                        ;6ecb
        DEC     c                                   ;6ecc
        ADD     a,c                                 ;6ecd
        LD      b,a                                 ;6ece
        RLCA                                        ;6ecf
        DEC     c                                   ;6ed0
        ADC     a,c                                 ;6ed1
        LD      b,a                                 ;6ed2
        DAA                                         ;6ed3
        LD      c,d                                 ;6ed4
        DAA                                         ;6ed5
        LD      c,d                                 ;6ed6
        DAA                                         ;6ed7
        LD      c,d                                 ;6ed8
        DAA                                         ;6ed9
bD_l6edah:
        LD      c,d                                 ;6eda
        NOP                                         ;6edb
        LD      (bc),a                              ;6edc
        LD      b,b                                 ;6edd
bD_l6edeh:
        SUB     b                                   ;6ede
        NOP                                         ;6edf
        LD      bc,0x2                              ;6ee0
        NOP                                         ;6ee3
        LD      bc,SetPsgVolsZero                   ;6ee4
        LD      b,(hl)                              ;6ee7
        DEC     b                                   ;6ee8
        LD      b,0x4                               ;6ee9
        INC     b                                   ;6eeb
        DEC     b                                   ;6eec
        LD      b,c                                 ;6eed
        LD      b,d                                 ;6eee
        LD      b,0x4d                              ;6eef
        ADD     a,d                                 ;6ef1
        LD      b,c                                 ;6ef2
        LD      b,e                                 ;6ef3
        LD      b,0x4d                              ;6ef4
        ADD     a,d                                 ;6ef6
        LD      b,c                                 ;6ef7
        LD      b,h                                 ;6ef8
        LD      b,0x4d                              ;6ef9
        SBC     a,b                                 ;6efb
        LD      b,c                                 ;6efc
        LD      b,l                                 ;6efd
        EX      af,af'                              ;6efe
        ADD     hl,bc                               ;6eff
        LD      a,(bc)                              ;6f00
        EX      af,af'                              ;6f01
        ADD     hl,bc                               ;6f02
        LD      a,(bc)                              ;6f03
        LD      (bc),a                              ;6f04
        NOP                                         ;6f05
        INC     bc                                  ;6f06
        NOP                                         ;6f07
        JR      nz,bD_l6f2bh                        ;6f08
        LD      (0x601),hl                          ;6f0a
        INC     b                                   ;6f0d
        RLCA                                        ;6f0e
        INC     b                                   ;6f0f
        INC     h                                   ;6f10
        ADD     hl,de                               ;6f11
        LD      h,0x5                               ;6f12
        JR      $+79                                ;6f14
        SBC     a,b                                 ;6f16
        LD      a,(bc)                              ;6f17
        ADD     hl,bc                               ;6f18
        ADD     hl,bc                               ;6f19
        LD      a,(bc)                              ;6f1a
        EX      af,af'                              ;6f1b
        LD      a,(bc)                              ;6f1c
        ADD     hl,bc                               ;6f1d
        LD      a,(bc)                              ;6f1e
        NOP                                         ;6f1f
        LD      bc,0x2702                           ;6f20
        DEC     hl                                  ;6f23
        INC     e                                   ;6f24
        DEC     e                                   ;6f25
        NOP                                         ;6f26
        INC     b                                   ;6f27
        DEC     b                                   ;6f28
        LD      b,0x2f                              ;6f29
bD_l6f2bh:
        DEC     de                                  ;6f2b
        CPL                                         ;6f2c
        RRA                                         ;6f2d
        INC     b                                   ;6f2e
        INC     d                                   ;6f2f
        LD      c,l                                 ;6f30
        SBC     a,b                                 ;6f31
        ADD     hl,bc                               ;6f32
        LD      c,a                                 ;6f33
        LD      c,l                                 ;6f34
        LD      c,l                                 ;6f35
        LD      a,(bc)                              ;6f36
        ADD     hl,bc                               ;6f37
        LD      c,l                                 ;6f38
        LD      c,e                                 ;6f39
        LD      c,(hl)                              ;6f3a
        LD      c,(hl)                              ;6f3b
        LD      b,l                                 ;6f3c
        LD      a,(bc)                              ;6f3d
        LD      b,b                                 ;6f3e
        LD      (bc),a                              ;6f3f
        NOP                                         ;6f40
        LD      bc,0x240                            ;6f41
        LD      b,b                                 ;6f44
        LD      bc,0x606                            ;6f45
        INC     b                                   ;6f48
        DEC     b                                   ;6f49
        INC     bc                                  ;6f4a
        LD      b,0x81                              ;6f4b
        DEC     b                                   ;6f4d
        LD      (de),a                              ;6f4e
        LD      c,l                                 ;6f4f
        ADD     a,d                                 ;6f50
        EX      af,af'                              ;6f51
        LD      c,a                                 ;6f52
        INC     b                                   ;6f53
        LD      c,l                                 ;6f54
        SBC     a,b                                 ;6f55
        LD      a,(bc)                              ;6f56
        LD      c,e                                 ;6f57
        LD      c,(hl)                              ;6f58
        LD      c,(hl)                              ;6f59
        LD      b,l                                 ;6f5a
        ADD     hl,bc                               ;6f5b
        EX      af,af'                              ;6f5c
        LD      a,(bc)                              ;6f5d
        LD      b,b                                 ;6f5e
        JR      z,bD_l6f8ah                         ;6f5f
        LD      hl,(0x2120)                         ;6f61
        LD      (0x640),hl                          ;6f64
        INC     l                                   ;6f67
        INC     hl                                  ;6f68
        LD      l,0x2c                              ;6f69
        DEC     l                                   ;6f6b
        LD      l,0x6                               ;6f6c
        JR      bD_l6fbdh                           ;6f6e
        SBC     a,b                                 ;6f70
        LD      a,(bc)                              ;6f71
        ADD     hl,bc                               ;6f72
        EX      af,af'                              ;6f73
        ADD     hl,bc                               ;6f74
        LD      a,(bc)                              ;6f75
        EX      af,af'                              ;6f76
        LD      a,(bc)                              ;6f77
        LD      a,(bc)                              ;6f78
        INC     e                                   ;6f79
        DEC     e                                   ;6f7a
        JR      z,bD_l6fa6h                         ;6f7b
        LD      hl,(0x2928)                         ;6f7d
        LD      hl,(0x1f2f)                         ;6f80
        INC     h                                   ;6f83
        DEC     h                                   ;6f84
        LD      h,0x2c                              ;6f85
        DEC     l                                   ;6f87
        LD      l,0x13                              ;6f88
bD_l6f8ah:
        LD      c,l                                 ;6f8a
        ADD     a,d                                 ;6f8b
        ADD     hl,bc                               ;6f8c
        LD      c,a                                 ;6f8d
        INC     bc                                  ;6f8e
        LD      c,l                                 ;6f8f
        LD      (bc),a                              ;6f90
        LD      a,(bc)                              ;6f91
        SUB     (hl)                                ;6f92
        LD      c,e                                 ;6f93
        LD      c,(hl)                              ;6f94
        LD      c,(hl)                              ;6f95
        LD      b,l                                 ;6f96
        LD      a,(bc)                              ;6f97
        LD      a,(bc)                              ;6f98
        NOP                                         ;6f99
        NOP                                         ;6f9a
        LD      (bc),a                              ;6f9b
        LD      bc,0x100                            ;6f9c
        LD      b,b                                 ;6f9f
        LD      b,b                                 ;6fa0
        INC     b                                   ;6fa1
        INC     b                                   ;6fa2
        LD      b,0x5                               ;6fa3
        INC     b                                   ;6fa5
bD_l6fa6h:
        LD      b,a                                 ;6fa6
        LD      b,c                                 ;6fa7
        LD      b,c                                 ;6fa8
        LD      b,0x4d                              ;6fa9
        ADD     a,d                                 ;6fab
        LD      c,b                                 ;6fac
        LD      b,c                                 ;6fad
        LD      b,0x4d                              ;6fae
        ADC     a,e                                 ;6fb0
        LD      c,c                                 ;6fb1
        LD      b,c                                 ;6fb2
        LD      c,l                                 ;6fb3
        EX      af,af'                              ;6fb4
        ADD     hl,bc                               ;6fb5
        LD      c,a                                 ;6fb6
        LD      c,l                                 ;6fb7
        LD      c,l                                 ;6fb8
        LD      c,d                                 ;6fb9
        LD      b,c                                 ;6fba
        LD      c,e                                 ;6fbb
        INC     bc                                  ;6fbc
bD_l6fbdh:
        LD      c,(hl)                              ;6fbd
        ADD     a,h                                 ;6fbe
        LD      b,l                                 ;6fbf
        EX      af,af'                              ;6fc0
        LD      c,e                                 ;6fc1
        LD      b,c                                 ;6fc2
        INC     b                                   ;6fc3
        LD      c,0x90                              ;6fc4
        DEC     c                                   ;6fc6
        LD      c,0xe                               ;6fc7
        DEC     c                                   ;6fc9
        DEC     c                                   ;6fca
        LD      c,0xe                               ;6fcb
        LD      (de),a                              ;6fcd
        DEC     bc                                  ;6fce
        DEC     bc                                  ;6fcf
        INC     c                                   ;6fd0
        INC     c                                   ;6fd1
        LD      c,0xe                               ;6fd2
        LD      (de),a                              ;6fd4
        INC     de                                  ;6fd5
        INC     b                                   ;6fd6
        LD      c,l                                 ;6fd7
        ADD     a,e                                 ;6fd8
        LD      c,0x12                              ;6fd9
        INC     de                                  ;6fdb
        DEC     b                                   ;6fdc
        LD      c,l                                 ;6fdd
        ADD     a,d                                 ;6fde
        LD      (de),a                              ;6fdf
        INC     de                                  ;6fe0
        LD      b,0x4d                              ;6fe1
        ADD     a,d                                 ;6fe3
        DEC     c                                   ;6fe4
        LD      d,0x3                               ;6fe5
        DEC     d                                   ;6fe7
        SUB     e                                   ;6fe8
        LD      d,0x15                              ;6fe9
        DEC     d                                   ;6feb
        DEC     c                                   ;6fec
        LD      c,0xd                               ;6fed
        RRCA                                        ;6fef
        DEC     c                                   ;6ff0
        LD      c,0xd                               ;6ff1
        LD      c,0xb                               ;6ff3
        INC     c                                   ;6ff5
        DEC     bc                                  ;6ff6
        DEC     bc                                  ;6ff7
        INC     c                                   ;6ff8
        INC     c                                   ;6ff9
        DEC     bc                                  ;6ffa
        DEC     bc                                  ;6ffb
        JR      bD_l704bh                           ;6ffc
        SBC     a,b                                 ;6ffe
        DEC     d                                   ;6fff
        LD      d,0x15                              ;7000
        LD      d,0x16                              ;7002
        DEC     d                                   ;7004
        LD      d,0x15                              ;7005
        DEC     c                                   ;7007
        INC     d                                   ;7008
        JR      bD_l701fh                           ;7009
        JR      nc,bD_l703eh                        ;700b
        LD      (0xb0d),a                           ;700d
        DEC     bc                                  ;7010
        RLA                                         ;7011
        INC     c                                   ;7012
        INC     (hl)                                ;7013
        DEC     (hl)                                ;7014
        LD      (hl),0xb                            ;7015
        JR      $+79                                ;7017
        LD      (bc),a                              ;7019
        DEC     d                                   ;701a
        LD      (bc),a                              ;701b
        LD      d,0x94                              ;701c
        DEC     d                                   ;701e
bD_l701fh:
        LD      d,0x15                              ;701f
        DEC     d                                   ;7021
        SCF                                         ;7022
        DEC     sp                                  ;7023
        DEC     c                                   ;7024
        DEC     a                                   ;7025
        INC     sp                                  ;7026
        JR      c,bD_l7062h                         ;7027
        LD      a,(0x1b2f)                          ;7029
        DEC     bc                                  ;702c
        CPL                                         ;702d
        CCF                                         ;702e
        INC     (hl)                                ;702f
        ADD     hl,de                               ;7030
        LD      (hl),0x18                           ;7031
        LD      c,l                                 ;7033
        SBC     a,b                                 ;7034
        DEC     d                                   ;7035
        LD      d,0x4d                              ;7036
        LD      d,0x16                              ;7038
        DEC     d                                   ;703a
        LD      d,0x15                              ;703b
        RRCA                                        ;703d
bD_l703eh:
        JR      nc,bD_l7071h                        ;703e
        LD      (0x333d),a                          ;7040
        JR      c,bD_l707fh                         ;7043
        DEC     bc                                  ;7045
        INC     (hl)                                ;7046
        DEC     h                                   ;7047
        LD      (hl),0x2f                           ;7048
        CCF                                         ;704a
bD_l704bh:
        INC     a                                   ;704b
        LD      a,0x18                              ;704c
        LD      c,l                                 ;704e
        ADC     a,l                                 ;704f
        DEC     d                                   ;7050
        LD      d,0x15                              ;7051
        LD      d,0x16                              ;7053
        DEC     d                                   ;7055
        LD      d,0x15                              ;7056
        LD      c,0xd                               ;7058
        LD      c,0xe                               ;705a
        RRCA                                        ;705c
        INC     bc                                  ;705d
        LD      c,0x88                              ;705e
        INC     c                                   ;7060
        DEC     bc                                  ;7061
bD_l7062h:
        INC     c                                   ;7062
        DEC     bc                                  ;7063
        LD      de,0xe0e                            ;7064
        DEC     c                                   ;7067
        INC     b                                   ;7068
        LD      c,l                                 ;7069
        ADD     a,h                                 ;706a
        DJNZ    $+19                                ;706b
        LD      c,0xe                               ;706d
        DEC     b                                   ;706f
        LD      c,l                                 ;7070
bD_l7071h:
        ADD     a,e                                 ;7071
        DJNZ    $+19                                ;7072
        LD      c,0x6                               ;7074
        LD      c,l                                 ;7076
        ADD     a,d                                 ;7077
        DJNZ    bD_l7088h                           ;7078
        INC     bc                                  ;707a
        DEC     d                                   ;707b
        ADD     a,l                                 ;707c
        LD      d,0x15                              ;707d
bD_l707fh:
        LD      d,0x16                              ;707f
        LD      c,0x0                               ;7081
        SUB     e                                   ;7083
        LD      hl,(0x2725)                         ;7084
        ADD     hl,hl                               ;7087
bD_l7088h:
        DEC     h                                   ;7088
        JR      z,$+41                              ;7089
        ADD     hl,hl                               ;708b
        DEC     hl                                  ;708c
        LD      (0x1819),hl                         ;708d
        DEC     e                                   ;7090
        DEC     l                                   ;7091
        DJNZ    bD_l70a5h                           ;7092
        JR      nz,$+35                             ;7094
        INC     b                                   ;7096
        DEC     b                                   ;7097
        NOP                                         ;7098
        ADD     a,e                                 ;7099
        INC     hl                                  ;709a
        INC     h                                   ;709b
        INC     b                                   ;709c
        DEC     b                                   ;709d
        NOP                                         ;709e
        LD      (bc),a                              ;709f
        LD      hl,0x881                            ;70a0
        DEC     b                                   ;70a3
        LD      a,(bc)                              ;70a4
bD_l70a5h:
        SBC     a,b                                 ;70a5
        JR      nz,$+35                             ;70a6
        LD      (0x2323),hl                         ;70a8
        CPL                                         ;70ab
        INC     h                                   ;70ac
        CPL                                         ;70ad
        DEC     h                                   ;70ae
        LD      h,0x28                              ;70af
        JR      z,bD_l70dah                         ;70b1
        LD      hl,(0x2929)                         ;70b3
        DJNZ    $+20                                ;70b6
        DEC     e                                   ;70b8
        LD      a,(de)                              ;70b9
        JR      nz,bD_l70e7h                        ;70ba
        ADD     hl,de                               ;70bc
        LD      de,0x4                              ;70bd
        ADD     a,e                                 ;70c0
        INC     bc                                  ;70c1
        JR      nz,bD_l70c8h                        ;70c2
        DEC     b                                   ;70c4
        NOP                                         ;70c5
        ADD     a,h                                 ;70c6
        RLCA                                        ;70c7
bD_l70c8h:
        LD      hl,0x6                              ;70c8
        INC     b                                   ;70cb
        LD      a,(bc)                              ;70cc
        SUB     c                                   ;70cd
        ADD     hl,bc                               ;70ce
        INC     hl                                  ;70cf
        EX      af,af'                              ;70d0
        LD      a,(bc)                              ;70d1
        CPL                                         ;70d2
        CPL                                         ;70d3
        LD      (0x212f),hl                         ;70d4
        LD      hl,0x2223                           ;70d7
bD_l70dah:
        ADD     hl,hl                               ;70da
        ADD     hl,hl                               ;70db
        DEC     h                                   ;70dc
        LD      h,0x27                              ;70dd
        INC     bc                                  ;70df
        ADD     hl,hl                               ;70e0
        ADC     a,b                                 ;70e1
        DJNZ    bD_l7101h                           ;70e2
        DEC     l                                   ;70e4
        DJNZ    bD_l70f9h                           ;70e5
bD_l70e7h:
        LD      de,0x1110                           ;70e7
        DJNZ    bD_l70ech                           ;70ea
bD_l70ech:
        EX      af,af'                              ;70ec
        LD      a,(bc)                              ;70ed
        SBC     a,l                                 ;70ee
        LD      (0x2321),hl                         ;70ef
        LD      (0x2224),hl                         ;70f2
        CPL                                         ;70f5
        LD      hl,0x2725                           ;70f6
bD_l70f9h:
        ADD     hl,hl                               ;70f9
        LD      hl,(0x2929)                         ;70fa
        DEC     h                                   ;70fd
        DAA                                         ;70fe
        DJNZ    bD_l7113h                           ;70ff
bD_l7101h:
        LD      a,(de)                              ;7101
        DEC     hl                                  ;7102
        ADD     hl,de                               ;7103
        DEC     l                                   ;7104
        LD      de,0x11                             ;7105
        NOP                                         ;7108
        RLCA                                        ;7109
        JR      nz,bD_l7110h                        ;710a
        DEC     b                                   ;710c
        NOP                                         ;710d
        ADC     a,(hl)                              ;710e
        DEC     b                                   ;710f
bD_l7110h:
        INC     hl                                  ;7110
        EX      af,af'                              ;7111
        LD      a,(bc)                              ;7112
bD_l7113h:
        INC     de                                  ;7113
        NOP                                         ;7114
