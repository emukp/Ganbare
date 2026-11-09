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
txtMenuPlayer1:
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
txtMenuPlayer2:
