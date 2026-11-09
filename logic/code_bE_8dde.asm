bE_l8ddeh:
        INC     bc                                  ;8dde
        LD      d,b                                 ;8ddf
        SUB     d                                   ;8de0
        LD      a,(hl)                              ;8de1
        LD      d,h                                 ;8de2
        LD      d,h                                 ;8de3
        ADD     a,b                                 ;8de4
        LD      a,(hl)                              ;8de5
        LD      d,h                                 ;8de6
        LD      d,h                                 ;8de7
        ADD     a,b                                 ;8de8
        LD      a,a                                 ;8de9
        LD      d,l                                 ;8dea
        LD      d,l                                 ;8deb
        ADD     a,c                                 ;8dec
        RRA                                         ;8ded
bE_l8deeh:
        JR      nz,bE_l8e0fh                        ;8dee
        JR      nz,bE_l8e0ch                        ;8df0
        DEC     de                                  ;8df2
        RLCA                                        ;8df3
        ADD     hl,de                               ;8df4
        ADD     a,a                                 ;8df5
        DEC     e                                   ;8df6
        LD      e,0x19                              ;8df7
        LD      b,e                                 ;8df9
        LD      b,h                                 ;8dfa
        LD      b,l                                 ;8dfb
        LD      b,(hl)                              ;8dfc
        INC     b                                   ;8dfd
        LD      b,a                                 ;8dfe
        ADD     a,c                                 ;8dff
        LD      c,c                                 ;8e00
        INC     bc                                  ;8e01
        LD      c,d                                 ;8e02
        ADD     a,c                                 ;8e03
        LD      c,h                                 ;8e04
        INC     bc                                  ;8e05
        LD      c,l                                 ;8e06
        ADD     a,h                                 ;8e07
        LD      b,e                                 ;8e08
        LD      b,h                                 ;8e09
        LD      b,l                                 ;8e0a
        LD      b,(hl)                              ;8e0b
bE_l8e0ch:
        INC     b                                   ;8e0c
        LD      b,a                                 ;8e0d
        LD      (bc),a                              ;8e0e
