        DEFB    0xfd,0x3,0x99                       ;605f
        ADD     a,c                                 ;6062
        RST     KEYINT                              ;6063
        INC     bc                                  ;6064
        SBC     a,c                                 ;6065
        ADD     a,(hl)                              ;6066
        SBC     a,a                                 ;6067
        CP      e                                   ;6068
        CP      e                                   ;6069
        XOR     0xbb                                ;606a
        CP      (hl)                                ;606c
        DEC     b                                   ;606d
        CP      e                                   ;606e
        ADD     a,e                                 ;606f
        EX      de,hl                               ;6070
        CP      e                                   ;6071
        CP      (hl)                                ;6072
        DEC     d                                   ;6073
        CP      e                                   ;6074
        ADD     a,a                                 ;6075
        CP      (hl)                                ;6076
        CP      e                                   ;6077
        CP      e                                   ;6078
        EX      de,hl                               ;6079
        EX      de,hl                               ;607a
        CP      (hl)                                ;607b
        EX      de,hl                               ;607c
        DEC     b                                   ;607d
        CP      e                                   ;607e
        LD      (bc),a                              ;607f
        EX      de,hl                               ;6080
        INC     sp                                  ;6081
        CP      e                                   ;6082
        ADD     a,c                                 ;6083
        DEC     c                                   ;6084
        INC     bc                                  ;6085
        CP      e                                   ;6086
        SBC     a,d                                 ;6087
        DEC     c                                   ;6088
        CP      e                                   ;6089
        CP      e                                   ;608a
        OR      b                                   ;608b
        EXX                                         ;608c
        CP      e                                   ;608d
        CP      e                                   ;608e
        DEC     c                                   ;608f
        LD      sp,hl                               ;6090
        CP      e                                   ;6091
        CP      e                                   ;6092
        DEC     c                                   ;6093
        LD      sp,hl                               ;6094
        CP      e                                   ;6095
        OR      b                                   ;6096
        DEFB    0xdd,0x99,0xbb                      ;6097
        OR      b                                   ;609a
        RST     KEYINT                              ;609b
        SBC     a,c                                 ;609c
        CP      e                                   ;609d
        OR      b                                   ;609e
        LD      sp,hl                               ;609f
        SBC     a,c                                 ;60a0
        RET     nc                                  ;60a1
        INC     bc                                  ;60a2
        CP      e                                   ;60a3
        ADD     a,c                                 ;60a4
        RET     nc                                  ;60a5
        INC     bc                                  ;60a6
        CP      e                                   ;60a7
        SBC     a,b                                 ;60a8
        SBC     a,l                                 ;60a9
        DEC     bc                                  ;60aa
        CP      e                                   ;60ab
        CP      e                                   ;60ac
        SBC     a,a                                 ;60ad
        RET     nc                                  ;60ae
        CP      e                                   ;60af
        CP      e                                   ;60b0
        SBC     a,a                                 ;60b1
        RET     nc                                  ;60b2
        CP      e                                   ;60b3
        CP      e                                   ;60b4
        SBC     a,c                                 ;60b5
        DEFB    0xdd,0xb,0xbb                       ;60b6
        SBC     a,c                                 ;60b9
        RST     KEYINT                              ;60ba
        DEC     bc                                  ;60bb
        CP      e                                   ;60bc
        SBC     a,c                                 ;60bd
        SBC     a,a                                 ;60be
        DEC     bc                                  ;60bf
        CP      e                                   ;60c0
        INC     b                                   ;60c1
        NOP                                         ;60c2
        INC     bc                                  ;60c3
        INC     sp                                  ;60c4
        ADD     a,c                                 ;60c5
        JR      nc,$+5                              ;60c6
        INC     sp                                  ;60c8
        ADD     a,c                                 ;60c9
        JR      nc,$+5                              ;60ca
        INC     sp                                  ;60cc
        ADD     a,c                                 ;60cd
        JR      nc,$+5                              ;60ce
        INC     sp                                  ;60d0
        ADD     a,c                                 ;60d1
        JR      nc,$+5                              ;60d2
        INC     sp                                  ;60d4
        ADD     a,c                                 ;60d5
        JR      nc,$+5                              ;60d6
        INC     sp                                  ;60d8
        ADD     a,c                                 ;60d9
        JR      nc,$+5                              ;60da
        INC     sp                                  ;60dc
        ADD     a,c                                 ;60dd
        JR      nc,$+5                              ;60de
        INC     sp                                  ;60e0
        ADD     a,c                                 ;60e1
        JR      nc,$+5                              ;60e2
        INC     sp                                  ;60e4
        ADD     a,c                                 ;60e5
        JR      nc,$+5                              ;60e6
        INC     sp                                  ;60e8
        ADD     a,c                                 ;60e9
        JR      nc,$+5                              ;60ea
        INC     sp                                  ;60ec
        ADD     a,c                                 ;60ed
        JR      nc,$+5                              ;60ee
        INC     sp                                  ;60f0
        ADD     a,c                                 ;60f1
        JR      nc,$+5                              ;60f2
        INC     sp                                  ;60f4
        ADD     a,c                                 ;60f5
        JR      nc,$+5                              ;60f6
        INC     sp                                  ;60f8
        ADD     a,c                                 ;60f9
        JR      nc,$+5                              ;60fa
        INC     sp                                  ;60fc
        ADD     a,c                                 ;60fd
        JR      nc,$+11                             ;60fe
        CP      e                                   ;6100
        SBC     a,b                                 ;6101
        DEC     bc                                  ;6102
        OR      b                                   ;6103
        CP      e                                   ;6104
        NOP                                         ;6105
        RET     nc                                  ;6106
        DEFB    0xdd,0xb,0x0                        ;6107
        RET     nc                                  ;610a
        DEFB    0xdd,0xb,0x0                        ;610b
        RST     OUTDO                               ;610e
        RST     OUTDO                               ;610f
        RET     nc                                  ;6110
        RST     CALLF                               ;6111
        DEFB    0xdd,0xff,0xdd                      ;6112
        RST     CALLF                               ;6115
        LD      a,c                                 ;6116
        SBC     a,c                                 ;6117
        SBC     a,a                                 ;6118
        SBC     a,c                                 ;6119
        RLCA                                        ;611a
        NOP                                         ;611b
        ADD     a,d                                 ;611c
        INC     c                                   ;611d
        XOR     0x3                                 ;611e
        CALL    pe,0xcc0f                           ;6120
        ADD     a,l                                 ;6123
        INC     c                                   ;6124
        CALL    z,0xccc                             ;6125
        NOP                                         ;6128
        INC     bc                                  ;6129
        SBC     a,c                                 ;612a
        LD      (bc),a                              ;612b
        NOP                                         ;612c
        ADC     a,d                                 ;612d
        SBC     a,c                                 ;612e
        NOP                                         ;612f
        XOR     0xe0                                ;6130
        NOP                                         ;6132
        NOP                                         ;6133
        CALL    z,0xc0cc                            ;6134
        LD      c,0x3                               ;6137
        CALL    z,0xe81                             ;6139
        INC     bc                                  ;613c
        CALL    z,0xe88                             ;613d
        CALL    z,0xcc00                            ;6140
        NOP                                         ;6143
        RET     nz                                  ;6144
        INC     c                                   ;6145
        RET     nz                                  ;6146
        INC     b                                   ;6147
        NOP                                         ;6148
        ADC     a,c                                 ;6149
        SBC     a,c                                 ;614a
        LD      c,0xee                              ;614b
        RET     nz                                  ;614d
        NOP                                         ;614e
        CALL    pe,0xcccc                           ;614f
        NOP                                         ;6152
        INC     bc                                  ;6153
        CALL    z,0xc081                            ;6154
        INC     bc                                  ;6157
        CALL    z,0xc081                            ;6158
        INC     bc                                  ;615b
        CALL    z,0xc081                            ;615c
        INC     bc                                  ;615f
        CALL    z,0xc08a                            ;6160
        CALL    pe,0xcccc                           ;6163
        NOP                                         ;6166
        SBC     a,c                                 ;6167
        SUB     b                                   ;6168
        NOP                                         ;6169
        SBC     a,c                                 ;616a
        SUB     b                                   ;616b
        INC     b                                   ;616c
        NOP                                         ;616d
        SUB     (hl)                                ;616e
        LD      c,0xce                              ;616f
        NOP                                         ;6171
        NOP                                         ;6172
        CALL    z,0xe0cc                            ;6173
        INC     c                                   ;6176
        CALL    z,0xc0cc                            ;6177
        INC     c                                   ;617a
        CALL    z,0xe0cc                            ;617b
        INC     c                                   ;617e
        CALL    z,ERAFNK                            ;617f
        NOP                                         ;6182
        CALL    z,0x5c0                             ;6183
        NOP                                         ;6186
        ADC     a,b                                 ;6187
        CALL    z,0xe0ee                            ;6188
        NOP                                         ;618b
        CALL    z,0xcecc                            ;618c
        NOP                                         ;618f
        INC     bc                                  ;6190
        CALL    z,SETMLT                            ;6191
        INC     bc                                  ;6194
        CALL    z,0xe081                            ;6195
        INC     bc                                  ;6198
        CALL    z,0xe081                            ;6199
        INC     bc                                  ;619c
        CALL    z,0xe084                            ;619d
        INC     c                                   ;61a0
        CALL    z,0x7cc                             ;61a1
        NOP                                         ;61a4
        ADD     a,a                                 ;61a5
        XOR     0xe0                                ;61a6
        NOP                                         ;61a8
        XOR     0xcc                                ;61a9
        ADC     a,0xe                               ;61ab
        INC     bc                                  ;61ad
        CALL    z,0xc81                             ;61ae
        RLCA                                        ;61b1
        CALL    z,0xc81                             ;61b2
        INC     bc                                  ;61b5
        CALL    z,CALPAT                            ;61b6
        INC     c                                   ;61b9
        CALL    z,0x7cc                             ;61ba
        NOP                                         ;61bd
        ADD     a,a                                 ;61be
        LD      c,0xe0                              ;61bf
        NOP                                         ;61c1
        INC     c                                   ;61c2
        CALL    z,0xce                              ;61c3
        INC     bc                                  ;61c6
        CALL    z,0xe081                            ;61c7
        INC     bc                                  ;61ca
        CALL    z,0xe081                            ;61cb
        INC     bc                                  ;61ce
        CALL    z,0xc081                            ;61cf
        INC     bc                                  ;61d2
        CALL    z,0x83                              ;61d3
        INC     c                                   ;61d6
        CALL    z,0x4                               ;61d7
        ADC     a,e                                 ;61da
        XOR     0x0                                 ;61db
        NOP                                         ;61dd
        LD      c,0xcc                              ;61de
        RET     po                                  ;61e0
        NOP                                         ;61e1
        CALL    pe,0xcecc                           ;61e2
        NOP                                         ;61e5
        INC     bc                                  ;61e6
        CALL    z,0xe081                            ;61e7
        INC     bc                                  ;61ea
        CALL    z,0xe081                            ;61eb
        INC     bc                                  ;61ee
        CALL    z,0x83                              ;61ef
        INC     c                                   ;61f2
        CALL    z,0x5                               ;61f3
        ADD     a,(hl)                              ;61f6
        SUB     b                                   ;61f7
        NOP                                         ;61f8
        LD      c,0xe0                              ;61f9
        LD      c,0xec                              ;61fb
        EX      af,af'                              ;61fd
        NOP                                         ;61fe
        EX      af,af'                              ;61ff
        XOR     d                                   ;6200
        INC     b                                   ;6201
        LD      (hl),a                              ;6202
        DJNZ    b4_l6205h                           ;6203
