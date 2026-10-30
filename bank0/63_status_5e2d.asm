; === SetGameStatus (0x5e2d) ===
SetGameStatus:
        LD      (GameStatus),a                      ;5e2d
        LD      a,0x20                              ;5e30
        LD      (WaitCounter),a                     ;5e32
        JP      ResetSubstatus                      ;5e35
