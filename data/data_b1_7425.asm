        DEFW    0x742d,0x7438,0x7448,0x745d         ;7425 ; data:jumptable
        LD      a,c                                 ;742d
        RRA                                         ;742e
        JR      nc,b1_l7475h                        ;742f
        LD      b,0x20                              ;7431
        RRA                                         ;7433
        JR      nc,b1_l7470h                        ;7434
        JR      b1_l7475h                           ;7436
        LD      a,c                                 ;7438
        RRA                                         ;7439
        JR      nc,b1_l7475h                        ;743a
        RRA                                         ;743c
        LD      b,0x16                              ;743d
        JR      nc,b1_l7470h                        ;743f
        RRA                                         ;7441
        LD      b,0x24                              ;7442
        JR      nc,b1_l7470h                        ;7444
        JR      b1_l7475h                           ;7446
        LD      a,c                                 ;7448
        RRA                                         ;7449
        JR      nc,b1_l7475h                        ;744a
        RRA                                         ;744c
        LD      b,0x10                              ;744d
        JR      nc,b1_l7470h                        ;744f
        RRA                                         ;7451
        LD      b,0x18                              ;7452
        JR      nc,b1_l7470h                        ;7454
        RRA                                         ;7456
        LD      b,0x20                              ;7457
        JR      nc,b1_l7470h                        ;7459
        JR      b1_l7475h                           ;745b
        LD      a,c                                 ;745d
        RRA                                         ;745e
        JR      nc,b1_l7475h                        ;745f
        RRA                                         ;7461
        LD      b,0xd                               ;7462
        JR      nc,b1_l7470h                        ;7464
        RRA                                         ;7466
        LD      b,0x13                              ;7467
        JR      nc,b1_l7470h                        ;7469
        RRA                                         ;746b
        LD      b,0x1a                              ;746c
        JR      c,b1_l7475h                         ;746e
b1_l7470h: equ     #7470
        LD      a,(0xc4a0)                          ;7470
        CP      b                                   ;7473
        RET                                         ;7474
b1_l7475h: equ     #7475
        XOR     a                                   ;7475
        RET                                         ;7476
b1_sub_7477h: equ     #7477
        LD      a,e                                 ;7477
        SUB     0x8                                 ;7478
        LD      e,a                                 ;747a
        RET                                         ;747b
b1_sub_747ch: equ     #747c
        LD      a,e                                 ;747c
        ADD     a,0x8                               ;747d
        LD      e,a                                 ;747f
        RET                                         ;7480
b1_sub_7481h: equ     #7481
        LD      a,d                                 ;7481
        SUB     0x8                                 ;7482
        LD      d,a                                 ;7484
        RET                                         ;7485
b1_sub_7486h: equ     #7486
        LD      a,d                                 ;7486
        ADD     a,0x8                               ;7487
        LD      d,a                                 ;7489
        RET                                         ;748a
b1_sub_748bh: equ     #748b
        LD      a,e                                 ;748b
        ADD     a,0x10                              ;748c
        LD      e,a                                 ;748e
        RET                                         ;748f
b1_sub_7490h: equ     #7490
        LD      a,e                                 ;7490
        SUB     0x10                                ;7491
        LD      e,a                                 ;7493
        RET                                         ;7494
b1_sub_7495h: equ     #7495
        LD      a,d                                 ;7495
        ADD     a,0x10                              ;7496
        LD      d,a                                 ;7498
        JR      b1_l749fh                           ;7499
b1_sub_749bh: equ     #749b
        LD      a,d                                 ;749b
        SUB     0x10                                ;749c
        LD      d,a                                 ;749e
b1_l749fh: equ     #749f
        RET     nc                                  ;749f
        LD      a,0x1                               ;74a0
        LD      (0xee80),a                          ;74a2
        RET                                         ;74a5
b1_sub_74a6h:
        LD      a,(ControlConfig)                   ;74a6
        RLA                                         ;74a9
        LD      hl,0xaa56                           ;74aa
        JR      nc,b1_l74b2h                        ;74ad
        LD      hl,0xaa7e                           ;74af
