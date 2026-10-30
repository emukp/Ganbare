LoadDemoInput:
        DEC     hl                                  ;693f
        LD      c,(hl)                              ;6940
        INC     (hl)                                ;6941
        LD      de,AbDemoInputScript                ;6942
        LD      l,c                                 ;6945
        LD      h,0x0                               ;6946
        ADD     hl,hl                               ;6948
        ADD     hl,de                               ;6949
        LD      a,(hl)                              ;694a
        LD      (BDemoInputTimer),a                 ;694b
        INC     hl                                  ;694e
        LD      a,(hl)                              ;694f
        LD      (BDemoCurInput),a                   ;6950
        JR      b1_l692eh                           ;6953
AbDemoInputScript: equ     #6955
