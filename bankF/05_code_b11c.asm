bF_lb11ch:
        INC     c                                   ;b11c
        LD      (hl),c                              ;b11d
        SUB     b                                   ;b11e
        INC     c                                   ;b11f
        ADD     a,b                                 ;b120
        AND     l                                   ;b121
        DEC     c                                   ;b122
        LD      (hl),b                              ;b123
        LD      b,h                                 ;b124
        DEC     c                                   ;b125
        SUB     b                                   ;b126
        LD      b,(hl)                              ;b127
        DEC     c                                   ;b128
        LD      (hl),h                              ;b129
        AND     c                                   ;b12a
        DEC     c                                   ;b12b
        OR      h                                   ;b12c
        LD      d,c                                 ;b12d
        DEC     c                                   ;b12e
        SUB     (hl)                                ;b12f
        RST     CHRGTR                              ;b130
        RST     KEYINT                              ;b131
        INC     d                                   ;b132
        LD      bc,bF_lb7a6h                        ;b133
        INC     b                                   ;b136
        SUB     (hl)                                ;b137
        OR      a                                   ;b138
        DEC     b                                   ;b139
        ADD     a,(hl)                              ;b13a
bF_lb13bh:
        AND     a                                   ;b13b
        DEC     b                                   ;b13c
        ADD     a,c                                 ;b13d
        RET     nz                                  ;b13e
        LD      b,0xb6                              ;b13f
        DAA                                         ;b141
        LD      b,0x94                              ;b142
        OR      c                                   ;b144
        EX      af,af'                              ;b145
        ADD     a,(hl)                              ;b146
        LD      b,a                                 ;b147
        ADD     hl,bc                               ;b148
        SUB     h                                   ;b149
        LD      (hl),c                              ;b14a
        ADD     hl,bc                               ;b14b
        OR      (hl)                                ;b14c
        RST     CHRGTR                              ;b14d
        LD      a,(bc)                              ;b14e
        LD      (hl),d                              ;b14f
        AND     b                                   ;b150
bF_lb151h:
        DEC     bc                                  ;b151
        LD      d,(hl)                              ;b152
        RLA                                         ;b153
        LD      c,0x94                              ;b154
        ADD     a,c                                 ;b156
        RRCA                                        ;b157
        LD      h,(hl)                              ;b158
        RLA                                         ;b159
        LD      de,0x27a6                           ;b15a
        LD      de,0xc174                           ;b15d
        LD      (de),a                              ;b160
        ADD     a,h                                 ;b161
        LD      b,c                                 ;b162
        LD      (de),a                              ;b163
        LD      (hl),c                              ;b164
        LD      d,b                                 ;b165
        LD      (de),a                              ;b166
        HALT                                        ;b167
        SUB     a                                   ;b168
        DEC     d                                   ;b169
        ADD     a,h                                 ;b16a
bF_lb16bh:
        LD      h,c                                 ;b16b
        DEC     d                                   ;b16c
        ADD     a,h                                 ;b16d
        ADD     a,c                                 ;b16e
        RST     KEYINT                              ;b16f
        DEC     sp                                  ;b170
        LD      bc,0x2786                           ;b171
bF_lb174h:
        LD      bc,0x8092                           ;b174
        LD      (bc),a                              ;b177
        LD      h,b                                 ;b178
        DEC     h                                   ;b179
        LD      (bc),a                              ;b17a
        AND     b                                   ;b17b
        LD      b,h                                 ;b17c
        LD      (bc),a                              ;b17d
        OR      (hl)                                ;b17e
        RST     0                                   ;b17f
        INC     bc                                  ;b180
        LD      h,b                                 ;b181
        SUB     l                                   ;b182
        INC     bc                                  ;b183