b4_l6205h:
        INC     b                                   ;6205
        LD      (0xaa08),hl                         ;6206
        INC     b                                   ;6209
        LD      (hl),a                              ;620a
        INC     b                                   ;620b
        LD      (0xaa04),hl                         ;620c
        INC     b                                   ;620f
        LD      d,l                                 ;6210
        INC     b                                   ;6211
        NOP                                         ;6212
        INC     b                                   ;6213
        XOR     d                                   ;6214
        INC     b                                   ;6215
        LD      d,l                                 ;6216
        INC     b                                   ;6217
        NOP                                         ;6218
        EX      af,af'                              ;6219
        XOR     d                                   ;621a
        INC     b                                   ;621b
        LD      d,l                                 ;621c
        INC     b                                   ;621d
        NOP                                         ;621e
        EX      af,af'                              ;621f
        XOR     d                                   ;6220
        INC     b                                   ;6221
        LD      d,l                                 ;6222
        INC     b                                   ;6223
        LD      (hl),a                              ;6224
        EX      af,af'                              ;6225
        NOP                                         ;6226
        LD      (bc),a                              ;6227
        XOR     d                                   ;6228
        CP      d                                   ;6229
        DEC     b                                   ;622a
        AND     b                                   ;622b
        LD      d,l                                 ;622c
        LD      d,l                                 ;622d
        DEC     b                                   ;622e
        AND     b                                   ;622f
        NOP                                         ;6230
        NOP                                         ;6231
        DEC     b                                   ;6232
        AND     b                                   ;6233
        XOR     d                                   ;6234
        XOR     d                                   ;6235
        DEC     b                                   ;6236
        AND     b                                   ;6237
        LD      d,l                                 ;6238
        LD      d,l                                 ;6239
        DEC     b                                   ;623a
        AND     b                                   ;623b
        NOP                                         ;623c
        NOP                                         ;623d
        DEC     b                                   ;623e
        AND     b                                   ;623f
        XOR     d                                   ;6240
        XOR     d                                   ;6241
        DEC     b                                   ;6242
        AND     b                                   ;6243
        XOR     d                                   ;6244
        XOR     d                                   ;6245
        DEC     b                                   ;6246
        AND     b                                   ;6247
        LD      d,l                                 ;6248
        LD      d,l                                 ;6249
        DEC     b                                   ;624a
        AND     b                                   ;624b
        NOP                                         ;624c
        NOP                                         ;624d
        DEC     b                                   ;624e
        AND     b                                   ;624f
        XOR     d                                   ;6250
        XOR     d                                   ;6251
        DEC     b                                   ;6252
        AND     b                                   ;6253
        XOR     d                                   ;6254
        XOR     d                                   ;6255
        DEC     b                                   ;6256
        AND     b                                   ;6257
        LD      d,l                                 ;6258
        LD      d,l                                 ;6259
        RLCA                                        ;625a
        LD      (hl),b                              ;625b
        LD      (hl),a                              ;625c
        LD      (hl),a                              ;625d
        RLCA                                        ;625e
        LD      (hl),b                              ;625f
        NOP                                         ;6260
        NOP                                         ;6261
        RLCA                                        ;6262
        LD      (hl),b                              ;6263
        INC     b                                   ;6264
        NOP                                         ;6265
        CP      b                                   ;6266
        XOR     d                                   ;6267
        AND     b                                   ;6268
        LD      d,b                                 ;6269
        XOR     d                                   ;626a
        LD      d,l                                 ;626b
        LD      d,b                                 ;626c
        LD      d,b                                 ;626d
        LD      d,l                                 ;626e
        NOP                                         ;626f
        NOP                                         ;6270
        LD      d,b                                 ;6271
        NOP                                         ;6272
        XOR     d                                   ;6273
        AND     b                                   ;6274
        LD      d,b                                 ;6275
        XOR     d                                   ;6276
        LD      d,l                                 ;6277
        LD      d,b                                 ;6278
        LD      d,b                                 ;6279
        LD      d,l                                 ;627a
        NOP                                         ;627b
        NOP                                         ;627c
        LD      d,b                                 ;627d
        NOP                                         ;627e
        XOR     d                                   ;627f
        AND     b                                   ;6280
        LD      d,b                                 ;6281
        XOR     d                                   ;6282
        XOR     d                                   ;6283
        AND     b                                   ;6284
        LD      d,b                                 ;6285
        XOR     d                                   ;6286
        LD      d,l                                 ;6287
        LD      d,b                                 ;6288
        LD      d,b                                 ;6289
        LD      d,l                                 ;628a
        NOP                                         ;628b
        NOP                                         ;628c
        LD      d,b                                 ;628d
        NOP                                         ;628e
        XOR     d                                   ;628f
        AND     b                                   ;6290
        LD      d,b                                 ;6291
        XOR     d                                   ;6292
        XOR     d                                   ;6293
        AND     b                                   ;6294
        LD      d,b                                 ;6295
        XOR     d                                   ;6296
        LD      d,l                                 ;6297
        LD      d,b                                 ;6298
        LD      (hl),b                              ;6299
        LD      d,l                                 ;629a
        LD      (hl),a                              ;629b
        LD      (hl),b                              ;629c
        LD      (hl),b                              ;629d
        LD      (hl),a                              ;629e
        ADD     hl,bc                               ;629f
        NOP                                         ;62a0
        SBC     a,a                                 ;62a1
        LD      d,l                                 ;62a2
        AND     a                                   ;62a3
        NOP                                         ;62a4
        NOP                                         ;62a5
        LD      d,l                                 ;62a6
        AND     a                                   ;62a7
        NOP                                         ;62a8
        NOP                                         ;62a9
        LD      d,l                                 ;62aa
        AND     a                                   ;62ab
        NOP                                         ;62ac
        NOP                                         ;62ad
        LD      d,l                                 ;62ae
        AND     a                                   ;62af
        NOP                                         ;62b0
        NOP                                         ;62b1
        LD      d,l                                 ;62b2
        AND     a                                   ;62b3
        NOP                                         ;62b4
        NOP                                         ;62b5
        LD      d,l                                 ;62b6
        AND     a                                   ;62b7
        NOP                                         ;62b8
        NOP                                         ;62b9
        LD      d,l                                 ;62ba
        AND     a                                   ;62bb
        NOP                                         ;62bc
        NOP                                         ;62bd
        LD      d,l                                 ;62be
        AND     a                                   ;62bf
        NOP                                         ;62c0
        INC     b                                   ;62c1
        XOR     0x4                                 ;62c2
        NOP                                         ;62c4
        SUB     h                                   ;62c5
        INC     c                                   ;62c6
        RET     po                                  ;62c7
        INC     c                                   ;62c8
        RET     po                                  ;62c9
        INC     c                                   ;62ca
        RET     po                                  ;62cb
        INC     c                                   ;62cc
        RET     po                                  ;62cd
        INC     c                                   ;62ce
        RET     po                                  ;62cf
        INC     c                                   ;62d0
        RET     po                                  ;62d1
        INC     c                                   ;62d2
        RET     po                                  ;62d3
        INC     c                                   ;62d4
        RET     po                                  ;62d5
        INC     c                                   ;62d6
        RET     po                                  ;62d7
        INC     c                                   ;62d8
        RET     po                                  ;62d9
        EX      af,af'                              ;62da
        NOP                                         ;62db
        EX      af,af'                              ;62dc
        XOR     0x8c                                ;62dd
        RET     po                                  ;62df
        RET     nz                                  ;62e0
        RET     nz                                  ;62e1
        ADC     a,0xe0                              ;62e2
        RET     nz                                  ;62e4
        RET     nz                                  ;62e5
        ADC     a,0xe0                              ;62e6
        RET     nz                                  ;62e8
        RET     nz                                  ;62e9
        ADC     a,0x4                               ;62ea
        XOR     0x4                                 ;62ec
        NOP                                         ;62ee
        SBC     a,h                                 ;62ef
        LD      c,0xec                              ;62f0
        NOP                                         ;62f2
        NOP                                         ;62f3
        LD      c,0xec                              ;62f4
        INC     c                                   ;62f6
        ADC     a,0xe                               ;62f7
        CALL    pe,0xce0c                           ;62f9
        LD      c,0xec                              ;62fc
