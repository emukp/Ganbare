bD_l7115h:
        LD      a,(bc)                              ;7115
        LD      a,(bc)                              ;7116
        ADD     hl,bc                               ;7117
        JR      nz,bD_l713ah                        ;7118
        LD      (0xa08),hl                          ;711a
        INC     bc                                  ;711d
        LD      hl,0x2486                           ;711e
        LD      hl,0x2320                           ;7121
        INC     h                                   ;7124
        DEC     h                                   ;7125
        INC     bc                                  ;7126
        JR      z,bD_l7115h                         ;7127
        LD      h,0x28                              ;7129
        DAA                                         ;712b
        ADD     hl,hl                               ;712c
        DJNZ    $+28                                ;712d
        CPL                                         ;712f
        LD      bc,0x222f                           ;7130
        ADD     hl,de                               ;7133
        LD      de,0x700                            ;7134
        LD      hl,0x2023                           ;7137
bD_l713ah:
        INC     h                                   ;713a
        LD      b,0x0                               ;713b
        NOP                                         ;713d
        DEC     b                                   ;713e
        JR      nz,bD_l714dh                        ;713f
        DEC     c                                   ;7141
        JR      nz,bD_l7148h                        ;7142
        NOP                                         ;7144
        LD      a,(bc)                              ;7145
        ADD     hl,bc                               ;7146
        INC     h                                   ;7147
bD_l7148h:
        LD      b,0x7                               ;7148
        JR      nz,$+10                             ;714a
        LD      a,(bc)                              ;714c
bD_l714dh:
        CPL                                         ;714d
        INC     hl                                  ;714e
        JR      nz,bD_l7159h                        ;714f
        ADD     hl,bc                               ;7151
        INC     hl                                  ;7152
        JR      nz,bD_l7175h                        ;7153
        ADD     hl,hl                               ;7155
        DEC     h                                   ;7156
        LD      h,0x28                              ;7157
bD_l7159h:
        DAA                                         ;7159
        ADD     hl,hl                               ;715a
        DEC     h                                   ;715b
        DAA                                         ;715c
        DJNZ    bD_l7179h                           ;715d
        CPL                                         ;715f
        INC     l                                   ;7160
        LD      bc,0x1921                           ;7161
        LD      de,0x1c00                           ;7164
        JR      nz,bD_l718dh                        ;7167
        LD      hl,0x423                            ;7169
        NOP                                         ;716c
        NOP                                         ;716d
        RLCA                                        ;716e
        INC     hl                                  ;716f
        ADD     hl,de                               ;7170
        LD      de,0x81a                            ;7171
        INC     de                                  ;7174
bD_l7175h:
        LD      a,(bc)                              ;7175
        ADD     hl,bc                               ;7176
        JR      nz,bD_l717fh                        ;7177
bD_l7179h:
        INC     d                                   ;7179
        ADD     hl,bc                               ;717a
        LD      hl,0x2008                           ;717b
        INC     hl                                  ;717e
bD_l717fh:
        INC     h                                   ;717f
        DEC     d                                   ;7180
        RLA                                         ;7181
        INC     h                                   ;7182
        LD      hl,0x2920                           ;7183
        DEC     h                                   ;7186
        JR      z,bD_l71b1h                         ;7187
        DAA                                         ;7189
        ADD     hl,hl                               ;718a
        DEC     h                                   ;718b
        DAA                                         ;718c
bD_l718dh:
        DJNZ    $+20                                ;718d
        DEC     l                                   ;718f
        DJNZ    bD_l71a3h                           ;7190
        LD      a,(de)                              ;7192
        LD      (0x52c),hl                          ;7193
        NOP                                         ;7196
        ADD     a,e                                 ;7197
        DEC     b                                   ;7198
        INC     hl                                  ;7199
        LD      hl,0x6                              ;719a
        ADD     a,d                                 ;719d
        INC     bc                                  ;719e
        INC     hl                                  ;719f
        LD      b,0xa                               ;71a0
        SBC     a,(hl)                              ;71a2
bD_l71a3h:
        ADD     hl,bc                               ;71a3
        INC     h                                   ;71a4
        LD      (0x2321),hl                         ;71a5
        LD      hl,0x2f22                           ;71a8
        LD      hl,0x292c                           ;71ab
        DEC     h                                   ;71ae
        DAA                                         ;71af
        ADD     hl,hl                               ;71b0
