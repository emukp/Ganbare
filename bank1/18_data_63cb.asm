        DEFB    0x58                                ;63cb
        OR      b                                   ;63cc
        LD      c,e                                 ;63cd
        CCF                                         ;63ce
        LD      d,a                                 ;63cf
        LD      b,d                                 ;63d0
        LD      h,e                                 ;63d1
        NOP                                         ;63d2
        CCF                                         ;63d3
        LD      c,b                                 ;63d4
        DEC     sp                                  ;63d5
        LD      d,b                                 ;63d6
        RST     KEYINT                              ;63d7
cursorGfx: equ     #63d8
        DEFB    0xbc                                ;63d8 ; data:gfx
        CP      l                                   ;63d9
        RST     KEYINT                              ;63da
txtGameOver: equ     #63db
        DEFB    0x70                                ;63db ; data:text
        LD      d,b                                 ;63dc
        LD      a,(hl)                              ;63dd
        LD      a,a                                 ;63de
        ADD     a,b                                 ;63df
        ADD     a,c                                 ;63e0
        ADD     a,d                                 ;63e1
        RST     KEYINT                              ;63e2
        DEFB    0x60,0x60,0x78,0x25,0x00,0x42,0x63,0x00  ;63e3 ; data:text
        DEFB    0x41,0x41,0x63,0x36,0xff            ;63eb
txtHudInfos: equ     #63f0
        DEFB    0x48,0x00                           ;63f0 ; data:text
        LD      l,a                                 ;63f2
b1_l63f3h:
        LD      (hl),b                              ;63f3
        LD      (hl),c                              ;63f4
        LD      (hl),d                              ;63f5
        CP      0x70                                ;63f6
        NOP                                         ;63f8
        LD      l,e                                 ;63f9
        LD      l,h                                 ;63fa
        LD      l,l                                 ;63fb
        LD      l,(hl)                              ;63fc
        DEFB    0xfe                                ;63fd
txtHudLiang: equ     #63fe
        DEFB    0x90,0x08                           ;63fe ; data:text
        LD      l,d                                 ;6400
        CP      0xa0                                ;6401
        NOP                                         ;6403
        LD      (hl),e                              ;6404
        LD      (hl),h                              ;6405
        LD      (hl),l                              ;6406
b1_l6407h:
        HALT                                        ;6407
        LD      (hl),a                              ;6408
        CP      0xe8                                ;6409
        NOP                                         ;640b
        XOR     a                                   ;640c
        OR      b                                   ;640d
        RST     KEYINT                              ;640e
        LD      d,h                                 ;640f
        LD      h,b                                 ;6410
        ADD     a,e                                 ;6411
        ADD     a,h                                 ;6412
        ADD     a,l                                 ;6413
        ADD     a,(hl)                              ;6414
        ADD     a,a                                 ;6415
        NOP                                         ;6416
        LD      a,c                                 ;6417
        LD      a,d                                 ;6418
        LD      a,e                                 ;6419
        LD      a,h                                 ;641a
        LD      a,l                                 ;641b
        RST     KEYINT                              ;641c
        LD      c,h                                 ;641d
        LD      h,b                                 ;641e
        ADC     a,b                                 ;641f
        ADC     a,c                                 ;6420
        ADC     a,d                                 ;6421
        ADC     a,e                                 ;6422
        ADC     a,h                                 ;6423
        ADC     a,l                                 ;6424
        ADC     a,(hl)                              ;6425
        NOP                                         ;6426
        LD      a,c                                 ;6427
        LD      a,d                                 ;6428
        LD      a,e                                 ;6429
        LD      a,h                                 ;642a
        LD      a,l                                 ;642b
        RST     KEYINT                              ;642c
