b3_sub_ae5bh:
        CALL    b3_sub_ae81h                        ;ae5b
        LD      a,(0xee80)                          ;ae5e
        LD      hl,0xc270                           ;ae61
        CALL    ADD_HL_A                            ;ae64
        LD      a,(hl)                              ;ae67
        CP      0x3                                 ;ae68
        JR      z,b3_lae37h                         ;ae6a
        CALL    b3_sub_aef9h                        ;ae6c
        LD      a,(0xee80)                          ;ae6f
        LD      hl,0xc270                           ;ae72
        CALL    ADD_HL_A                            ;ae75
        LD      a,(0xee81)                          ;ae78
        INC     (hl)                                ;ae7b
        CALL    DrawFieldItems                      ;ae7c
        JR      b3_lae37h                           ;ae7f
b3_sub_ae81h:
        LD      a,(0xcd8c)                          ;ae81
        LD      hl,0x9556                           ;ae84
        ADD     a,a                                 ;ae87
        CALL    ADD_HL_A                            ;ae88
        LD      e,(hl)                              ;ae8b
        INC     hl                                  ;ae8c
        LD      d,(hl)                              ;ae8d
        LD      a,0xff                              ;ae8e
        JP      0x4eb9                              ;ae90
        LD      a,0x64                              ;ae93
        LD      (0xc27c),a                          ;ae95
        CALL    b3_sub_ae38h                        ;ae98
        JR      c,b3_laed9h                         ;ae9b
        LD      a,0x1                               ;ae9d
        CALL    b3_sub_ae11h                        ;ae9f
        RET                                         ;aea2
        CALL    b3_sub_ae38h                        ;aea3
        JR      c,b3_laed9h                         ;aea6
        LD      a,0x5                               ;aea8
        CALL    b3_sub_ae11h                        ;aeaa
        RET                                         ;aead
        LD      b,0x10                              ;aeae
        LD      b,0x8                               ;aeb0
        PUSH    bc                                  ;aeb2
        CALL    b3_sub_ae38h                        ;aeb3
        POP     bc                                  ;aeb6
        JR      c,b3_laed9h                         ;aeb7
        LD      a,b                                 ;aeb9
        CALL    0x5884                              ;aeba
        CALL    b3_sub_ae81h                        ;aebd
        CALL    b3_sub_aef9h                        ;aec0
        RET                                         ;aec3
        CALL    b3_sub_ae38h                        ;aec4
        JR      c,b3_laed9h                         ;aec7
        CALL    b3_sub_ae81h                        ;aec9
        CALL    b3_sub_aef9h                        ;aecc
        LD      de,0x200                            ;aecf
        JP      0x5945                              ;aed2
b3_laed5h:
        LD      c,0x0                               ;aed5
        JR      b3_laedbh                           ;aed7
b3_laed9h:
        LD      c,0x4                               ;aed9
b3_laedbh:
        LD      a,(0xcd5f)                          ;aedb
        SRL     a                                   ;aede
        SRL     a                                   ;aee0
        LD      de,b3_laef1h                        ;aee2
        CALL    ADD_DE_A                            ;aee5
        LD      a,c                                 ;aee8
        CALL    ADD_DE_A                            ;aee9
        LD      a,(de)                              ;aeec
        CALL    b3_sub_b836h                        ;aeed
        RET                                         ;aef0
b3_laef1h: equ     #aef1
        DEFB    0x67,0x68,0x69,0x6a,0x6b,0x6c,0x6d,0x6e  ;aef1 ; data:code-gap
b3_sub_aef9h:
        LD      a,(0xee80)                          ;aef9
b3_sub_aefch:
        LD      hl,0xcda0                           ;aefc
        CALL    ADD_HL_A                            ;aeff
        LD      a,(hl)                              ;af02
        CP      0x4                                 ;af03
        RET     z                                   ;af05
        INC     (hl)                                ;af06
        RET                                         ;af07
        LD      de,0x181e                           ;af08
        LD      a,0x27                              ;af0b
        JP      0x8334                              ;af0d
        LD      (ix+0xa),0x19                       ;af10
        XOR     a                                   ;af14
        LD      (ix+0xc),a                          ;af15
        LD      (ix+0x6),a                          ;af18
        LD      (ix+0x7),a                          ;af1b
        LD      (ix+0x8),a                          ;af1e
        LD      (ix+0x9),a                          ;af21
        LD      (ix+0xf),a                          ;af24
        LD      c,0xff                              ;af27
        LD      hl,0xc26f                           ;af29
        LD      b,0xb                               ;af2c
        CALL    b3_sub_af6fh                        ;af2e
        LD      (ix+0x1),0x0                        ;af31
        RET                                         ;af35
        LD      a,(ix+0x1)                          ;af36
        CALL    JumpIndex                           ;af39
