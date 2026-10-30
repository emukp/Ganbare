DrawTileList:
        PUSH    de                                  ;64a9
b1_l64aah:
        LD      a,(hl)                              ;64aa
        INC     hl                                  ;64ab
        LD      c,a                                 ;64ac
        INC     a                                   ;64ad
        JR      z,DrawTileListEnd                   ;64ae
        INC     a                                   ;64b0
        JR      nz,DrawTileListNewline              ;64b1
        POP     de                                  ;64b3
        LD      a,(hl)                              ;64b4
        INC     hl                                  ;64b5
        ADD     a,d                                 ;64b6
        LD      d,a                                 ;64b7
        LD      a,0x8                               ;64b8
        ADD     a,e                                 ;64ba
        LD      e,a                                 ;64bb
        JR      DrawTileList                        ;64bc
DrawTileListNewline:
        LD      a,c                                 ;64be
        CALL    DrawTile_P1                         ;64bf
        CALL    CalcNextCharPos                     ;64c2
        JR      b1_l64aah                           ;64c5
DrawTileListEnd:
        POP     de                                  ;64c7
        RET                                         ;64c8
KonamiLogoTiles:
        LD      bc,0x302                            ;64c9
        CP      0xf8                                ;64cc
        INC     b                                   ;64ce
        DEC     b                                   ;64cf
        LD      b,0x7                               ;64d0
        CP      0xf0                                ;64d2
        EX      af,af'                              ;64d4
        ADD     hl,bc                               ;64d5
        LD      a,(bc)                              ;64d6
        DEC     bc                                  ;64d7
        LD      c,0xf                               ;64d8
        DJNZ    b1_l64edh                           ;64da
        DEC     de                                  ;64dc
        INC     e                                   ;64dd
        DEC     e                                   ;64de
        LD      e,0x1f                              ;64df
        JR      nz,b1_l6504h                        ;64e1
        LD      (0x2423),hl                         ;64e3
        DEC     h                                   ;64e6
        LD      h,0xfe                              ;64e7
        NOP                                         ;64e9
        INC     c                                   ;64ea
        LD      (bc),a                              ;64eb
        DEC     c                                   ;64ec
b1_l64edh:
        LD      (de),a                              ;64ed
        INC     de                                  ;64ee
        INC     d                                   ;64ef
        DEC     d                                   ;64f0
        DAA                                         ;64f1
        JR      z,$+43                              ;64f2
        LD      hl,(0x2c2b)                         ;64f4
        DEC     l                                   ;64f7
        LD      l,0x2f                              ;64f8
        JR      nc,b1_l652dh                        ;64fa
        LD      (0x3433),a                          ;64fc
        CP      0x10                                ;64ff
        LD      d,0x19                              ;6501
        RLA                                         ;6503
b1_l6504h:
        CP      0xf8                                ;6504
        JR      b1_l6521h                           ;6506
        LD      a,(de)                              ;6508
        RST     KEYINT                              ;6509
b1_l650ah:
        LD      hl,0xc4b1                           ;650a
        LD      a,(hl)                              ;650d
        AND     a                                   ;650e
        JR      z,b1_l651eh                         ;650f
        LD      a,(TickCounter)                     ;6511
        AND     0xf                                 ;6514
        RET     nz                                  ;6516
        LD      de,0x1000                           ;6517
        LD      b,0x1d                              ;651a
        JR      b1_l652ah                           ;651c
b1_l651eh:
        LD      a,(TickCounter)                     ;651e
b1_l6521h:
        AND     0x1                                 ;6521
        RET     nz                                  ;6523
        DEC     hl                                  ;6524
        LD      de,0x10                             ;6525
        LD      b,0x1c                              ;6528
b1_l652ah:
        LD      a,(hl)                              ;652a
        DEC     a                                   ;652b
        DAA                                         ;652c
b1_l652dh:
        LD      (hl),a                              ;652d
        PUSH    bc                                  ;652e
        PUSH    de                                  ;652f
        CALL    DrawLives                           ;6530
        POP     de                                  ;6533
        CALL    0x437e                              ;6534
        POP     bc                                  ;6537
        LD      a,b                                 ;6538
        JP      ProcessSoundCommand                 ;6539
b1_sub_653ch:
        DI                                          ;653c
        LD      a,0xc                               ;653d
        LD      (0xa000),a                          ;653f
        LD      (BanksInA0),a                       ;6542
        EI                                          ;6545
        LD      a,(BGameMasterFound)                ;6546
        AND     a                                   ;6549
        LD      b,0x0                               ;654a
        JR      z,b1_l6550h                         ;654c
        LD      b,0x2                               ;654e
b1_l6550h:
        LD      a,(0xc26a)                          ;6550
        CP      0x7                                 ;6553
        LD      a,0x0                               ;6555
        JR      nz,b1_l655ah                        ;6557
        INC     a                                   ;6559
b1_l655ah:
        OR      b                                   ;655a
        ADD     a,a                                 ;655b
        LD      hl,b1_l6589h                        ;655c
        CALL    GetTableWord                        ;655f
        LD      b,(hl)                              ;6562
        LD      de,0xd800                           ;6563
        INC     hl                                  ;6566
b1_l6567h:
        LD      a,(hl)                              ;6567
        ADD     a,a                                 ;6568
        PUSH    bc                                  ;6569
        PUSH    hl                                  ;656a
        LD      hl,0xbcd3                           ;656b
        CALL    GetTableWord                        ;656e
        LD      b,0x0                               ;6571
        LD      c,(hl)                              ;6573
        INC     hl                                  ;6574
        LDIR                                        ;6575
        POP     hl                                  ;6577
        POP     bc                                  ;6578
        LD      a,0xfe                              ;6579
        LD      (de),a                              ;657b
        INC     de                                  ;657c
        LD      (de),a                              ;657d
        INC     de                                  ;657e
        INC     hl                                  ;657f
        DJNZ    b1_l6567h                           ;6580
        LD      a,0xff                              ;6582
        DEC     de                                  ;6584
        LD      (de),a                              ;6585
        JP      SetBanks1_2_3                       ;6586
b1_l6589h: equ     #6589
