; === SndSfxEngineTrack (0x60ed) ===
SndSfxEngineTrack:
        LD      ix,0xc082                           ;60ed
        JP      bA_l6106h                           ;60f1
        LD      ix,0xc01a                           ;60f4
        JP      bA_l6106h                           ;60f8
        LD      ix,0xc034                           ;60fb
        JP      bA_l6106h                           ;60ff
        LD      ix,0xc04e                           ;6102
bA_l6106h:
        LD      a,(BSndCurTrack)                    ;6106
        CP      0x2                                 ;6109
        JP      nz,bA_l6119h                        ;610b
        LD      a,(BSndMusicId)                     ;610e
        OR      a                                   ;6111
        JP      z,bA_l6119h                         ;6112
        SET     5,(ix+0x2)                          ;6115
bA_l6119h:
        LD      a,(BSndNoiseFxFlag)                 ;6119
        OR      a                                   ;611c
        JR      z,bA_l6134h                         ;611d
        LD      a,(BSndNoiseFxTmr)                  ;611f
        INC     a                                   ;6122
        LD      (BSndNoiseFxTmr),a                  ;6123
        CP      0x5                                 ;6126
        JR      nz,bA_l6134h                        ;6128
        XOR     a                                   ;612a
        LD      (BSndNoiseFxTmr),a                  ;612b
        DEC     (ix+0x9)                            ;612e
        CALL    z,bA_sub_61f1h                      ;6131
bA_l6134h:
        DEC     (ix+0x9)                            ;6134
        JP      z,bA_sub_61f1h                      ;6137
        BIT     0,(ix+0x2)                          ;613a
        JP      z,bA_l61dah                         ;613e
        BIT     2,(ix+0x14)                         ;6141
        CALL    nz,bA_sub_6165h                     ;6145
        LD      a,(ix+0x9)                          ;6148
        CP      (ix+0xb)                            ;614b
        JP      nc,bA_l6155h                        ;614e
        CP      (ix+0x6)                            ;6151
        RET     nc                                  ;6154
bA_l6155h:
        LD      e,(ix+0xa)                          ;6155
        DEC     e                                   ;6158
        RET     m                                   ;6159
        LD      (ix+0xa),e                          ;615a
        BIT     5,(ix+0x2)                          ;615d
        RET     nz                                  ;6161
        JP      SndSetChanVolume                    ;6162
bA_sub_6165h:
        BIT     0,(ix+0x14)                         ;6165
        JR      nz,bA_l617bh                        ;6169
        LD      a,(ix+0x15)                         ;616b
        INC     a                                   ;616e
        CP      0xa                                 ;616f
        JP      c,bA_l61bah                         ;6171
        INC     (ix+0x14)                           ;6174
        XOR     a                                   ;6177
        JP      bA_l61bah                           ;6178
bA_l617bh:
        LD      a,(ix+0x19)                         ;617b
        AND     0xf0                                ;617e
        RRCA                                        ;6180
        RRCA                                        ;6181
        RRCA                                        ;6182
        RRCA                                        ;6183
        LD      e,a                                 ;6184
        LD      a,(ix+0x15)                         ;6185
        INC     a                                   ;6188
        CP      e                                   ;6189
        JP      c,bA_l61bah                         ;618a
        LD      e,(ix+0x17)                         ;618d
        LD      d,(ix+0x18)                         ;6190
        LD      a,(ix+0x19)                         ;6193
        AND     0xf                                 ;6196
        LD      b,a                                 ;6198
        LD      a,(ix+0x16)                         ;6199
        CPL                                         ;619c
        LD      (ix+0x16),a                         ;619d
        AND     a                                   ;61a0
        LD      a,e                                 ;61a1
        JR      nz,bA_l61abh                        ;61a2
        ADD     a,b                                 ;61a4
        LD      e,a                                 ;61a5
        JR      nc,bA_l61b0h                        ;61a6
        INC     d                                   ;61a8
        JR      bA_l61b0h                           ;61a9
bA_l61abh:
        SUB     b                                   ;61ab
        LD      e,a                                 ;61ac
        JR      nc,bA_l61b0h                        ;61ad
        DEC     d                                   ;61af