b1_l74b2h:
        LD      a,(0xc49f)                          ;74b2
        ADD     a,a                                 ;74b5
        ADD     a,a                                 ;74b6
        LD      b,a                                 ;74b7
        LD      a,(0xc4a2)                          ;74b8
        ADD     a,b                                 ;74bb
        ADD     a,a                                 ;74bc
        CALL    GetTableWord                        ;74bd
        LD      a,(BlockQueue)                      ;74c0
        CP      0x2                                 ;74c3
        LD      de,AbSprAttrTable                   ;74c5
        JR      c,b1_l74cdh                         ;74c8
        LD      de,0xee40                           ;74ca
b1_l74cdh:
        LD      b,(hl)                              ;74cd
        LD      c,0x0                               ;74ce
        INC     hl                                  ;74d0
b1_l74d1h:
        PUSH    bc                                  ;74d1
        LD      a,(0xc498)                          ;74d2
        ADD     a,(hl)                              ;74d5
        LD      c,a                                 ;74d6
        LD      a,(0xc4a7)                          ;74d7
        AND     a                                   ;74da
        JR      z,b1_l74e2h                         ;74db
        RRA                                         ;74dd
        JR      nc,b1_l74e2h                        ;74de
        LD      c,0xe0                              ;74e0
b1_l74e2h:
        LD      a,c                                 ;74e2
        LD      (de),a                              ;74e3
        INC     hl                                  ;74e4
        INC     e                                   ;74e5
        LD      a,(0xc492)                          ;74e6
        AND     a                                   ;74e9
        JR      z,b1_l750ch                         ;74ea
        PUSH    bc                                  ;74ec
        CALL    b1_sub_766ch                        ;74ed
        POP     bc                                  ;74f0
        JR      nz,b1_l750ch                        ;74f1
        LD      a,b                                 ;74f3
        CP      0x3                                 ;74f4
        JR      nc,b1_l750ch                        ;74f6
        LD      a,(0xc4a2)                          ;74f8
        CP      0x2                                 ;74fb
        JR      nz,b1_l750ch                        ;74fd
        LD      a,(0xc49a)                          ;74ff
        ADD     a,(hl)                              ;7502
        JR      c,b1_l7510h                         ;7503
        DEC     e                                   ;7505
        LD      a,0xe0                              ;7506
        LD      (de),a                              ;7508
        INC     e                                   ;7509
        JR      b1_l7511h                           ;750a
b1_l750ch:
        LD      a,(0xc49a)                          ;750c
        ADD     a,(hl)                              ;750f
b1_l7510h:
        LD      (de),a                              ;7510
b1_l7511h:
        POP     bc                                  ;7511
        INC     hl                                  ;7512
        INC     e                                   ;7513
        LD      a,c                                 ;7514
        ADD     a,a                                 ;7515
        ADD     a,a                                 ;7516
        LD      (de),a                              ;7517
        INC     c                                   ;7518
        INC     e                                   ;7519
        INC     e                                   ;751a
        DJNZ    b1_l74d1h                           ;751b
        LD      a,(BlockQueue)                      ;751d
        SUB     0x2                                 ;7520
        CP      0x3                                 ;7522
        JR      c,b1_l7538h                         ;7524
        LD      de,0xee18                           ;7526
        LD      a,(0xc494)                          ;7529
        LD      (de),a                              ;752c
        INC     e                                   ;752d
        LD      a,(0xc496)                          ;752e
        SUB     0x8                                 ;7531
        LD      (de),a                              ;7533
        INC     e                                   ;7534
        LD      a,0x18                              ;7535
        LD      (de),a                              ;7537
b1_l7538h:
        LD      b,0x40                              ;7538
        LD      a,(BlockQueue)                      ;753a
        CP      0x2                                 ;753d
        LD      hl,AbSprColorTable                  ;753f
        JR      c,b1_l7547h                         ;7542
        LD      hl,0xed00                           ;7544
b1_l7547h:
        LD      a,(0xc4ae)                          ;7547
        AND     a                                   ;754a
        JR      nz,b1_l7575h                        ;754b
        LD      a,b                                 ;754d
        CP      0x21                                ;754e
        LD      c,0x2                               ;7550
        JR      nc,b1_l7580h                        ;7552
        CP      0x11                                ;7554
        LD      c,0x1                               ;7556
        JR      nc,b1_l7580h                        ;7558
        LD      a,(ControlConfig)                   ;755a
        RLA                                         ;755d
        LD      a,(0xc271)                          ;755e
        JR      c,b1_l756ch                         ;7561
        AND     a                                   ;7563
        LD      c,0x3                               ;7564
        JR      z,b1_l7580h                         ;7566
        LD      c,0xe                               ;7568
        JR      b1_l7580h                           ;756a
