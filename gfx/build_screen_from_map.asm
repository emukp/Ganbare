; === BuildScreenFromMap (0x51ed) ===
BuildScreenFromMap:
        CALL    SetBanksD_E_F                       ;51ed
        LD      a,(GameStatus)                      ;51f0
        CP      0x8                                 ;51f3
        JP      z,b0_l526dh                         ;51f5
        CP      0xb                                 ;51f8
        JP      z,b0_l5272h                         ;51fa
        LD      a,(isDrawKonamiLogoFinished)        ;51fd
        AND     a                                   ;5200
        JR      nz,b0_l525dh                        ;5201
        XOR     a                                   ;5203
        LD      (0xc28a),a                          ;5204
        LD      hl,0xc500                           ;5207
        LD      de,0xc501                           ;520a
        LD      (hl),a                              ;520d
        LD      bc,0x1f                             ;520e
        LDIR                                        ;5211
        CALL    b0_sub_5306h                        ;5213
        LD      hl,0xee80                           ;5216
        LD      (hl),0x0                            ;5219
        CP      0xff                                ;521b
        JR      z,b0_l5262h                         ;521d
        CP      0x17                                ;521f
        PUSH    af                                  ;5221
        JR      nz,b0_l5232h                        ;5222
        LD      a,(0xc289)                          ;5224
        CP      0x4                                 ;5227
        JR      nz,b0_l5232h                        ;5229
        LD      a,0x2                               ;522b
        LD      (0xc28a),a                          ;522d
        JR      b0_l524bh                           ;5230
b0_l5232h:
        POP     af                                  ;5232
        PUSH    af                                  ;5233
        CP      0x24                                ;5234
        JR      nz,b0_l5246h                        ;5236
        LD      a,(0xc289)                          ;5238
        CP      0x5                                 ;523b
        JR      nz,b0_l5246h                        ;523d
        LD      a,0x3                               ;523f
        LD      (0xc28a),a                          ;5241
        JR      b0_l524bh                           ;5244
b0_l5246h:
        POP     af                                  ;5246
        PUSH    af                                  ;5247
        CALL    b0_sub_5382h                        ;5248
b0_l524bh:
        POP     af                                  ;524b
        LD      de,0xd000                           ;524c
        ADD     a,a                                 ;524f
        ADD     a,a                                 ;5250
        LD      h,0x0                               ;5251
        LD      l,a                                 ;5253
        ADD     hl,hl                               ;5254
        ADD     hl,hl                               ;5255
        LD      b,h                                 ;5256
        LD      c,l                                 ;5257
        ADD     hl,hl                               ;5258
        ADD     hl,bc                               ;5259
        ADD     hl,de                               ;525a
        JR      b0_l5275h                           ;525b
b0_l525dh:
        LD      hl,0x7239                           ;525d
        JR      b0_l5275h                           ;5260
b0_l5262h:
        LD      a,0x1                               ;5262
        LD      (hl),a                              ;5264
        LD      (0xc28a),a                          ;5265
        LD      hl,0x7419                           ;5268
        JR      b0_l5275h                           ;526b
b0_l526dh:
        LD      hl,0x7549                           ;526d
        JR      b0_l5275h                           ;5270
b0_l5272h:
        LD      hl,0x7581                           ;5272
b0_l5275h:
        LD      de,0xd800                           ;5275
        LD      a,(GameStatus)                      ;5278
        CP      0xb                                 ;527b
        LD      a,0x6                               ;527d
        JR      nz,b0_l5283h                        ;527f
        LD      a,0x8                               ;5281
b0_l5283h:
        EX      af,af'                              ;5283
        LD      b,0x8                               ;5284
b0_l5286h:
        LD      a,(hl)                              ;5286
        PUSH    de                                  ;5287
        EXX                                         ;5288
        PUSH    af                                  ;5289
        LD      a,(GameStatus)                      ;528a
        CP      0x8                                 ;528d
        JR      z,b0_l52abh                         ;528f
        CP      0xb                                 ;5291
        JR      z,b0_l52b0h                         ;5293
        LD      a,(isDrawKonamiLogoFinished)        ;5295
        AND     a                                   ;5298
        JR      nz,b0_l52a6h                        ;5299
        LD      a,(0xee80)                          ;529b
        AND     a                                   ;529e
        JR      nz,b0_l52b5h                        ;529f
        LD      bc,0xe100                           ;52a1
        JR      b0_l52b8h                           ;52a4
b0_l52a6h:
        LD      bc,0x7269                           ;52a6
        JR      b0_l52b8h                           ;52a9
b0_l52abh:
        LD      bc,0x8edd                           ;52ab
        JR      b0_l52b8h                           ;52ae
b0_l52b0h:
        LD      bc,0x8f9d                           ;52b0
        JR      b0_l52b8h                           ;52b3
b0_l52b5h:
        LD      bc,0x7449                           ;52b5
b0_l52b8h:
        POP     af                                  ;52b8
        LD      h,0x0                               ;52b9
        LD      l,a                                 ;52bb
        ADD     hl,hl                               ;52bc
        ADD     hl,hl                               ;52bd
        ADD     hl,hl                               ;52be
        ADD     hl,hl                               ;52bf
        ADD     hl,bc                               ;52c0
        LD      bc,0x1cff                           ;52c1
        POP     de                                  ;52c4
        LDI                                         ;52c5
        LDI                                         ;52c7
        LDI                                         ;52c9
        LDI                                         ;52cb
        LD      a,b                                 ;52cd
        ADD     a,e                                 ;52ce
        LD      e,a                                 ;52cf
        LDI                                         ;52d0
        LDI                                         ;52d2
        LDI                                         ;52d4
        LDI                                         ;52d6
        LD      a,b                                 ;52d8
        ADD     a,e                                 ;52d9
        LD      e,a                                 ;52da
        LDI                                         ;52db
        LDI                                         ;52dd
        LDI                                         ;52df
        LDI                                         ;52e1
        LD      a,b                                 ;52e3
        ADD     a,e                                 ;52e4
        LD      e,a                                 ;52e5
        LDI                                         ;52e6
        LDI                                         ;52e8
        LDI                                         ;52ea
        LDI                                         ;52ec
        EXX                                         ;52ee
        INC     hl                                  ;52ef
        INC     de                                  ;52f0
        INC     de                                  ;52f1
        INC     de                                  ;52f2
        INC     de                                  ;52f3
        DEC     b                                   ;52f4
        JP      nz,b0_l5286h                        ;52f5
        EX      de,hl                               ;52f8
        LD      bc,0x60                             ;52f9
        ADD     hl,bc                               ;52fc
        EX      de,hl                               ;52fd
        EX      af,af'                              ;52fe
        DEC     a                                   ;52ff
        JP      nz,b0_l5283h                        ;5300
        JP      SetBanks1_2_3                       ;5303
b0_sub_5306h:
        LD      hl,0xe700                           ;5306
        LD      a,(0xc281)                          ;5309
        CALL    ADD_HL_A                            ;530c
        LD      a,(hl)                              ;530f
        RET                                         ;5310
        CALL    SetBanksD_E_F                       ;5311
        CALL    GetStageTableIndex                  ;5314
        LD      hl,0x600c                           ;5317
        CALL    GetTableWord                        ;531a
        LD      de,0xe700                           ;531d
        LD      a,(0xc289)                          ;5320
        SUB     0x4                                 ;5323
        JR      nc,b0_l5346h                        ;5325
        LD      b,0x40                              ;5327
b0_l5329h:
        LD      a,(hl)                              ;5329
        AND     0xf0                                ;532a
        RRCA                                        ;532c
        RRCA                                        ;532d
        RRCA                                        ;532e
        RRCA                                        ;532f
        CP      0xf                                 ;5330
        JR      nz,b0_l5336h                        ;5332
        LD      a,0xff                              ;5334
b0_l5336h:
        LD      (de),a                              ;5336
        INC     e                                   ;5337
        LD      a,(hl)                              ;5338
        AND     0xf                                 ;5339
        CP      0xf                                 ;533b
        JR      nz,b0_l5341h                        ;533d
        LD      a,0xff                              ;533f
b0_l5341h:
        LD      (de),a                              ;5341
        INC     e                                   ;5342
        INC     hl                                  ;5343
        DJNZ    b0_l5329h                           ;5344
b0_l5346h:
        LD      bc,0x80                             ;5346
        LDIR                                        ;5349
        JP      SetBanks1_2_3                       ;534b
DrawScreenTiles:
        LD      hl,0xd800                           ;534e
        LD      a,(GameStatus)                      ;5351
        LD      de,0x0                              ;5354
        CP      0x8                                 ;5357
        JR      z,b0_l5361h                         ;5359
        CP      0xb                                 ;535b
        JR      z,b0_l5361h                         ;535d
        LD      e,0x20                              ;535f
