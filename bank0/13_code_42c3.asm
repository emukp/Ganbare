RleDecompress:
        LD      a,(de)                              ;42c3
        AND     a                                   ;42c4
        RET     z                                   ;42c5
        INC     de                                  ;42c6
        LD      b,a                                 ;42c7
        AND     0x7f                                ;42c8
        CP      b                                   ;42ca
        JR      z,b0_l42d9h                         ;42cb
        AND     a                                   ;42cd
        JR      z,RleDecompress                     ;42ce
        EX      de,hl                               ;42d0
        LD      b,0x0                               ;42d1
        LD      c,a                                 ;42d3
        LDIR                                        ;42d4
        EX      de,hl                               ;42d6
        JR      RleDecompress                       ;42d7
b0_l42d9h:
        LD      a,(de)                              ;42d9
        INC     de                                  ;42da
b0_l42dbh:
        LD      (hl),a                              ;42db
        INC     hl                                  ;42dc
        DJNZ    b0_l42dbh                           ;42dd
        JR      RleDecompress                       ;42df
        LD      (0xcd61),de                         ;42e1
        LD      (0xcd63),de                         ;42e5
        LD      (0xcd65),hl                         ;42e9
        XOR     a                                   ;42ec
        LD      (0xcd67),a                          ;42ed
        RET                                         ;42f0
b0_l42f1h:
        LD      a,(0xcd67)                          ;42f1
        OR      a                                   ;42f4
        RET     nz                                  ;42f5
        LD      hl,(0xcd65)                         ;42f6
        LD      a,(hl)                              ;42f9
        INC     hl                                  ;42fa
        LD      (0xcd65),hl                         ;42fb
        LD      de,(0xcd61)                         ;42fe (dest for ASCII and zh)
        CP      0xff                                ;4302
        JR      z,b0_l432dh                         ;4304
        CP      0xfe                                ;4306
        JR      z,b0_l4333h                         ;4308
        CP      0xe0                                ;430a
        JR      nc,b0_l4345h                        ;430c
        CP      0xc0                                ;430e
        JR      c,b0_l4315h                         ;4310
        CALL    ZhTypewriterChar                    ;4312 zh: draws 12px, advances 12, returns to caller
b0_l4315h:
        PUSH    af                                  ;4315
        CALL    DrawChar                            ;4316
        POP     af                                  ;4319
        SUB     0x62                                ;431a 0x62/0x63 -> 4px, else 8px
        CP      0x02                                ;431c
        LD      a,0x8                               ;431e
        JR      nc,b0_l4321h                        ;4320
        LD      a,0x4                               ;4322
b0_l4321h:
        LD      de,(0xcd61)                         ;4324
        ADD     a,d                                 ;4328
        LD      d,a                                 ;4329
        LD      (0xcd61),de                         ;432a
        OR      a                                   ;432e
        RET                                         ;432f
b0_l432dh:
        LD      a,0x1                               ;4330
        LD      (0xcd67),a                          ;4332
        RET                                         ;4335
b0_l4333h:
        LD      hl,(0xcd63)                         ;4336
        LD      a,0x8                               ;4339
        ADD     a,l                                 ;433b
        LD      l,a                                 ;433c
        LD      (0xcd63),hl                         ;433d
        LD      (0xcd61),hl                         ;4340
        JR      b0_l42f1h                           ;4343
b0_l4345h:
        SUB     0xe0                                ;4345
        JR      z,b0_l432dh                         ;4347
        ADD     a,a                                 ;4349
        ADD     a,a                                 ;434a
        ADD     a,a                                 ;434b
        CALL    b0_l4321h                           ;434c
        JR      b0_l42f1h                           ;434f
