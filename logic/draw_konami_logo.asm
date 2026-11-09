; === DrawKonamiLogo (0x6486) ===
DrawKonamiLogo:
        LD      hl,FrameDivider                     ;6486
        DEC     (hl)                                ;6489
        LD      a,(hl)                              ;648a
        AND     0x1                                 ;648b
        RET     nz                                  ;648d
        INC     hl                                  ;648e
        DEC     (hl)                                ;648f
        JR      nz,DrawKonamiLogo2                  ;6490
        LD      a,0x1                               ;6492
        LD      (isDrawKonamiLogoFinished),a        ;6494
        RET                                         ;6497
DrawKonamiLogo2:
        LD      a,0x31                              ;6498
        SUB     (hl)                                ;649a
        LD      c,a                                 ;649b
        LD      b,0xa8                              ;649c
        LD      hl,0x2840                           ;649e
        LD      de,0x2840                           ;64a1
        LD      a,0x1                               ;64a4
        JP      VDP_Copy_Byte                       ;64a6