bE_l8e0fh:
        LD      c,d                                 ;8e0f
        ADC     a,d                                 ;8e10
        LD      c,e                                 ;8e11
        LD      b,a                                 ;8e12
        LD      c,l                                 ;8e13
        LD      c,l                                 ;8e14
        LD      c,(hl)                              ;8e15
        LD      c,b                                 ;8e16
        LD      b,e                                 ;8e17
        LD      b,h                                 ;8e18
        LD      b,l                                 ;8e19
        LD      b,(hl)                              ;8e1a
        DEC     b                                   ;8e1b
        LD      b,a                                 ;8e1c
        ADC     a,e                                 ;8e1d
        LD      d,d                                 ;8e1e
        LD      a,e                                 ;8e1f
        LD      a,e                                 ;8e20
        LD      c,b                                 ;8e21
        LD      c,h                                 ;8e22
        LD      c,l                                 ;8e23
        LD      c,l                                 ;8e24
        LD      b,e                                 ;8e25
        LD      b,h                                 ;8e26
        LD      b,l                                 ;8e27
        LD      b,(hl)                              ;8e28
        INC     b                                   ;8e29
        LD      b,a                                 ;8e2a
        INC     b                                   ;8e2b
        LD      a,e                                 ;8e2c
        INC     b                                   ;8e2d
        LD      c,l                                 ;8e2e
        ADD     a,c                                 ;8e2f
        LD      c,a                                 ;8e30
        INC     bc                                  ;8e31
        LD      d,b                                 ;8e32
        XOR     h                                   ;8e33
        LD      a,(hl)                              ;8e34
        LD      d,h                                 ;8e35
        ADD     a,b                                 ;8e36
        LD      e,c                                 ;8e37
        LD      a,(hl)                              ;8e38
        LD      d,h                                 ;8e39
        ADD     a,b                                 ;8e3a
        LD      (hl),0x7f                           ;8e3b
        LD      d,l                                 ;8e3d
        ADD     a,c                                 ;8e3e
        LD      (hl),0x50                           ;8e3f
        LD      d,b                                 ;8e41
        LD      d,c                                 ;8e42
        ADD     hl,de                               ;8e43
        LD      e,c                                 ;8e44
        ADC     a,a                                 ;8e45
        ADC     a,l                                 ;8e46
        ADD     hl,de                               ;8e47
        LD      (hl),0x8f                           ;8e48
        ADC     a,l                                 ;8e4a
        LD      d,(hl)                              ;8e4b
        LD      (hl),0x90                           ;8e4c
        ADC     a,(hl)                              ;8e4e
        LD      d,a                                 ;8e4f
        ADD     hl,de                               ;8e50
        LD      c,a                                 ;8e51
        LD      d,b                                 ;8e52
        LD      d,b                                 ;8e53
        ADD     hl,de                               ;8e54
        LD      a,(hl)                              ;8e55
        LD      d,h                                 ;8e56
        ADD     a,b                                 ;8e57
        LD      (bc),a                              ;8e58
        LD      a,(hl)                              ;8e59
        LD      d,h                                 ;8e5a
        ADD     a,b                                 ;8e5b
        LD      bc,0x557f                           ;8e5c
        ADD     a,c                                 ;8e5f
        INC     b                                   ;8e60
        LD      d,b                                 ;8e61
        SUB     b                                   ;8e62
        ADD     a,d                                 ;8e63
        LD      e,c                                 ;8e64
        LD      e,c                                 ;8e65
        SUB     c                                   ;8e66
        ADD     a,d                                 ;8e67
        LD      (hl),0x36                           ;8e68
        SUB     c                                   ;8e6a
        ADD     a,e                                 ;8e6b
        LD      (hl),0x36                           ;8e6c
        SUB     d                                   ;8e6e
        LD      b,e                                 ;8e6f
        LD      b,h                                 ;8e70
        LD      b,l                                 ;8e71
        LD      b,(hl)                              ;8e72
        INC     b                                   ;8e73
        LD      b,a                                 ;8e74
        LD      (bc),a                              ;8e75
        LD      a,e                                 ;8e76
        ADD     a,(hl)                              ;8e77
        LD      d,e                                 ;8e78
        LD      b,a                                 ;8e79
        LD      c,l                                 ;8e7a
        LD      c,l                                 ;8e7b
        LD      c,(hl)                              ;8e7c
        LD      c,b                                 ;8e7d
        INC     b                                   ;8e7e
        LD      d,b                                 ;8e7f
        AND     b                                   ;8e80
        SUB     c                                   ;8e81
        ADD     a,d                                 ;8e82
        SUB     c                                   ;8e83
        ADD     a,d                                 ;8e84
        SUB     c                                   ;8e85
        ADD     a,d                                 ;8e86
        SUB     c                                   ;8e87
        ADD     a,d                                 ;8e88
        SUB     d                                   ;8e89
        ADD     a,e                                 ;8e8a
        SUB     d                                   ;8e8b
        ADD     a,e                                 ;8e8c
        ADD     hl,de                               ;8e8d
        LD      c,a                                 ;8e8e
        LD      d,b                                 ;8e8f
        LD      d,b                                 ;8e90
        ADD     hl,de                               ;8e91
        LD      a,(hl)                              ;8e92
        ADD     a,b                                 ;8e93
        LD      e,c                                 ;8e94
        LD      (bc),a                              ;8e95
        LD      a,(hl)                              ;8e96
        ADD     a,b                                 ;8e97
        LD      (hl),0x1                            ;8e98
        LD      a,a                                 ;8e9a
        ADD     a,c                                 ;8e9b
        LD      (hl),0x43                           ;8e9c
        LD      b,h                                 ;8e9e
        LD      b,l                                 ;8e9f
        LD      b,(hl)                              ;8ea0
        INC     b                                   ;8ea1
        LD      b,a                                 ;8ea2
        INC     b                                   ;8ea3
        LD      c,d                                 ;8ea4
        INC     b                                   ;8ea5
        LD      c,l                                 ;8ea6
        LD      (bc),a                              ;8ea7
        LD      d,b                                 ;8ea8
        SBC     a,e                                 ;8ea9
        LD      d,c                                 ;8eaa
        ADD     hl,de                               ;8eab
        LD      e,b                                 ;8eac
        LD      d,h                                 ;8ead
        ADC     a,l                                 ;8eae
        ADD     hl,de                               ;8eaf
        ADC     a,a                                 ;8eb0
        LD      d,h                                 ;8eb1
        ADC     a,l                                 ;8eb2
        LD      d,(hl)                              ;8eb3
        SUB     b                                   ;8eb4
        LD      d,l                                 ;8eb5
        ADC     a,(hl)                              ;8eb6
        LD      d,a                                 ;8eb7
        LD      b,e                                 ;8eb8
        ADD     a,h                                 ;8eb9
        LD      e,d                                 ;8eba
        LD      e,d                                 ;8ebb
        LD      b,a                                 ;8ebc
        ADD     a,l                                 ;8ebd
        LD      e,e                                 ;8ebe
        LD      e,e                                 ;8ebf
        LD      b,a                                 ;8ec0
        LD      b,a                                 ;8ec1
        ADD     a,(hl)                              ;8ec2
        LD      e,h                                 ;8ec3
        ADD     a,h                                 ;8ec4
        RLCA                                        ;8ec5
        LD      e,d                                 ;8ec6
        INC     b                                   ;8ec7
        LD      e,e                                 ;8ec8
        INC     b                                   ;8ec9
        LD      e,l                                 ;8eca
        LD      b,0x5a                              ;8ecb
        ADC     a,d                                 ;8ecd
        SUB     e                                   ;8ece
        LD      b,(hl)                              ;8ecf
        LD      e,e                                 ;8ed0
        LD      e,e                                 ;8ed1
        SUB     h                                   ;8ed2
        LD      b,a                                 ;8ed3
        LD      e,h                                 ;8ed4
        SUB     l                                   ;8ed5
        LD      b,a                                 ;8ed6
        LD      b,a                                 ;8ed7
        INC     bc                                  ;8ed8
        LD      e,d                                 ;8ed9
        ADD     a,c                                 ;8eda
        SUB     e                                   ;8edb
        NOP                                         ;8edc
        LD      (bc),a                              ;8edd
        LD      (bc),a                              ;8ede
        LD      (bc),a                              ;8edf
        LD      (bc),a                              ;8ee0
        LD      bc,0x101                            ;8ee1
        LD      bc,0x101                            ;8ee4
        LD      bc,0x101                            ;8ee7
        LD      bc,0x101                            ;8eea
        LD      bc,0x101                            ;8eed
        LD      bc,0x101                            ;8ef0
        LD      bc,0x101                            ;8ef3
        LD      bc,0x101                            ;8ef6
        LD      bc,0x101                            ;8ef9
        LD      bc,0x0                              ;8efc
        NOP                                         ;8eff
        NOP                                         ;8f00
        NOP                                         ;8f01
        NOP                                         ;8f02
        NOP                                         ;8f03