bF_lb184h:
        LD      h,b                                 ;b184
        OR      l                                   ;b185
        INC     bc                                  ;b186
        AND     b                                   ;b187
        SUB     h                                   ;b188
        INC     bc                                  ;b189
        LD      (hl),h                              ;b18a
        POP     hl                                  ;b18b
        INC     bc                                  ;b18c
        SUB     h                                   ;b18d
        POP     hl                                  ;b18e
        INC     bc                                  ;b18f
        OR      h                                   ;b190
        POP     hl                                  ;b191
        INC     b                                   ;b192
        ADD     a,c                                 ;b193
        SUB     b                                   ;b194
        DEC     b                                   ;b195
        ADD     a,b                                 ;b196
        LD      b,(hl)                              ;b197
        LD      b,0x72                              ;b198
        LD      (hl),b                              ;b19a
        LD      b,0x90                              ;b19b
        LD      d,(hl)                              ;b19d
bF_lb19eh:
        EX      af,af'                              ;b19e
        AND     (hl)                                ;b19f
        DAA                                         ;b1a0
        LD      a,(bc)                              ;b1a1
        HALT                                        ;b1a2
        LD      h,a                                 ;b1a3
bF_lb1a4h:
        DEC     bc                                  ;b1a4
        LD      h,b                                 ;b1a5
        LD      (hl),l                              ;b1a6
        DEC     bc                                  ;b1a7
        ADD     a,h                                 ;b1a8
        OR      c                                   ;b1a9
        DEC     bc                                  ;b1aa
        SUB     h                                   ;b1ab
        POP     bc                                  ;b1ac
        INC     c                                   ;b1ad
        ADD     a,(hl)                              ;b1ae
        DAA                                         ;b1af
        INC     c                                   ;b1b0
        LD      h,b                                 ;b1b1
        ADD     a,l                                 ;b1b2
        INC     c                                   ;b1b3
        SUB     d                                   ;b1b4
        RET     nz                                  ;b1b5
        DEC     c                                   ;b1b6
        LD      h,b                                 ;b1b7
        LD      h,l                                 ;b1b8
        DEC     c                                   ;b1b9
        LD      h,b                                 ;b1ba
        ADD     a,l                                 ;b1bb
        RRCA                                        ;b1bc
        LD      (hl),h                              ;b1bd
        LD      b,c                                 ;b1be
        RRCA                                        ;b1bf
        ADD     a,h                                 ;b1c0
        LD      d,c                                 ;b1c1
        RRCA                                        ;b1c2
bF_lb1c3h:
        AND     (hl)                                ;b1c3
        AND     a                                   ;b1c4
        DJNZ    bF_lb16bh                           ;b1c5
        LD      (hl),c                              ;b1c7
        DJNZ    $-106                               ;b1c8
        ADD     a,c                                 ;b1ca
        DJNZ    bF_lb151h                           ;b1cb
        SUB     c                                   ;b1cd
        LD      de,0x4184                           ;b1ce
        LD      de,0x5194                           ;b1d1
        LD      de,0x61a4                           ;b1d4
        LD      (de),a                              ;b1d7
        SUB     h                                   ;b1d8
        OR      c                                   ;b1d9
        LD      (de),a                              ;b1da
        ADD     a,h                                 ;b1db
        POP     bc                                  ;b1dc
        INC     de                                  ;b1dd
        SUB     b                                   ;b1de
        LD      b,(hl)                              ;b1df
        INC     d                                   ;b1e0
        ADD     a,c                                 ;b1e1
        LD      h,b                                 ;b1e2
        DEC     d                                   ;b1e3
        HALT                                        ;b1e4
        RST     0                                   ;b1e5
        LD      d,0x90                              ;b1e6
        LD      h,(hl)                              ;b1e8
        RLA                                         ;b1e9
        AND     b                                   ;b1ea
        LD      b,h                                 ;b1eb
bF_lb1ech:
        RLA                                         ;b1ec
        SUB     b                                   ;b1ed
        LD      h,(hl)                              ;b1ee
        JR      bF_lb262h                           ;b1ef
        LD      h,b                                 ;b1f1
        JR      bF_lb174h                           ;b1f2
        ADD     a,h                                 ;b1f4
        ADD     hl,de                               ;b1f5
        HALT                                        ;b1f6
        DAA                                         ;b1f7
        LD      a,(de)                              ;b1f8
        SUB     b                                   ;b1f9
        LD      b,(hl)                              ;b1fa
        LD      a,(de)                              ;b1fb
        LD      h,b                                 ;b1fc
        PUSH    bc                                  ;b1fd
