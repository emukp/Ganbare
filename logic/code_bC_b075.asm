bC_lb075h:
        LD      b,h                                 ;b075
        RST     KEYINT                              ;b076
        LD      l,b                                 ;b077
        JR      c,bC_lb0bah                         ;b078
        DEC     (hl)                                ;b07a
        LD      b,c                                 ;b07b
        LD      (0xfe5a),a                          ;b07c
        LD      l,b                                 ;b07f
        LD      b,b                                 ;b080
        LD      b,e                                 ;b081
        INC     (hl)                                ;b082
        LD      e,c                                 ;b083
        LD      b,(hl)                              ;b084
        LD      sp,0x455b                           ;b085
        CP      0x68                                ;b088
        LD      c,b                                 ;b08a
        LD      (hl),0x3d                           ;b08b
        LD      e,b                                 ;b08d
        LD      (0xff40),a                          ;b08e
        LD      l,b                                 ;b091
        JR      c,bC_lb0ddh                         ;b092
        LD      d,a                                 ;b094
        DEC     a                                   ;b095
        LD      e,l                                 ;b096
bC_lb097h:
        LD      b,l                                 ;b097
        CP      0x68                                ;b098
        LD      b,b                                 ;b09a
        LD      sp,0x345b                           ;b09b
bC_lb09eh:
        LD      d,d                                 ;b09e
        SCF                                         ;b09f
        CCF                                         ;b0a0
        LD      h,e                                 ;b0a1
        SCF                                         ;b0a2
        CP      0x68                                ;b0a3
        LD      c,b                                 ;b0a5
        LD      sp,0x6157                           ;b0a6
        SCF                                         ;b0a9
        DEC     (hl)                                ;b0aa
        LD      b,h                                 ;b0ab
        RST     KEYINT                              ;b0ac
        LD      l,b                                 ;b0ad
bC_lb0aeh:
        JR      c,bC_lb0e1h                         ;b0ae
        LD      e,e                                 ;b0b0
        SCF                                         ;b0b1
        CCF                                         ;b0b2
        LD      h,e                                 ;b0b3
        LD      (hl),0xfe                           ;b0b4
        LD      l,b                                 ;b0b6
        LD      b,b                                 ;b0b7
        DEC     (hl)                                ;b0b8
        LD      c,e                                 ;b0b9
bC_lb0bah:
        LD      h,e                                 ;b0ba
        LD      b,e                                 ;b0bb
        DEC     (hl)                                ;b0bc
        LD      h,e                                 ;b0bd
        LD      c,d                                 ;b0be
        DEC     (hl)                                ;b0bf
        LD      e,b                                 ;b0c0
        CP      0x68                                ;b0c1
        LD      c,b                                 ;b0c3
        LD      a,(0x365e)                          ;b0c4
        LD      c,c                                 ;b0c7
        LD      h,e                                 ;b0c8
bC_lb0c9h:
        LD      e,c                                 ;b0c9
        RST     KEYINT                              ;b0ca
        LD      l,b                                 ;b0cb
        JR      c,$+69                              ;b0cc
        LD      (hl),0x49                           ;b0ce
        NOP                                         ;b0d0
        DEC     (hl)                                ;b0d1
        LD      b,a                                 ;b0d2
        LD      b,h                                 ;b0d3
        LD      d,a                                 ;b0d4
        CP      0x68                                ;b0d5
        LD      b,b                                 ;b0d7
        ADD     hl,sp                               ;b0d8
        LD      c,c                                 ;b0d9
        LD      h,e                                 ;b0da
        LD      e,l                                 ;b0db
        LD      c,c                                 ;b0dc
bC_lb0ddh:
        NOP                                         ;b0dd
        LD      (0x5744),a                          ;b0de
