txtHudPlayer1:
        DJNZ    b1_l642fh                           ;642d
b1_l642fh:
        ADD     a,e                                 ;642f
        ADD     a,h                                 ;6430
        ADD     a,l                                 ;6431
        ADD     a,(hl)                              ;6432
        ADD     a,a                                 ;6433
        RST     KEYINT                              ;6434
txtHudPlayer2:
        EX      af,af'                              ;6435
        NOP                                         ;6436
        ADC     a,b                                 ;6437
        ADC     a,c                                 ;6438
        ADC     a,d                                 ;6439
        ADC     a,e                                 ;643a
        ADC     a,h                                 ;643b
        ADC     a,l                                 ;643c
        ADC     a,(hl)                              ;643d
        RST     KEYINT                              ;643e

