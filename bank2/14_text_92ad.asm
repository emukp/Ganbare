PrintDialogTextA7:
        LD      a,0x7                               ;92ad
        JP      PrintDialogText                     ;92af
b2_sub_92b2h:
        XOR     a                                   ;92b2
        LD      de,0xcd84                           ;92b3
        LD      hl,0xcd83                           ;92b6
        LD      bc,0x8                              ;92b9
        LD      (hl),a                              ;92bc
        LDIR                                        ;92bd
        LD      de,0xcd83                           ;92bf
        LD      b,0x10                              ;92c2
        LD      hl,(0xcd80)                         ;92c4
        XOR     a                                   ;92c7
        LD      (0xee80),a                          ;92c8
        INC     a                                   ;92cb
b2_l92cch:
        ADD     hl,hl                               ;92cc
        PUSH    bc                                  ;92cd
        PUSH    af                                  ;92ce
        PUSH    hl                                  ;92cf
        CALL    c,b2_sub_92dah                      ;92d0
        POP     hl                                  ;92d3
        POP     af                                  ;92d4
        POP     bc                                  ;92d5
        INC     a                                   ;92d6
        DJNZ    b2_l92cch                           ;92d7
        RET                                         ;92d9
b2_sub_92dah:
        LD      (de),a                              ;92da
        INC     de                                  ;92db
        PUSH    de                                  ;92dc
        LD      b,a                                 ;92dd
        PUSH    bc                                  ;92de
        CALL    b2_sub_932ah                        ;92df
        POP     bc                                  ;92e2
        LD      a,(0xc27e)                          ;92e3
        OR      a                                   ;92e6
        JR      nz,b2_l92f4h                        ;92e7
        LD      a,b                                 ;92e9
        DEC     a                                   ;92ea
        CP      0xe                                 ;92eb
        JR      c,b2_l92f4h                         ;92ed
        LD      hl,0x900                            ;92ef
        JR      b2_l92ffh                           ;92f2
b2_l92f4h:
        LD      a,b                                 ;92f4
        DEC     a                                   ;92f5
        ADD     a,a                                 ;92f6
        CALL    ADD_DE_A                            ;92f7
        LD      a,(de)                              ;92fa
        LD      l,a                                 ;92fb
        INC     de                                  ;92fc
        LD      a,(de)                              ;92fd
        LD      h,a                                 ;92fe
b2_l92ffh:
        LD      a,b                                 ;92ff
        DEC     a                                   ;9300
        LD      de,0xcda0                           ;9301
        CALL    ADD_DE_A                            ;9304
        LD      a,(de)                              ;9307
        LD      b,a                                 ;9308
        OR      a                                   ;9309
        JR      z,b2_l9313h                         ;930a
b2_l930ch:
        LD      e,l                                 ;930c
        LD      d,h                                 ;930d
        CALL    b2_sub_9364h                        ;930e
        DJNZ    b2_l930ch                           ;9311
b2_l9313h:
        LD      a,(0xee80)                          ;9313
        LD      de,0xcd86                           ;9316
        CALL    ADD_DE_A                            ;9319
        LD      a,(0xee80)                          ;931c
        INC     a                                   ;931f
        INC     a                                   ;9320
        LD      (0xee80),a                          ;9321
        EX      de,hl                               ;9324
        LD      (hl),e                              ;9325
        INC     hl                                  ;9326
        LD      (hl),d                              ;9327
        POP     de                                  ;9328
        RET                                         ;9329
b2_sub_932ah:
        LD      a,(0xc289)                          ;932a
        LD      e,a                                 ;932d
        AND     0x1                                 ;932e
        SRL     e                                   ;9330
        SRL     e                                   ;9332
        ADD     a,e                                 ;9334
        LD      de,b2_l9371h                        ;9335
        CALL    GetPointerDE2A                      ;9338
        LD      a,(GameLand)                        ;933b
        LD      b,a                                 ;933e
        ADD     a,a                                 ;933f
        ADD     a,a                                 ;9340
        ADD     a,a                                 ;9341
        SUB     b                                   ;9342
        LD      b,a                                 ;9343
        LD      a,(GameScore)                       ;9344
        ADD     a,b                                 ;9347
        INC     a                                   ;9348
        LD      b,a                                 ;9349
        CP      0x28                                ;934a
        LD      a,0x60                              ;934c
        JR      nc,b2_l9360h                        ;934e
        LD      a,b                                 ;9350
        CP      0x14                                ;9351
        LD      a,0x40                              ;9353
        JR      nc,b2_l9360h                        ;9355
        LD      a,b                                 ;9357
        CP      0xa                                 ;9358
        LD      a,0x20                              ;935a
        JR      nc,b2_l9360h                        ;935c
        LD      a,0x0                               ;935e
b2_l9360h:
        CALL    ADD_DE_A                            ;9360
        RET                                         ;9363
b2_sub_9364h:
        LD      a,l                                 ;9364
        ADD     a,e                                 ;9365
        DAA                                         ;9366
        LD      l,a                                 ;9367
        LD      a,h                                 ;9368
        ADC     a,d                                 ;9369
        DAA                                         ;936a
        LD      h,a                                 ;936b
        RET     nc                                  ;936c
        LD      hl,b2_l9999h                        ;936d
        RET                                         ;9370
b2_l9371h: equ     #9371
