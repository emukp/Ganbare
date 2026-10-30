gfxPlacer13:
        NOP                                         ;82d3
        NOP                                         ;82d4
        NOP                                         ;82d5
        LD      (bc),a                              ;82d6
        LD      (0x2222),hl                         ;82d7
        LD      (0x2222),hl                         ;82da
        LD      (0x2022),hl                         ;82dd
        NOP                                         ;82e0
        NOP                                         ;82e1
        NOP                                         ;82e2
        NOP                                         ;82e3
        INC     bc                                  ;82e4
        LD      (0xef2e),a                          ;82e5
        RST     KEYINT                              ;82e8
        RST     KEYINT                              ;82e9
        RST     KEYINT                              ;82ea
        RST     KEYINT                              ;82eb
        RST     KEYINT                              ;82ec
        RST     KEYINT                              ;82ed
        CP      0xe2                                ;82ee
        INC     hl                                  ;82f0
        JR      nc,b8_l82f3h                        ;82f1
b8_l82f3h:
        NOP                                         ;82f3
        JR      nc,b8_l8324h                        ;82f4
        RST     GETYPR                              ;82f6
        RST     KEYINT                              ;82f7
        RST     KEYINT                              ;82f8
        RST     KEYINT                              ;82f9
        RST     KEYINT                              ;82fa
        RST     KEYINT                              ;82fb
        RST     KEYINT                              ;82fc
        RST     KEYINT                              ;82fd
        RST     KEYINT                              ;82fe
        CP      0xe2                                ;82ff
        INC     bc                                  ;8301
        NOP                                         ;8302
        NOP                                         ;8303
        LD      (bc),a                              ;8304
        RST     GETYPR                              ;8305
        RST     KEYINT                              ;8306
        RST     KEYINT                              ;8307
        RST     KEYINT                              ;8308
        RST     KEYINT                              ;8309
        RST     KEYINT                              ;830a
        RST     KEYINT                              ;830b
        RST     KEYINT                              ;830c
        RST     KEYINT                              ;830d
        RST     KEYINT                              ;830e
        RST     KEYINT                              ;830f
        CP      0x20                                ;8310
        NOP                                         ;8312
        NOP                                         ;8313
        LD      l,0xff                              ;8314
        RST     KEYINT                              ;8316
        RST     KEYINT                              ;8317
        RST     KEYINT                              ;8318
        RST     KEYINT                              ;8319
        RST     KEYINT                              ;831a
        RST     KEYINT                              ;831b
        RST     KEYINT                              ;831c
        RST     KEYINT                              ;831d
        RST     KEYINT                              ;831e
        RST     KEYINT                              ;831f
        RST     KEYINT                              ;8320
        JP      po,0x200                            ;8321
b8_l8324h:
        XOR     0xff                                ;8324
        RST     KEYINT                              ;8326
        RST     KEYINT                              ;8327
        RST     KEYINT                              ;8328
        RST     KEYINT                              ;8329
        RST     KEYINT                              ;832a
        RST     KEYINT                              ;832b
        RST     KEYINT                              ;832c
        RST     KEYINT                              ;832d
        RST     KEYINT                              ;832e
        RST     KEYINT                              ;832f
        RST     KEYINT                              ;8330
        XOR     0x20                                ;8331
        LD      (bc),a                              ;8333
        RST     GETYPR                              ;8334
        RST     KEYINT                              ;8335
        RST     KEYINT                              ;8336
        RST     KEYINT                              ;8337
        RST     KEYINT                              ;8338
        RST     KEYINT                              ;8339
        RST     KEYINT                              ;833a
        RST     KEYINT                              ;833b
        RST     KEYINT                              ;833c
        RST     KEYINT                              ;833d
        RST     KEYINT                              ;833e
        RST     KEYINT                              ;833f
        RST     KEYINT                              ;8340
        CP      0x20                                ;8341
        LD      l,0xff                              ;8343
        RST     KEYINT                              ;8345
        RST     KEYINT                              ;8346
        RST     KEYINT                              ;8347
        RST     KEYINT                              ;8348
        RST     KEYINT                              ;8349
        RST     KEYINT                              ;834a
        RST     KEYINT                              ;834b
        RST     KEYINT                              ;834c
        RST     KEYINT                              ;834d
        RST     KEYINT                              ;834e
        RST     KEYINT                              ;834f
        RST     KEYINT                              ;8350
        RST     KEYINT                              ;8351
        JP      po,0xef2e                           ;8352
        RST     KEYINT                              ;8355
        RST     KEYINT                              ;8356
        RST     KEYINT                              ;8357
        RST     KEYINT                              ;8358
        RST     KEYINT                              ;8359
        RST     KEYINT                              ;835a
        RST     KEYINT                              ;835b
        RST     KEYINT                              ;835c
        RST     KEYINT                              ;835d
        RST     KEYINT                              ;835e
        RST     KEYINT                              ;835f
        RST     KEYINT                              ;8360
        CP      0xe2                                ;8361
        LD      l,0xef                              ;8363
        RST     KEYINT                              ;8365
        RST     KEYINT                              ;8366
        RST     KEYINT                              ;8367
        RST     KEYINT                              ;8368
        RST     KEYINT                              ;8369
        RST     KEYINT                              ;836a
        RST     KEYINT                              ;836b
        RST     KEYINT                              ;836c
        RST     KEYINT                              ;836d
        RST     KEYINT                              ;836e
        RST     KEYINT                              ;836f
        RST     KEYINT                              ;8370
        CP      0xe2                                ;8371
        LD      (bc),a                              ;8373
        RST     GETYPR                              ;8374
        RST     KEYINT                              ;8375
        RST     KEYINT                              ;8376
        RST     KEYINT                              ;8377
        RST     KEYINT                              ;8378
        RST     KEYINT                              ;8379
        RST     KEYINT                              ;837a
        RST     KEYINT                              ;837b
        RST     KEYINT                              ;837c
        RST     KEYINT                              ;837d
        RST     KEYINT                              ;837e
        RST     KEYINT                              ;837f
        RST     KEYINT                              ;8380
        CP      0x20                                ;8381
        LD      (bc),a                              ;8383
        XOR     0xff                                ;8384
        RST     KEYINT                              ;8386
        RST     KEYINT                              ;8387
        RST     KEYINT                              ;8388
        RST     KEYINT                              ;8389
        RST     KEYINT                              ;838a
        RST     KEYINT                              ;838b
        RST     KEYINT                              ;838c
        RST     KEYINT                              ;838d
        RST     KEYINT                              ;838e
        RST     KEYINT                              ;838f
        RST     KEYINT                              ;8390
        XOR     0x20                                ;8391
        NOP                                         ;8393
        LD      a,0xee                              ;8394
        RST     KEYINT                              ;8396
        RST     KEYINT                              ;8397
        RST     KEYINT                              ;8398
        RST     KEYINT                              ;8399
        RST     KEYINT                              ;839a
        RST     KEYINT                              ;839b
        RST     KEYINT                              ;839c
        RST     KEYINT                              ;839d
        RST     KEYINT                              ;839e
        RST     KEYINT                              ;839f
        XOR     0xe3                                ;83a0
        NOP                                         ;83a2
        INC     bc                                  ;83a3
        LD      (0xee2e),a                          ;83a4
        XOR     0xee                                ;83a7
        XOR     0xee                                ;83a9
        XOR     0xee                                ;83ab
        XOR     0xee                                ;83ad
        XOR     0xe2                                ;83af
        INC     hl                                  ;83b1
        JR      nc,b8_l83e4h                        ;83b2
        JR      nc,b8_l83d8h                        ;83b4
        LD      (0x2222),hl                         ;83b6
        LD      (0x2222),hl                         ;83b9
        LD      (0x2222),hl                         ;83bc
        LD      (0x322),hl                          ;83bf
        INC     bc                                  ;83c2
        NOP                                         ;83c3
        JR      nc,b8_l83c6h                        ;83c4