b1_l756ch:
        AND     a                                   ;756c
        LD      c,0x2                               ;756d
        JR      z,b1_l7580h                         ;756f
        LD      c,0x3                               ;7571
        JR      b1_l7580h                           ;7573
b1_l7575h:
        LD      a,(0xc00d)                          ;7575
        AND     0x2                                 ;7578
        LD      c,0xe                               ;757a
        JR      z,b1_l7580h                         ;757c
        LD      c,0x2                               ;757e
b1_l7580h:
        LD      (hl),c                              ;7580
        INC     l                                   ;7581
        DJNZ    b1_l7547h                           ;7582
        LD      a,(BlockQueue)                      ;7584
        CP      0x2                                 ;7587
        RET     nc                                  ;7589
        LD      a,(0xc492)                          ;758a
        AND     a                                   ;758d
        JR      nz,b1_l75d4h                        ;758e
        LD      a,(0xc271)                          ;7590
        AND     a                                   ;7593
        JR      nz,b1_l75d4h                        ;7594
        CALL    b1_sub_766ch                        ;7596
        JR      nz,b1_l75d4h                        ;7599
        LD      hl,0xec40                           ;759b
        LD      b,0x20                              ;759e
b1_l75a0h:
        LD      a,b                                 ;75a0
        DEC     a                                   ;75a1
        AND     0x10                                ;75a2
        LD      c,0x2                               ;75a4
        JR      nz,b1_l75b2h                        ;75a6
        LD      c,0x8                               ;75a8
        LD      a,(ControlConfig)                   ;75aa
        RLA                                         ;75ad
        JR      nc,b1_l75b2h                        ;75ae
        LD      c,0xe                               ;75b0
b1_l75b2h:
        LD      (hl),c                              ;75b2
        INC     l                                   ;75b3
        DJNZ    b1_l75a0h                           ;75b4
        LD      a,(ControlConfig)                   ;75b6
        RLA                                         ;75b9
        JR      c,b1_l75d4h                         ;75ba
        LD      a,(0xc4a2)                          ;75bc
        LD      hl,b1_l75e0h                        ;75bf
        CALL    ADD_HL_A                            ;75c2
        LD      a,(hl)                              ;75c5
        AND     a                                   ;75c6
        JR      z,b1_l75d4h                         ;75c7
        LD      hl,0xec50                           ;75c9
        CALL    ADD_HL_A                            ;75cc
        LD      a,0x7                               ;75cf
        LD      (hl),a                              ;75d1
        INC     l                                   ;75d2
        LD      (hl),a                              ;75d3
b1_l75d4h:
        LD      hl,0xec60                           ;75d4
        LD      b,0x10                              ;75d7
        LD      a,0x2                               ;75d9
b1_l75dbh:
        LD      (hl),a                              ;75db
        INC     l                                   ;75dc
        DJNZ    b1_l75dbh                           ;75dd
        RET                                         ;75df
b1_l75e0h:
        NOP                                         ;75e0
        LD      b,0xa                               ;75e1
        LD      a,(bc)                              ;75e3
b1_sub_75e4h:
        LD      a,(0xc492)                          ;75e4
        AND     a                                   ;75e7
        RET     z                                   ;75e8
        DEC     a                                   ;75e9
        JR      nz,b1_l7608h                        ;75ea
        LD      a,(0xc271)                          ;75ec
        AND     a                                   ;75ef
        JR      nz,b1_l762bh                        ;75f0
        CALL    b1_sub_766ch                        ;75f2
        RET     nz                                  ;75f5
        LD      a,0x3                               ;75f6
        LD      (0xc49f),a                          ;75f8
        XOR     a                                   ;75fb
        LD      (0xc4a1),a                          ;75fc
        LD      hl,0xc492                           ;75ff
        INC     (hl)                                ;7602
        LD      a,0x8                               ;7603
        JP      ProcessSoundCommand                 ;7605
