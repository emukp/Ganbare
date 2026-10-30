        DEFB    0x00,0x00,0x00,0x01,0x70,0x03,0x02  ;6476 ; data:palette
        LD      h,b                                 ;647d
        LD      bc,0x4403                           ;647e
        INC     b                                   ;6481
        RRCA                                        ;6482
        LD      (hl),a                              ;6483
        RLCA                                        ;6484
        RST     KEYINT                              ;6485

