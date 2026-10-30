        DEFB    0x58                                ;63bc
        XOR     b                                   ;63bd
        LD      c,d                                 ;63be
        LD      b,e                                 ;63bf
        LD      d,a                                 ;63c0
        LD      b,d                                 ;63c1
        LD      h,e                                 ;63c2
        NOP                                         ;63c3
        DEC     (hl)                                ;63c4
        LD      h,e                                 ;63c5
        LD      e,l                                 ;63c6
        LD      c,c                                 ;63c7
        LD      h,e                                 ;63c8
        LD      e,b                                 ;63c9
        DEFB    0xfe                                ;63ca
