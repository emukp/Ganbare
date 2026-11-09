GetTableWord:
        CALL    ADD_HL_A                            ;4d81
        LD      a,(hl)                              ;4d84
        INC     hl                                  ;4d85
        LD      h,(hl)                              ;4d86
        LD      l,a                                 ;4d87
        RET                                         ;4d88