bE_l8f04h:
        NOP                                         ;8f04
bE_l8f05h:
        NOP                                         ;8f05
        INC     bc                                  ;8f06
        INC     b                                   ;8f07
        DEC     b                                   ;8f08
        NOP                                         ;8f09
        NOP                                         ;8f0a
        NOP                                         ;8f0b
        NOP                                         ;8f0c
        NOP                                         ;8f0d
        NOP                                         ;8f0e
        NOP                                         ;8f0f
        NOP                                         ;8f10
        NOP                                         ;8f11
        NOP                                         ;8f12
        NOP                                         ;8f13
        NOP                                         ;8f14
        NOP                                         ;8f15
        NOP                                         ;8f16
        NOP                                         ;8f17
        NOP                                         ;8f18
        INC     bc                                  ;8f19
        INC     b                                   ;8f1a
        DEC     b                                   ;8f1b
        NOP                                         ;8f1c
        NOP                                         ;8f1d
        NOP                                         ;8f1e
        NOP                                         ;8f1f
        NOP                                         ;8f20
        NOP                                         ;8f21
        NOP                                         ;8f22
        NOP                                         ;8f23
        NOP                                         ;8f24
        LD      b,0x4                               ;8f25
        DEC     b                                   ;8f27
        NOP                                         ;8f28
        NOP                                         ;8f29
        NOP                                         ;8f2a
        LD      b,0x4                               ;8f2b
        NOP                                         ;8f2d
        NOP                                         ;8f2e
        NOP                                         ;8f2f
        NOP                                         ;8f30
        NOP                                         ;8f31
        NOP                                         ;8f32
        NOP                                         ;8f33
        NOP                                         ;8f34
        NOP                                         ;8f35
        LD      b,0x5                               ;8f36
        NOP                                         ;8f38
        RLCA                                        ;8f39
        DEC     b                                   ;8f3a
        NOP                                         ;8f3b
        NOP                                         ;8f3c
        NOP                                         ;8f3d
        NOP                                         ;8f3e
        NOP                                         ;8f3f
        NOP                                         ;8f40
        NOP                                         ;8f41
        NOP                                         ;8f42
        NOP                                         ;8f43
        NOP                                         ;8f44
        LD      b,0x7                               ;8f45
        EX      af,af'                              ;8f47
        ADD     hl,bc                               ;8f48
        NOP                                         ;8f49
        NOP                                         ;8f4a
        LD      a,(bc)                              ;8f4b
        DEC     bc                                  ;8f4c
        NOP                                         ;8f4d
        NOP                                         ;8f4e
        NOP                                         ;8f4f
        NOP                                         ;8f50
        NOP                                         ;8f51
        NOP                                         ;8f52
        NOP                                         ;8f53
        NOP                                         ;8f54
        NOP                                         ;8f55
        NOP                                         ;8f56
        NOP                                         ;8f57
        NOP                                         ;8f58
        NOP                                         ;8f59
        NOP                                         ;8f5a
        NOP                                         ;8f5b
        NOP                                         ;8f5c
        INC     c                                   ;8f5d
        DEC     c                                   ;8f5e
        LD      c,0xe                               ;8f5f
        RRCA                                        ;8f61
        DJNZ    bE_l8f75h                           ;8f62
        LD      de,0x1312                           ;8f64
        INC     d                                   ;8f67
        DEC     d                                   ;8f68
        DEC     de                                  ;8f69
        INC     e                                   ;8f6a
        DEC     e                                   ;8f6b
        LD      e,0xe                               ;8f6c
        LD      c,0xe                               ;8f6e
        JR      $+19                                ;8f70
        LD      de,0x1911                           ;8f72
