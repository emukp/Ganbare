GotoTitle:
        LD      (hl),0x1                            ;6341
        LD      a,0x0                               ;6343
        CALL    ProcessSoundCommand                 ;6345
        JP      InitTitleScreen                     ;6348
NeitherTrigger:
        LD      a,(de)                              ;634b
        XOR     0x1                                 ;634c
        LD      (de),a                              ;634e
        LD      hl,BlipCounter                      ;634f
        LD      a,(hl)                              ;6352
        INC     (hl)                                ;6353
        RET                                         ;6354