bF_lb1feh:
        DEC     de                                  ;b1fe
        HALT                                        ;b1ff
        AND     a                                   ;b200
        INC     e                                   ;b201
        SUB     h                                   ;b202
        SUB     c                                   ;b203
        INC     e                                   ;b204
        ADD     a,h                                 ;b205
        OR      c                                   ;b206
        DEC     e                                   ;b207
        SUB     b                                   ;b208
        LD      b,h                                 ;b209
        DEC     e                                   ;b20a
        HALT                                        ;b20b
        RST     0                                   ;b20c
        LD      e,0x90                              ;b20d
        LD      (hl),0x1f                           ;b20f
        SUB     b                                   ;b211
        LD      d,(hl)                              ;b212
        RRA                                         ;b213
        LD      (hl),h                              ;b214
        LD      (hl),c                              ;b215
        RRA                                         ;b216
        ADD     a,h                                 ;b217
        SUB     c                                   ;b218
        JR      nz,bF_lb27bh                        ;b219
        LD      d,l                                 ;b21b
        JR      nz,bF_lb19eh                        ;b21c
        LD      (hl),h                              ;b21e
        JR      nz,bF_lb1c3h                        ;b21f
        LD      (hl),b                              ;b221
        RST     KEYINT                              ;b222
        LD      h,0x0                               ;b223
        ADD     a,(hl)                              ;b225
        RST     0                                   ;b226
        LD      bc,0x7071                           ;b227
        LD      bc,0x3690                           ;b22a
        LD      (bc),a                              ;b22d
        ADD     a,b                                 ;b22e
        INC     (hl)                                ;b22f
        INC     b                                   ;b230
        ADD     a,b                                 ;b231
        INC     (hl)                                ;b232
        INC     b                                   ;b233
        LD      (hl),d                              ;b234
        AND     b                                   ;b235
        INC     b                                   ;b236
        SUB     b                                   ;b237
        AND     h                                   ;b238
        DEC     b                                   ;b239
        AND     (hl)                                ;b23a
        SCF                                         ;b23b
        RLCA                                        ;b23c
        ADD     a,b                                 ;b23d
        LD      b,(hl)                              ;b23e
        EX      af,af'                              ;b23f
        ADD     a,d                                 ;b240
        LD      b,b                                 ;b241
        ADD     hl,bc                               ;b242
        LD      h,b                                 ;b243
        LD      d,l                                 ;b244
        ADD     hl,bc                               ;b245
        ADD     a,b                                 ;b246
        OR      l                                   ;b247
        DEC     bc                                  ;b248
        LD      h,(hl)                              ;b249
        SUB     a                                   ;b24a
        INC     c                                   ;b24b
        AND     (hl)                                ;b24c
        RST     CHRGTR                              ;b24d
bF_lb24eh:
        DEC     c                                   ;b24e
        ADD     a,b                                 ;b24f
        LD      h,h                                 ;b250
        LD      c,0x82                              ;b251
        LD      d,b                                 ;b253
        LD      c,0x90                              ;b254
        LD      (hl),0xf                            ;b256
        SUB     b                                   ;b258
        LD      d,(hl)                              ;b259
        DJNZ    bF_lb2cch                           ;b25a
        LD      (hl),0x13                           ;b25c
        SUB     b                                   ;b25e
        LD      (hl),0x13                           ;b25f
        LD      h,b                                 ;b261
bF_lb262h:
        OR      l                                   ;b262
        LD      d,0x90                              ;b263
        ADD     a,h                                 ;b265
        RLA                                         ;b266
        AND     (hl)                                ;b267
        AND     a                                   ;b268
        JR      bF_lb1ech                           ;b269
bF_lb26bh:
        LD      h,b                                 ;b26b
        JR      bF_lb1feh                           ;b26c
        LD      b,(hl)                              ;b26e
        ADD     hl,de                               ;b26f
        SUB     b                                   ;b270
        LD      b,(hl)                              ;b271
        ADD     hl,de                               ;b272