bC_lb0e1h:
        RST     KEYINT                              ;b0e1
        LD      l,b                                 ;b0e2
        JR      c,bC_lb116h                         ;b0e3
        CCF                                         ;b0e5
        LD      b,c                                 ;b0e6
        LD      h,e                                 ;b0e7
        LD      d,(hl)                              ;b0e8
        LD      d,e                                 ;b0e9
        CP      0x68                                ;b0ea
        LD      b,b                                 ;b0ec
        INC     a                                   ;b0ed
        INC     a                                   ;b0ee
        LD      h,e                                 ;b0ef
        LD      d,c                                 ;b0f0
        LD      c,b                                 ;b0f1
        NOP                                         ;b0f2
        LD      c,e                                 ;b0f3
        LD      e,l                                 ;b0f4
        LD      b,l                                 ;b0f5
        LD      c,c                                 ;b0f6
        CP      0x68                                ;b0f7
        LD      c,b                                 ;b0f9
        LD      a,(0x435d)                          ;b0fa
        LD      h,e                                 ;b0fd
        DEC     (hl)                                ;b0fe
        LD      h,e                                 ;b0ff
        LD      a,(0x68ff)                          ;b100
        JR      c,$+59                              ;b103
        LD      d,c                                 ;b105
        CCF                                         ;b106
        LD      h,e                                 ;b107
        LD      e,e                                 ;b108
        LD      d,(hl)                              ;b109
        CP      0x68                                ;b10a
        LD      b,b                                 ;b10c
        LD      b,c                                 ;b10d
        LD      c,e                                 ;b10e
        LD      h,e                                 ;b10f
        LD      a,(0x4e59)                          ;b110
        LD      sp,0x633e                           ;b113
bC_lb116h:
        LD      b,e                                 ;b116
        CP      0x68                                ;b117
        LD      c,b                                 ;b119
        DEC     (hl)                                ;b11a
        LD      c,e                                 ;b11b
        LD      h,e                                 ;b11c
        LD      b,e                                 ;b11d
        LD      b,c                                 ;b11e
        JR      c,$+1                               ;b11f
        LD      l,b                                 ;b121
        JR      c,$+80                              ;b122
        LD      (hl),0x52                           ;b124
        LD      c,b                                 ;b126
        LD      b,l                                 ;b127
        CP      0x68                                ;b128
        LD      b,b                                 ;b12a
        LD      c,d                                 ;b12b
        LD      b,d                                 ;b12c
        LD      h,e                                 ;b12d
        LD      e,l                                 ;b12e
        NOP                                         ;b12f
        LD      c,a                                 ;b130
        LD      b,c                                 ;b131
        JR      c,$+68                              ;b132
        CP      0x68                                ;b134
        LD      c,b                                 ;b136
        ADD     hl,sp                               ;b137
        LD      e,l                                 ;b138
        LD      b,d                                 ;b139
        LD      b,l                                 ;b13a
        LD      h,b                                 ;b13b
        LD      (0x68ff),a                          ;b13c
        JR      c,bC_lb18bh                         ;b13f
        LD      h,c                                 ;b141
        LD      (0x5d3f),a                          ;b142
        LD      b,d                                 ;b145
        LD      h,e                                 ;b146
        CP      0x68                                ;b147
        LD      b,b                                 ;b149
        CCF                                         ;b14a
        LD      sp,0x6157                           ;b14b
        SCF                                         ;b14e
        NOP                                         ;b14f
        LD      c,a                                 ;b150
        LD      b,h                                 ;b151
        LD      (hl),0x63                           ;b152
        LD      e,b                                 ;b154
        CP      0x68                                ;b155
        LD      c,b                                 ;b157
        LD      c,e                                 ;b158
        DEC     sp                                  ;b159
        LD      (hl),0x63                           ;b15a
        DEC     (hl)                                ;b15c
        LD      b,h                                 ;b15d
        RST     KEYINT                              ;b15e
        LD      l,b                                 ;b15f
        JR      c,bC_lb1bch                         ;b160
        LD      (0x373e),a                          ;b162
        LD      c,b                                 ;b165
        CP      0x68                                ;b166
        LD      b,b                                 ;b168
        LD      c,d                                 ;b169
        DEC     (hl)                                ;b16a
        LD      d,a                                 ;b16b
        LD      b,l                                 ;b16c
        NOP                                         ;b16d
        LD      c,d                                 ;b16e
        DEC     (hl)                                ;b16f
        LD      e,b                                 ;b170
        CP      0x68                                ;b171
        LD      c,b                                 ;b173
        LD      sp,0x3757                           ;b174
        LD      h,e                                 ;b177
        LD      b,b                                 ;b178
        LD      d,e                                 ;b179
        RST     KEYINT                              ;b17a
        LD      l,b                                 ;b17b
        JR      c,bC_lb1bah                         ;b17c
        LD      b,h                                 ;b17e
        LD      b,e                                 ;b17f
        LD      h,e                                 ;b180
        JR      c,bC_lb1b4h                         ;b181
        CP      0x68                                ;b183
        LD      b,b                                 ;b185
        LD      b,e                                 ;b186
        LD      (hl),0x48                           ;b187
        NOP                                         ;b189
        LD      c,d                                 ;b18a