b1_l7608h:
        LD      hl,0xc4a1                           ;7608
        INC     (hl)                                ;760b
        LD      a,(hl)                              ;760c
        CP      0x5                                 ;760d
        RET     c                                   ;760f
        XOR     a                                   ;7610
        LD      (hl),a                              ;7611
        LD      a,0xe0                              ;7612
        LD      (0xee10),a                          ;7614
        LD      (0xee14),a                          ;7617
b1_l761ah:
        XOR     a                                   ;761a
        LD      (0xc492),a                          ;761b
        LD      a,(BlockQueue)                      ;761e
        DEC     a                                   ;7621
        LD      a,0x2                               ;7622
        JR      z,b1_l7627h                         ;7624
        XOR     a                                   ;7626
b1_l7627h:
        LD      (0xc49f),a                          ;7627
        RET                                         ;762a
b1_l762bh:
        LD      hl,0xc4d0                           ;762b
        LD      b,0x2                               ;762e
b1_l7630h:
        LD      a,(hl)                              ;7630
        AND     a                                   ;7631
        JR      z,b1_l763ch                         ;7632
        LD      de,0x10                             ;7634
        ADD     hl,de                               ;7637
        DJNZ    b1_l7630h                           ;7638
        JR      b1_l761ah                           ;763a
b1_l763ch:
        CALL    b1_sub_7655h                        ;763c
        INC     (hl)                                ;763f
        INC     hl                                  ;7640
        INC     hl                                  ;7641
        INC     hl                                  ;7642
        LD      a,(0xc498)                          ;7643
        SUB     0xc                                 ;7646
        LD      (hl),a                              ;7648
        INC     hl                                  ;7649
        LD      a,(0xc49a)                          ;764a
        LD      (hl),a                              ;764d
        LD      a,0x9                               ;764e
        CALL    ProcessSoundCommand                 ;7650
        JR      b1_l761ah                           ;7653
b1_sub_7655h:
        PUSH    hl                                  ;7655
        INC     hl                                  ;7656
        LD      a,(0xc4a2)                          ;7657
        LD      c,a                                 ;765a
        RRA                                         ;765b
        LD      a,0x4                               ;765c
        JR      c,b1_l7662h                         ;765e
        NEG                                         ;7660
b1_l7662h:
        LD      b,a                                 ;7662
        LD      a,c                                 ;7663
        CP      0x2                                 ;7664
        JR      c,b1_l7669h                         ;7666
        INC     hl                                  ;7668
b1_l7669h:
        LD      (hl),b                              ;7669
        POP     hl                                  ;766a
        RET                                         ;766b
b1_sub_766ch:
        LD      a,(0xc4d0)                          ;766c
        LD      b,a                                 ;766f
        LD      a,(0xc4e0)                          ;7670
        OR      b                                   ;7673
        RET                                         ;7674
b1_sub_7675h:
        LD      hl,0xc4d0                           ;7675
        CALL    b1_sub_767eh                        ;7678
        LD      hl,0xc4e0                           ;767b
b1_sub_767eh:
        LD      a,(hl)                              ;767e
        AND     a                                   ;767f
        RET     z                                   ;7680
        INC     hl                                  ;7681
        LD      b,(hl)                              ;7682
        INC     hl                                  ;7683
        LD      c,(hl)                              ;7684
        INC     hl                                  ;7685
        LD      a,(hl)                              ;7686
        ADD     a,b                                 ;7687
        LD      (hl),a                              ;7688
        INC     hl                                  ;7689
        LD      a,(hl)                              ;768a
        ADD     a,c                                 ;768b
        LD      (hl),a                              ;768c
        RET                                         ;768d
b1_sub_768eh:
        LD      hl,0xc4d0                           ;768e
        CALL    b1_sub_7697h                        ;7691
        LD      hl,0xc4e0                           ;7694
b1_sub_7697h:
        LD      a,(hl)                              ;7697
        AND     a                                   ;7698
        RET     z                                   ;7699
        INC     hl                                  ;769a
        INC     hl                                  ;769b
        INC     hl                                  ;769c
        LD      a,(hl)                              ;769d
        SUB     0xe0                                ;769e
        CP      0x20                                ;76a0
        JR      c,HideSpriteRecord                  ;76a2
        INC     hl                                  ;76a4
        LD      a,(hl)                              ;76a5
        SUB     0xf8                                ;76a6
        CP      0x10                                ;76a8
        RET     nc                                  ;76aa
        DEC     hl                                  ;76ab

