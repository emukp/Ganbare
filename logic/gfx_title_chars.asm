bE_l918fh:
        JR      c,$+3                               ;918f
        LD      bc,0x3801                           ;9191
        LD      bc,0x101                            ;9194
        JR      c,$+3                               ;9197
        LD      bc,0x3801                           ;9199
        LD      bc,0x1901                           ;919c
        LD      bc,0x101                            ;919f
        ADD     hl,de                               ;91a2
        LD      bc,0x128                            ;91a3
        ADD     hl,de                               ;91a6
        JR      z,bE_l91c6h                         ;91a7
        LD      bc,0x2419                           ;91a9
        ADD     hl,hl                               ;91ac
        ADD     hl,de                               ;91ad
        ADD     hl,sp                               ;91ae
        LD      a,(de)                              ;91af
        ADD     hl,sp                               ;91b0
        DEC     e                                   ;91b1
        RRA                                         ;91b2
        RRA                                         ;91b3
        RRA                                         ;91b4
        LD      e,0x23                              ;91b5
        INC     hl                                  ;91b7
        INC     hl                                  ;91b8
        LD      (0x2222),hl                         ;91b9
        LD      (0x391a),hl                         ;91bc
        LD      a,(de)                              ;91bf
        JR      c,$+64                              ;91c0
        LD      a,0x3e                              ;91c2
        INC     a                                   ;91c4
        LD      b,d                                 ;91c5
bE_l91c6h:
        LD      b,d                                 ;91c6
        LD      b,d                                 ;91c7
        DEC     a                                   ;91c8
        LD      b,c                                 ;91c9
        LD      b,c                                 ;91ca
        LD      b,c                                 ;91cb
        LD      b,c                                 ;91cc
        LD      bc,0x3801                           ;91cd
        LD      bc,FORMAT                           ;91d0
        JR      c,bE_l91d6h                         ;91d3
        INC     a                                   ;91d5
bE_l91d6h:
        LD      b,a                                 ;91d6
        JR      c,bE_l91dah                         ;91d7
        LD      c,b                                 ;91d9
bE_l91dah:
        LD      b,e                                 ;91da
        JR      c,$+3                               ;91db
        JR      z,bE_l91fch                         ;91dd
        RRA                                         ;91df
        RRA                                         ;91e0
        DEC     e                                   ;91e1
        LD      e,0x23                              ;91e2
        INC     hl                                  ;91e4
        LD      e,0x23                              ;91e5
        INC     hl                                  ;91e7
        INC     hl                                  ;91e8
        INC     hl                                  ;91e9
        INC     hl                                  ;91ea
        INC     hl                                  ;91eb
        INC     hl                                  ;91ec
        RRA                                         ;91ed
        RRA                                         ;91ee
        RRA                                         ;91ef
        RRA                                         ;91f0
        INC     hl                                  ;91f1
        INC     hl                                  ;91f2
        INC     hl                                  ;91f3
        INC     hl                                  ;91f4
        INC     hl                                  ;91f5
        INC     hl                                  ;91f6
        INC     hl                                  ;91f7
        INC     hl                                  ;91f8
        INC     hl                                  ;91f9
        INC     hl                                  ;91fa
        INC     hl                                  ;91fb