bC_lb18bh:
        LD      h,d                                 ;b18b
        LD      e,l                                 ;b18c
        LD      b,b                                 ;b18d
        LD      b,l                                 ;b18e
        CP      0x68                                ;b18f
        LD      c,b                                 ;b191
        LD      b,b                                 ;b192
        LD      h,c                                 ;b193
        LD      (0x324d),a                          ;b194
        DEC     sp                                  ;b197
        RST     KEYINT                              ;b198
        LD      l,b                                 ;b199
        JR      c,bC_lb1d0h                         ;b19a
        LD      c,(hl)                              ;b19c
        LD      d,d                                 ;b19d
        LD      d,a                                 ;b19e
        LD      b,l                                 ;b19f
        CP      0x68                                ;b1a0
        LD      b,b                                 ;b1a2
        LD      c,d                                 ;b1a3
        LD      (hl),0x5f                           ;b1a4
        SCF                                         ;b1a6
        LD      c,b                                 ;b1a7
        NOP                                         ;b1a8
        JR      nc,bC_lb1e6h                        ;b1a9
        LD      c,b                                 ;b1ab
        CP      0x68                                ;b1ac
        LD      c,b                                 ;b1ae
        LD      b,e                                 ;b1af
        INC     (hl)                                ;b1b0
        LD      c,b                                 ;b1b1
        JR      c,$+89                              ;b1b2
bC_lb1b4h:
        RST     KEYINT                              ;b1b4
        LD      l,b                                 ;b1b5
        JR      c,$+76                              ;b1b6
        DEC     (hl)                                ;b1b8
        INC     sp                                  ;b1b9
bC_lb1bah:
        INC     (hl)                                ;b1ba
        LD      e,d                                 ;b1bb
bC_lb1bch:
        LD      (0x68fe),a                          ;b1bc
        LD      b,b                                 ;b1bf
        ADD     hl,sp                               ;b1c0
        LD      c,b                                 ;b1c1
        LD      sp,0x5a5d                           ;b1c2
        LD      (HCVD),a                            ;b1c5
        LD      l,b                                 ;b1c8
        LD      c,b                                 ;b1c9
        LD      d,b                                 ;b1ca
        LD      b,d                                 ;b1cb
        LD      (hl),0x44                           ;b1cc
        LD      d,a                                 ;b1ce
        RST     KEYINT                              ;b1cf
bC_lb1d0h:
        LD      l,b                                 ;b1d0
        JR      c,$+76                              ;b1d1
        LD      b,h                                 ;b1d3
        LD      e,e                                 ;b1d4
        DEC     sp                                  ;b1d5
        LD      h,e                                 ;b1d6
        LD      h,b                                 ;b1d7
        LD      (0x68fe),a                          ;b1d8
        LD      b,b                                 ;b1db
        LD      d,l                                 ;b1dc
        LD      e,d                                 ;b1dd
        LD      sp,0x6335                           ;b1de
        NOP                                         ;b1e1
        JR      nc,$+91                             ;b1e2
        LD      c,c                                 ;b1e4
        LD      h,e                                 ;b1e5
