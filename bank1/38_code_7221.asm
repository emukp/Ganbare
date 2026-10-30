b1_l7221h:
        RRA                                         ;7221
        RRA                                         ;7222
        RET     nc                                  ;7223
b1_l7224h:
        INC     hl                                  ;7224
        LD      a,(hl)                              ;7225
        LD      (0xc267),a                          ;7226
        XOR     a                                   ;7229
        LD      (BlockQueue),a                      ;722a
        LD      (0xc4a0),a                          ;722d
        LD      (0xc49f),a                          ;7230
        LD      (0xc4a5),a                          ;7233
        LD      a,0x50                              ;7236
        LD      (0xc49a),a                          ;7238
        LD      (0xc496),a                          ;723b
        DEC     hl                                  ;723e
        LD      a,(hl)                              ;723f
        LD      (SceneType),a                       ;7240
        DEC     a                                   ;7243
        JR      z,b1_l724fh                         ;7244
        LD      a,0x54                              ;7246
        LD      (0xc498),a                          ;7248
        LD      (0xc494),a                          ;724b
        RET                                         ;724e
b1_l724fh:
        LD      a,0xc4                              ;724f
        LD      (0xc498),a                          ;7251
        LD      (0xc494),a                          ;7254
        RET                                         ;7257
b1_sub_7258h:
        LD      a,(BlockQueue)                      ;7258
        AND     a                                   ;725b
        RET     nz                                  ;725c
        LD      hl,0xc500                           ;725d
        LD      b,0x2                               ;7260
b1_l7262h:
        PUSH    hl                                  ;7262
        INC     l                                   ;7263
        LD      a,(hl)                              ;7264
        AND     a                                   ;7265
        JR      z,b1_l7295h                         ;7266
        LD      a,(0xc494)                          ;7268
        SUB     (hl)                                ;726b
        CP      0x6                                 ;726c
        JR      nc,b1_l7295h                        ;726e
        INC     l                                   ;7270
        LD      a,(hl)                              ;7271
        SUB     0x8                                 ;7272
        LD      c,a                                 ;7274
        LD      a,(0xc496)                          ;7275
        SUB     c                                   ;7278
        CP      0x10                                ;7279
        JR      nc,b1_l7295h                        ;727b
        LD      a,(ControlsHold)                    ;727d
        RRA                                         ;7280
        JR      nc,b1_l7295h                        ;7281
        POP     hl                                  ;7283
        SET     7,(hl)                              ;7284
        XOR     a                                   ;7286
        LD      (0xc4a7),a                          ;7287
        LD      a,0x1                               ;728a
        LD      (isDrawKonamiLogoFinished),a        ;728c
        LD      a,0x5                               ;728f
        LD      (SceneType),a                       ;7291
        RET                                         ;7294
b1_l7295h:
        POP     hl                                  ;7295
        LD      de,0x10                             ;7296
        ADD     hl,de                               ;7299
        DJNZ    b1_l7262h                           ;729a
        RET                                         ;729c
b1_l729dh:
        LD      a,(0xcd2e)                          ;729d
        AND     a                                   ;72a0
        RET     nz                                  ;72a1
        LD      a,(0xc494)                          ;72a2
        SUB     0xbc                                ;72a5
        CP      0x10                                ;72a7
        RET     nc                                  ;72a9
        LD      a,(0xc496)                          ;72aa
        SUB     0x78                                ;72ad
        CP      0x10                                ;72af
        RET     nc                                  ;72b1
        LD      a,(ControlsHold)                    ;72b2
        RRA                                         ;72b5
        RRA                                         ;72b6
        RET     nc                                  ;72b7
        XOR     a                                   ;72b8
        LD      (isDrawKonamiLogoFinished),a        ;72b9
        LD      a,0x6                               ;72bc
        LD      (SceneType),a                       ;72be
        LD      hl,0xc500                           ;72c1
        LD      b,0x3                               ;72c4