bA_l61b0h:
        LD      (ix+0x17),e                         ;61b0
        LD      (ix+0x18),d                         ;61b3
        CALL    SndSetChanPeriod                    ;61b6
        XOR     a                                   ;61b9
bA_l61bah:
        LD      (ix+0x15),a                         ;61ba
        RET                                         ;61bd
        DEFB    0xdd,0xcb,0x02,0x6e,0xc0,0xdd,0x5e,0x17  ;61be ; data:code-gap
        DEFB    0xdd,0x56,0x18,0xdd,0xcb,0x02,0x76,0xca  ;61c6
        DEFB    0xd1,0x61,0x13,0xdd,0x73,0x17,0xdd,0x72  ;61ce
        DEFB    0x18,0xc3,0x8f,0x60                 ;61d6
bA_l61d1h: equ     #61d1
bA_l61dah:
        BIT     5,(ix+0x2)                          ;61da
        RET     nz                                  ;61de
        BIT     7,(ix+0x2)                          ;61df
        RET     nz                                  ;61e3
        CALL    bA_sub_6454h                        ;61e4
        RET     nc                                  ;61e7
        SET     7,(ix+0x2)                          ;61e8
bA_l61ech:
        LD      e,0x0                               ;61ec
        JP      SndSetChanVolume                    ;61ee
bA_sub_61f1h:
        LD      l,(ix+0x0)                          ;61f1
        LD      h,(ix+0x1)                          ;61f4
bA_l61f7h:
        LD      a,(hl)                              ;61f7
        INC     hl                                  ;61f8
        LD      c,a                                 ;61f9
        CP      0xd0                                ;61fa
bA_sub_61fch:
        JP      nc,bA_l6341h                        ;61fc
        LD      (ix+0x0),l                          ;61ff
        LD      (ix+0x1),h                          ;6202
        CP      0xc0                                ;6205
        JP      nc,bA_l631bh                        ;6207
        AND     0xf                                 ;620a
        INC     a                                   ;620c
        LD      b,a                                 ;620d
        LD      e,(ix+0x3)                          ;620e
        XOR     a                                   ;6211
        LD      (ix+0x15),a                         ;6212
        LD      (ix+0x16),a                         ;6215
        RES     0,(ix+0x14)                         ;6218
bA_l621ch:
        ADD     a,e                                 ;621c
        DJNZ    bA_l621ch                           ;621d
        LD      (ix+0x9),a                          ;621f
        LD      a,(BSndCurTrack)                    ;6222
        CP      0x2                                 ;6225
        JP      nz,bA_l6235h                        ;6227
        LD      a,(BSndMusicId)                     ;622a
        OR      a                                   ;622d
        JP      nz,bA_l6235h                        ;622e
        RES     5,(ix+0x2)                          ;6231
bA_l6235h:
        BIT     0,(ix+0x2)                          ;6235
        JP      z,bA_l628fh                         ;6239
        LD      a,(ix+0x9)                          ;623c
        SUB     (ix+0x5)                            ;623f
        LD      (ix+0xb),a                          ;6242
        BIT     5,(ix+0x2)                          ;6245
        RET     nz                                  ;6249
        LD      a,c                                 ;624a
        AND     0xf0                                ;624b
        RRCA                                        ;624d
        RRCA                                        ;624e
        RRCA                                        ;624f
        LD      hl,bA_l6303h                        ;6250
        ADD     a,l                                 ;6253
        LD      l,a                                 ;6254
        JR      nc,bA_l6258h                        ;6255
        INC     h                                   ;6257
bA_l6258h:
        LD      e,(hl)                              ;6258
        INC     hl                                  ;6259
        LD      d,(hl)                              ;625a
        LD      b,(ix+0x7)                          ;625b
bA_l625eh:
        SRL     d                                   ;625e
        RR      e                                   ;6260
        DJNZ    bA_l625eh                           ;6262
        LD      (ix+0x17),e                         ;6264
        LD      (ix+0x18),d                         ;6267
        BIT     6,(ix+0x2)                          ;626a
        JP      z,bA_l6272h                         ;626e
        INC     de                                  ;6271
