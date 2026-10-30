GetStageTableIndex:
        LD      a,(GameLand)                        ;41f6
        LD      b,a                                 ;41f9
        ADD     a,a                                 ;41fa
        LD      c,a                                 ;41fb
        ADD     a,a                                 ;41fc
        ADD     a,b                                 ;41fd
        ADD     a,c                                 ;41fe
        LD      c,a                                 ;41ff
        LD      a,(GameScore)                       ;4200
        ADD     a,c                                 ;4203
        ADD     a,a                                 ;4204
        RET                                         ;4205

