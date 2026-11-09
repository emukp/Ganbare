; === GotoLandSelect (0x6355) ===
; zh-hack: password screen disabled - Ctrl on the title screen is ignored.
; (was: LD A,0x0E / JP SetGameStatus -> GameStatus 0x0E = GS_LandSelect)
GotoLandSelect:
        RET                                         ;6355
        NOP                                         ;6356
        NOP                                         ;6357
        NOP                                         ;6358
        NOP                                         ;6359
        LD      hl,0x6a54                           ;635a
        LD      bc,0x2c10                           ;635d
        LD      de,0xd070                           ;6360
        CALL    b1_sub_6382h                        ;6363
        LD      hl,b1_l636ch                        ;6366
        JP      PrintTextXY                         ;6369
b1_l636ch: equ     #636c
        DEFB    0x6e,0x58,0x31,0x5e,0x4b,0x62,0x37,0xff  ;636c ; data:code-gap
b1_sub_6374h:
        LD      de,0x6a54                           ;6374
        LD      bc,0x2c10                           ;6377
        LD      hl,0xd070                           ;637a
        LD      a,0x1                               ;637d
        JP      VDP_Copy_Byte                       ;637f
b1_sub_6382h:
        LD      a,0x4                               ;6382
        PUSH    hl                                  ;6384
        PUSH    bc                                  ;6385
        CALL    VDP_Copy_Byte                       ;6386
        POP     bc                                  ;6389
        POP     hl                                  ;638a
        PUSH    hl                                  ;638b
        PUSH    bc                                  ;638c
        XOR     a                                   ;638d
        LD      d,a                                 ;638e
        CALL    FillRect                            ;638f
        POP     bc                                  ;6392
        POP     hl                                  ;6393
        LD      d,b                                 ;6394
        LD      e,c                                 ;6395
        LD      c,0xe                               ;6396
        JP      DrawRect                            ;6398
txtTitle: equ     #639b