bA_l6272h:
        LD      (ix+0x17),e                         ;6272
        LD      (ix+0x18),d                         ;6275
        CALL    SndSetChanPeriod                    ;6278
        LD      a,(BSndSongCounter)                 ;627b
        ADD     a,(ix+0x4)                          ;627e
        JP      p,bA_l6285h                         ;6281
        XOR     a                                   ;6284
bA_l6285h:
        LD      (ix+0xa),a                          ;6285
        LD      e,a                                 ;6288
        CALL    SndSetChanVolume                    ;6289
        JP      SndUpdateMixer                      ;628c
bA_l628fh:
        LD      a,(ix+0x8)                          ;628f
        CP      0x0                                 ;6292
        JR      z,bA_l62c4h                         ;6294
        CP      0x1                                 ;6296
        JR      z,bA_l62e5h                         ;6298
        CP      0x2                                 ;629a
        JR      z,bA_l62ebh                         ;629c
        CP      0x3                                 ;629e
        JR      z,bA_l62f1h                         ;62a0
        CP      0x4                                 ;62a2
        JR      z,bA_l62f7h                         ;62a4
        CP      0x5                                 ;62a6
        JR      z,bA_l62fdh                         ;62a8
        CP      0x6                                 ;62aa
        JR      z,bA_l62beh                         ;62ac
        CP      0x7                                 ;62ae
        JR      z,bA_l62b8h                         ;62b0
        LD      hl,0x8121                           ;62b2
        JP      bA_l62c7h                           ;62b5
bA_l62b8h:
        LD      hl,0x8107                           ;62b8
        JP      bA_l62c7h                           ;62bb
bA_l62beh:
        LD      hl,0x80ed                           ;62be
        JP      bA_l62c7h                           ;62c1
bA_l62c4h:
        LD      hl,0x8051                           ;62c4
bA_l62c7h:
        LD      a,c                                 ;62c7
        AND     0xf0                                ;62c8
        RRCA                                        ;62ca
        RRCA                                        ;62cb
        RRCA                                        ;62cc
        ADD     a,l                                 ;62cd
        LD      l,a                                 ;62ce
        JR      nc,bA_l62d2h                        ;62cf
        INC     h                                   ;62d1
bA_l62d2h:
        LD      a,(hl)                              ;62d2
        LD      (ix+0xc),a                          ;62d3
        INC     hl                                  ;62d6
        LD      a,(hl)                              ;62d7
        LD      (ix+0xd),a                          ;62d8
        RES     7,(ix+0x2)                          ;62db
        LD      a,0x1                               ;62df
        LD      (ix+0xe),a                          ;62e1
        RET                                         ;62e4
bA_l62e5h:
        LD      hl,0x806b                           ;62e5
        JP      bA_l62c7h                           ;62e8
bA_l62ebh:
        LD      hl,0x8085                           ;62eb
        JP      bA_l62c7h                           ;62ee
bA_l62f1h:
        LD      hl,0x809f                           ;62f1
        JP      bA_l62c7h                           ;62f4
bA_l62f7h:
        LD      hl,0x80b9                           ;62f7
        JP      bA_l62c7h                           ;62fa
bA_l62fdh:
        LD      hl,0x80d3                           ;62fd
        JP      bA_l62c7h                           ;6300
bA_l6303h: equ     #6303
        DEFB    0xb8,0x1a,0x38,0x19,0xd0,0x17,0x78,0x16  ;6303 ; data:code-gap
        DEFB    0x34,0x15,0x04,0x14,0xe4,0x12,0xd4,0x11  ;630b
        DEFB    0xd4                                ;6313
        DEFB    0x10                                ;6314
        CALL    po,0xf                              ;6315
        RRCA                                        ;6318
        JR      z,bA_l6329h                         ;6319
bA_l631bh:
        AND     0xf                                 ;631b
        INC     a                                   ;631d
        LD      b,a                                 ;631e
        LD      e,(ix+0x3)                          ;631f
        XOR     a                                   ;6322
bA_l6323h:
        ADD     a,e                                 ;6323
        DJNZ    bA_l6323h                           ;6324
        LD      (ix+0x9),a                          ;6326
