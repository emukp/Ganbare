ClearScreen:
        CALL    ClearSprAttr                        ;45d3
        LD      bc,0xd4                             ;45d6
b0_l45d9h:
        PUSH    bc                                  ;45d9
        CALL    DisableScreen                       ;45da
        POP     bc                                  ;45dd
        CALL    ClearPage0                          ;45de
EnableScreen:
        LD      a,(RG1SAV)                          ;45e1
        OR      0x40                                ;45e4
        LD      b,a                                 ;45e6
        LD      c,0x1                               ;45e7
        CALL    WRTVDP                              ;45e9
        JR      EnableSprites                       ;45ec
DisableScreen:
        LD      a,(RG1SAV)                          ;45ee
        AND     0xbf                                ;45f1
        LD      b,a                                 ;45f3
        LD      c,0x1                               ;45f4
        CALL    WRTVDP                              ;45f6
        JR      DisableSprites                      ;45f9
