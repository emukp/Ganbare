bD_l7fcah:
        LD      b,e                                 ;7fca
        INC     b                                   ;7fcb
bD_l7fcch:
        LD      b,h                                 ;7fcc
        INC     b                                   ;7fcd
        LD      b,l                                 ;7fce
        INC     bc                                  ;7fcf
        RRCA                                        ;7fd0
        ADD     a,c                                 ;7fd1
        LD      (de),a                              ;7fd2
        INC     bc                                  ;7fd3
        RRCA                                        ;7fd4
        ADC     a,d                                 ;7fd5
        EX      af,af'                              ;7fd6
        RRCA                                        ;7fd7
        RRCA                                        ;7fd8
        LD      (de),a                              ;7fd9
        LD      bc,0xf0f                            ;7fda
        EX      af,af'                              ;7fdd
        LD      bc,0x313                            ;7fde
        RRCA                                        ;7fe1
        ADD     a,c                                 ;7fe2
        ADD     hl,bc                               ;7fe3
        INC     bc                                  ;7fe4
        RRCA                                        ;7fe5
        ADD     a,(hl)                              ;7fe6
        LD      bc,0xf13                            ;7fe7
        RRCA                                        ;7fea
        LD      bc,0x309                            ;7feb
        RRCA                                        ;7fee
        ADC     a,b                                 ;7fef
        LD      (de),a                              ;7ff0
        LD      bc,0xf01                            ;7ff1
        EX      af,af'                              ;7ff4
        LD      bc,0x1201                           ;7ff5
        INC     bc                                  ;7ff8
        LD      bc,0x881                            ;7ff9
        DEC     b                                   ;7ffc
        LD      bc,0x1386                           ;7ffd