bA_l6329h:
        RES     0,(ix+0x5)                          ;6329
        XOR     a                                   ;632d
        LD      (ix+0x15),a                         ;632e
        LD      (ix+0x16),a                         ;6331
        BIT     5,(ix+0x2)                          ;6334
        RET     nz                                  ;6338
        LD      e,0x0                               ;6339
        LD      (ix+0xa),e                          ;633b
        JP      SndSetChanVolume                    ;633e
bA_l6341h:
        AND     0xf0                                ;6341
        CP      0xd0                                ;6343
        JP      z,bA_l63a1h                         ;6345
        CP      0xe0                                ;6348
        JP      z,bA_l63aah                         ;634a
        LD      a,c                                 ;634d
        AND     0xf                                 ;634e
        CP      0xf                                 ;6350
        JP      z,bA_l6434h                         ;6352
        CP      0xe                                 ;6355
        JP      nz,bA_l637ah                        ;6357
        LD      a,(ix+0x10)                         ;635a
        DEC     a                                   ;635d
        JP      z,bA_l6371h                         ;635e
        JP      p,bA_l6366h                         ;6361
        LD      a,(hl)                              ;6364
        DEC     a                                   ;6365
bA_l6366h:
        INC     hl                                  ;6366
        LD      (ix+0x10),a                         ;6367
        LD      a,(hl)                              ;636a
        INC     hl                                  ;636b
        LD      h,(hl)                              ;636c
        LD      l,a                                 ;636d
        JP      bA_l61f7h                           ;636e
bA_l6371h:
        LD      (ix+0x10),a                         ;6371
        INC     hl                                  ;6374
        INC     hl                                  ;6375
        INC     hl                                  ;6376
        JP      bA_l61f7h                           ;6377
bA_l637ah:
        LD      c,a                                 ;637a
        LD      a,(0xc0b2)                          ;637b
        OR      a                                   ;637e
        JP      z,bA_l6386h                         ;637f
        LD      a,0x0                               ;6382
        JR      bA_l6389h                           ;6384
bA_l6386h:
        LD      a,c                                 ;6386
        INC     a                                   ;6387
        INC     a                                   ;6388
bA_l6389h:
        LD      (ix+0x4),a                          ;6389
        LD      a,(hl)                              ;638c
        RRCA                                        ;638d
        RRCA                                        ;638e
        RRCA                                        ;638f
        RRCA                                        ;6390
        AND     0xf                                 ;6391
        LD      (ix+0x5),a                          ;6393
        LD      a,(hl)                              ;6396
        INC     hl                                  ;6397
        AND     0xf                                 ;6398
        INC     a                                   ;639a
        LD      (ix+0x6),a                          ;639b
        JP      bA_l61f7h                           ;639e
bA_l63a1h:
        LD      a,c                                 ;63a1
        AND     0xf                                 ;63a2
        LD      (ix+0x3),a                          ;63a4
        JP      bA_l61f7h                           ;63a7
bA_l63aah:
        LD      a,c                                 ;63aa
        AND     0xf                                 ;63ab
        CP      0x6                                 ;63ad
        JP      c,bA_l63f6h                         ;63af
        JP      z,bA_l6400h                         ;63b2
        CP      0x7                                 ;63b5
        JP      z,bA_l640fh                         ;63b7
        CP      0xa                                 ;63ba
        JP      z,bA_l6416h                         ;63bc
        CP      0xb                                 ;63bf
        JP      z,bA_l6408h                         ;63c1
        CP      0xd                                 ;63c4
        JP      z,bA_l641dh                         ;63c6
        CP      0xe                                 ;63c9
        JP      z,bA_l642bh                         ;63cb
        CP      0x8                                 ;63ce
        JP      z,bA_l63e3h                         ;63d0
        CP      0xc                                 ;63d3
        JR      nz,bA_l63efh                        ;63d5
        SET     2,(ix+0x14)                         ;63d7
        LD      a,(hl)                              ;63db
        INC     hl                                  ;63dc
        LD      (ix+0x19),a                         ;63dd
        JP      bA_l61f7h                           ;63e0