b0_l5361h:
        LD      a,(GameStatus)                      ;5361
        CP      0xb                                 ;5364
        LD      b,0x16                              ;5366
        JR      nz,b0_l536ch                        ;5368
        LD      b,0x1a                              ;536a
b0_l536ch:
        PUSH    bc                                  ;536c
        LD      b,0x20                              ;536d
b0_l536fh:
        LD      a,(hl)                              ;536f
        CALL    DrawTile                            ;5370
        INC     hl                                  ;5373
        LD      a,d                                 ;5374
        ADD     a,0x8                               ;5375
        LD      d,a                                 ;5377
        DJNZ    b0_l536fh                           ;5378
        POP     bc                                  ;537a
        LD      a,e                                 ;537b
        ADD     a,0x8                               ;537c
        LD      e,a                                 ;537e
        DJNZ    b0_l536ch                           ;537f
        RET                                         ;5381
b0_sub_5382h:
        EX      af,af'                              ;5382
        LD      hl,0x97d5                           ;5383
        LD      a,(0xc289)                          ;5386
        ADD     a,a                                 ;5389
        CALL    GetTableWord                        ;538a
        LD      de,0xc500                           ;538d
        LD      b,(hl)                              ;5390
        LD      a,b                                 ;5391
        AND     a                                   ;5392
        RET     z                                   ;5393
        INC     hl                                  ;5394
        EX      af,af'                              ;5395
b0_l5396h:
        PUSH    af                                  ;5396
        CP      (hl)                                ;5397
        JR      nz,b0_l53b2h                        ;5398
        PUSH    hl                                  ;539a
        PUSH    de                                  ;539b
        INC     hl                                  ;539c
        INC     e                                   ;539d
        LD      a,(hl)                              ;539e
        AND     0xf0                                ;539f
        LD      (de),a                              ;53a1
        INC     e                                   ;53a2
        LD      a,(hl)                              ;53a3
        RLA                                         ;53a4
        RLA                                         ;53a5
        RLA                                         ;53a6
        RLA                                         ;53a7
        AND     0xf0                                ;53a8
        LD      (de),a                              ;53aa
        POP     de                                  ;53ab
        LD      hl,0x10                             ;53ac
        ADD     hl,de                               ;53af
        EX      de,hl                               ;53b0
        POP     hl                                  ;53b1
b0_l53b2h:
        INC     hl                                  ;53b2
        INC     hl                                  ;53b3
        POP     af                                  ;53b4
        DJNZ    b0_l5396h                           ;53b5
        CALL    GetStageTableIndex                  ;53b7
        LD      hl,0x981d                           ;53ba
        CALL    GetTableWord                        ;53bd
        LD      de,0xc500                           ;53c0
        LD      b,(hl)                              ;53c3
        INC     hl                                  ;53c4
b0_l53c5h:
        LD      a,(0xc281)                          ;53c5
        CP      (hl)                                ;53c8
        JR      nz,b0_l53deh                        ;53c9
        INC     hl                                  ;53cb
        LD      a,(hl)                              ;53cc
        RLA                                         ;53cd
        JR      nc,b0_l53d7h                        ;53ce
        PUSH    hl                                  ;53d0
        LD      hl,0x10                             ;53d1
        ADD     hl,de                               ;53d4
        EX      de,hl                               ;53d5
        POP     hl                                  ;53d6
b0_l53d7h:
        LD      a,(hl)                              ;53d7
        AND     0x7f                                ;53d8
        LD      (de),a                              ;53da
        INC     hl                                  ;53db
        JR      b0_l53e0h                           ;53dc
b0_l53deh:
        INC     hl                                  ;53de
        INC     hl                                  ;53df
b0_l53e0h:
        DJNZ    b0_l53c5h                           ;53e0
        RET                                         ;53e2
        PUSH    af                                  ;53e3
        CALL    SetBanksA_B_C                       ;53e4
        LD      a,(ControlConfig)                   ;53e7
        ADD     a,a                                 ;53ea
        LD      de,0xa783                           ;53eb
        JR      nc,b0_l53f3h                        ;53ee
        LD      de,0xa7dd                           ;53f0
