b3_lb535h:
        LD      (bc),a                              ;b535
        LD      bc,0x100                            ;b536
b3_sub_b539h:
        LD      hl,(PlayerScore)                    ;b539
        PUSH    de                                  ;b53c
        RST     DCOMPR                              ;b53d
        POP     de                                  ;b53e
        JP      nc,0x5958                           ;b53f
        LD      a,0x1b                              ;b542
        CALL    ProcessSoundCommand                 ;b544
        SCF                                         ;b547
        RET                                         ;b548
        LD      de,0x8070                           ;b549
        LD      a,0x2b                              ;b54c
        JP      0x8334                              ;b54e
Shop01:
        LD      (ix+0xa),0xe                        ;b551
        XOR     a                                   ;b555
        LD      (ix+0xc),a                          ;b556
        LD      (ix+0x6),a                          ;b559
        LD      (ix+0x7),a                          ;b55c
        LD      (ix+0x8),a                          ;b55f
        LD      (ix+0x9),a                          ;b562
        INC     a                                   ;b565
        LD      (ix+0xe),a                          ;b566
        XOR     a                                   ;b569
        CALL    PrintDialogText                     ;b56a
        LD      a,0x71                              ;b56d
        CALL    PrintDialogText                     ;b56f
        RET                                         ;b572
        LD      a,(ix+0x1)                          ;b573
        CALL    JumpIndex                           ;b576
