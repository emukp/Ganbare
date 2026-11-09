GS_GmCheatMenu:
        PUSH    bc                                  ;61af
        CALL    UpdateControls                      ;61b0
        POP     bc                                  ;61b3
        DJNZ    b1_l61e9h                           ;61b4
        LD      a,(ControlsTrigger)                 ;61b6
        AND     0x33                                ;61b9
        RET     z                                   ;61bb
        AND     0x3                                 ;61bc
        JP      nz,0x8096                           ;61be
        LD      a,(BGmMenuCursor)                   ;61c1
        OR      a                                   ;61c4
        JP      nz,b1_l61cfh                        ;61c5
        LD      hl,0x203                            ;61c8
        LD      (GameStatus),hl                     ;61cb
        RET                                         ;61ce
b1_l61cfh:
        DEC     a                                   ;61cf
        JR      z,b1_l61ddh                         ;61d0
        LD      hl,0xb8a8                           ;61d2
        LD      (0xef02),hl                         ;61d5
        CALL    b1_sub_7fa3h                        ;61d8
        JR      b1_l61e6h                           ;61db
b1_l61ddh:
        LD      hl,0xb0a8                           ;61dd
        LD      (0xef02),hl                         ;61e0
        CALL    b1_sub_7f83h                        ;61e3
b1_l61e6h:
        JP      NextSubstatus                       ;61e6
b1_l61e9h:
        DJNZ    b1_l621eh                           ;61e9
        CALL    0x8040                              ;61eb
        JR      nz,b1_l61f3h                        ;61ee
        JP      b1_l7fd1h                           ;61f0
b1_l61f3h:
        LD      a,(BGmMenuCursor)                   ;61f3
        LD      b,a                                 ;61f6
        LD      hl,BGmOptPending                    ;61f7
        OR      (hl)                                ;61fa
        LD      (hl),a                              ;61fb
        LD      a,(0xef15)                          ;61fc
        OR      a                                   ;61ff
        JR      z,b1_l6214h                         ;6200
        LD      a,(0xef0e)                          ;6202
        LD      d,a                                 ;6205
        LD      a,(0xef0f)                          ;6206
        BIT     0,b                                 ;6209
        JR      z,b1_l6219h                         ;620b
        LD      (BGmOptMoney),a                     ;620d
        LD      a,d                                 ;6210
        LD      (BGmOptLand),a                      ;6211
b1_l6214h:
        XOR     a                                   ;6214
        LD      (GameSubStatus),a                   ;6215
        RET                                         ;6218
b1_l6219h:
        LD      (BGmOptLives),a                     ;6219
        JR      b1_l6214h                           ;621c
b1_l621eh:
        CALL    b1_sub_7f1ah                        ;621e
        XOR     a                                   ;6221
        LD      hl,0xef08                           ;6222
        LD      de,0xef09                           ;6225
        LD      bc,0xe                              ;6228
        LD      (hl),0x0                            ;622b
        LDIR                                        ;622d
        JP      NextSubstatus                       ;622f
GS_MinigamePerform:
        DJNZ    b1_l6248h                           ;6232
        CALL    UpdateControls                      ;6234
        LD      a,(0xc00b)                          ;6237
        RRA                                         ;623a
        RRA                                         ;623b
        RET     nc                                  ;623c
        CALL    b1_sub_6be7h                        ;623d
        CALL    EnableSprites                       ;6240
        LD      a,0xa                               ;6243
        JP      SetGameStatus                       ;6245
b1_l6248h:
        CALL    DisableSprites                      ;6248
        CALL    b1_sub_6b5fh                        ;624b
        LD      a,0x1                               ;624e
        LD      (0xc28c),a                          ;6250
        JP      NextSubstatus                       ;6253
