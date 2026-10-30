ClearMemStride:
        LD      (hl),0x0                            ;67c6
        ADD     hl,de                               ;67c8
        DJNZ    ClearMemStride                      ;67c9
        RET                                         ;67cb

; === ShiftC490Queue (0x67cc) ===
ShiftC490Queue:
        LD      hl,BlockQueue                       ;67cc
        LD      d,h                                 ;67cf
        LD      e,l                                 ;67d0
        INC     de                                  ;67d1
        LD      (hl),0x0                            ;67d2
        LD      bc,0x5f                             ;67d4
        LDIR                                        ;67d7
        RET                                         ;67d9

