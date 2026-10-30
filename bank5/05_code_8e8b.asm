b5_l8e8bh:
        NOP                                         ;8e8b
        INC     bc                                  ;8e8c
        LD      (hl),a                              ;8e8d
        ADD     a,c                                 ;8e8e
        NOP                                         ;8e8f
        INC     bc                                  ;8e90
        LD      (hl),a                              ;8e91
        ADD     a,c                                 ;8e92
b5_l8e93h:
        NOP                                         ;8e93
        INC     bc                                  ;8e94
        INC     sp                                  ;8e95
        ADD     a,c                                 ;8e96
        NOP                                         ;8e97
        INC     bc                                  ;8e98
        INC     sp                                  ;8e99
        ADD     a,c                                 ;8e9a
b5_l8e9bh:
        NOP                                         ;8e9b
        INC     bc                                  ;8e9c
        INC     sp                                  ;8e9d
        ADD     a,c                                 ;8e9e
        NOP                                         ;8e9f
        INC     bc                                  ;8ea0
        INC     sp                                  ;8ea1
        ADD     a,c                                 ;8ea2
b5_l8ea3h:
        NOP                                         ;8ea3
        INC     bc                                  ;8ea4
        INC     sp                                  ;8ea5
        RST     OUTDO                               ;8ea6
        LD      (hl),b                              ;8ea7
        ADC     a,0xec                              ;8ea8
        NOP                                         ;8eaa
b5_l8eabh:
        LD      (hl),b                              ;8eab
        ADC     a,0xec                              ;8eac
        NOP                                         ;8eae
        LD      (hl),b                              ;8eaf
        ADC     a,0xec                              ;8eb0
        NOP                                         ;8eb2
