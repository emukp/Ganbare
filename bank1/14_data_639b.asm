        DEFB    0x50,0x10                           ;639b ; data:text
        DEFB    0x69                                ;639d
        LD      hl,(0x2c2b)                         ;639e
        DEC     l                                   ;63a1
        LD      l,0x2f                              ;63a2
        NOP                                         ;63a4
        LD      hl,0x2829                           ;63a5
        DAA                                         ;63a8
        CP      0x48                                ;63a9
        SBC     a,b                                 ;63ab
        LD      b,e                                 ;63ac
        LD      h,e                                 ;63ad
        LD      e,(hl)                              ;63ae
        LD      b,b                                 ;63af
        LD      b,d                                 ;63b0
        LD      h,e                                 ;63b1
        NOP                                         ;63b2
        JR      nc,b1_l63f3h                        ;63b3
        LD      c,d                                 ;63b5
        LD      h,e                                 ;63b6
        LD      c,(hl)                              ;63b7
        LD      e,(hl)                              ;63b8
        DEC     (hl)                                ;63b9
        LD      h,a                                 ;63ba
        DEFB    0xfe                                ;63bb
