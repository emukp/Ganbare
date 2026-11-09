ShiftCC00Queue:
        LD      hl,0xcc00                           ;67f4
        LD      de,0xcc01                           ;67f7
        LD      (hl),0x0                            ;67fa
        LD      bc,0xff                             ;67fc
        LDIR                                        ;67ff
        RET                                         ;6801

