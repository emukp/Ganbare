; === GetMapParams (0x77aa) ===
GetMapParams:
        LD      a,(0xc289)                          ;77aa
        LD      b,a                                 ;77ad
        ADD     a,a                                 ;77ae
        ADD     a,b                                 ;77af
        LD      hl,MapParamsTbl                     ;77b0
        CALL    ADD_HL_A                            ;77b3
        LD      de,PerMapParam                      ;77b6
        LD      bc,0x3                              ;77b9
        LDIR                                        ;77bc
        RET                                         ;77be
MapParamsTbl: equ     #77bf