bE_l8f75h:
        LD      d,0x17                              ;8f75
        INC     d                                   ;8f77
        LD      a,(de)                              ;8f78
        RRA                                         ;8f79
        JR      nz,bE_l8f99h                        ;8f7a
        LD      e,0x23                              ;8f7c
        DEC     c                                   ;8f7e
        LD      c,0xe                               ;8f7f
        INC     h                                   ;8f81
        DJNZ    $+19                                ;8f82
        LD      de,0x1312                           ;8f84
        INC     d                                   ;8f87
        DEC     d                                   ;8f88
        DEC     de                                  ;8f89
        INC     e                                   ;8f8a
        DEC     e                                   ;8f8b
        LD      e,0xe                               ;8f8c
        LD      c,0xe                               ;8f8e
        LD      hl,0x1111                           ;8f90
        LD      de,0x1622                           ;8f93
        RLA                                         ;8f96
        INC     d                                   ;8f97
        LD      a,(de)                              ;8f98
bE_l8f99h:
        RRA                                         ;8f99
        JR      nz,bE_l8fb9h                        ;8f9a
        LD      e,0xd                               ;8f9c
        LD      bc,0x101                            ;8f9e
        LD      de,0xd0c                            ;8fa1
        LD      bc,0x1111                           ;8fa4
        LD      de,0x110c                           ;8fa7
        LD      de,0x1111                           ;8faa
        LD      bc,0x101                            ;8fad
        LD      bc,0x101                            ;8fb0
        LD      bc,0xd01                            ;8fb3
        DEC     bc                                  ;8fb6
        DEC     bc                                  ;8fb7
        DEC     bc                                  ;8fb8