bF_lb273h:
        HALT                                        ;b273
        RST     CHRGTR                              ;b274
        LD      a,(de)                              ;b275
        SUB     b                                   ;b276
        LD      (hl),0x1a                           ;b277
        LD      h,b                                 ;b279
        OR      l                                   ;b27a
bF_lb27bh:
        LD      a,(de)                              ;b27b
        AND     c                                   ;b27c
        LD      h,b                                 ;b27d
        DEC     de                                  ;b27e
        SUB     b                                   ;b27f
        LD      b,(hl)                              ;b280
        DEC     de                                  ;b281
        ADD     a,b                                 ;b282
        PUSH    bc                                  ;b283
        INC     e                                   ;b284
        AND     (hl)                                ;b285
        SCF                                         ;b286
        DEC     e                                   ;b287
        OR      (hl)                                ;b288
        RST     0                                   ;b289
        LD      e,0xa4                              ;b28a
        LD      h,c                                 ;b28c
        LD      e,0x94                              ;b28d
        LD      (hl),c                              ;b28f
        LD      e,0x84                              ;b290
        ADD     a,c                                 ;b292
        RRA                                         ;b293
        HALT                                        ;b294
        SCF                                         ;b295
        RST     KEYINT                              ;b296
        LD      (hl),0x0                            ;b297
        SUB     (hl)                                ;b299
        SCF                                         ;b29a
        LD      (bc),a                              ;b29b
        SUB     c                                   ;b29c
        LD      d,b                                 ;b29d
        EX      af,af'                              ;b29e
        AND     (hl)                                ;b29f
        DAA                                         ;b2a0
        EX      af,af'                              ;b2a1
        SUB     d                                   ;b2a2
        SUB     b                                   ;b2a3
        ADD     hl,bc                               ;b2a4
        ADD     a,b                                 ;b2a5
        LD      b,l                                 ;b2a6
        ADD     hl,bc                               ;b2a7
        SUB     (hl)                                ;b2a8
        OR      a                                   ;b2a9
        LD      a,(bc)                              ;b2aa
        AND     b                                   ;b2ab
        LD      h,(hl)                              ;b2ac
        DEC     bc                                  ;b2ad
        SUB     (hl)                                ;b2ae
        DAA                                         ;b2af
        DEC     c                                   ;b2b0
        ADD     a,b                                 ;b2b1
        LD      b,h                                 ;b2b2
        RRCA                                        ;b2b3
        AND     (hl)                                ;b2b4
        SCF                                         ;b2b5
        DJNZ    bF_lb24eh                           ;b2b6
        RST     0                                   ;b2b8
        INC     de                                  ;b2b9
        ADD     a,b                                 ;b2ba
        LD      b,(hl)                              ;b2bb
        INC     d                                   ;b2bc
        SUB     b                                   ;b2bd
        SUB     h                                   ;b2be
        DEC     d                                   ;b2bf
        SUB     b                                   ;b2c0
        INC     h                                   ;b2c1
bF_lb2c2h:
        RLA                                         ;b2c2
        ADD     a,c                                 ;b2c3
        ADD     a,b                                 ;b2c4
        JR      bF_lb33dh                           ;b2c5
        LD      d,a                                 ;b2c7
        JR      $+114                               ;b2c8
        AND     h                                   ;b2ca
        LD      a,(de)                              ;b2cb
bF_lb2cch:
        ADD     a,(hl)                              ;b2cc
        RST     CHRGTR                              ;b2cd
        DEC     de                                  ;b2ce
bF_lb2cfh:
        ADD     a,b                                 ;b2cf
        SUB     h                                   ;b2d0
        INC     e                                   ;b2d1
        ADD     a,b                                 ;b2d2
        LD      b,(hl)                              ;b2d3
        DEC     e                                   ;b2d4
        HALT                                        ;b2d5
        SUB     a                                   ;b2d6
        RRA                                         ;b2d7
        HALT                                        ;b2d8
        SCF                                         ;b2d9
        RRA                                         ;b2da
        LD      h,b                                 ;b2db
        ADD     a,l                                 ;b2dc
        RRA                                         ;b2dd
        AND     b                                   ;b2de
        LD      d,(hl)                              ;b2df
        JR      nz,bF_lb273h                        ;b2e0
        LD      b,b                                 ;b2e2
