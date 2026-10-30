HandleTitleInput:
        CALL    ReadControls                        ;62fe
        LD      hl,ControlsHold_                    ;6301
        CALL    StoreControls                       ;6304
        OR      a                                   ;6307
        RET     z                                   ;6308
        LD      hl,WaitCounter                      ;6309
        LD      (hl),0x0                            ;630c
        LD      l,(hl)                              ;630e
        LD      de,BTitle2PMode                     ;630f
        LD      b,(hl)                              ;6312
        DJNZ    GotoTitle                           ;6313
        AND     0x30                                ;6315
        JR      z,NeitherTrigger                    ;6317
        AND     0x20                                ;6319
        JR      nz,GotoLandSelect                   ;631b
        LD      a,(de)                              ;631d
        OR      a                                   ;631e
        LD      a,0x40                              ;631f
        JR      z,b1_l6325h                         ;6321
        LD      a,0x60                              ;6323
b1_l6325h:
        LD      (ControlConfig),a                   ;6325
        PUSH    hl                                  ;6328
        LD      hl,0xc257                           ;6329
        LD      de,0xc258                           ;632c
        LD      bc,0x5                              ;632f
        LD      (hl),0x0                            ;6332
        LDIR                                        ;6334
        POP     hl                                  ;6336
        LD      (hl),0x3                            ;6337
        INC     hl                                  ;6339
        LD      c,0x0                               ;633a
        LD      (hl),c                              ;633c
        DEC     c                                   ;633d
        JP      DrawTitleModeCursor                 ;633e