b0_l53f3h:
        LD      hl,0xf9c0                           ;53f3
        CALL    UnpackGfx1                          ;53f6
        CALL    SetBanksD_E_F                       ;53f9
        LD      de,0x9f76                           ;53fc
        LD      hl,0xfac0                           ;53ff
        CALL    UnpackGfx1                          ;5402
        CALL    SetBanksA_B_C                       ;5405
        POP     af                                  ;5408
        LD      de,b0_l54b8h                        ;5409
        CALL    GetPointerDE2A                      ;540c
        LD      b,0x1                               ;540f
        JR      b0_l542eh                           ;5411
        CALL    b0_sub_5b6dh                        ;5413
        LD      a,(de)                              ;5416
        INC     a                                   ;5417
        LD      b,a                                 ;5418
        INC     de                                  ;5419
        DI                                          ;541a
        LD      a,0xb                               ;541b
        LD      (0x8000),a                          ;541d
        LD      (BanksIn80),a                       ;5420
        EI                                          ;5423
        DI                                          ;5424
        LD      a,0xc                               ;5425
        LD      (0xa000),a                          ;5427
        LD      (BanksInA0),a                       ;542a
        EI                                          ;542d
b0_l542eh:
        PUSH    bc                                  ;542e
        LD      a,(de)                              ;542f
        OR      a                                   ;5430
        JP      z,b0_l54afh                         ;5431
        PUSH    de                                  ;5434
        PUSH    af                                  ;5435
        LD      hl,0xa998                           ;5436
        LD      b,0x8                               ;5439
        LD      d,a                                 ;543b
b0_l543ch:
        LD      a,(hl)                              ;543c
        CP      d                                   ;543d
        JR      z,b0_l544bh                         ;543e
        LD      a,0x5                               ;5440
        ADD     a,l                                 ;5442
        LD      l,a                                 ;5443
        JR      nc,b0_l5447h                        ;5444
        INC     h                                   ;5446
b0_l5447h:
        DJNZ    b0_l543ch                           ;5447
        JR      b0_l5457h                           ;5449
b0_l544bh:
        INC     hl                                  ;544b
        LD      e,(hl)                              ;544c
        INC     hl                                  ;544d
        LD      d,(hl)                              ;544e
        INC     hl                                  ;544f
        LD      a,(hl)                              ;5450
        INC     hl                                  ;5451
        LD      h,(hl)                              ;5452
        LD      l,a                                 ;5453
        CALL    UnpackGfx1                          ;5454
b0_l5457h:
        POP     af                                  ;5457
        POP     de                                  ;5458
        PUSH    de                                  ;5459
        DEC     a                                   ;545a
        LD      l,a                                 ;545b
        LD      h,0x0                               ;545c
        ADD     hl,hl                               ;545e
        LD      e,l                                 ;545f
        LD      d,h                                 ;5460
        ADD     hl,hl                               ;5461
        ADD     hl,hl                               ;5462
        ADD     hl,de                               ;5463
        EX      de,hl                               ;5464
        LD      hl,0xa830                           ;5465
        ADD     hl,de                               ;5468
        PUSH    hl                                  ;5469
        POP     ix                                  ;546a
        LD      e,(ix+0x0)                          ;546c
        LD      d,(ix+0x1)                          ;546f
        LD      (0xcd42),de                         ;5472
        LD      l,(ix+0x2)                          ;5476
        LD      h,(ix+0x3)                          ;5479
        CALL    UnpackGfx1                          ;547c
        LD      a,0x4                               ;547f
        LD      d,(ix+0x4)                          ;5481
        LD      e,a                                 ;5484
        LD      a,d                                 ;5485
        CP      0xff                                ;5486
        JR      z,b0_l549ch                         ;5488
        LD      a,e                                 ;548a
        LD      e,(ix+0x5)                          ;548b
        CALL    SetPaletteColor                     ;548e
        LD      a,0x6                               ;5491
        LD      d,(ix+0x6)                          ;5493
        LD      e,(ix+0x7)                          ;5496
        CALL    SetPaletteColor                     ;5499
b0_l549ch:
        LD      de,(0xcd42)                         ;549c
        LD      a,(ix+0x8)                          ;54a0
        CP      0xff                                ;54a3
        JR      z,b0_l54aeh                         ;54a5
        LD      l,a                                 ;54a7
        LD      h,(ix+0x9)                          ;54a8
        CALL    b0_sub_4562h                        ;54ab
b0_l54aeh:
        POP     de                                  ;54ae
b0_l54afh:
        INC     de                                  ;54af
        POP     bc                                  ;54b0
        DEC     b                                   ;54b1
        JP      nz,b0_l542eh                        ;54b2
        JP      SetBanks1_2_3                       ;54b5
b0_l54b8h: equ     #54b8