bC_lb1e6h:
        CP      0x68                                ;b1e6
        LD      c,b                                 ;b1e8
        LD      (0x3159),a                          ;b1e9
        LD      b,h                                 ;b1ec
        DEC     sp                                  ;b1ed
        RST     KEYINT                              ;b1ee
        LD      l,b                                 ;b1ef
        JR      c,bC_lb246h                         ;b1f0
        LD      (hl),0x43                           ;b1f2
        LD      h,e                                 ;b1f4
        LD      c,(hl)                              ;b1f5
        LD      d,a                                 ;b1f6
        CP      0x68                                ;b1f7
        LD      b,b                                 ;b1f9
        LD      (hl),0x3d                           ;b1fa
        LD      e,b                                 ;b1fc
        DEC     (hl)                                ;b1fd
        LD      h,e                                 ;b1fe
        NOP                                         ;b1ff
        LD      b,h                                 ;b200
        LD      sp,0x5842                           ;b201
        CP      0x68                                ;b204
        LD      c,b                                 ;b206
        LD      b,b                                 ;b207
        DEC     (hl)                                ;b208
        LD      b,c                                 ;b209
        LD      (0xff5a),a                          ;b20a
        LD      l,b                                 ;b20d
        JR      c,$+52                              ;b20e
        LD      d,a                                 ;b210
        LD      c,l                                 ;b211
        LD      h,e                                 ;b212
        LD      (0xfe48),a                          ;b213
        LD      l,b                                 ;b216
        LD      b,b                                 ;b217
        LD      a,(0x4a5d)                          ;b218
        LD      h,e                                 ;b21b
        LD      (hl),0x4c                           ;b21c
        CCF                                         ;b21e
        LD      sp,0x68fe                           ;b21f
        LD      c,b                                 ;b222
        DEC     (hl)                                ;b223
        LD      e,e                                 ;b224
        LD      sp,0x4431                           ;b225
        RST     KEYINT                              ;b228
        LD      l,b                                 ;b229
        JR      c,bC_lb25dh                         ;b22a
        DEC     sp                                  ;b22c
        DEC     (hl)                                ;b22d
        LD      h,e                                 ;b22e
        LD      (hl),0x45                           ;b22f
        CP      0x68                                ;b231
        LD      b,b                                 ;b233
        JR      nc,bC_lb28eh                        ;b234
        LD      c,c                                 ;b236
        INC     a                                   ;b237
        LD      h,e                                 ;b238
        LD      b,h                                 ;b239
        DEC     (hl)                                ;b23a
        LD      e,d                                 ;b23b
        LD      (0x68fe),a                          ;b23c
        LD      c,b                                 ;b23f
        LD      b,c                                 ;b240
        LD      (0x3239),a                          ;b241
        LD      b,d                                 ;b244
        DEC     (hl)                                ;b245
bC_lb246h:
        LD      h,e                                 ;b246
        CCF                                         ;b247
        RST     KEYINT                              ;b248
        LD      l,b                                 ;b249
        JR      c,bC_lb28eh                         ;b24a
        LD      e,l                                 ;b24c
        DEC     (hl)                                ;b24d
        JR      c,bC_lb2a8h                         ;b24e
        CP      0x68                                ;b250
        LD      b,b                                 ;b252
        LD      b,d                                 ;b253
        LD      e,l                                 ;b254
        SCF                                         ;b255
        LD      h,e                                 ;b256
        LD      c,b                                 ;b257
        LD      c,c                                 ;b258
        LD      b,h                                 ;b259
        LD      b,l                                 ;b25a
        CP      0x68                                ;b25b
bC_lb25dh:
        LD      c,b                                 ;b25d
        ADD     hl,sp                               ;b25e
        LD      c,c                                 ;b25f
        LD      h,e                                 ;b260
        LD      e,l                                 ;b261
        LD      b,h                                 ;b262
        JR      c,bC_lb2c8h                         ;b263
        RST     KEYINT                              ;b265
        LD      l,b                                 ;b266
        JR      c,$+52                              ;b267
        LD      e,(hl)                              ;b269
        DEC     (hl)                                ;b26a
        LD      d,a                                 ;b26b
        LD      b,e                                 ;b26c
        CP      0x68                                ;b26d
        LD      b,b                                 ;b26f
        LD      c,d                                 ;b270
        LD      (hl),0x5f                           ;b271
        SCF                                         ;b273
        LD      b,l                                 ;b274
        NOP                                         ;b275
        LD      b,e                                 ;b276
        LD      d,(hl)                              ;b277
        LD      e,c                                 ;b278
        LD      e,b                                 ;b279
        CP      0x68                                ;b27a
        LD      c,b                                 ;b27c
        LD      b,d                                 ;b27d
        DEC     (hl)                                ;b27e
        LD      h,e                                 ;b27f
        LD      c,a                                 ;b280
        DEC     (hl)                                ;b281
        LD      b,h                                 ;b282
        RST     KEYINT                              ;b283
        LD      l,b                                 ;b284
        JR      c,bC_lb2bbh                         ;b285
        LD      d,e                                 ;b287
        LD      c,e                                 ;b288
        LD      h,e                                 ;b289
        LD      e,l                                 ;b28a
        LD      c,b                                 ;b28b
        CP      0x68                                ;b28c