bD_l71b1h:
        DEC     a                                   ;71b1
        LD      a,0x3f                              ;71b2
        ADD     hl,hl                               ;71b4
        DJNZ    bD_l71d1h                           ;71b5
        LD      hl,0x1e19                           ;71b7
        DEC     de                                  ;71ba
        RRA                                         ;71bb
        LD      de,0x500                            ;71bc
        INC     hl                                  ;71bf
        LD      b,0x5                               ;71c0
        NOP                                         ;71c2
        ADD     a,e                                 ;71c3
        DEC     b                                   ;71c4
        LD      hl,0x404                            ;71c5
        NOP                                         ;71c8
        ADD     a,h                                 ;71c9
        LD      a,(bc)                              ;71ca
        ADD     hl,bc                               ;71cb
        INC     h                                   ;71cc
        EX      af,af'                              ;71cd
        INC     b                                   ;71ce
        LD      a,(bc)                              ;71cf
        SBC     a,b                                 ;71d0
bD_l71d1h:
        INC     hl                                  ;71d1
        JR      nz,$+35                             ;71d2
        LD      hl,0x2322                           ;71d4
        INC     h                                   ;71d7
        CPL                                         ;71d8
        ADD     hl,hl                               ;71d9
        JR      nc,bD_l720dh                        ;71da
        LD      (0x3833),a                          ;71dc
        DEC     h                                   ;71df
        DAA                                         ;71e0
        DJNZ    bD_l7217h                           ;71e1
        DEC     (hl)                                ;71e3
        LD      (hl),0x39                           ;71e4
        INC     a                                   ;71e6
        DEC     l                                   ;71e7
        LD      de,0x10                             ;71e8
        EX      af,af'                              ;71eb
        LD      a,(bc)                              ;71ec
        SBC     a,b                                 ;71ed
        LD      hl,0x2120                           ;71ee
        INC     hl                                  ;71f1
        JR      nz,$+38                             ;71f2
        JR      nz,bD_l7216h                        ;71f4
        JR      nc,bD_l7233h                        ;71f6
        LD      sp,0x3332                           ;71f8
        JR      c,$+52                              ;71fb
        JR      c,bD_l722dh                         ;71fd
        ADD     hl,sp                               ;71ff
        INC     a                                   ;7200
        LD      (hl),0x37                           ;7201
        INC     a                                   ;7203
        LD      a,(0xa35)                           ;7204
        NOP                                         ;7207
        ADD     a,c                                 ;7208
        INC     d                                   ;7209
        INC     bc                                  ;720a
        LD      a,(bc)                              ;720b
        SUB     a                                   ;720c
bD_l720dh:
        INC     de                                  ;720d
        NOP                                         ;720e
        LD      a,(bc)                              ;720f
        LD      a,(bc)                              ;7210
        ADD     hl,bc                               ;7211
        LD      (0x2f24),hl                         ;7212
        EX      af,af'                              ;7215
bD_l7216h:
        LD      a,(bc)                              ;7216
bD_l7217h:
        LD      hl,0x2220                           ;7217
bD_l721ah:
        JR      nz,$+38                             ;721a
        LD      hl,0x2f23                           ;721c
        ADD     hl,hl                               ;721f
        DEC     h                                   ;7220
        LD      h,0x28                              ;7221
        DAA                                         ;7223
        INC     bc                                  ;7224
        LD      c,0x85                              ;7225
        DJNZ    bD_l723ah                           ;7227
        DEC     l                                   ;7229
        JR      bD_l7244h                           ;722a
        INC     bc                                  ;722c
bD_l722dh:
        DEC     bc                                  ;722d
        DJNZ    bD_l7230h                           ;722e
bD_l7230h:
        ADD     a,c                                 ;7230
        INC     de                                  ;7231
        RLCA                                        ;7232
bD_l7233h:
        NOP                                         ;7233
        ADD     a,c                                 ;7234
        DEC     d                                   ;7235
        RLCA                                        ;7236
        LD      d,0x0                               ;7237
        NOP                                         ;7239
bD_l723ah:
        LD      bc,0x301                            ;723a
        DEC     bc                                  ;723d
        DEC     bc                                  ;723e
        DJNZ    bD_l7243h                           ;723f
        INC     b                                   ;7241
        DEC     b                                   ;7242
