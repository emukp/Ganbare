        DEFB    0x91,0x65,0x94,0x65,0x99,0x65,0x9d,0x65  ;6589 ; data:code-gap
        DEFB    0x02,0x01,0x03,0x04,0x00,0x02,0x04,0x05  ;6591
        DEFB    0x03,0x01,0x03,0x06,0x04,0x00,0x02,0x04  ;6599
        DEFB    0x06                                ;65a1
        DEFB    0x21                                ;65a2
        RST     0                                   ;65a3
        LD      h,l                                 ;65a4
        LD      de,AbSprAttrTable                   ;65a5
        LD      b,0x10                              ;65a8
b1_l65aah:
        LD      a,(hl)                              ;65aa
        LD      (de),a                              ;65ab
        INC     hl                                  ;65ac
        INC     de                                  ;65ad
        LD      a,(hl)                              ;65ae
        LD      (de),a                              ;65af
        INC     hl                                  ;65b0
        INC     de                                  ;65b1
        LD      a,(hl)                              ;65b2
        LD      (de),a                              ;65b3
        INC     hl                                  ;65b4
        INC     de                                  ;65b5
        INC     de                                  ;65b6
        DJNZ    b1_l65aah                           ;65b7
        LD      hl,AbSprColorTable                  ;65b9
        LD      de,0xec01                           ;65bc
        LD      bc,0xff                             ;65bf
        LD      (hl),0x3                            ;65c2
        LDIR                                        ;65c4
        RET                                         ;65c6
        DEFB    0x40,0x60,0x00,0x40,0x70,0x04,0x40,0x80  ;65c7 ; data:code-gap
        DEFB    0x08,0x40,0x90,0x0c,0x50,0x60,0x10,0x50  ;65cf
        DEFB    0x70,0x14,0x50,0x80,0x18,0x50,0x90,0x1c  ;65d7
        DEFB    0x60,0x60,0x20,0x60,0x70,0x24,0x60,0x80  ;65df
        DEFB    0x28,0x60,0x90,0x2c,0x70,0x60,0x30,0x70  ;65e7
        DEFB    0x70,0x34,0x70,0x80,0x38,0x70,0x90,0x3c  ;65ef
b1_sub_65f7h:
        LD      de,0xe780                           ;65f7
        LD      a,(0xc281)                          ;65fa
        ADD     a,a                                 ;65fd
        LD      h,0x0                               ;65fe
        LD      l,a                                 ;6600
        ADD     hl,hl                               ;6601
        ADD     hl,de                               ;6602
        LD      de,SceneType                        ;6603
        LD      a,(de)                              ;6606
        LD      b,a                                 ;6607
        XOR     a                                   ;6608
        LD      (de),a                              ;6609
        DEC     b                                   ;660a
        LD      a,b                                 ;660b
        CALL    ADD_HL_A                            ;660c
        LD      a,(hl)                              ;660f
        CP      0xff                                ;6610
        RET     z                                   ;6612
        LD      (0xc281),a                          ;6613
        RET                                         ;6616
b1_sub_6617h:
        LD      de,0xe780                           ;6617
        LD      a,(0xc281)                          ;661a
        ADD     a,a                                 ;661d
        LD      h,0x0                               ;661e
        LD      l,a                                 ;6620
        ADD     hl,hl                               ;6621
        ADD     hl,de                               ;6622
        LD      de,0xc284                           ;6623
        LD      bc,0x4                              ;6626
        LDIR                                        ;6629
        RET                                         ;662b