bC_lb28eh:
        LD      b,b                                 ;b28e
        LD      b,d                                 ;b28f
        DEC     (hl)                                ;b290
        LD      h,e                                 ;b291
        LD      c,a                                 ;b292
        LD      e,h                                 ;b293
        NOP                                         ;b294
        LD      sp,0x3f3f                           ;b295
        LD      h,e                                 ;b298
        SCF                                         ;b299
        CP      0x68                                ;b29a
        LD      c,b                                 ;b29c
        LD      c,d                                 ;b29d
        LD      (hl),0x5f                           ;b29e
        SCF                                         ;b2a0
        DEC     (hl)                                ;b2a1
        LD      b,h                                 ;b2a2
        RST     KEYINT                              ;b2a3
        LD      l,b                                 ;b2a4
        JR      c,bC_lb2dbh                         ;b2a5
        LD      d,e                                 ;b2a7
bC_lb2a8h:
        LD      c,e                                 ;b2a8
        LD      h,e                                 ;b2a9
        LD      e,l                                 ;b2aa
        LD      c,b                                 ;b2ab
        CP      0x68                                ;b2ac
        LD      b,b                                 ;b2ae
        LD      b,d                                 ;b2af
        DEC     (hl)                                ;b2b0
        LD      h,e                                 ;b2b1
        LD      c,a                                 ;b2b2
        DEC     (hl)                                ;b2b3
        LD      h,e                                 ;b2b4
        NOP                                         ;b2b5
        LD      b,h                                 ;b2b6
        JR      c,bC_lb312h                         ;b2b7
        LD      c,c                                 ;b2b9
        LD      h,e                                 ;b2ba
bC_lb2bbh:
        CP      0x68                                ;b2bb
        LD      c,b                                 ;b2bd
        LD      d,l                                 ;b2be
        LD      a,0x48                              ;b2bf
        LD      c,d                                 ;b2c1
        LD      b,e                                 ;b2c2
        RST     KEYINT                              ;b2c3
        LD      l,b                                 ;b2c4
        JR      c,bC_lb2fdh                         ;b2c5
        LD      e,h                                 ;b2c7
bC_lb2c8h:
        LD      b,c                                 ;b2c8
        JR      c,$+92                              ;b2c9
        CP      0x68                                ;b2cb
        LD      b,b                                 ;b2cd
        INC     (hl)                                ;b2ce
        LD      c,c                                 ;b2cf
        LD      h,e                                 ;b2d0
        LD      c,c                                 ;b2d1
        LD      h,e                                 ;b2d2
        LD      c,b                                 ;b2d3
        NOP                                         ;b2d4
        LD      c,c                                 ;b2d5
        LD      h,e                                 ;b2d6
        SCF                                         ;b2d7
        CCF                                         ;b2d8
        LD      h,e                                 ;b2d9
        LD      e,l                                 ;b2da
bC_lb2dbh:
        CP      0x68                                ;b2db
        LD      c,b                                 ;b2dd
        LD      sp,0x4048                           ;b2de
        LD      b,e                                 ;b2e1
        LD      d,a                                 ;b2e2
        RST     KEYINT                              ;b2e3
        LD      l,b                                 ;b2e4
        JR      c,bC_lb322h                         ;b2e5
        LD      h,e                                 ;b2e7
        LD      h,c                                 ;b2e8
        LD      (0x324d),a                          ;b2e9
        LD      d,e                                 ;b2ec
        CP      0x68                                ;b2ed
        LD      b,b                                 ;b2ef
        INC     (hl)                                ;b2f0
        DEC     (hl)                                ;b2f1
        LD      b,a                                 ;b2f2
        NOP                                         ;b2f3
        LD      b,e                                 ;b2f4
        LD      d,(hl)                              ;b2f5
        LD      e,c                                 ;b2f6
        LD      b,d                                 ;b2f7
        CP      0x68                                ;b2f8
        LD      c,b                                 ;b2fa
        LD      d,d                                 ;b2fb
        LD      d,(hl)                              ;b2fc