b4_l62feh:
        INC     c                                   ;62fe
        ADC     a,0xe                               ;62ff
        CALL    pe,0xce0c                           ;6301
        LD      c,0xec                              ;6304
        INC     c                                   ;6306
        ADC     a,0xe                               ;6307
        CALL    pe,0xce0c                           ;6309
        EX      af,af'                              ;630c
        NOP                                         ;630d
        JR      b4_l62feh                           ;630e
        LD      b,0x0                               ;6310
        SBC     a,d                                 ;6312
        ADC     a,0xe0                              ;6313
        XOR     0xe0                                ;6315
        ADC     a,0xe0                              ;6317
        XOR     0xe0                                ;6319
        ADC     a,0xe0                              ;631b
        XOR     0xe0                                ;631d
        ADC     a,0xe0                              ;631f
        XOR     0xe0                                ;6321
        ADC     a,0xe0                              ;6323
        XOR     0xe0                                ;6325
        ADC     a,0xe0                              ;6327
        XOR     0xe0                                ;6329
        ADC     a,0xe0                              ;632b
        EX      af,af'                              ;632d
        NOP                                         ;632e
        ADC     a,b                                 ;632f
        INC     c                                   ;6330
        XOR     0xc                                 ;6331
        XOR     0xc                                 ;6333
        XOR     0xc                                 ;6335
        XOR     0x4                                 ;6337
        NOP                                         ;6339
        ADC     a,b                                 ;633a
        INC     c                                   ;633b
        XOR     0xc                                 ;633c
        XOR     0xc                                 ;633e
        XOR     0xc                                 ;6340
        XOR     0x8                                 ;6342
        NOP                                         ;6344
        INC     c                                   ;6345
        SBC     a,c                                 ;6346
        ADD     a,c                                 ;6347
        LD      (bc),a                              ;6348
        INC     bc                                  ;6349
        LD      (0xaa08),hl                         ;634a
        INC     b                                   ;634d
        LD      (hl),a                              ;634e
        INC     b                                   ;634f
        LD      (0xee1c),hl                         ;6350
        INC     b                                   ;6353
        NOP                                         ;6354
        INC     c                                   ;6355
        XOR     0x8f                                ;6356
        CALL    pe,0x0                              ;6358
        XOR     0xec                                ;635b
        NOP                                         ;635d
        NOP                                         ;635e
        XOR     0xec                                ;635f
        NOP                                         ;6361
        NOP                                         ;6362
        XOR     0xec                                ;6363
        CALL    z,0x5cc                             ;6365
        XOR     0x81                                ;6368
        LD      d,b                                 ;636a
        INC     bc                                  ;636b
        XOR     0x81                                ;636c
        LD      d,b                                 ;636e
        INC     bc                                  ;636f
        XOR     0x81                                ;6370
        LD      d,b                                 ;6372
        INC     bc                                  ;6373
        XOR     0x81                                ;6374
        LD      d,b                                 ;6376
        INC     bc                                  ;6377
        XOR     0x81                                ;6378
        LD      d,b                                 ;637a
        INC     bc                                  ;637b
        XOR     0x81                                ;637c
        LD      d,b                                 ;637e
        INC     bc                                  ;637f
        XOR     0x81                                ;6380
        LD      d,b                                 ;6382
        INC     bc                                  ;6383
        XOR     0x81                                ;6384
        LD      d,b                                 ;6386
        LD      b,0xee                              ;6387
        ADD     a,c                                 ;6389
        LD      d,b                                 ;638a
        INC     bc                                  ;638b
        XOR     0x81                                ;638c
        LD      d,b                                 ;638e
        INC     bc                                  ;638f
        XOR     0x81                                ;6390
        LD      d,b                                 ;6392
        INC     bc                                  ;6393
        XOR     0x81                                ;6394
        LD      d,b                                 ;6396
        INC     bc                                  ;6397
        XOR     0x81                                ;6398
        LD      d,b                                 ;639a
        INC     bc                                  ;639b
        XOR     0x81                                ;639c
        LD      d,b                                 ;639e
        INC     bc                                  ;639f
        XOR     0x81                                ;63a0
        LD      d,b                                 ;63a2
        INC     bc                                  ;63a3
        XOR     0x2                                 ;63a4
        LD      d,b                                 ;63a6
        INC     bc                                  ;63a7
        LD      d,l                                 ;63a8
        ADD     a,c                                 ;63a9
        LD      d,b                                 ;63aa
        INC     bc                                  ;63ab
        NOP                                         ;63ac
        ADD     a,c                                 ;63ad
        LD      d,b                                 ;63ae
        INC     bc                                  ;63af
        CALL    z,0x5081                            ;63b0
        INC     bc                                  ;63b3
        CALL    z,0x5081                            ;63b4
        INC     bc                                  ;63b7
        CALL    z,0x5081                            ;63b8
        INC     bc                                  ;63bb
        CALL    z,0x5081                            ;63bc
        INC     bc                                  ;63bf
        CALL    z,0x4                               ;63c0
        INC     bc                                  ;63c3
        LD      d,l                                 ;63c4
        ADD     a,c                                 ;63c5
        LD      d,b                                 ;63c6
        INC     bc                                  ;63c7
        NOP                                         ;63c8
        ADD     a,c                                 ;63c9
        LD      d,b                                 ;63ca
        INC     bc                                  ;63cb
        CALL    z,0x5081                            ;63cc
        INC     bc                                  ;63cf
        CALL    z,0x5081                            ;63d0
        INC     bc                                  ;63d3
        CALL    z,0x5081                            ;63d4
        INC     bc                                  ;63d7
        CALL    z,0x5081                            ;63d8
        INC     bc                                  ;63db
        CALL    z,0x5081                            ;63dc
        INC     b                                   ;63df
        NOP                                         ;63e0
        ADC     a,l                                 ;63e1
        SUB     d                                   ;63e2
        ADD     hl,hl                               ;63e3
        SUB     d                                   ;63e4
        DAA                                         ;63e5
        SBC     a,c                                 ;63e6
        SBC     a,c                                 ;63e7
        LD      (0x9927),hl                         ;63e8
        LD      (0xd7dd),hl                         ;63eb
        LD      (0xdd03),hl                         ;63ee
        SUB     b                                   ;63f1
        DEC     l                                   ;63f2
        RST     OUTDO                               ;63f3
        RST     KEYINT                              ;63f4
        RST     OUTDO                               ;63f5
        CPL                                         ;63f6
        JP      p,0x2f22                            ;63f7
        LD      (0xdd22),hl                         ;63fa
        RST     CHRGTR                              ;63fd
        SUB     d                                   ;63fe
        RST     OUTDO                               ;63ff
        RST     KEYINT                              ;6400
