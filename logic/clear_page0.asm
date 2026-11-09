ClearPage0:
        LD      hl,0x0                              ;45fb
        XOR     a                                   ;45fe
        LD      d,a                                 ;45ff
        CALL    FillRect                            ;4600
        LD      b,0x0                               ;4603
        LD      c,0x17                              ;4605
        JP      WRTVDP                              ;4607
ClearSprAttr:
        LD      hl,0xf600                           ;460a
        LD      a,0xe0                              ;460d
        LD      bc,0x80                             ;460f
        CALL    FillVRAM                            ;4612
        CALL    0x67da                              ;4615
        LD      hl,0x7600                           ;4618
        LD      a,0xe0                              ;461b
        LD      bc,0x80                             ;461d
        CALL    FillVRAM                            ;4620
        JP      0x67da                              ;4623