bA_l63e3h:
        RES     0,(ix+0x2)                          ;63e3
        LD      a,(hl)                              ;63e7
        INC     hl                                  ;63e8
        LD      (ix+0x8),a                          ;63e9
        JP      bA_l61f7h                           ;63ec
bA_l63efh:
        SET     0,(ix+0x2)                          ;63ef
        JP      bA_l61f7h                           ;63f3
bA_l63f6h:
        NEG                                         ;63f6
        ADD     a,0x6                               ;63f8
        LD      (ix+0x7),a                          ;63fa
        JP      bA_l61f7h                           ;63fd
bA_l6400h:
        LD      a,0x1                               ;6400
        LD      (BSndMusicPlaying),a                ;6402
        JP      bA_l61f7h                           ;6405
bA_l6408h:
        XOR     a                                   ;6408
        LD      (BSndMusicPlaying),a                ;6409
        JP      bA_l61f7h                           ;640c
bA_l640fh:
        SET     6,(ix+0x2)                          ;640f
        JP      bA_l61f7h                           ;6413
bA_l6416h:
        LD      a,(hl)                              ;6416
        INC     hl                                  ;6417
        LD      h,(hl)                              ;6418
        LD      l,a                                 ;6419
        JP      bA_l61f7h                           ;641a
bA_l641dh:
        LD      e,(hl)                              ;641d
        INC     hl                                  ;641e
        LD      d,(hl)                              ;641f
        INC     hl                                  ;6420
        LD      (ix+0x12),l                         ;6421
        LD      (ix+0x13),h                         ;6424
        EX      de,hl                               ;6427
        JP      bA_l61f7h                           ;6428
bA_l642bh:
        LD      l,(ix+0x12)                         ;642b
        LD      h,(ix+0x13)                         ;642e
        JP      bA_l61f7h                           ;6431
bA_l6434h:
        LD      a,(BSndCurTrack)                    ;6434
        INC     a                                   ;6437
        LD      b,a                                 ;6438
        LD      a,0x7f                              ;6439
bA_l643bh:
        RLCA                                        ;643b
        DJNZ    bA_l643bh                           ;643c
        LD      b,a                                 ;643e
        LD      a,(BSndAuxFlag)                     ;643f
        AND     b                                   ;6442
        LD      (BSndAuxFlag),a                     ;6443
        JP      SndTrackIdle                        ;6446
        LD      ix,0xc068                           ;6449
        CALL    bA_sub_6454h                        ;644d
        RET     nc                                  ;6450
        JP      SndTrackIdle                        ;6451
bA_sub_6454h:
        DEC     (ix+0xe)                            ;6454
        JP      nz,bA_l654eh                        ;6457
        LD      a,(ix+0xf)                          ;645a
        LD      (ix+0xe),a                          ;645d
        LD      l,(ix+0xc)                          ;6460
        LD      h,(ix+0xd)                          ;6463
bA_l6466h:
        LD      a,(hl)                              ;6466
        CP      0xff                                ;6467
        JP      z,bA_l6550h                         ;6469
        INC     hl                                  ;646c
        LD      c,a                                 ;646d
        CP      0xfe                                ;646e
        JP      z,bA_l64d5h                         ;6470
        AND     0xf0                                ;6473
        CP      0x20                                ;6475
        JP      z,bA_l64f5h                         ;6477
        CP      0x10                                ;647a
        JP      nz,bA_l648eh                        ;647c
        LD      a,c                                 ;647f
        AND     0xf                                 ;6480
        RLCA                                        ;6482
        LD      e,a                                 ;6483
        LD      a,0x6                               ;6484
        CALL    WRTPSG                              ;6486
        LD      a,(hl)                              ;6489
        INC     hl                                  ;648a
        LD      c,a                                 ;648b
        AND     0xf0                                ;648c
bA_l648eh:
        RRCA                                        ;648e
        RRCA                                        ;648f
        RRCA                                        ;6490
        RRCA                                        ;6491
        LD      e,a                                 ;6492
        BIT     4,(ix+0xa)                          ;6493
        JP      z,bA_l64a2h                         ;6497
        LD      a,0xd                               ;649a
        CALL    WRTPSG                              ;649c
        JP      bA_l64c6h                           ;649f