bD_l7243h:
        DEC     b                                   ;7243
bD_l7244h:
        RLCA                                        ;7244
        RRCA                                        ;7245
        RRCA                                        ;7246
        INC     d                                   ;7247
        LD      b,0x8                               ;7248
        LD      de,0x1212                           ;724a
        LD      (de),a                              ;724d
        LD      (de),a                              ;724e
        INC     de                                  ;724f
        LD      a,(bc)                              ;7250
        INC     c                                   ;7251
        DEC     d                                   ;7252
        LD      d,0x16                              ;7253
        LD      d,0x16                              ;7255
        RLA                                         ;7257
        LD      c,0x9                               ;7258
        DEC     b                                   ;725a
        DEC     b                                   ;725b
        DEC     b                                   ;725c
        DEC     b                                   ;725d
        DEC     b                                   ;725e
        DEC     b                                   ;725f
        DEC     c                                   ;7260
        JR      bD_l727bh                           ;7261
        JR      bD_l727eh                           ;7263
        LD      a,(de)                              ;7265
        JR      bD_l7280h                           ;7266
        JR      bD_l721ah                           ;7268
        AND     b                                   ;726a
        AND     b                                   ;726b
        AND     b                                   ;726c
        JP      0xa0b0                              ;726d
        AND     b                                   ;7270
        OR      h                                   ;7271
        JP      0xa0b0                              ;7272
        AND     b                                   ;7275
        OR      h                                   ;7276
        OR      c                                   ;7277
        XOR     a                                   ;7278
        AND     b                                   ;7279
        AND     b                                   ;727a
bD_l727bh:
        AND     b                                   ;727b
        AND     b                                   ;727c
        AND     b                                   ;727d
bD_l727eh:
        AND     b                                   ;727e
        AND     b                                   ;727f
