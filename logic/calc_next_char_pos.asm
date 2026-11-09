; === CalcNextCharPos (0x4984) ===
CalcNextCharPos:
        LD      a,d                                 ;4984
        ADD     a,0x8                               ;4985
        LD      d,a                                 ;4987
        RET     nz                                  ;4988
        LD      a,e                                 ;4989
        ADD     a,0x8                               ;498a
        LD      e,a                                 ;498c
        RET                                         ;498d