bF_lb2e3h:
        JR      nz,bF_lb26bh                        ;b2e3
        RST     0                                   ;b2e5
        LD      hl,0x6560                           ;b2e6
        LD      hl,0x84a0                           ;b2e9
        LD      (0x6580),hl                         ;b2ec
        INC     h                                   ;b2ef
bF_lb2f0h:
        HALT                                        ;b2f0
        LD      h,a                                 ;b2f1
        DEC     h                                   ;b2f2
        ADD     a,b                                 ;b2f3
        LD      (hl),0x25                           ;b2f4
bF_lb2f6h:
        AND     b                                   ;b2f6
        LD      (hl),0x27                           ;b2f7
        ADD     a,c                                 ;b2f9
        JR      nc,bF_lb323h                        ;b2fa
        AND     (hl)                                ;b2fc
        OR      a                                   ;b2fd
        LD      hl,(0x6580)                         ;b2fe
        LD      hl,(0x8560)                         ;b301
        LD      hl,(bF_la560h)                      ;b304
        DEC     l                                   ;b307
        ADD     a,h                                 ;b308
        LD      (hl),c                              ;b309
        CPL                                         ;b30a
        AND     c                                   ;b30b
        JR      nc,bF_lb33dh                        ;b30c
        ADD     a,b                                 ;b30e
        ADD     a,l                                 ;b30f
        JR      nc,bF_lb2c2h                        ;b310
        LD      b,(hl)                              ;b312
        LD      sp,0x7194                           ;b313
        LD      sp,0x81a4                           ;b316
        LD      sp,0x91b4                           ;b319
        LD      (0x5590),a                          ;b31c
        LD      (0x74b0),a                          ;b31f
        INC     (hl)                                ;b322
bF_lb323h:
        AND     (hl)                                ;b323
        AND     a                                   ;b324
        SCF                                         ;b325
        SUB     b                                   ;b326
        INC     (hl)                                ;b327
        SCF                                         ;b328
        OR      b                                   ;b329
        LD      (hl),h                              ;b32a
        JR      c,bF_lb2cfh                         ;b32b
        LD      b,b                                 ;b32d
        JR      c,bF_lb2f6h                         ;b32e
        RST     0                                   ;b330
        ADD     hl,sp                               ;b331
        AND     h                                   ;b332
        LD      b,c                                 ;b333
        ADD     hl,sp                               ;b334
        OR      h                                   ;b335
        LD      h,c                                 ;b336
        ADD     hl,sp                               ;b337
        CALL    nz,0xff81                           ;b338
        DJNZ    bF_lb340h                           ;b33b
bF_lb33dh:
        ADD     a,(hl)                              ;b33d
        DAA                                         ;b33e
        INC     de                                  ;b33f
bF_lb340h:
        ADD     a,(hl)                              ;b340
        RST     CHRGTR                              ;b341
        LD      a,(de)                              ;b342
        ADD     a,(hl)                              ;b343
        RST     CHRGTR                              ;b344
        LD      hl,0xd776                           ;b345
        DEC     h                                   ;b348
        HALT                                        ;b349
        OR      a                                   ;b34a
        ADD     hl,hl                               ;b34b
        AND     (hl)                                ;b34c
        AND     a                                   ;b34d
        LD      hl,(0x3776)                         ;b34e
        LD      l,0x74                              ;b351
        LD      sp,0x842e                           ;b353
        LD      b,c                                 ;b356
        LD      l,0x94                              ;b357
        LD      d,c                                 ;b359
        JR      nc,bF_lb2f0h                        ;b35a
        LD      b,c                                 ;b35c
        JR      nc,bF_lb2e3h                        ;b35d
        LD      d,c                                 ;b35f
        JR      nc,bF_lb3d6h                        ;b360
        LD      h,c                                 ;b362
        ADD     hl,sp                               ;b363
        LD      (hl),c                              ;b364
        LD      (hl),b                              ;b365
        LD      b,d                                 ;b366
        LD      (hl),d                              ;b367
        LD      d,b                                 ;b368
        LD      b,(hl)                              ;b369
        LD      (hl),c                              ;b36a
        LD      (hl),b                              ;b36b
        RST     KEYINT                              ;b36c
        ADC     a,l                                 ;b36d
        OR      e                                   ;b36e
        SUB     b                                   ;b36f
        OR      e                                   ;b370
        SUB     e                                   ;b371
        OR      e                                   ;b372
        SUB     e                                   ;b373