bE_l91fch:
        INC     hl                                  ;91fc
        LD      a,0x3e                              ;91fd
        LD      a,0x3e                              ;91ff
        LD      b,d                                 ;9201
        LD      b,d                                 ;9202
        LD      b,d                                 ;9203
        LD      b,d                                 ;9204
        LD      b,d                                 ;9205
        LD      b,d                                 ;9206
        LD      b,d                                 ;9207
        LD      b,d                                 ;9208
        LD      b,d                                 ;9209
        LD      b,d                                 ;920a
        LD      b,d                                 ;920b
        LD      b,d                                 ;920c
        LD      a,0x3e                              ;920d
        INC     a                                   ;920f
        LD      b,a                                 ;9210
        LD      b,d                                 ;9211
        LD      b,d                                 ;9212
        DEC     a                                   ;9213
        INC     a                                   ;9214
        LD      b,d                                 ;9215
        LD      b,d                                 ;9216
        LD      b,d                                 ;9217
        DEC     a                                   ;9218
        LD      b,d                                 ;9219
        LD      b,d                                 ;921a
        LD      b,d                                 ;921b
        LD      b,d                                 ;921c
        LD      a,(de)                              ;921d
        ADD     hl,sp                               ;921e
        LD      a,(de)                              ;921f
        ADD     hl,sp                               ;9220
        RRA                                         ;9221
        RRA                                         ;9222
        RRA                                         ;9223
        JR      nz,$+37                             ;9224
        INC     hl                                  ;9226
        INC     hl                                  ;9227
        LD      hl,0x2222                           ;9228
        LD      (0x1a27),hl                         ;922b
        ADD     hl,sp                               ;922e
        LD      a,(de)                              ;922f
        ADD     hl,sp                               ;9230
        CCF                                         ;9231
        LD      a,0x3e                              ;9232
        LD      a,0x40                              ;9234
        LD      b,d                                 ;9236
        LD      b,d                                 ;9237
        LD      b,d                                 ;9238
        LD      b,(hl)                              ;9239
        LD      b,c                                 ;923a
        LD      b,c                                 ;923b
        LD      b,c                                 ;923c
        RRA                                         ;923d
        RRA                                         ;923e
        RRA                                         ;923f
        JR      nz,bE_l9265h                        ;9240
        INC     hl                                  ;9242
        INC     hl                                  ;9243
        LD      hl,0x2323                           ;9244
        INC     hl                                  ;9247
        LD      hl,0x2323                           ;9248
        INC     hl                                  ;924b
        LD      hl,0x3e3f                           ;924c
        LD      a,0x3e                              ;924f
        LD      b,b                                 ;9251
        LD      b,d                                 ;9252
        LD      b,d                                 ;9253
        LD      b,d                                 ;9254
        LD      b,b                                 ;9255
        LD      b,d                                 ;9256
        LD      b,d                                 ;9257
        LD      b,d                                 ;9258
        LD      b,b                                 ;9259
        LD      b,d                                 ;925a
        LD      b,d                                 ;925b
        LD      b,d                                 ;925c
        LD      (0x2222),hl                         ;925d
        LD      (0x1f1f),hl                         ;9260
        RRA                                         ;9263
        RRA                                         ;9264
bE_l9265h:
        NOP                                         ;9265
        NOP                                         ;9266
        NOP                                         ;9267
        NOP                                         ;9268
        NOP                                         ;9269
        NOP                                         ;926a
        NOP                                         ;926b
        NOP                                         ;926c
        LD      (0x2222),hl                         ;926d
        DAA                                         ;9270
        RRA                                         ;9271
        RRA                                         ;9272
        RRA                                         ;9273
        JR      nz,bE_l9276h                        ;9274
bE_l9276h:
        NOP                                         ;9276
        NOP                                         ;9277
        NOP                                         ;9278
        NOP                                         ;9279
        NOP                                         ;927a
        NOP                                         ;927b
        NOP                                         ;927c
        LD      b,(hl)                              ;927d
        LD      b,c                                 ;927e
        LD      b,c                                 ;927f
        LD      b,c                                 ;9280
        CCF                                         ;9281
        LD      a,0x3e                              ;9282
        LD      a,0x0                               ;9284
        NOP                                         ;9286
        NOP                                         ;9287
        NOP                                         ;9288
        NOP                                         ;9289
        NOP                                         ;928a
        NOP                                         ;928b
        NOP                                         ;928c
        LD      b,c                                 ;928d
        LD      b,c                                 ;928e
        LD      b,c                                 ;928f
        LD      b,c                                 ;9290
        LD      a,0x3e                              ;9291
        LD      a,0x3e                              ;9293
        NOP                                         ;9295
        NOP                                         ;9296
        NOP                                         ;9297
        NOP                                         ;9298
        NOP                                         ;9299
        NOP                                         ;929a
        NOP                                         ;929b
        NOP                                         ;929c
gfxTitleChars: equ     #929d