bE_l8fb9h:
        LD      de,0x3030                           ;8fb9
        JR      nc,$+16                             ;8fbc
        LD      bc,0x101                            ;8fbe
        LD      bc,SCALXY                           ;8fc1
        LD      bc,0xb0b                            ;8fc4
        RRCA                                        ;8fc7
        DEC     bc                                  ;8fc8
        JR      nc,$+50                             ;8fc9
        JR      nc,$+50                             ;8fcb
        LD      bc,0x101                            ;8fcd
        DJNZ    $+3                                 ;8fd0
        LD      bc,0x1001                           ;8fd2
        DEC     bc                                  ;8fd5
        DEC     bc                                  ;8fd6
        DEC     bc                                  ;8fd7
        LD      hl,(0x3030)                         ;8fd8
        JR      nc,bE_l900dh                        ;8fdb
        LD      (de),a                              ;8fdd
        INC     de                                  ;8fde
        DEC     h                                   ;8fdf
        LD      h,0x1                               ;8fe0
        ADD     hl,de                               ;8fe2
        DEC     d                                   ;8fe3
        LD      d,0x1                               ;8fe4
        ADD     hl,de                               ;8fe6
        LD      bc,0x101                            ;8fe7
        ADD     hl,de                               ;8fea
        LD      bc,0x1101                           ;8feb
        JR      nc,bE_l9020h                        ;8fee
        JR      nc,bE_l9009h                        ;8ff0
        LD      a,(bc)                              ;8ff2
        LD      a,(bc)                              ;8ff3
        LD      a,(bc)                              ;8ff4
        ADD     hl,de                               ;8ff5
        LD      b,0x6                               ;8ff6
        LD      b,0x19                              ;8ff8
        LD      b,0x6                               ;8ffa
        LD      b,0x30                              ;8ffc
        JR      nc,bE_l9030h                        ;8ffe
        JR      nc,bE_l900ch                        ;9000
        LD      a,(bc)                              ;9002
        LD      a,(bc)                              ;9003
        LD      a,(bc)                              ;9004
        LD      b,0x3                               ;9005
        INC     bc                                  ;9007
        INC     bc                                  ;9008
bE_l9009h:
        LD      b,0x3                               ;9009
        INC     bc                                  ;900b
bE_l900ch:
        INC     e                                   ;900c
bE_l900dh:
        JR      nc,bE_l903fh                        ;900d
        JR      nc,bE_l9041h                        ;900f
        LD      a,(bc)                              ;9011
        LD      a,(bc)                              ;9012
        LD      a,(bc)                              ;9013
        LD      a,(bc)                              ;9014
        INC     bc                                  ;9015
        INC     bc                                  ;9016
        INC     bc                                  ;9017
        INC     bc                                  ;9018
        LD      (bc),a                              ;9019
        INC     b                                   ;901a
        LD      (bc),a                              ;901b
        INC     b                                   ;901c
        LD      bc,0x119                            ;901d
bE_l9020h:
        LD      bc,0x1901                           ;9020
        LD      bc,0x101                            ;9023
        ADD     hl,de                               ;9026
        LD      bc,0x101                            ;9027
        ADD     hl,de                               ;902a
        LD      bc,0x1901                           ;902b
        LD      b,0x6                               ;902e
bE_l9030h:
        LD      b,0x19                              ;9030
        LD      b,0x6                               ;9032
        LD      b,0x19                              ;9034
        LD      b,0x6                               ;9036
        LD      b,0x19                              ;9038
        LD      b,0x6                               ;903a
        LD      b,0x6                               ;903c
        INC     bc                                  ;903e
bE_l903fh:
        INC     bc                                  ;903f
        INC     e                                   ;9040