bD_l7280h:
        AND     b                                   ;7280
        AND     b                                   ;7281
        AND     b                                   ;7282
        AND     b                                   ;7283
        AND     b                                   ;7284
        XOR     e                                   ;7285
        XOR     e                                   ;7286
        XOR     e                                   ;7287
        XOR     e                                   ;7288
        AND     b                                   ;7289
        AND     b                                   ;728a
        AND     b                                   ;728b
        POP     bc                                  ;728c
        AND     b                                   ;728d
        AND     b                                   ;728e
        POP     bc                                  ;728f
        OR      d                                   ;7290
        AND     b                                   ;7291
        POP     bc                                  ;7292
        OR      d                                   ;7293
        PUSH    bc                                  ;7294
        POP     bc                                  ;7295
        JP      nz,0xa0c5                           ;7296
        AND     b                                   ;7299
        AND     b                                   ;729a
        AND     b                                   ;729b
        AND     b                                   ;729c
        AND     b                                   ;729d
        AND     b                                   ;729e
        AND     b                                   ;729f
        AND     b                                   ;72a0
        CP      c                                   ;72a1
        AND     e                                   ;72a2
        AND     e                                   ;72a3
        AND     e                                   ;72a4
        CP      e                                   ;72a5
        NOP                                         ;72a6
        NOP                                         ;72a7
        NOP                                         ;72a8
        AND     b                                   ;72a9
        AND     b                                   ;72aa
        OR      e                                   ;72ab
        CP      l                                   ;72ac
        AND     b                                   ;72ad
        AND     b                                   ;72ae
        AND     c                                   ;72af
        OR      l                                   ;72b0
        AND     b                                   ;72b1
        AND     b                                   ;72b2
        AND     c                                   ;72b3
        OR      l                                   ;72b4
        AND     b                                   ;72b5
        AND     b                                   ;72b6
        AND     c                                   ;72b7
        OR      l                                   ;72b8
        LD      bc,0x101                            ;72b9
        LD      bc,0x101                            ;72bc
        LD      bc,0x101                            ;72bf
        LD      bc,0x101                            ;72c2
        LD      bc,0x101                            ;72c5
        LD      bc,0xc4ce                           ;72c8
        AND     b                                   ;72cb
        AND     b                                   ;72cc
        ADD     a,0xa1                              ;72cd
        AND     b                                   ;72cf
        AND     b                                   ;72d0
        ADD     a,0xa1                              ;72d1
        AND     b                                   ;72d3
        AND     b                                   ;72d4
        ADD     a,0xa1                              ;72d5
        AND     b                                   ;72d7
        AND     b                                   ;72d8
        CP      e                                   ;72d9
        NOP                                         ;72da
        NOP                                         ;72db
        NOP                                         ;72dc
        CP      e                                   ;72dd
        NOP                                         ;72de
        NOP                                         ;72df
        NOP                                         ;72e0
        CP      e                                   ;72e1
        NOP                                         ;72e2
        NOP                                         ;72e3
        NOP                                         ;72e4
        CP      d                                   ;72e5
        AND     h                                   ;72e6
        AND     h                                   ;72e7
        AND     h                                   ;72e8
        AND     b                                   ;72e9
        AND     b                                   ;72ea
        AND     c                                   ;72eb
        OR      l                                   ;72ec
        OR      b                                   ;72ed
        AND     b                                   ;72ee
        AND     c                                   ;72ef
        OR      l                                   ;72f0
        JP      0xa1b0                              ;72f1
        OR      l                                   ;72f4
        OR      h                                   ;72f5
        JP      0xb5af                              ;72f6
        AND     b                                   ;72f9
        AND     b                                   ;72fa
        AND     c                                   ;72fb
        OR      l                                   ;72fc
        AND     b                                   ;72fd
        AND     b                                   ;72fe
        AND     c                                   ;72ff
        OR      l                                   ;7300
        OR      b                                   ;7301
        AND     b                                   ;7302
        AND     c                                   ;7303
        OR      l                                   ;7304
        JP      0xa1b0                              ;7305
        OR      l                                   ;7308
        ADD     a,0xa1                              ;7309
        AND     b                                   ;730b
        AND     b                                   ;730c
        ADD     a,0xa1                              ;730d
        AND     b                                   ;730f
        POP     bc                                  ;7310
        ADD     a,0xa1                              ;7311
        POP     bc                                  ;7313
        OR      d                                   ;7314
        ADD     a,0xc0                              ;7315
        OR      d                                   ;7317
        PUSH    bc                                  ;7318
        AND     b                                   ;7319
        AND     b                                   ;731a
        AND     b                                   ;731b
        AND     b                                   ;731c
        AND     b                                   ;731d
        AND     b                                   ;731e
        AND     b                                   ;731f
        AND     b                                   ;7320
        AND     e                                   ;7321
        AND     e                                   ;7322
        AND     e                                   ;7323
        AND     e                                   ;7324
        NOP                                         ;7325
        NOP                                         ;7326
        NOP                                         ;7327
        NOP                                         ;7328
        AND     b                                   ;7329
        OR      h                                   ;732a
        OR      c                                   ;732b
        OR      (hl)                                ;732c
        AND     b                                   ;732d
        AND     b                                   ;732e
        OR      e                                   ;732f
        CP      l                                   ;7330
        AND     b                                   ;7331
        AND     b                                   ;7332
        AND     c                                   ;7333
        OR      l                                   ;7334
        AND     b                                   ;7335
        AND     b                                   ;7336
        AND     c                                   ;7337
        OR      l                                   ;7338
        ADD     a,0xa1                              ;7339
        AND     b                                   ;733b
        AND     b                                   ;733c
        ADD     a,0xa1                              ;733d
        AND     b                                   ;733f
        AND     b                                   ;7340
        ADD     a,0xa1                              ;7341
        AND     b                                   ;7343
        POP     bc                                  ;7344
        ADD     a,0xa1                              ;7345
        POP     bc                                  ;7347
        OR      d                                   ;7348
        RST     0                                   ;7349
        JP      nz,0xa0c5                           ;734a
        ADC     a,0xc4                              ;734d
        AND     b                                   ;734f
        AND     b                                   ;7350
        ADD     a,0xa1                              ;7351
        AND     b                                   ;7353
        AND     b                                   ;7354
        ADD     a,0xa1                              ;7355
        AND     b                                   ;7357
        AND     b                                   ;7358
        NOP                                         ;7359
        NOP                                         ;735a
        NOP                                         ;735b
        NOP                                         ;735c
        NOP                                         ;735d
        NOP                                         ;735e
        NOP                                         ;735f
        NOP                                         ;7360
        NOP                                         ;7361
        NOP                                         ;7362
        NOP                                         ;7363
        NOP                                         ;7364
        AND     h                                   ;7365
        AND     h                                   ;7366
        AND     h                                   ;7367
        AND     h                                   ;7368
        AND     b                                   ;7369
        AND     b                                   ;736a
        AND     b                                   ;736b
        AND     b                                   ;736c
        AND     b                                   ;736d
        AND     b                                   ;736e
        AND     b                                   ;736f
        AND     b                                   ;7370
        AND     e                                   ;7371
        AND     e                                   ;7372
        AND     e                                   ;7373
        JP      z,0x0                               ;7374
        NOP                                         ;7377
        CALL    z,0x101                             ;7378
        LD      bc,0x101                            ;737b
        LD      bc,0x101                            ;737e
        LD      bc,0xb701                           ;7381
        AND     l                                   ;7384
        LD      bc,0xbc01                           ;7385
        NOP                                         ;7388
        LD      bc,0x101                            ;7389
        LD      bc,0x101                            ;738c
        LD      bc,0xa501                           ;738f
        AND     l                                   ;7392
        AND     l                                   ;7393
        AND     l                                   ;7394
        NOP                                         ;7395
        NOP                                         ;7396
        NOP                                         ;7397
        NOP                                         ;7398
        LD      bc,0x101                            ;7399
        LD      bc,0x101                            ;739c
        LD      bc,0xa501                           ;739f
        RET     z                                   ;73a2
        LD      bc,0x1                              ;73a3
        CALL    0x101                               ;73a6
        NOP                                         ;73a9
        NOP                                         ;73aa
        NOP                                         ;73ab
        CALL    z,0x0                               ;73ac
        NOP                                         ;73af
        CALL    z,0x0                               ;73b0
        NOP                                         ;73b3
        CALL    z,0xa4a4                            ;73b4
        AND     h                                   ;73b7
        RLC     c                                   ;73b8
        LD      bc,0xbc                             ;73ba
        LD      bc,0xbc01                           ;73bd
        NOP                                         ;73c0
        LD      bc,0xb801                           ;73c1
        AND     (hl)                                ;73c4
        LD      bc,0xae01                           ;73c5
        AND     d                                   ;73c8
        NOP                                         ;73c9
        NOP                                         ;73ca
        NOP                                         ;73cb
        NOP                                         ;73cc
        NOP                                         ;73cd
        NOP                                         ;73ce
        NOP                                         ;73cf
        NOP                                         ;73d0
        AND     (hl)                                ;73d1
        AND     (hl)                                ;73d2
        AND     (hl)                                ;73d3
        AND     (hl)                                ;73d4
        AND     d                                   ;73d5
        AND     d                                   ;73d6
        AND     d                                   ;73d7
        AND     d                                   ;73d8
        NOP                                         ;73d9
        CALL    0x101                               ;73da
        NOP                                         ;73dd
        CALL    0x101                               ;73de
        AND     (hl)                                ;73e1
        RET                                         ;73e2
        LD      bc,0xa201                           ;73e3
        CP      a                                   ;73e6
        LD      bc,0xa701                           ;73e7
        XOR     b                                   ;73ea
        AND     a                                   ;73eb
        XOR     b                                   ;73ec
        XOR     c                                   ;73ed
        XOR     d                                   ;73ee
        XOR     c                                   ;73ef
        XOR     d                                   ;73f0
        NOP                                         ;73f1
        NOP                                         ;73f2
        NOP                                         ;73f3
        NOP                                         ;73f4
        NOP                                         ;73f5
        NOP                                         ;73f6
        NOP                                         ;73f7
        NOP                                         ;73f8
        XOR     c                                   ;73f9
        XOR     d                                   ;73fa
        XOR     c                                   ;73fb
        XOR     d                                   ;73fc
        XOR     l                                   ;73fd
        XOR     h                                   ;73fe
        XOR     h                                   ;73ff
        XOR     h                                   ;7400
        NOP                                         ;7401
        NOP                                         ;7402
        NOP                                         ;7403
        NOP                                         ;7404
        NOP                                         ;7405
        NOP                                         ;7406
        NOP                                         ;7407
        NOP                                         ;7408
        XOR     c                                   ;7409
        XOR     d                                   ;740a
        XOR     c                                   ;740b
        XOR     d                                   ;740c
        XOR     h                                   ;740d
        XOR     h                                   ;740e
        XOR     h                                   ;740f
        CP      (hl)                                ;7410
        NOP                                         ;7411
        NOP                                         ;7412
        NOP                                         ;7413
        NOP                                         ;7414
        NOP                                         ;7415
        NOP                                         ;7416
        NOP                                         ;7417
        NOP                                         ;7418
        NOP                                         ;7419
        LD      bc,0x302                            ;741a
        EX      af,af'                              ;741d
        ADD     hl,bc                               ;741e
        LD      bc,0x40b                            ;741f
        DEC     b                                   ;7422
        LD      b,0x7                               ;7423
        INC     c                                   ;7425
        DEC     c                                   ;7426
        DEC     b                                   ;7427
        RRCA                                        ;7428
        LD      a,(bc)                              ;7429
        LD      a,(bc)                              ;742a
        LD      a,(bc)                              ;742b
        LD      a,(bc)                              ;742c
        LD      a,(bc)                              ;742d
        LD      a,(bc)                              ;742e
        LD      a,(bc)                              ;742f
        LD      a,(bc)                              ;7430
        LD      a,(bc)                              ;7431
        LD      a,(bc)                              ;7432
        LD      a,(bc)                              ;7433
        LD      a,(bc)                              ;7434
        LD      a,(bc)                              ;7435
        LD      a,(bc)                              ;7436
        LD      a,(bc)                              ;7437
        LD      a,(bc)                              ;7438
        LD      a,(bc)                              ;7439
        LD      a,(bc)                              ;743a
        LD      a,(bc)                              ;743b
        LD      a,(bc)                              ;743c
        LD      a,(bc)                              ;743d
        LD      a,(bc)                              ;743e
        LD      a,(bc)                              ;743f
        LD      a,(bc)                              ;7440
        LD      c,0xe                               ;7441
        LD      c,0xe                               ;7443
        LD      c,0xe                               ;7445
        LD      c,0xe                               ;7447
        RST     8                                   ;7449
        RET     nc                                  ;744a
        RST     8                                   ;744b
        RET     nc                                  ;744c
        POP     de                                  ;744d
        JP      nc,0xd2d1                           ;744e
        OUT     (0xd4),a                            ;7451
        SUB     0xd6                                ;7453
        CALL    nc,0xd7d7                           ;7455
        RST     CHRGTR                              ;7458
        RST     8                                   ;7459
        RET     nc                                  ;745a
        RST     8                                   ;745b
        RET     nc                                  ;745c
        POP     de                                  ;745d
        JP      nc,0xd2d1                           ;745e
        SUB     0xd6                                ;7461
        SUB     0xd6                                ;7463
        RST     CHRGTR                              ;7465
        RST     CHRGTR                              ;7466
        RST     CHRGTR                              ;7467
        RST     CHRGTR                              ;7468
        RST     8                                   ;7469
        RET     nc                                  ;746a
        RET     c                                   ;746b
        RET     c                                   ;746c
        POP     de                                  ;746d
        JP      nc,0xd9d9                           ;746e
        SUB     0xd6                                ;7471
        EXX                                         ;7473
        EXX                                         ;7474
        RST     CHRGTR                              ;7475
        RST     CHRGTR                              ;7476
        JP      c,0xd8da                            ;7477
        RET     c                                   ;747a
        RET     c                                   ;747b
        RET     c                                   ;747c
        EXX                                         ;747d
        EXX                                         ;747e
        EXX                                         ;747f
        EXX                                         ;7480
        EXX                                         ;7481
        EXX                                         ;7482
        EXX                                         ;7483
        EXX                                         ;7484
        JP      c,0xdada                            ;7485
        JP      c,0xdfdb                            ;7488
        RST     OUTDO                               ;748b
        RST     OUTDO                               ;748c
        CALL    c,0xf1e0                            ;748d
        POP     af                                  ;7490
        POP     ix                                  ;7491
        JP      po,0xdee1                           ;7493
        EX      (sp),hl                             ;7496
        CALL    po,0xdfe3                           ;7497
        RST     OUTDO                               ;749a
        RST     OUTDO                               ;749b
        RST     OUTDO                               ;749c
        POP     af                                  ;749d
        POP     af                                  ;749e
        POP     af                                  ;749f
        POP     af                                  ;74a0
        JP      po,0xe2e1                           ;74a1
        POP     hl                                  ;74a4
        CALL    po,0xe4e3                           ;74a5
        EX      (sp),hl                             ;74a8
        RST     OUTDO                               ;74a9
        RST     OUTDO                               ;74aa
        PUSH    hl                                  ;74ab
        AND     0xf1                                ;74ac
        RET     po                                  ;74ae
        PUSH    hl                                  ;74af
        AND     0xe2                                ;74b0
        POP     hl                                  ;74b2
        PUSH    hl                                  ;74b3
        AND     0xe4                                ;74b4
        EX      (sp),hl                             ;74b6
        PUSH    hl                                  ;74b7
        AND     0xe6                                ;74b8
        PUSH    hl                                  ;74ba
        RST     DCOMPR                              ;74bb
        RET     pe                                  ;74bc
        AND     0xe5                                ;74bd
        JP      pe,0xe6ea                           ;74bf
        PUSH    hl                                  ;74c2
        EX      de,hl                               ;74c3
        EX      de,hl                               ;74c4
        AND     0xe5                                ;74c5
        CALL    pe,0xd8ec                           ;74c7
        RET     c                                   ;74ca
        RET     c                                   ;74cb
        RET     c                                   ;74cc
        EXX                                         ;74cd
        EXX                                         ;74ce
        EXX                                         ;74cf
        EXX                                         ;74d0
        EXX                                         ;74d1
        EXX                                         ;74d2
        EXX                                         ;74d3
        EXX                                         ;74d4
        JP      c,0xdada                            ;74d5
        JP      c,0xd8d8                            ;74d8
        RST     8                                   ;74db
        RET     nc                                  ;74dc
        EXX                                         ;74dd
        EXX                                         ;74de
        POP     de                                  ;74df
        JP      nc,0xd9d9                           ;74e0
        SUB     0xd6                                ;74e3
        JP      c,0xd7da                            ;74e5
        RST     CHRGTR                              ;74e8
        LD      bc,0x101                            ;74e9
        LD      bc,0x101                            ;74ec
        LD      bc,0x101                            ;74ef
        LD      bc,0x101                            ;74f2
        LD      bc,0x101                            ;74f5
        LD      bc,0xd0cf                           ;74f8
        RST     8                                   ;74fb
        RET     nc                                  ;74fc
        POP     de                                  ;74fd
        JP      nc,0xd2d1                           ;74fe
        SUB     0xd6                                ;7501
        PUSH    de                                  ;7503
        JP      nc,0xd7d7                           ;7504
        RST     CHRGTR                              ;7507
        PUSH    de                                  ;7508
        JP      (hl)                                ;7509
        RST     DCOMPR                              ;750a
        PUSH    hl                                  ;750b
        AND     0xea                                ;750c
        JP      pe,0xe6e5                           ;750e
        EX      de,hl                               ;7511
        EX      de,hl                               ;7512
        PUSH    hl                                  ;7513
        AND     0xec                                ;7514
        CALL    pe,0xe6e5                           ;7516
        AND     0xe5                                ;7519
        RST     OUTDO                               ;751b
        RST     OUTDO                               ;751c
        AND     0xe5                                ;751d
        RET     po                                  ;751f
        POP     af                                  ;7520
        AND     0xe5                                ;7521
        POP     hl                                  ;7523
        JP      po,0xe5e6                           ;7524
        EX      (sp),hl                             ;7527
        CALL    po,0xd6d6                           ;7528
        SUB     0xd6                                ;752b
        RST     CHRGTR                              ;752d
        RST     CHRGTR                              ;752e
        RST     CHRGTR                              ;752f
        RST     CHRGTR                              ;7530
        RST     OUTDO                               ;7531
        RST     OUTDO                               ;7532
        RST     OUTDO                               ;7533
        RST     OUTDO                               ;7534
        POP     af                                  ;7535
        POP     af                                  ;7536
        POP     af                                  ;7537
        POP     af                                  ;7538
        RST     OUTDO                               ;7539
        RST     OUTDO                               ;753a
        RST     OUTDO                               ;753b
