; === UnpackGfx (0x4533) ===
UnpackGfx:
        EX      de,hl                               ;4533
        LD      e,(hl)                              ;4534
        INC     hl                                  ;4535
        LD      d,(hl)                              ;4536
        INC     hl                                  ;4537
        EX      de,hl                               ;4538
UnpackGfx1:
        CALL    SetVramAddressWR                    ;4539
        LD      a,(0x7)                             ;453c
        LD      c,a                                 ;453f
UnpackGfx2:
        LD      a,(de)                              ;4540
        AND     a                                   ;4541
        RET     z                                   ;4542
        INC     de                                  ;4543
        LD      b,a                                 ;4544
        AND     0x7f                                ;4545
        CP      b                                   ;4547
        JR      z,UnpackGfx3                        ;4548
        AND     a                                   ;454a
        JR      z,UnpackGfx                         ;454b
        EX      de,hl                               ;454d
        LD      b,a                                 ;454e
        OTIR                                        ;454f
        EX      de,hl                               ;4551
        JR      UnpackGfx2                          ;4552
UnpackGfx3:
        LD      a,(de)                              ;4554
        INC     de                                  ;4555
UnpackGfx4:
        OUT     (c),a                               ;4556
        DJNZ    UnpackGfx4                          ;4558
        JR      UnpackGfx2                          ;455a
b0_l455ch:
        EX      de,hl                               ;455c
        LD      e,(hl)                              ;455d
        INC     hl                                  ;455e
        LD      d,(hl)                              ;455f
        INC     hl                                  ;4560
        EX      de,hl                               ;4561
b0_sub_4562h:
        LD      (0xee80),hl                         ;4562
        LD      hl,0xdd10                           ;4565
        EXX                                         ;4568
        LD      hl,0x0                              ;4569
        EXX                                         ;456c
b0_l456dh:
        LD      a,(de)                              ;456d
        AND     a                                   ;456e
        JR      z,b0_l45b2h                         ;456f
        INC     de                                  ;4571
        LD      b,a                                 ;4572
        AND     0x7f                                ;4573
        CP      b                                   ;4575
        JR      z,b0_l458ah                         ;4576
        AND     a                                   ;4578
        JR      z,b0_l455ch                         ;4579
        LD      b,a                                 ;457b
b0_l457ch:
        LD      a,(de)                              ;457c
        CALL    b0_sub_45c0h                        ;457d
        LD      (hl),a                              ;4580
        INC     hl                                  ;4581
        INC     de                                  ;4582
        CALL    b0_sub_4598h                        ;4583
        DJNZ    b0_l457ch                           ;4586
        JR      b0_l456dh                           ;4588
b0_l458ah:
        LD      a,(de)                              ;458a
        CALL    b0_sub_45c0h                        ;458b
b0_l458eh:
        LD      (hl),a                              ;458e
        INC     hl                                  ;458f
        CALL    b0_sub_4598h                        ;4590
        DJNZ    b0_l458eh                           ;4593
        INC     de                                  ;4595
        JR      b0_l456dh                           ;4596
b0_sub_4598h:
        PUSH    af                                  ;4598
        PUSH    bc                                  ;4599
        EXX                                         ;459a
        INC     hl                                  ;459b
        LD      a,l                                 ;459c
        AND     0x1f                                ;459d
        EXX                                         ;459f
        LD      bc,0x20                             ;45a0
        JR      nz,b0_l45a8h                        ;45a3
        ADD     hl,bc                               ;45a5
        JR      b0_l45afh                           ;45a6
b0_l45a8h:
        CP      0x10                                ;45a8
        JR      nz,b0_l45afh                        ;45aa
        XOR     a                                   ;45ac
        SBC     hl,bc                               ;45ad
b0_l45afh:
        POP     bc                                  ;45af
        POP     af                                  ;45b0
        RET                                         ;45b1
b0_l45b2h:
        EXX                                         ;45b2
        PUSH    hl                                  ;45b3
        EXX                                         ;45b4
        POP     bc                                  ;45b5
        LD      hl,0xdd00                           ;45b6
        LD      de,(0xee80)                         ;45b9
        JP      RAMtoVRAM                           ;45bd
b0_sub_45c0h:
        PUSH    bc                                  ;45c0
        LD      c,a                                 ;45c1
        LD      b,0x8                               ;45c2
b0_l45c4h:
        RR      c                                   ;45c4
        RLA                                         ;45c6
        DJNZ    b0_l45c4h                           ;45c7
        POP     bc                                  ;45c9
        RET                                         ;45ca
        CALL    ClearSprAttr                        ;45cb
        LD      bc,0x0                              ;45ce
        JR      b0_l45d9h                           ;45d1