bE_l9041h:
        LD      b,0x3                               ;9041
        INC     bc                                  ;9043
        INC     e                                   ;9044
        LD      b,0x3                               ;9045
        INC     bc                                  ;9047
        INC     e                                   ;9048
        LD      b,0x3                               ;9049
        INC     bc                                  ;904b
        INC     e                                   ;904c
        LD      (bc),a                              ;904d
        INC     b                                   ;904e
        LD      (bc),a                              ;904f
        INC     b                                   ;9050
        LD      (bc),a                              ;9051
        INC     b                                   ;9052
        LD      (bc),a                              ;9053
        INC     b                                   ;9054
        LD      (bc),a                              ;9055
        INC     b                                   ;9056
        LD      (bc),a                              ;9057
        INC     b                                   ;9058
        LD      (bc),a                              ;9059
        INC     b                                   ;905a
        LD      (bc),a                              ;905b
        INC     b                                   ;905c
        LD      bc,0x1819                           ;905d
        LD      bc,0x1901                           ;9060
        LD      bc,0x101                            ;9063
        ADD     hl,de                               ;9066
        LD      bc,0x101                            ;9067
        ADD     hl,de                               ;906a
        LD      bc,0x1901                           ;906b
        LD      b,0x6                               ;906e
        LD      b,0x19                              ;9070
        LD      b,0x6                               ;9072
        LD      b,0x19                              ;9074
        LD      b,0x6                               ;9076
        LD      b,0x19                              ;9078
        RLCA                                        ;907a
        RLCA                                        ;907b
        RLCA                                        ;907c
        LD      b,0x3                               ;907d
        INC     bc                                  ;907f
        INC     e                                   ;9080
        LD      b,0x5                               ;9081
        DEC     b                                   ;9083
        DEC     de                                  ;9084
        LD      b,0x23                              ;9085
        INC     hl                                  ;9087
        INC     hl                                  ;9088
        RLCA                                        ;9089
        INC     hl                                  ;908a
        INC     hl                                  ;908b
        INC     hl                                  ;908c
        LD      (bc),a                              ;908d
        INC     b                                   ;908e
        LD      (bc),a                              ;908f
        INC     b                                   ;9090
        EX      af,af'                              ;9091
        ADD     hl,bc                               ;9092
        EX      af,af'                              ;9093
        ADD     hl,bc                               ;9094
        INC     hl                                  ;9095
        INC     hl                                  ;9096
        INC     hl                                  ;9097
        LD      hl,0x2323                           ;9098
        INC     hl                                  ;909b
        LD      hl,SCANL                            ;909c
        LD      bc,0x2f01                           ;909f
        LD      bc,0x101                            ;90a2
        LD      c,c                                 ;90a5
        DEC     bc                                  ;90a6
        DEC     bc                                  ;90a7
        DEC     bc                                  ;90a8
        JR      nc,$+50                             ;90a9
        JR      nc,$+50                             ;90ab
        LD      bc,0x101                            ;90ad
        DEC     l                                   ;90b0
        LD      bc,0x2d01                           ;90b1
        LD      bc,0x2e0b                           ;90b4
        DEC     bc                                  ;90b7
        DEC     bc                                  ;90b8
        JR      nc,$+50                             ;90b9
        JR      nc,$+50                             ;90bb
        LD      bc,0x101                            ;90bd
        LD      bc,0x101                            ;90c0
        LD      bc,0xb01                            ;90c3
        DEC     bc                                  ;90c6
        DEC     bc                                  ;90c7
        INC     l                                   ;90c8
        JR      nc,bE_l90fbh                        ;90c9
        JR      nc,$+50                             ;90cb
        LD      bc,0x101                            ;90cd
        INC     l                                   ;90d0
        LD      bc,0x2b2c                           ;90d1
        JR      nc,$+45                             ;90d4
        JR      nc,bE_l9108h                        ;90d6
        JR      nc,bE_l910ah                        ;90d8
        JR      nc,bE_l910ch                        ;90da
        JR      nc,bE_l90f8h                        ;90dc
        ADD     hl,sp                               ;90de
        LD      a,(de)                              ;90df
        ADD     hl,sp                               ;90e0
        RRA                                         ;90e1
        RRA                                         ;90e2
        RRA                                         ;90e3
        RRA                                         ;90e4
        INC     hl                                  ;90e5
        INC     hl                                  ;90e6
        INC     hl                                  ;90e7
        INC     hl                                  ;90e8
        LD      (0x2222),hl                         ;90e9
        LD      (0x3030),hl                         ;90ec
        JR      nc,bE_l9121h                        ;90ef
        LD      a,(bc)                              ;90f1
        LD      a,(bc)                              ;90f2
        LD      a,(bc)                              ;90f3
        LD      a,(bc)                              ;90f4
        INC     bc                                  ;90f5
        INC     bc                                  ;90f6
        INC     bc                                  ;90f7
