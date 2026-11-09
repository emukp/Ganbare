DisableSprites:
        LD      a,(RG08SAV)                         ;4626
        OR      0x2                                 ;4629
        LD      b,a                                 ;462b
        LD      c,0x8                               ;462c
        JP      WRTVDP                              ;462e
EnableSprites:
        LD      a,(RG08SAV)                         ;4631
        AND     0xfd                                ;4634
        LD      b,a                                 ;4636
        LD      c,0x8                               ;4637
        JP      WRTVDP                              ;4639