bC_lb2fdh:
        LD      sp,0x3644                           ;b2fd
        RST     KEYINT                              ;b300
        LD      l,b                                 ;b301
        JR      c,bC_lb33fh                         ;b302
        LD      h,e                                 ;b304
        LD      h,c                                 ;b305
        LD      (0x324d),a                          ;b306
        LD      d,e                                 ;b309
        CP      0x68                                ;b30a
        LD      b,b                                 ;b30c
        DEC     a                                   ;b30d
        LD      sp,0x3735                           ;b30e
        NOP                                         ;b311
bC_lb312h:
        LD      e,e                                 ;b312
        DEC     (hl)                                ;b313
        LD      e,b                                 ;b314
        CP      0x68                                ;b315
        LD      c,b                                 ;b317
        LD      a,(0x355d)                          ;b318
        LD      sp,0xff51                           ;b31b
        LD      l,b                                 ;b31e
        JR      c,bC_lb35ch                         ;b31f
        LD      h,e                                 ;b321
bC_lb322h:
        LD      h,c                                 ;b322
        LD      (0x324d),a                          ;b323
        LD      d,e                                 ;b326
        CP      0x68                                ;b327
        LD      b,b                                 ;b329
        DEC     a                                   ;b32a
        LD      sp,0x3735                           ;b32b
        NOP                                         ;b32e
        LD      e,e                                 ;b32f
        DEC     (hl)                                ;b330
        LD      e,b                                 ;b331
        CP      0x68                                ;b332
        LD      c,b                                 ;b334
        LD      b,d                                 ;b335
        LD      e,l                                 ;b336
        LD      c,b                                 ;b337
        NOP                                         ;b338
        JR      nc,bC_lb393h                        ;b339
        LD      b,h                                 ;b33b
        DEC     sp                                  ;b33c
        RST     KEYINT                              ;b33d
        LD      l,b                                 ;b33e
bC_lb33fh:
        JR      c,$+53                              ;b33f
        LD      e,c                                 ;b341
        LD      (hl),0x35                           ;b342
        LD      h,e                                 ;b344
        LD      b,l                                 ;b345
        CP      0x68                                ;b346
        LD      b,b                                 ;b348
        CCF                                         ;b349
        LD      sp,0x633b                           ;b34a
        LD      c,b                                 ;b34d
        NOP                                         ;b34e
        LD      c,c                                 ;b34f
        LD      d,e                                 ;b350
        LD      sp,0x68fe                           ;b351
        LD      c,b                                 ;b354
        ADD     hl,sp                               ;b355
        LD      c,c                                 ;b356
        LD      h,e                                 ;b357
        LD      e,l                                 ;b358
        LD      b,h                                 ;b359
        JR      c,bC_lb3bfh                         ;b35a