bE_l90f8h:
        LD      b,0x3b                              ;90f8
        INC     bc                                  ;90fa
bE_l90fbh:
        INC     bc                                  ;90fb
        LD      b,0x30                              ;90fc
        JR      nc,bE_l9130h                        ;90fe
        JR      nc,bE_l910ch                        ;9100
        LD      a,(bc)                              ;9102
        LD      a,(bc)                              ;9103
        LD      (hl),0x6                            ;9104
        LD      b,0x6                               ;9106
bE_l9108h:
        JR      c,$+8                               ;9108
bE_l910ah:
        LD      b,0x6                               ;910a
bE_l910ch:
        JR      c,$+71                              ;910c
        LD      b,h                                 ;910e
        LD      (0x3531),a                          ;910f
        INC     (hl)                                ;9112
        INC     sp                                  ;9113
        LD      bc,0x101                            ;9114
        JR      c,$+3                               ;9117
        LD      bc,0x3801                           ;9119
        LD      bc,0x391a                           ;911c
        LD      a,(de)                              ;911f
        ADD     hl,sp                               ;9120
bE_l9121h:
        LD      a,0x3e                              ;9121
        LD      a,0x3e                              ;9123
        LD      b,d                                 ;9125
        LD      b,d                                 ;9126
        LD      b,d                                 ;9127
        LD      b,d                                 ;9128
        LD      b,c                                 ;9129
        LD      b,c                                 ;912a
        LD      b,c                                 ;912b
        LD      b,c                                 ;912c
        DEC     sp                                  ;912d
        INC     bc                                  ;912e
        INC     bc                                  ;912f
bE_l9130h:
        LD      b,0x3b                              ;9130
        INC     bc                                  ;9132
        INC     bc                                  ;9133
        LD      b,0x3b                              ;9134
        INC     bc                                  ;9136
        INC     bc                                  ;9137
        LD      b,0x3b                              ;9138
        INC     bc                                  ;913a
        INC     bc                                  ;913b
        LD      b,0x6                               ;913c
        LD      b,0x6                               ;913e
        JR      c,bE_l9148h                         ;9140
        LD      b,0x6                               ;9142
        JR      c,bE_l914ch                         ;9144
        LD      b,0x6                               ;9146
bE_l9148h:
        JR      c,$+8                               ;9148
        LD      b,0x6                               ;914a
bE_l914ch:
        JR      c,$+3                               ;914c
        LD      bc,RSLREG                           ;914e
        LD      bc,0x3801                           ;9151
        LD      bc,0x101                            ;9154
        JR      c,$+3                               ;9157
        LD      bc,0x3801                           ;9159
        LD      bc,0x402                            ;915c
        LD      (bc),a                              ;915f
        INC     b                                   ;9160
        EX      af,af'                              ;9161
        ADD     hl,bc                               ;9162
        EX      af,af'                              ;9163
        ADD     hl,bc                               ;9164
        LD      b,b                                 ;9165
        LD      b,d                                 ;9166
        LD      b,d                                 ;9167
        LD      b,d                                 ;9168
        LD      b,b                                 ;9169
        LD      b,d                                 ;916a
        LD      b,d                                 ;916b
        LD      b,d                                 ;916c
        DEC     sp                                  ;916d
        INC     bc                                  ;916e
        INC     bc                                  ;916f
        LD      b,0x3a                              ;9170
        DEC     b                                   ;9172
        DEC     b                                   ;9173
        LD      b,0x42                              ;9174
        LD      b,d                                 ;9176
        LD      b,d                                 ;9177
        LD      b,0x42                              ;9178
        LD      b,d                                 ;917a
        LD      b,d                                 ;917b
        RLCA                                        ;917c
        LD      b,0x6                               ;917d
        LD      b,0x38                              ;917f
        LD      b,0x6                               ;9181
        LD      b,0x38                              ;9183
        LD      b,0x6                               ;9185
        LD      b,0x38                              ;9187
        RLCA                                        ;9189
        RLCA                                        ;918a
        RLCA                                        ;918b
        JR      c,bE_l918fh                         ;918c
        SCF                                         ;918e
