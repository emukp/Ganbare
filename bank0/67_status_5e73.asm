; === StartGamePhase0 (0x5e73) ===
StartGamePhase0:
        DJNZ    gotoNextSubStatus                   ;5e73
        CALL    InitPlayerStatus                    ;5e75
        CALL    0x662c                              ;5e78
        LD      hl,BGmOptPending                    ;5e7b
        LD      a,(hl)                              ;5e7e
        OR      a                                   ;5e7f
        JR      z,gotoNoGmOpt                       ;5e80
        LD      (hl),0x0                            ;5e82
        CALL    0x8050                              ;5e84