bA_l64a2h:
        BIT     0,(ix+0x2)                          ;64a2
        JR      nz,bA_l64b2h                        ;64a6
        LD      a,(0xc0b2)                          ;64a8
        OR      a                                   ;64ab
        JR      z,bA_l64b2h                         ;64ac
        LD      e,0x0                               ;64ae
        JR      bA_l64c3h                           ;64b0
bA_l64b2h:
        LD      a,(BSndCurTrack)                    ;64b2
        CP      0x3                                 ;64b5
        JP      nc,bA_l64c3h                        ;64b7
        LD      a,(BSndSongCounter)                 ;64ba
        ADD     a,e                                 ;64bd
        JP      p,bA_l64c2h                         ;64be
        XOR     a                                   ;64c1
bA_l64c2h:
        LD      e,a                                 ;64c2
bA_l64c3h:
        CALL    SndSetChanVolume                    ;64c3
bA_l64c6h:
        LD      a,c                                 ;64c6
        AND     0xf                                 ;64c7
        LD      d,a                                 ;64c9
        LD      e,(hl)                              ;64ca
        INC     hl                                  ;64cb
        LD      (ix+0xc),l                          ;64cc
        LD      (ix+0xd),h                          ;64cf
        JP      SndSetChanPeriod                    ;64d2
bA_l64d5h:
        LD      a,(ix+0x11)                         ;64d5
        DEC     a                                   ;64d8
        JP      z,bA_l64ech                         ;64d9
        JP      p,bA_l64e1h                         ;64dc
        LD      a,(hl)                              ;64df
        DEC     a                                   ;64e0
bA_l64e1h:
        INC     hl                                  ;64e1
        LD      (ix+0x11),a                         ;64e2
        LD      a,(hl)                              ;64e5
        INC     hl                                  ;64e6
        LD      h,(hl)                              ;64e7
        LD      l,a                                 ;64e8
        JP      bA_l6466h                           ;64e9
bA_l64ech:
        LD      (ix+0x11),a                         ;64ec
        INC     hl                                  ;64ef
        INC     hl                                  ;64f0
        INC     hl                                  ;64f1
        JP      bA_l6466h                           ;64f2
bA_l64f5h:
        BIT     0,c                                 ;64f5
        JP      nz,bA_l650bh                        ;64f7
        BIT     1,c                                 ;64fa
        JP      nz,bA_l6505h                        ;64fc
        CALL    bA_sub_60a3h                        ;64ff
        JP      bA_l6519h                           ;6502
bA_l6505h:
        CALL    SndUpdateMixer                      ;6505
        JP      bA_l6519h                           ;6508
bA_l650bh:
        BIT     1,c                                 ;650b
        JP      nz,bA_l6516h                        ;650d
        CALL    bA_sub_60b1h                        ;6510
        JP      bA_l6519h                           ;6513
bA_l6516h:
        CALL    bA_sub_60aah                        ;6516
bA_l6519h:
        LD      a,c                                 ;6519
        RLCA                                        ;651a
        AND     0x10                                ;651b
        LD      (ix+0xa),a                          ;651d
        LD      e,a                                 ;6520
        CALL    SndSetChanVolume                    ;6521
        LD      a,(hl)                              ;6524
        INC     hl                                  ;6525
        LD      (ix+0xe),a                          ;6526
        LD      (ix+0xf),a                          ;6529
        LD      a,c                                 ;652c
        CP      0x20                                ;652d
        JP      z,bA_l6548h                         ;652f
        CP      0x28                                ;6532
        JP      c,bA_l6466h                         ;6534
        LD      e,(hl)                              ;6537
        INC     hl                                  ;6538
        LD      a,0xc                               ;6539
        CALL    WRTPSG                              ;653b
        LD      e,(hl)                              ;653e
        INC     hl                                  ;653f
        LD      a,0xb                               ;6540
        CALL    WRTPSG                              ;6542
        JP      bA_l6466h                           ;6545
bA_l6548h:
        LD      (ix+0xc),l                          ;6548
        LD      (ix+0xd),h                          ;654b
bA_l654eh:
        OR      a                                   ;654e
        RET                                         ;654f
bA_l6550h:
        SCF                                         ;6550
        RET                                         ;6551
