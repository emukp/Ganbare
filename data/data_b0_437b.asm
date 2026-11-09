        DEFB    0x03,0x01,0x10                      ;437b ; data:table
        DEFB    0x0e                                ;437e
        NOP                                         ;437f
        LD      a,(ControlConfig)                   ;4380
        ADD     a,a                                 ;4383
        LD      hl,0xc257                           ;4384
        JR      nc,b0_l438ch                        ;4387
        LD      hl,0xc25a                           ;4389
b0_l438ch:
        LD      a,(hl)                              ;438c
        ADD     a,e                                 ;438d
        DAA                                         ;438e
        LD      (hl),a                              ;438f
        INC     l                                   ;4390
        LD      a,(hl)                              ;4391
        ADC     a,d                                 ;4392
        DAA                                         ;4393
        LD      (hl),a                              ;4394
        INC     hl                                  ;4395
        LD      a,(hl)                              ;4396
        ADC     a,c                                 ;4397
        DAA                                         ;4398
        LD      (hl),a                              ;4399
        JR      nc,b0_l43a9h                        ;439a
        LD      bc,0x9999                           ;439c
        LD      (0xc254),bc                         ;439f
        LD      (0xc255),bc                         ;43a3
        JR      b0_l4406h                           ;43a7
b0_l43a9h:
        EX      de,hl                               ;43a9
        LD      hl,0xc262                           ;43aa
        CP      (hl)                                ;43ad
        JR      c,b0_l43c7h                         ;43ae
        LD      a,(hl)                              ;43b0
        ADD     a,0x10                              ;43b1
        DAA                                         ;43b3
        JR      nc,b0_l43b8h                        ;43b4
        LD      a,0xff                              ;43b6
b0_l43b8h:
        LD      (hl),a                              ;43b8
        PUSH    de                                  ;43b9
        LD      hl,PlayerStatus                     ;43ba
        INC     (hl)                                ;43bd
        LD      a,0x14                              ;43be
        CALL    ProcessSoundCommand                 ;43c0
        CALL    DrawBcdNum01                        ;43c3
        POP     de                                  ;43c6
b0_l43c7h:
        EX      de,hl                               ;43c7
        LD      b,0x3                               ;43c8
        LD      de,0xc256                           ;43ca
b0_l43cdh:
        LD      a,(de)                              ;43cd
        SUB     (hl)                                ;43ce
        JR      c,b0_l43d7h                         ;43cf
        JR      nz,b0_l4406h                        ;43d1
        DEC     l                                   ;43d3
        DEC     e                                   ;43d4
        DJNZ    b0_l43cdh                           ;43d5
b0_l43d7h:
        LD      bc,0x3                              ;43d7
        LD      e,0x56                              ;43da
        LD      l,0x59                              ;43dc
        LDDR                                        ;43de
        JR      b0_l4406h                           ;43e0
