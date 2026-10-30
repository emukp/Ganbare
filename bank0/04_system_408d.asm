; === JumpIndex (0x408d) ===
JumpIndex:
        POP     hl                                  ;408d
        ADD     a,a                                 ;408e
        CALL    ADD_HL_A                            ;408f
        LD      e,(hl)                              ;4092
        INC     hl                                  ;4093
        LD      d,(hl)                              ;4094
        EX      de,hl                               ;4095
        JP      (hl)                                ;4096

