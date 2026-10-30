        DEFB    0xed                                ;753c
        RET     po                                  ;753d
        POP     af                                  ;753e
        RET     po                                  ;753f
        XOR     0xe1                                ;7540
        JP      po,0xefe1                           ;7542
        EX      (sp),hl                             ;7545
        CALL    po,0xf0e3                           ;7546
        LD      (bc),a                              ;7549
        INC     bc                                  ;754a
        RLCA                                        ;754b
        INC     b                                   ;754c
        DEC     b                                   ;754d
        LD      b,0x2                               ;754e
        RLCA                                        ;7550
        EX      af,af'                              ;7551
        ADD     hl,bc                               ;7552
        EX      af,af'                              ;7553
        ADD     hl,bc                               ;7554
        EX      af,af'                              ;7555
        ADD     hl,bc                               ;7556
        EX      af,af'                              ;7557
        ADD     hl,bc                               ;7558
        NOP                                         ;7559
        NOP                                         ;755a
        NOP                                         ;755b
        NOP                                         ;755c
        NOP                                         ;755d
        NOP                                         ;755e
        NOP                                         ;755f
        NOP                                         ;7560
        LD      bc,0x101                            ;7561
        LD      bc,0x101                            ;7564
        LD      bc,0xb01                            ;7567
        LD      a,(bc)                              ;756a
        DEC     bc                                  ;756b
        LD      a,(bc)                              ;756c
        DEC     bc                                  ;756d
        LD      a,(bc)                              ;756e
        DEC     bc                                  ;756f
        LD      a,(bc)                              ;7570
        RLCA                                        ;7571
        RLCA                                        ;7572
        RLCA                                        ;7573
        RLCA                                        ;7574
        RLCA                                        ;7575
        RLCA                                        ;7576
        RLCA                                        ;7577
        RLCA                                        ;7578
        RLCA                                        ;7579
        RLCA                                        ;757a
        RLCA                                        ;757b
        RLCA                                        ;757c
        RLCA                                        ;757d
        RLCA                                        ;757e
        RLCA                                        ;757f
        RLCA                                        ;7580
        NOP                                         ;7581
        LD      bc,0x302                            ;7582
        DJNZ    bD_l7598h                           ;7585
        LD      (de),a                              ;7587
        INC     de                                  ;7588
        INC     b                                   ;7589
        DEC     b                                   ;758a
        LD      b,0x7                               ;758b
        RLCA                                        ;758d
        DEC     d                                   ;758e
        LD      d,0x17                              ;758f
        EX      af,af'                              ;7591
        ADD     hl,bc                               ;7592
        LD      a,(bc)                              ;7593
        DEC     bc                                  ;7594
        DEC     bc                                  ;7595
        ADD     hl,de                               ;7596
        LD      a,(de)                              ;7597
bD_l7598h:
        DEC     de                                  ;7598
        INC     c                                   ;7599
        DEC     c                                   ;759a
        LD      c,0xf                               ;759b
        INC     e                                   ;759d
        DEC     e                                   ;759e
        LD      e,0x1f                              ;759f
bD_l75a1h:
        JR      nz,$+35                             ;75a1
bD_l75a3h:
        INC     d                                   ;75a3
        JR      z,bD_l75cfh                         ;75a4
        JR      bD_l75cah                           ;75a6
        INC     hl                                  ;75a8
        INC     h                                   ;75a9
        DEC     h                                   ;75aa
        DEC     h                                   ;75ab
        LD      hl,(0x262b)                         ;75ac
        LD      h,0x27                              ;75af
        INC     l                                   ;75b1
        INC     l                                   ;75b2
        INC     l                                   ;75b3
        DEC     l                                   ;75b4
        LD      l,0x2f                              ;75b5
        CPL                                         ;75b7
        CPL                                         ;75b8