b1_l72c6h:
        LD      a,(hl)                              ;72c6
        RLA                                         ;72c7
        JR      nc,b1_l72dfh                        ;72c8
        RES     7,(hl)                              ;72ca
        INC     hl                                  ;72cc
        LD      a,(hl)                              ;72cd
        ADD     a,0x8                               ;72ce
        LD      (0xc498),a                          ;72d0
        LD      (0xc494),a                          ;72d3
        INC     hl                                  ;72d6
        LD      a,(hl)                              ;72d7
        LD      (0xc49a),a                          ;72d8
        LD      (0xc496),a                          ;72db
        RET                                         ;72de
b1_l72dfh:
        LD      de,0x10                             ;72df
        ADD     hl,de                               ;72e2
        DJNZ    b1_l72c6h                           ;72e3
        RET                                         ;72e5
b1_sub_72e6h:
        LD      a,(0xc28a)                          ;72e6
        AND     a                                   ;72e9
        RET     z                                   ;72ea
        DEC     a                                   ;72eb
        DEC     a                                   ;72ec
        JR      z,b1_l7366h                         ;72ed
        DEC     a                                   ;72ef
        JR      z,b1_l7332h                         ;72f0
        LD      a,(0xc279)                          ;72f2
        CP      0x3                                 ;72f5
        RET     c                                   ;72f7
        LD      a,(0xc496)                          ;72f8
        SUB     0x70                                ;72fb
        CP      0x20                                ;72fd
        RET     nc                                  ;72ff
b1_l7300h:
        LD      a,(0xc494)                          ;7300
        SUB     0x60                                ;7303
        CP      0x8                                 ;7305
        RET     nc                                  ;7307
        LD      a,(ControlsHold)                    ;7308
        RRA                                         ;730b
        RET     nc                                  ;730c
        CALL    ClearFieldRecordHeaders             ;730d
        CALL    SetAllSpritesHidden                 ;7310
        CALL    b1_sub_67e8h                        ;7313
        LD      a,0x5a                              ;7316
        LD      (0xc4a8),a                          ;7318
        LD      a,0x5                               ;731b
        LD      (BlockQueue),a                      ;731d
        XOR     a                                   ;7320
        LD      (0xc4a2),a                          ;7321
        LD      (0xc49f),a                          ;7324
        LD      (0xc4a7),a                          ;7327
        LD      (0xc279),a                          ;732a
        LD      a,0x8f                              ;732d
        JP      ProcessSoundCommand                 ;732f
b1_l7332h:
        LD      a,(0xc496)                          ;7332
        SUB     0x98                                ;7335
        CP      0x10                                ;7337
        RET     nc                                  ;7339
        LD      a,(0xc494)                          ;733a
        SUB     0x60                                ;733d
        CP      0x8                                 ;733f
        RET     nc                                  ;7341
        LD      a,(ControlsHold)                    ;7342
        RRA                                         ;7345
        RET     nc                                  ;7346
        CALL    ClearFieldRecordHeaders             ;7347
        CALL    SetAllSpritesHidden                 ;734a
        CALL    b1_sub_67e8h                        ;734d
        XOR     a                                   ;7350
        LD      (0xc4a2),a                          ;7351
        LD      (0xc49f),a                          ;7354
        LD      (0xc4a7),a                          ;7357
        INC     a                                   ;735a
        LD      (0xc28b),a                          ;735b
        CALL    0x4cab                              ;735e
        LD      a,0x0                               ;7361
        JP      ProcessSoundCommand                 ;7363
b1_l7366h:
        LD      a,(0xc496)                          ;7366
        SUB     0x80                                ;7369
        CP      0x20                                ;736b
        RET     nc                                  ;736d
        JR      b1_l7300h                           ;736e
