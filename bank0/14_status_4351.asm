InitPlayerStatus:
        LD      hl,0xc25a                           ;4351
        LD      bc,0xda6                            ;4354
        LD      d,h                                 ;4357
        LD      e,l                                 ;4358
        INC     e                                   ;4359
        LD      (hl),0x0                            ;435a
        LDIR                                        ;435c
        LD      hl,PlayerStatusTbl                  ;435e
        LD      de,PlayerStatus                     ;4361
        LD      bc,0x3                              ;4364
        LDIR                                        ;4367
        LD      a,(ControlConfig)                   ;4369
        AND     0x20                                ;436c
        RET     z                                   ;436e
        LD      hl,PlayerStatus                     ;436f
        LD      de,AbP2State                        ;4372
        LD      bc,0x100                            ;4375
        LDIR                                        ;4378
        RET                                         ;437a
PlayerStatusTbl: equ     #437b