bF_lb374h:
        OR      e                                   ;b374
        SUB     e                                   ;b375
        OR      e                                   ;b376
        SUB     e                                   ;b377
        OR      e                                   ;b378
        SUB     e                                   ;b379
        OR      e                                   ;b37a
        SUB     l                                   ;b37b
        OR      e                                   ;b37c
        SBC     a,b                                 ;b37d
        OR      e                                   ;b37e
        SBC     a,l                                 ;b37f
        OR      e                                   ;b380
        AND     d                                   ;b381
        OR      e                                   ;b382
        AND     a                                   ;b383
        OR      e                                   ;b384
        XOR     h                                   ;b385
        OR      e                                   ;b386
        OR      c                                   ;b387
        OR      e                                   ;b388
        OR      (hl)                                ;b389
        OR      e                                   ;b38a
        CP      c                                   ;b38b
        OR      e                                   ;b38c
        SUB     b                                   ;b38d
        LD      (hl),b                              ;b38e
        RST     KEYINT                              ;b38f
        SUB     b                                   ;b390
        AND     b                                   ;b391
        RST     KEYINT                              ;b392
        RST     KEYINT                              ;b393
        RST     KEYINT                              ;b394
        ADD     a,b                                 ;b395
bF_lb396h:
        LD      b,b                                 ;b396
        RST     KEYINT                              ;b397
        SUB     b                                   ;b398
        LD      (hl),b                              ;b399
        SUB     b                                   ;b39a
        JR      nz,$+1                              ;b39b
        SUB     b                                   ;b39d
        LD      (hl),b                              ;b39e
        ADD     a,b                                 ;b39f
        ADD     a,b                                 ;b3a0
        RST     KEYINT                              ;b3a1
        SUB     b                                   ;b3a2
        LD      (hl),b                              ;b3a3
        SUB     b                                   ;b3a4
        DJNZ    $+1                                 ;b3a5
        SUB     b                                   ;b3a7
        LD      (hl),b                              ;b3a8
        ADD     a,b                                 ;b3a9
        LD      d,b                                 ;b3aa
        RST     KEYINT                              ;b3ab
        SUB     b                                   ;b3ac
        LD      (hl),b                              ;b3ad
        SUB     b                                   ;b3ae
        NOP                                         ;b3af
        RST     KEYINT                              ;b3b0
        SUB     b                                   ;b3b1
        LD      (hl),b                              ;b3b2
        ADD     a,b                                 ;b3b3
        RET     po                                  ;b3b4
        RST     KEYINT                              ;b3b5
        ADD     a,b                                 ;b3b6
        NOP                                         ;b3b7
        RST     KEYINT                              ;b3b8
        SUB     b                                   ;b3b9
        LD      (hl),b                              ;b3ba
        SUB     b                                   ;b3bb
        RET     nc                                  ;b3bc
        RST     KEYINT                              ;b3bd
        JR      nz,bF_lb374h                        ;b3be
        LD      (0x4cb4),a                          ;b3c0
        OR      h                                   ;b3c3
        LD      h,d                                 ;b3c4
        OR      h                                   ;b3c5
        LD      a,(hl)                              ;b3c6
        OR      h                                   ;b3c7
