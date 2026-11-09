SetPaletteColor:
        PUSH    bc                                  ;463c
        PUSH    hl                                  ;463d
        LD      b,a                                 ;463e
        LD      a,(0x7)                             ;463f
        INC     a                                   ;4642
        LD      c,a                                 ;4643
        DI                                          ;4644
        OUT     (c),b                               ;4645
        LD      a,0x90                              ;4647
        OUT     (c),a                               ;4649
        INC     c                                   ;464b
        OUT     (c),d                               ;464c
        PUSH    af                                  ;464e
        POP     af                                  ;464f
        OUT     (c),e                               ;4650
        DEC     c                                   ;4652
        LD      hl,0xf680                           ;4653
        LD      a,b                                 ;4656
        ADD     a,a                                 ;4657
        ADD     a,l                                 ;4658
        LD      l,a                                 ;4659
        CALL    SetVramAddressWR                    ;465a
        DEC     c                                   ;465d
        OUT     (c),d                               ;465e
        OUT     (c),e                               ;4660
        POP     hl                                  ;4662
        POP     bc                                  ;4663
        EI                                          ;4664
        RET                                         ;4665

; === SetPalette (0x4666) ===
SetPalette:
        LD      a,(hl)                              ;4666
        INC     hl                                  ;4667
        INC     a                                   ;4668
        RET     z                                   ;4669
        DEC     a                                   ;466a
        LD      d,(hl)                              ;466b
        INC     hl                                  ;466c
        LD      e,(hl)                              ;466d
        INC     hl                                  ;466e
        CALL    SetPaletteColor                     ;466f
        JR      SetPalette                          ;4672
WaitVdpCmd:
        LD      a,0x2                               ;4674
        CALL    ReadStatusReg                       ;4676
        RRA                                         ;4679
        JR      c,WaitVdpCmd                        ;467a
        RET                                         ;467c