b5_l8eb3h:
        JR      nc,$-48                             ;8eb3
        CALL    pe,0x3000                           ;8eb5
        ADC     a,0xec                              ;8eb8
        NOP                                         ;8eba
        JR      nc,b5_l8e8bh                        ;8ebb
        CALL    pe,0x3000                           ;8ebd
        ADC     a,0xec                              ;8ec0
        NOP                                         ;8ec2
        JR      nc,b5_l8e93h                        ;8ec3
        CALL    pe,0x3000                           ;8ec5
        ADC     a,0xec                              ;8ec8
        NOP                                         ;8eca
        JR      nc,b5_l8e9bh                        ;8ecb
        CALL    pe,0x3000                           ;8ecd
        ADC     a,0xec                              ;8ed0
        NOP                                         ;8ed2
        JR      nc,b5_l8ea3h                        ;8ed3
        CALL    pe,0x3000                           ;8ed5
        ADC     a,0xec                              ;8ed8
        NOP                                         ;8eda
        JR      nc,b5_l8eabh                        ;8edb
        CALL    pe,0x3000                           ;8edd
        ADC     a,0xec                              ;8ee0
        NOP                                         ;8ee2
        JR      nc,b5_l8eb3h                        ;8ee3
        CALL    pe,0x0                              ;8ee5
        ADC     a,0xec                              ;8ee8
        NOP                                         ;8eea
        LD      (hl),b                              ;8eeb
        ADC     a,0xec                              ;8eec
        NOP                                         ;8eee
        JR      nc,$-48                             ;8eef
        CALL    pe,0x3000                           ;8ef1
        ADC     a,0xec                              ;8ef4
        NOP                                         ;8ef6
        JR      nc,$-48                             ;8ef7
        CALL    pe,0x3000                           ;8ef9
        ADC     a,0xec                              ;8efc
        NOP                                         ;8efe
        JR      nc,$-48                             ;8eff
        CALL    pe,0x0                              ;8f01
        ADC     a,0xec                              ;8f04
        LD      b,0x0                               ;8f06
        INC     bc                                  ;8f08
        LD      (hl),a                              ;8f09
        ADD     a,c                                 ;8f0a
        NOP                                         ;8f0b
        INC     bc                                  ;8f0c
        INC     sp                                  ;8f0d
        ADD     a,c                                 ;8f0e
        NOP                                         ;8f0f
        INC     bc                                  ;8f10
        INC     sp                                  ;8f11
        ADD     a,c                                 ;8f12
        NOP                                         ;8f13
        INC     bc                                  ;8f14
        INC     sp                                  ;8f15
        ADD     a,c                                 ;8f16
        NOP                                         ;8f17
        INC     bc                                  ;8f18
        INC     sp                                  ;8f19
        ADD     a,c                                 ;8f1a
        NOP                                         ;8f1b
        INC     bc                                  ;8f1c
        INC     sp                                  ;8f1d
        DEC     b                                   ;8f1e
        NOP                                         ;8f1f
        INC     bc                                  ;8f20
        INC     sp                                  ;8f21
        ADD     a,c                                 ;8f22
        NOP                                         ;8f23
        INC     bc                                  ;8f24
        INC     sp                                  ;8f25
        ADD     a,c                                 ;8f26
        NOP                                         ;8f27
        INC     bc                                  ;8f28
        INC     sp                                  ;8f29
        ADD     a,c                                 ;8f2a
        NOP                                         ;8f2b
        INC     bc                                  ;8f2c
        INC     sp                                  ;8f2d
        ADD     a,c                                 ;8f2e
        NOP                                         ;8f2f
        INC     bc                                  ;8f30
        INC     sp                                  ;8f31
        ADD     a,c                                 ;8f32
        NOP                                         ;8f33
        INC     bc                                  ;8f34
        INC     sp                                  ;8f35
        ADD     a,c                                 ;8f36
        NOP                                         ;8f37
        INC     bc                                  ;8f38
        INC     sp                                  ;8f39
        ADD     a,c                                 ;8f3a
        NOP                                         ;8f3b
        INC     bc                                  ;8f3c
        INC     sp                                  ;8f3d
        LD      (bc),a                              ;8f3e
        CP      e                                   ;8f3f
        ADC     a,d                                 ;8f40
        OR      b                                   ;8f41
        NOP                                         ;8f42
        CP      e                                   ;8f43
        CP      e                                   ;8f44
        NOP                                         ;8f45
        CALL    z,0xb0bb                            ;8f46
        INC     c                                   ;8f49
        CALL    z,0x4                               ;8f4a
        ADD     a,l                                 ;8f4d
        LD      c,0xee                              ;8f4e
        XOR     0xe0                                ;8f50
        INC     c                                   ;8f52
        INC     bc                                  ;8f53
        CALL    z,0x4                               ;8f54
        INC     b                                   ;8f57
        CP      e                                   ;8f58
        NOP                                         ;8f59
        JR      nz,$-101                            ;8f5a
        INC     c                                   ;8f5c
        NOP                                         ;8f5d
        INC     d                                   ;8f5e
        SBC     a,c                                 ;8f5f
        DJNZ    b5_l8f62h                           ;8f60
b5_l8f62h:
        INC     b                                   ;8f62
        LD      d,l                                 ;8f63
        INC     b                                   ;8f64
        LD      (hl),a                              ;8f65
        EX      af,af'                              ;8f66
        SBC     a,c                                 ;8f67
        INC     b                                   ;8f68
        LD      d,l                                 ;8f69
        INC     b                                   ;8f6a
        LD      (hl),a                              ;8f6b
        JR      nz,b5_l8f6eh                        ;8f6c
b5_l8f6eh:
        INC     b                                   ;8f6e
        LD      d,l                                 ;8f6f
        INC     b                                   ;8f70
        NOP                                         ;8f71
        INC     b                                   ;8f72
        LD      d,l                                 ;8f73
        DEC     c                                   ;8f74
        NOP                                         ;8f75
        ADC     a,e                                 ;8f76
        RST     KEYINT                              ;8f77
        RET     p                                   ;8f78
        RRCA                                        ;8f79
        RST     KEYINT                              ;8f7a
        RST     CHRGTR                              ;8f7b
        RST     KEYINT                              ;8f7c