bF_lb3c8h:
        SBC     a,d                                 ;b3c8
        OR      h                                   ;b3c9
        CP      h                                   ;b3ca
        OR      h                                   ;b3cb
        CALL    po,0xfab4                           ;b3cc
        OR      h                                   ;b3cf
        INC     a                                   ;b3d0
        OR      l                                   ;b3d1
        LD      e,(hl)                              ;b3d2
        OR      l                                   ;b3d3
        LD      a,d                                 ;b3d4
        OR      l                                   ;b3d5
bF_lb3d6h:
        SUB     (hl)                                ;b3d6
        OR      l                                   ;b3d7
        CP      h                                   ;b3d8
        OR      l                                   ;b3d9
        JP      p,0x10b5                            ;b3da
        OR      (hl)                                ;b3dd
        JR      nc,bF_lb396h                        ;b3de
        LD      h,d                                 ;b3e0
        OR      (hl)                                ;b3e1
        ADC     a,(hl)                              ;b3e2
        OR      (hl)                                ;b3e3
        XOR     (hl)                                ;b3e4
        OR      (hl)                                ;b3e5
        SUB     0xb6                                ;b3e6
        LD      b,0xb7                              ;b3e8
        INC     (hl)                                ;b3ea
        OR      a                                   ;b3eb
        LD      c,(hl)                              ;b3ec
        OR      a                                   ;b3ed
        ADD     a,b                                 ;b3ee
        OR      a                                   ;b3ef
        OR      (hl)                                ;b3f0
        OR      a                                   ;b3f1
        RET     c                                   ;b3f2
        OR      a                                   ;b3f3
        INC     b                                   ;b3f4
        CP      b                                   ;b3f5
        INC     (hl)                                ;b3f6
        CP      b                                   ;b3f7
        LD      e,d                                 ;b3f8
        CP      b                                   ;b3f9
        ADC     a,(hl)                              ;b3fa
        CP      b                                   ;b3fb
        XOR     (hl)                                ;b3fc
        CP      b                                   ;b3fd
        RET     pe                                  ;b3fe
        CP      b                                   ;b3ff
        INC     c                                   ;b400
        CP      c                                   ;b401
        LD      a,0xb9                              ;b402
        LD      (hl),b                              ;b404
        CP      c                                   ;b405
        AND     (hl)                                ;b406
        CP      c                                   ;b407
        ADD     a,0xb9                              ;b408
        CP      0xb9                                ;b40a
bF_lb40ch:
        JR      nc,bF_lb3c8h                        ;b40c
        LD      d,h                                 ;b40e
        CP      d                                   ;b40f
        LD      a,h                                 ;b410
        CP      d                                   ;b411
        RET     nz                                  ;b412
        CP      d                                   ;b413
        CALL    po,0x18ba                           ;b414
        CP      e                                   ;b417
        LD      c,(hl)                              ;b418
        CP      e                                   ;b419
        LD      a,h                                 ;b41a
        CP      e                                   ;b41b
        SBC     a,h                                 ;b41c
        CP      e                                   ;b41d
        RET     pe                                  ;b41e
        CP      e                                   ;b41f
        LD      d,a                                 ;b420
        LD      l,b                                 ;b421
        LD      hl,(0x9868)                         ;b422
        JR      nz,bF_lb44eh                        ;b425
        LD      e,b                                 ;b427
        LD      b,a                                 ;b428
        SBC     a,b                                 ;b429
        DAA                                         ;b42a
        JR      nc,$+127                            ;b42b
        ADD     a,b                                 ;b42d
        SBC     a,h                                 ;b42e
        RET     pe                                  ;b42f
        LD      b,a                                 ;b430
        CALL    z,0x2077                            ;b431
        LD      c,h                                 ;b434
        RET     c                                   ;b435
        LD      d,a                                 ;b436
        LD      l,b                                 ;b437
        LD      a,b                                 ;b438
        JR      nc,$-119                            ;b439
        RET     c                                   ;b43b
        DAA                                         ;b43c
        LD      (hl),b                              ;b43d
        LD      a,c                                 ;b43e
        RET     z                                   ;b43f
        LD      d,a                                 ;b440
        LD      e,b                                 ;b441
