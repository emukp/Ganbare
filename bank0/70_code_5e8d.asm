GotoGmOpt:
        XOR     a                                   ;5e8d
        LD      (BGmOptPending),a                   ;5e8e
        LD      a,0x1                               ;5e91
        LD      (BGmOptMoney),a                     ;5e93
        LD      (BGmOptLand),a                      ;5e96
        LD      a,0x3                               ;5e99
        LD      (BGmOptLives),a                     ;5e9b
        LD      a,0xc                               ;5e9e
        JP      SetGameStatus                       ;5ea0