b1_sub_7370h:
        LD      hl,(0xc493)                         ;7370
        LD      de,(0xc49b)                         ;7373
        ADD     hl,de                               ;7377
        LD      (0xc493),hl                         ;7378
        LD      hl,(0xc497)                         ;737b
        ADD     hl,de                               ;737e
        LD      (0xc497),hl                         ;737f
        LD      hl,(0xc495)                         ;7382
        LD      de,(0xc49d)                         ;7385
        ADD     hl,de                               ;7389
        LD      (0xc495),hl                         ;738a
        LD      hl,(0xc499)                         ;738d
        ADD     hl,de                               ;7390
        LD      (0xc499),hl                         ;7391
        RET                                         ;7394
b1_sub_7395h:
        LD      a,(0xc494)                          ;7395
        SUB     0x2                                 ;7398
        AND     0xf8                                ;739a
        LD      e,a                                 ;739c
        LD      a,(0xc496)                          ;739d
        AND     0xf8                                ;73a0
        LD      d,a                                 ;73a2
        LD      a,(0xc4a5)                          ;73a3
        LD      c,a                                 ;73a6
        RR      c                                   ;73a7
        CALL    c,b1_sub_7477h                      ;73a9
        RR      c                                   ;73ac
        CALL    c,b1_sub_747ch                      ;73ae
        RR      c                                   ;73b1
        CALL    c,b1_sub_7481h                      ;73b3
        RR      c                                   ;73b6
        CALL    c,b1_sub_7486h                      ;73b8
        XOR     a                                   ;73bb
        LD      (0xc4a6),a                          ;73bc
        LD      (0xee80),a                          ;73bf
        LD      a,(0xc270)                          ;73c2
        INC     a                                   ;73c5
        INC     a                                   ;73c6
        LD      b,a                                 ;73c7
        LD      c,0x1                               ;73c8
b1_l73cah:
        PUSH    bc                                  ;73ca
        CALL    b1_sub_7804h                        ;73cb
        LD      a,h                                 ;73ce
        SUB     0xd8                                ;73cf
        CP      0x3                                 ;73d1
        JR      nc,b1_l73eeh                        ;73d3
        CP      0x2                                 ;73d5
        JR      nz,b1_l73deh                        ;73d7
        LD      a,l                                 ;73d9
        CP      0xc0                                ;73da
        JR      nc,b1_l73eeh                        ;73dc
b1_l73deh:
        LD      a,(0xee80)                          ;73de
        AND     a                                   ;73e1
        JR      nz,b1_l73eeh                        ;73e2
        LD      a,(0xc4f1)                          ;73e4
        LD      b,a                                 ;73e7
        LD      a,(hl)                              ;73e8
        CP      b                                   ;73e9
        LD      c,0x0                               ;73ea
        JR      c,b1_l73f0h                         ;73ec
b1_l73eeh:
        LD      c,0x1                               ;73ee
b1_l73f0h:
        XOR     a                                   ;73f0
        LD      a,c                                 ;73f1
        POP     bc                                  ;73f2
        PUSH    bc                                  ;73f3
        LD      b,c                                 ;73f4
        RRA                                         ;73f5
b1_l73f6h:
        RLA                                         ;73f6
        DJNZ    b1_l73f6h                           ;73f7
        LD      hl,0xc4a6                           ;73f9
        OR      (hl)                                ;73fc
        LD      (hl),a                              ;73fd
        LD      a,(0xc4a5)                          ;73fe
        LD      c,a                                 ;7401
        RR      c                                   ;7402
        CALL    c,b1_sub_7490h                      ;7404
        RR      c                                   ;7407
        CALL    c,b1_sub_748bh                      ;7409
        RR      c                                   ;740c
        CALL    c,b1_sub_749bh                      ;740e
        RR      c                                   ;7411
        CALL    c,b1_sub_7495h                      ;7413
        POP     bc                                  ;7416
        INC     c                                   ;7417
        DJNZ    b1_l73cah                           ;7418
        RET                                         ;741a
b1_sub_741bh:
        LD      a,(0xc4a6)                          ;741b
        LD      c,a                                 ;741e
        LD      a,(0xc270)                          ;741f
        CALL    JumpIndex                           ;7422