bC_lb35ch:
        RST     KEYINT                              ;b35c
        LD      l,b                                 ;b35d
        JR      c,bC_lb3a3h                         ;b35e
        LD      b,c                                 ;b360
        DEC     a                                   ;b361
        LD      h,e                                 ;b362
        LD      e,l                                 ;b363
        LD      b,l                                 ;b364
        CP      0x68                                ;b365
        LD      b,b                                 ;b367
        LD      b,e                                 ;b368
        LD      c,d                                 ;b369
        LD      h,e                                 ;b36a
        CCF                                         ;b36b
        LD      h,e                                 ;b36c
        INC     a                                   ;b36d
        NOP                                         ;b36e
        LD      a,(0x4435)                          ;b36f
        LD      b,l                                 ;b372
        CP      0x68                                ;b373
        LD      c,b                                 ;b375
        INC     (hl)                                ;b376
        INC     (hl)                                ;b377
        INC     (hl)                                ;b378
        INC     (hl)                                ;b379
        INC     (hl)                                ;b37a
        RST     KEYINT                              ;b37b
        LD      l,b                                 ;b37c
        JR      c,bC_lb3b8h                         ;b37d
        LD      (0x6338),a                          ;b37f
        LD      (hl),0x45                           ;b382
        CP      0x68                                ;b384
        LD      b,b                                 ;b386
        LD      c,d                                 ;b387
        LD      h,e                                 ;b388
        SCF                                         ;b389
        LD      b,e                                 ;b38a
        LD      d,d                                 ;b38b
        DEC     sp                                  ;b38c
        LD      b,h                                 ;b38d
        LD      sp,0x68fe                           ;b38e
        LD      c,b                                 ;b391
        ADD     hl,sp                               ;b392
bC_lb393h:
        LD      d,c                                 ;b393
        CCF                                         ;b394
        LD      h,e                                 ;b395
        LD      e,e                                 ;b396
        LD      d,(hl)                              ;b397
        RST     KEYINT                              ;b398
        LD      l,b                                 ;b399
        JR      c,bC_lb3d1h                         ;b39a
        LD      h,e                                 ;b39c
        JR      c,bC_lb3e7h                         ;b39d
        LD      c,e                                 ;b39f
        LD      b,b                                 ;b3a0
        CP      0x68                                ;b3a1
bC_lb3a3h:
        LD      b,b                                 ;b3a3
        LD      (0x4135),a                          ;b3a4
        LD      b,h                                 ;b3a7
        LD      (0x6339),a                          ;b3a8
        LD      (hl),0xfe                           ;b3ab
        LD      l,b                                 ;b3ad
        LD      c,b                                 ;b3ae
        LD      sp,0x4048                           ;b3af
        LD      b,e                                 ;b3b2
        LD      d,a                                 ;b3b3
        RST     KEYINT                              ;b3b4
        LD      l,b                                 ;b3b5
        JR      c,bC_lb3fdh                         ;b3b6
bC_lb3b8h:
        DEC     (hl)                                ;b3b8
        LD      sp,0x4851                           ;b3b9
        CP      0x68                                ;b3bc
        LD      b,b                                 ;b3be
bC_lb3bfh:
        JR      nc,bC_lb3f2h                        ;b3bf
        LD      b,d                                 ;b3c1
        LD      d,b                                 ;b3c2
        NOP                                         ;b3c3
        DEC     (hl)                                ;b3c4
        DEC     (hl)                                ;b3c5
        SCF                                         ;b3c6
        LD      c,c                                 ;b3c7
        CP      0x68                                ;b3c8
        LD      c,b                                 ;b3ca
        LD      sp,0x4b5d                           ;b3cb
        LD      e,c                                 ;b3ce
        LD      d,l                                 ;b3cf
        RST     KEYINT                              ;b3d0
bC_lb3d1h:
        LD      l,b                                 ;b3d1
        JR      c,bC_lb414h                         ;b3d2
        DEC     (hl)                                ;b3d4
        LD      c,b                                 ;b3d5
        LD      sp,0xfe5b                           ;b3d6
        LD      l,b                                 ;b3d9
        LD      b,b                                 ;b3da
        INC     a                                   ;b3db
        LD      c,d                                 ;b3dc
        LD      h,d                                 ;b3dd
        LD      h,(hl)                              ;b3de
        LD      b,e                                 ;b3df
        LD      h,e                                 ;b3e0
        JR      nc,bC_lb441h                        ;b3e1
        LD      c,e                                 ;b3e3
        LD      h,d                                 ;b3e4
        LD      b,d                                 ;b3e5
        LD      h,e                                 ;b3e6
bC_lb3e7h:
        CP      0x68                                ;b3e7
        LD      c,b                                 ;b3e9
        LD      a,(0x395d)                          ;b3ea
        LD      b,e                                 ;b3ed
        LD      c,d                                 ;b3ee
        LD      h,e                                 ;b3ef
        RST     KEYINT                              ;b3f0
        LD      l,b                                 ;b3f1
