; === ENTRY (0x4097) ===
ENTRY:
        DI                                          ;4097
        LD      sp,Stack                            ;4098
        CALL    RSLREG                              ;409b
        RRCA                                        ;409e
        RRCA                                        ;409f
        AND     0x3                                 ;40a0
        LD      c,a                                 ;40a2
        LD      b,0x0                               ;40a3
        LD      hl,EXPTBL                           ;40a5
        ADD     hl,bc                               ;40a8
        LD      a,(hl)                              ;40a9
        AND     0x80                                ;40aa
        OR      c                                   ;40ac
        LD      c,a                                 ;40ad
        INC     hl                                  ;40ae
        INC     hl                                  ;40af
        INC     hl                                  ;40b0
        INC     hl                                  ;40b1
        LD      a,(hl)                              ;40b2
        AND     0xc                                 ;40b3
        OR      c                                   ;40b5
        LD      h,0x80                              ;40b6
        CALL    ENASLT                              ;40b8
        LD      hl,GameStatus                       ;40bb
        LD      de,GameSubStatus                    ;40be
        LD      bc,0x30ef                           ;40c1
        LD      (hl),0x0                            ;40c4
        LDIR                                        ;40c6
        CALL    SetBanks1_2_3                       ;40c8
        CALL    0x7eab                              ;40cb
        CALL    SetBanks1_2_3                       ;40ce
        CALL    InitHardware                        ;40d1
        DI                                          ;40d4
        LD      a,0xc3                              ;40d5
        LD      (HTIMI),a                           ;40d7
        LD      hl,InterruptTick                    ;40da
        LD      (0xfda0),hl                         ;40dd
        XOR     a                                   ;40e0
        LD      (CLIKSW),a                          ;40e1
        EI                                          ;40e4
DummyLoop:
        JR      DummyLoop                           ;40e5
