b5_l89d6h:
        INC     bc                                  ;89d6
        NOP                                         ;89d7
        ADD     a,d                                 ;89d8
        SBC     a,c                                 ;89d9
        NOP                                         ;89da
        INC     bc                                  ;89db
        CALL    z,0x3                               ;89dc
        SUB     l                                   ;89df
        INC     c                                   ;89e0
        NOP                                         ;89e1
        EX      af,af'                              ;89e2
        ADC     a,b                                 ;89e3
        INC     c                                   ;89e4
        NOP                                         ;89e5
        EX      af,af'                              ;89e6
        EX      af,af'                              ;89e7
        INC     c                                   ;89e8
        NOP                                         ;89e9
        EX      af,af'                              ;89ea
        ADC     a,b                                 ;89eb
        INC     c                                   ;89ec
        NOP                                         ;89ed
        EX      af,af'                              ;89ee
        EX      af,af'                              ;89ef
        INC     c                                   ;89f0
        NOP                                         ;89f1
b5_l89f2h:
        EX      af,af'                              ;89f2
        ADC     a,b                                 ;89f3
        INC     c                                   ;89f4
        INC     bc                                  ;89f5
        NOP                                         ;89f6
        ADD     a,c                                 ;89f7
        INC     c                                   ;89f8
        INC     bc                                  ;89f9
        NOP                                         ;89fa
        ADD     a,c                                 ;89fb
        RLCA                                        ;89fc
        INC     bc                                  ;89fd
        INC     sp                                  ;89fe
        ADD     a,l                                 ;89ff
        JR      nc,b5_l8a40h                        ;8a00
        INC     sp                                  ;8a02
        LD      a,0x30                              ;8a03
        INC     bc                                  ;8a05
        EX      (sp),hl                             ;8a06
        ADD     a,c                                 ;8a07
        RET     po                                  ;8a08
        INC     bc                                  ;8a09
        INC     sp                                  ;8a0a
        ADD     a,c                                 ;8a0b
        JR      nc,$+18                             ;8a0c
        NOP                                         ;8a0e
        ADD     a,h                                 ;8a0f
        XOR     0xe0                                ;8a10
        XOR     0xee                                ;8a12
        INC     b                                   ;8a14
        CALL    z,0x4                               ;8a15
        INC     bc                                  ;8a18
        XOR     0x81                                ;8a19
        RET     po                                  ;8a1b
        EX      af,af'                              ;8a1c
        CALL    z,0x4                               ;8a1d
        INC     bc                                  ;8a20
        XOR     0x81                                ;8a21
        RET     po                                  ;8a23
        EX      af,af'                              ;8a24
        CALL    z,0x4                               ;8a25
        INC     bc                                  ;8a28
        XOR     0x81                                ;8a29
        RET     po                                  ;8a2b
        INC     b                                   ;8a2c
        CALL    z,0x8                               ;8a2d
        INC     c                                   ;8a30
        LD      (hl),a                              ;8a31
        INC     d                                   ;8a32
        INC     sp                                  ;8a33
        INC     b                                   ;8a34
        LD      (hl),a                              ;8a35
        INC     bc                                  ;8a36
        ADC     a,b                                 ;8a37
        SUB     l                                   ;8a38
        ADD     a,a                                 ;8a39
        ADD     a,b                                 ;8a3a
        NOP                                         ;8a3b
        NOP                                         ;8a3c
        ADD     a,a                                 ;8a3d
        ADD     a,b                                 ;8a3e
        NOP                                         ;8a3f
b5_l8a40h:
        NOP                                         ;8a40
        ADD     a,e                                 ;8a41
        ADD     a,b                                 ;8a42
        NOP                                         ;8a43
        NOP                                         ;8a44
        ADD     a,e                                 ;8a45
        ADD     a,b                                 ;8a46
        NOP                                         ;8a47
        NOP                                         ;8a48
        ADD     a,e                                 ;8a49
        ADD     a,a                                 ;8a4a
        LD      (hl),a                              ;8a4b
        LD      (hl),a                              ;8a4c
        ADD     a,e                                 ;8a4d
        DEC     b                                   ;8a4e
        INC     sp                                  ;8a4f
        LD      (bc),a                              ;8a50
        ADC     a,b                                 ;8a51
        SBC     a,c                                 ;8a52
        INC     sp                                  ;8a53
        JR      c,b5_l89d6h                         ;8a54
        EX      af,af'                              ;8a56
        ADD     a,e                                 ;8a57
        JR      c,b5_l8a5ah                         ;8a58
b5_l8a5ah:
        NOP                                         ;8a5a
        ADD     a,e                                 ;8a5b
        JR      c,b5_l8a5eh                         ;8a5c
b5_l8a5eh:
        NOP                                         ;8a5e
        ADD     a,e                                 ;8a5f
        JR      c,b5_l8a62h                         ;8a60
b5_l8a62h:
        NOP                                         ;8a62
        ADD     a,e                                 ;8a63
        JR      c,b5_l8a66h                         ;8a64
b5_l8a66h:
        NOP                                         ;8a66
        ADD     a,e                                 ;8a67
        JR      c,b5_l89f2h                         ;8a68
        ADC     a,b                                 ;8a6a
        ADD     a,e                                 ;8a6b
        INC     b                                   ;8a6c
        INC     sp                                  ;8a6d
        INC     b                                   ;8a6e
        NOP                                         ;8a6f
        INC     b                                   ;8a70
        LD      (hl),a                              ;8a71
        INC     d                                   ;8a72
        INC     sp                                  ;8a73
        INC     b                                   ;8a74
        NOP                                         ;8a75
        INC     bc                                  ;8a76
        CP      e                                   ;8a77
        SBC     a,c                                 ;8a78
        NOP                                         ;8a79
        CP      e                                   ;8a7a
        CP      e                                   ;8a7b
        NOP                                         ;8a7c