b8_l83c6h:
        LD      (0x2222),hl                         ;83c6
        LD      (0x2222),hl                         ;83c9
        LD      (0x2222),hl                         ;83cc
        LD      (0x300),hl                          ;83cf
        NOP                                         ;83d2
gfxPlacer14:
        LD      (hl),a                              ;83d3
        LD      a,(bc)                              ;83d4
        ADD     a,b                                 ;83d5
        XOR     b                                   ;83d6
        LD      a,(bc)                              ;83d7
b8_l83d8h:
        ADD     a,b                                 ;83d8
        AND     a                                   ;83d9
        LD      (hl),a                              ;83da
        LD      (hl),a                              ;83db
        LD      a,(bc)                              ;83dc
        ADD     a,b                                 ;83dd
        XOR     b                                   ;83de
        LD      a,(bc)                              ;83df
        ADD     a,b                                 ;83e0
        AND     a                                   ;83e1
        LD      (hl),a                              ;83e2
        LD      (hl),a                              ;83e3
b8_l83e4h:
        LD      a,(bc)                              ;83e4
        ADD     a,b                                 ;83e5
        XOR     b                                   ;83e6
        LD      a,(bc)                              ;83e7
        ADD     a,b                                 ;83e8
        AND     a                                   ;83e9
        LD      (hl),a                              ;83ea
        LD      (hl),a                              ;83eb
        LD      a,(bc)                              ;83ec
        ADD     a,b                                 ;83ed
        XOR     b                                   ;83ee
        LD      a,(bc)                              ;83ef
        ADD     a,b                                 ;83f0
        AND     a                                   ;83f1
        LD      (hl),a                              ;83f2
        LD      (hl),a                              ;83f3
        LD      a,(bc)                              ;83f4
        NOP                                         ;83f5
        AND     b                                   ;83f6
        LD      a,(bc)                              ;83f7
        NOP                                         ;83f8
        AND     a                                   ;83f9
        LD      (hl),a                              ;83fa
        LD      (hl),a                              ;83fb
        LD      a,(bc)                              ;83fc
        XOR     d                                   ;83fd
        XOR     d                                   ;83fe
        XOR     d                                   ;83ff
        XOR     d                                   ;8400
        AND     a                                   ;8401
        LD      (hl),a                              ;8402
        LD      (hl),a                              ;8403
        NOP                                         ;8404
        NOP                                         ;8405
        NOP                                         ;8406
        NOP                                         ;8407
        NOP                                         ;8408
        NOP                                         ;8409
        LD      (hl),a                              ;840a
        LD      (hl),a                              ;840b
        LD      (hl),a                              ;840c
        LD      (hl),a                              ;840d
        LD      (hl),a                              ;840e
        LD      (hl),a                              ;840f
        LD      (hl),a                              ;8410
        LD      (hl),a                              ;8411
        LD      (hl),a                              ;8412
gfxPlacer09: equ     #8413
