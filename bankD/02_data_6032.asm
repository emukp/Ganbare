        DEFB    0xdd,0x61                           ;6032
        ADD     hl,bc                               ;6034
        LD      h,d                                 ;6035
        LD      e,c                                 ;6036
        LD      h,d                                 ;6037
        LD      h,a                                 ;6038
        LD      h,d                                 ;6039
        CP      b                                   ;603a
        LD      h,d                                 ;603b
        LD      (hl),b                              ;603c
        LD      h,d                                 ;603d
        LD      a,a                                 ;603e
        LD      h,d                                 ;603f
        XOR     b                                   ;6040
        LD      h,b                                 ;6041
        ADC     a,0x60                              ;6042
        ADC     a,(hl)                              ;6044
        LD      h,d                                 ;6045
        LD      l,(hl)                              ;6046
        LD      h,b                                 ;6047
        XOR     l                                   ;6048
        LD      h,d                                 ;6049
        ADD     a,c                                 ;604a
        LD      h,b                                 ;604b
        CP      a                                   ;604c
        LD      h,c                                 ;604d
        LD      c,d                                 ;604e
        LD      h,c                                 ;604f
        LD      (hl),b                              ;6050
        LD      h,c                                 ;6051
        JP      0x3962                              ;6052
        LD      h,c                                 ;6055
        ADC     a,0x62                              ;6056
        LD      a,(de)                              ;6058
        LD      h,c                                 ;6059
        LD      a,a                                 ;605a
        LD      h,d                                 ;605b
        DEFB    0xdd,0x61                           ;605c
        ADC     a,0x60                              ;605e
        DEFB    0xdd,0x62                           ;6060
        AND     b                                   ;6062
        LD      h,b                                 ;6063
        CP      b                                   ;6064
        LD      h,d                                 ;6065
        INC     hl                                  ;6066
        LD      h,e                                 ;6067
        SBC     a,l                                 ;6068
        LD      h,d                                 ;6069
        JP      (hl)                                ;606a
        LD      h,d                                 ;606b
        ADD     hl,bc                               ;606c
        LD      h,d                                 ;606d
        LD      bc,0x4123                           ;606e
        LD      b,d                                 ;6071
        LD      b,d                                 ;6072
        RRA                                         ;6073
        LD      bc,0x4523                           ;6074
        LD      h,a                                 ;6077
        SBC     a,d                                 ;6078
        LD      a,e                                 ;6079
        LD      (bc),a                              ;607a
        JR      bD_l6010h                           ;607b
        LD      b,l                                 ;607d
        LD      (hl),h                              ;607e
        SBC     a,b                                 ;607f
        XOR     a                                   ;6080
        LD      bc,0x4523                           ;6081
        LD      h,a                                 ;6084
bD_l6085h:
        ADC     a,c                                 ;6085
        XOR     e                                   ;6086
        CALL    0x5ef                               ;6087
        LD      (0x2634),a                          ;608a
        LD      bc,bD_l7b26h                        ;608d
        SBC     a,b                                 ;6090
        SBC     a,b                                 ;6091
        CP      a                                   ;6092
        LD      (bc),a                              ;6093
        ADD     a,a                                 ;6094
        LD      h,b                                 ;6095
        SUB     (hl)                                ;6096
        LD      (bc),a                              ;6097
        ADC     a,c                                 ;6098
        LD      (hl),0x9                            ;6099
        ADD     a,(hl)                              ;609b
        EX      af,af'                              ;609c
        LD      (hl),h                              ;609d
        INC     (hl)                                ;609e
        XOR     a                                   ;609f
        LD      hl,0x4234                           ;60a0
        LD      sp,0x8f69                           ;60a3
        XOR     d                                   ;60a6
        LD      a,c                                 ;60a7
        INC     de                                  ;60a8
        DEC     d                                   ;60a9
        RLA                                         ;60aa
        LD      d,0x19                              ;60ab
        JR      $+23                                ;60ad
        LD      d,0x14                              ;60af
        LD      d,0x15                              ;60b1
        LD      a,(de)                              ;60b3
        LD      c,0x11                              ;60b4
        RRCA                                        ;60b6
        LD      de,0x1210                           ;60b7
        EX      af,af'                              ;60ba
        ADD     hl,bc                               ;60bb
        DEC     bc                                  ;60bc
        DEC     c                                   ;60bd
        EX      af,af'                              ;60be
        INC     c                                   ;60bf
        ADD     hl,bc                               ;60c0
        DEC     c                                   ;60c1
        NOP                                         ;60c2
        LD      bc,0x201                            ;60c3
        INC     bc                                  ;60c6
        INC     b                                   ;60c7
        INC     bc                                  ;60c8
        INC     b                                   ;60c9
        LD      b,0x1                               ;60ca
        LD      bc,0x2507                           ;60cc
        DAA                                         ;60cf
        LD      h,0x28                              ;60d0
        DAA                                         ;60d2
        ADD     hl,hl                               ;60d3
        INC     e                                   ;60d4
        DEC     e                                   ;60d5
        JR      nz,$+32                             ;60d6
        LD      hl,0x1f22                           ;60d8
        INC     hl                                  ;60db
        INC     e                                   ;60dc
        LD      e,0x20                              ;60dd
        LD      hl,0x2324                           ;60df
        LD      a,(de)                              ;60e2
        JR      bD_l60ffh                           ;60e3
        ADD     hl,de                               ;60e5
        RLA                                         ;60e6
        JR      bD_l6103h                           ;60e7
        LD      a,(de)                              ;60e9
        JR      $+27                                ;60ea
        LD      a,(de)                              ;60ec
        DEC     de                                  ;60ed
        LD      (de),a                              ;60ee
        INC     d                                   ;60ef
        INC     de                                  ;60f0
        LD      d,0x12                              ;60f1
        INC     d                                   ;60f3
        DEC     d                                   ;60f4
        LD      d,0x12                              ;60f5
        INC     de                                  ;60f7
        INC     d                                   ;60f8
        LD      d,0xb                               ;60f9
        DEC     c                                   ;60fb
        LD      c,0xc                               ;60fc
        RRCA                                        ;60fe
bD_l60ffh:
        INC     c                                   ;60ff
        LD      c,0x10                              ;6100
        DEC     c                                   ;6102
bD_l6103h:
        LD      de,0x607                            ;6103
        RLCA                                        ;6106
        EX      af,af'                              ;6107
        LD      b,0x9                               ;6108
        NOP                                         ;610a
        LD      bc,0x302                            ;610b
        LD      bc,0x1404                           ;610e
        INC     d                                   ;6111
        INC     h                                   ;6112
        LD      b,d                                 ;6113
        LD      (0x9767),a                          ;6114
        SUB     a                                   ;6117
        LD      a,d                                 ;6118
        ADC     a,a                                 ;6119
        DEC     bc                                  ;611a
        LD      (de),a                              ;611b
        LD      a,(0x5634)                          ;611c
        LD      a,b                                 ;611f
        SUB     h                                   ;6120
        LD      d,(hl)                              ;6121
        CALL    bD_sub_78efh                        ;6122
        CP      d                                   ;6125
        XOR     h                                   ;6126
        LD      (bc),a                              ;6127
        INC     d                                   ;6128
        CPL                                         ;6129
        LD      a,b                                 ;612a
        SBC     a,h                                 ;612b
        LD      bc,0x1434                           ;612c
        LD      d,(hl)                              ;612f
        RLA                                         ;6130
        ADC     a,d                                 ;6131
        OR      b                                   ;6132
        CALL    0x25ef                              ;6133
        LD      h,a                                 ;6136
        ADC     a,d                                 ;6137
        OR      c                                   ;6138
        LD      l,b                                 ;6139
        XOR     c                                   ;613a
        ADC     a,e                                 ;613b
        LD      l,c                                 ;613c
        ADC     a,c                                 ;613d
        XOR     a                                   ;613e
        LD      (bc),a                              ;613f
        LD      sp,0x445                            ;6140
        DEC     h                                   ;6143
        INC     bc                                  ;6144
        DEC     d                                   ;6145
        LD      (0x3112),a                          ;6146
        LD      (0x1713),a                          ;6149
        JR      bD_l6167h                           ;614c
        JR      bD_l6169h                           ;614e
        INC     d                                   ;6150
        LD      a,(de)                              ;6151
        LD      c,0xf                               ;6152
        LD      de,0xe12                            ;6154
        RRCA                                        ;6157
        DJNZ    $+20                                ;6158
        EX      af,af'                              ;615a
        DEC     bc                                  ;615b
        INC     c                                   ;615c
        DEC     c                                   ;615d
        EX      af,af'                              ;615e
bD_l615fh:
        LD      a,(bc)                              ;615f
        DEC     bc                                  ;6160
        INC     c                                   ;6161
        ADD     hl,bc                               ;6162
        DEC     c                                   ;6163
        NOP                                         ;6164
        LD      (bc),a                              ;6165
        INC     b                                   ;6166
bD_l6167h:
        LD      b,0x1                               ;6167
bD_l6169h:
        RLCA                                        ;6169
        NOP                                         ;616a
        LD      bc,0x302                            ;616b
bD_l616eh:
        LD      b,0x7                               ;616e
        DEC     h                                   ;6170
        LD      h,0x28                              ;6171
        ADD     hl,hl                               ;6173
        DEC     h                                   ;6174
        JR      z,bD_l619eh                         ;6175
        JR      z,bD_l619fh                         ;6177
        ADD     hl,hl                               ;6179
        LD      e,0x1f                              ;617a
        INC     e                                   ;617c
        INC     h                                   ;617d
        DEC     e                                   ;617e
        JR      nz,bD_l61a3h                        ;617f
        LD      hl,0x201f                           ;6181
        LD      (0x1e1d),hl                         ;6184
        INC     hl                                  ;6187
        RLA                                         ;6188
        ADD     hl,de                               ;6189
        JR      $+28                                ;618a
        JR      bD_l61a9h                           ;618c
        RLA                                         ;618e
        JR      bD_l61aah                           ;618f
        DEC     de                                  ;6191
        LD      (de),a                              ;6192
        DEC     d                                   ;6193
        INC     d                                   ;6194
        INC     de                                  ;6195
        DEC     d                                   ;6196
        LD      d,0x12                              ;6197
        INC     d                                   ;6199
        INC     de                                  ;619a
        LD      d,0x12                              ;619b
        INC     d                                   ;619d
bD_l619eh:
        DEC     d                                   ;619e
bD_l619fh:
        LD      d,0x5                               ;619f
        LD      b,0x7                               ;61a1
bD_l61a3h:
        EX      af,af'                              ;61a3
        ADD     hl,bc                               ;61a4
        LD      b,0x8                               ;61a5
        LD      b,0x7                               ;61a7
bD_l61a9h:
        EX      af,af'                              ;61a9
bD_l61aah:
        LD      b,0xa                               ;61aa
        NOP                                         ;61ac
        LD      bc,0x302                            ;61ad
        LD      bc,0x104                            ;61b0
        LD      bc,0x302                            ;61b3
        INC     b                                   ;61b6
        SCF                                         ;61b7
        LD      d,0x9                               ;61b8
        LD      h,b                                 ;61ba
        LD      (de),a                              ;61bb
        LD      b,l                                 ;61bc
        JR      c,bD_l616eh                         ;61bd
        LD      bc,0x4f42                           ;61bf
        LD      l,c                                 ;61c2
        LD      a,e                                 ;61c3
        LD      bc,0xa925                           ;61c4
        LD      a,c                                 ;61c7
        SBC     a,c                                 ;61c8
        OR      b                                   ;61c9
        OR      b                                   ;61ca
        LD      a,(0x8417)                          ;61cb
        DEC     bc                                  ;61ce
        CALL    0x1ef                               ;61cf
        INC     hl                                  ;61d2
        LD      b,l                                 ;61d3
        LD      hl,0x2632                           ;61d4
        LD      bc,0x4513                           ;61d7
        LD      (de),a                              ;61da
        LD      (0x131f),a                          ;61db
        RLA                                         ;61de
        LD      d,0x19                              ;61df
        JR      bD_l61fdh                           ;61e1
        INC     de                                  ;61e3
        ADD     hl,de                               ;61e4
        JR      bD_l61fbh                           ;61e5
        DEC     d                                   ;61e7
        LD      a,(de)                              ;61e8
        LD      c,0xf                               ;61e9
        RRCA                                        ;61eb
        LD      (de),a                              ;61ec
        LD      c,0x10                              ;61ed
        RRCA                                        ;61ef
        LD      (de),a                              ;61f0
        EX      af,af'                              ;61f1
        ADD     hl,bc                               ;61f2
        INC     c                                   ;61f3
        DEC     c                                   ;61f4
        EX      af,af'                              ;61f5
        LD      a,(bc)                              ;61f6
        INC     c                                   ;61f7
        DEC     bc                                  ;61f8
        INC     c                                   ;61f9
        ADD     hl,bc                               ;61fa
bD_l61fbh:
        DEC     bc                                  ;61fb
        DEC     c                                   ;61fc
bD_l61fdh:
        NOP                                         ;61fd
        LD      bc,0x701                            ;61fe
        NOP                                         ;6201
        LD      bc,0x302                            ;6202
        INC     b                                   ;6205
        DEC     b                                   ;6206
        LD      b,0x7                               ;6207
        LD      h,0x27                              ;6209
        INC     e                                   ;620b
        DEC     e                                   ;620c
        JR      nz,$+38                             ;620d
        LD      (0x2122),hl                         ;620f
        DEC     e                                   ;6212
        LD      hl,0x2222                           ;6213
        JR      nz,bD_l6236h                        ;6216
        RRA                                         ;6218
        DEC     e                                   ;6219
        INC     hl                                  ;621a
        RLA                                         ;621b
        LD      a,(de)                              ;621c
        JR      $+29                                ;621d
        RLA                                         ;621f
        JR      $+26                                ;6220
        DEC     de                                  ;6222
        RLA                                         ;6223
        ADD     hl,de                               ;6224
        JR      bD_l6242h                           ;6225
        LD      (de),a                              ;6227
        INC     de                                  ;6228
        INC     d                                   ;6229
        DEC     d                                   ;622a
        INC     d                                   ;622b
        LD      d,0x12                              ;622c
        DEC     d                                   ;622e
        INC     d                                   ;622f
        INC     d                                   ;6230
        INC     de                                  ;6231
        LD      d,0xb                               ;6232
        DEC     c                                   ;6234
        INC     c                                   ;6235
bD_l6236h:
        LD      de,0xf0e                            ;6236
        DJNZ    bD_l6247h                           ;6239
        DEC     bc                                  ;623b
        DEC     c                                   ;623c
        RRCA                                        ;623d
        INC     c                                   ;623e
        DJNZ    bD_l6252h                           ;623f
        DEC     b                                   ;6241
bD_l6242h:
        EX      af,af'                              ;6242
        RLCA                                        ;6243
        LD      b,0x9                               ;6244
        LD      a,(bc)                              ;6246
bD_l6247h:
        DEC     b                                   ;6247
        LD      b,0x7                               ;6248
        EX      af,af'                              ;624a
        ADD     hl,bc                               ;624b
        ADD     hl,bc                               ;624c
        EX      af,af'                              ;624d
        RLCA                                        ;624e
        EX      af,af'                              ;624f
        LD      a,(bc)                              ;6250
        NOP                                         ;6251
bD_l6252h:
        LD      bc,0x302                            ;6252
        LD      (bc),a                              ;6255
        INC     bc                                  ;6256
        LD      bc,0x204                            ;6257
        LD      b,(hl)                              ;625a
        LD      (bc),a                              ;625b
        INC     (hl)                                ;625c
        LD      h,0x79                              ;625d
        XOR     h                                   ;625f
        LD      (bc),a                              ;6260
        LD      d,0x79                              ;6261
        CP      h                                   ;6263
        LD      a,c                                 ;6264
        CP      b                                   ;6265
        SBC     a,a                                 ;6266
        LD      l,b                                 ;6267
        SBC     a,d                                 ;6268
        SBC     a,e                                 ;6269
        SBC     a,d                                 ;626a
        LD      a,c                                 ;626b
        LD      bc,0x225                            ;626c
        RRA                                         ;626f
        LD      a,e                                 ;6270
        CP      b                                   ;6271
        XOR     a                                   ;6272
        LD      a,b                                 ;6273
        XOR     h                                   ;6274
        INC     b                                   ;6275
        LD      (0x416),a                           ;6276
        LD      (bD_l7916h),a                       ;6279
        CP      h                                   ;627c
        LD      a,b                                 ;627d
        SBC     a,h                                 ;627e
        LD      l,d                                 ;627f
        ADC     a,d                                 ;6280
        ADC     a,e                                 ;6281
        LD      (bc),a                              ;6282
        LD      c,a                                 ;6283
        LD      l,b                                 ;6284
        LD      a,d                                 ;6285
        LD      a,e                                 ;6286
        LD      bc,0x4532                           ;6287
        LD      h,a                                 ;628a
        SBC     a,e                                 ;628b
        LD      bc,0x335                            ;628c
        DEC     h                                   ;628f
        LD      h,0x2                               ;6290
        LD      hl,0x44f                            ;6292
        LD      (de),a                              ;6295
        INC     de                                  ;6296
        LD      hl,bD_l7926h                        ;6297
        SBC     a,h                                 ;629a
        LD      a,c                                 ;629b
        CP      h                                   ;629c
        LD      bc,0x1524                           ;629d
        LD      l,b                                 ;62a0
        SBC     a,d                                 ;62a1
        ADC     a,e                                 ;62a2
        LD      l,d                                 ;62a3
        SUB     a                                   ;62a4
        ADC     a,e                                 ;62a5
        LD      l,c                                 ;62a6
        LD      a,a                                 ;62a7
        INC     bc                                  ;62a8
        INC     h                                   ;62a9
        LD      (bD_l7a15h),a                       ;62aa
        EX      af,af'                              ;62ad
        LD      (hl),c                              ;62ae
        LD      (hl),0x9                            ;62af
        ADD     a,(hl)                              ;62b1
        DEC     b                                   ;62b2
        ADC     a,c                                 ;62b3
        LD      h,0x4                               ;62b4
        LD      d,a                                 ;62b6
        XOR     a                                   ;62b7
        INC     hl                                  ;62b8
        SUB     h                                   ;62b9
        LD      d,(hl)                              ;62ba
        INC     (hl)                                ;62bb
        NOP                                         ;62bc
        CALL    0x12ef                              ;62bd
        LD      d,(hl)                              ;62c0
        LD      a,b                                 ;62c1
        SBC     a,d                                 ;62c2
        AND     c                                   ;62c3
        LD      a,b                                 ;62c4
        SUB     h                                   ;62c5
        LD      d,(hl)                              ;62c6
        LD      a,b                                 ;62c7
        LD      (de),a                              ;62c8
        LD      a,(0xefcd)                          ;62c9
        LD      (de),a                              ;62cc
        LD      a,(0x2602)                          ;62cd
        LD      b,0x3                               ;62d0
        LD      (0x5343),a                          ;62d2
        DEC     d                                   ;62d5
        LD      b,l                                 ;62d6
        INC     hl                                  ;62d7
        LD      c,a                                 ;62d8
        LD      a,c                                 ;62d9
        SBC     a,h                                 ;62da
        DEC     b                                   ;62db
        LD      d,0x7                               ;62dc
        LD      d,h                                 ;62de
        ADD     a,c                                 ;62df
        LD      a,c                                 ;62e0
        INC     h                                   ;62e1
        XOR     a                                   ;62e2
        EX      af,af'                              ;62e3
        SUB     (hl)                                ;62e4
        LD      b,0x8                               ;62e5
        LD      b,c                                 ;62e7
        HALT                                        ;62e8
        INC     de                                  ;62e9
        LD      d,0x15                              ;62ea
        INC     d                                   ;62ec
        JR      bD_l6308h                           ;62ed
        RLA                                         ;62ef
        LD      a,(de)                              ;62f0
        INC     de                                  ;62f1
        DEC     d                                   ;62f2
        INC     d                                   ;62f3
        LD      a,(de)                              ;62f4
        INC     de                                  ;62f5
        LD      d,0x14                              ;62f6
        ADD     hl,de                               ;62f8
        JR      bD_l6315h                           ;62f9
        LD      c,0xf                               ;62fb
        DJNZ    bD_l6311h                           ;62fd
        LD      c,0x10                              ;62ff
        LD      de,0xe12                            ;6301
        RRCA                                        ;6304
        LD      de,0x812                            ;6305
bD_l6308h:
        LD      a,(bc)                              ;6308
        ADD     hl,bc                               ;6309
        LD      a,(bc)                              ;630a
        INC     c                                   ;630b
        DEC     c                                   ;630c
        EX      af,af'                              ;630d
        INC     c                                   ;630e
        DEC     bc                                  ;630f
        DEC     c                                   ;6310
bD_l6311h:
        EX      af,af'                              ;6311
        DEC     bc                                  ;6312
        ADD     hl,bc                               ;6313
        LD      a,(bc)                              ;6314
bD_l6315h:
        INC     c                                   ;6315
        DEC     c                                   ;6316
        NOP                                         ;6317
        LD      bc,0x402                            ;6318
        LD      b,0x7                               ;631b
        NOP                                         ;631d
        LD      bc,0x302                            ;631e
        LD      b,0x7                               ;6321
        LD      a,b                                 ;6323
        ADC     a,e                                 ;6324
        XOR     b                                   ;6325
        CP      d                                   ;6326
        CP      a                                   ;6327
        INC     bc                                  ;6328
        LD      b,d                                 ;6329
        LD      d,0xa8                              ;632a
        LD      bc,0x3124                           ;632c
        LD      b,l                                 ;632f
        LD      d,0x78                              ;6330
        SBC     a,b                                 ;6332
        ADC     a,h                                 ;6333
        SUB     e                                   ;6334
        DJNZ    bD_l6348h                           ;6335
        DJNZ    $+16                                ;6337
        DJNZ    bD_l634bh                           ;6339
        LD      de,0x40e                            ;633b
        LD      d,0x48                              ;633e
        JR      nc,bD_l636fh                        ;6340
        JR      nc,bD_l6371h                        ;6342
        JR      nc,bD_l634ah                        ;6344
        JR      $+28                                ;6346
bD_l6348h:
        DEC     b                                   ;6348
        NOP                                         ;6349
bD_l634ah:
        ADD     a,d                                 ;634a
bD_l634bh:
        LD      e,0x1c                              ;634b
        LD      b,0x0                               ;634d
        ADD     a,d                                 ;634f
        JR      bD_l636ch                           ;6350
        LD      b,0x0                               ;6352
        EX      af,af'                              ;6354
        RRA                                         ;6355
        LD      (bc),a                              ;6356
        DEC     c                                   ;6357
        ADC     a,(hl)                              ;6358
        LD      c,0xf                               ;6359
        RRCA                                        ;635b
        LD      c,0x11                              ;635c
        DJNZ    bD_l638dh                           ;635e
        DEC     l                                   ;6360
        JR      nc,bD_l6377h                        ;6361
        CPL                                         ;6363
        DEC     l                                   ;6364
        JR      nc,bD_l6395h                        ;6365
        JR      bD_l6369h                           ;6367
bD_l6369h:
        EX      af,af'                              ;6369
        RRA                                         ;636a
        SUB     b                                   ;636b
bD_l636ch:
        LD      c,0x8                               ;636c
        DAA                                         ;636e
bD_l636fh:
        ADD     hl,bc                               ;636f
        LD      b,d                                 ;6370
bD_l6371h:
        LD      b,e                                 ;6371
        LD      b,h                                 ;6372
        DEC     c                                   ;6373
        JR      nc,bD_l6380h                        ;6374
        LD      c,l                                 ;6376
bD_l6377h:
        DEC     bc                                  ;6377
        LD      b,b                                 ;6378
        LD      b,0x41                              ;6379
        CPL                                         ;637b
        JR      bD_l637eh                           ;637c
bD_l637eh:
        EX      af,af'                              ;637e
        RRA                                         ;637f
bD_l6380h:
        SUB     b                                   ;6380
        DEC     c                                   ;6381
        LD      c,0x12                              ;6382
        LD      bc,0x302                            ;6384
        LD      c,0xc                               ;6387
        DEC     l                                   ;6389
        JR      nc,bD_l639fh                        ;638a
        DEC     b                                   ;638c
bD_l638dh:
        LD      b,0x7                               ;638d
        LD      l,0x2d                              ;638f
        JR      bD_l6393h                           ;6391
bD_l6393h:
        EX      af,af'                              ;6393
        RRA                                         ;6394
bD_l6395h:
        SUB     b                                   ;6395
        LD      c,0x31                              ;6396
        LD      (0x3433),a                          ;6398
        RRCA                                        ;639b
        LD      sp,0x2d32                           ;639c
bD_l639fh:
        DEC     (hl)                                ;639f
        LD      (hl),0x37                           ;63a0
        JR      c,bD_l63d2h                         ;63a2
        ADD     hl,sp                               ;63a4
        LD      a,(0x12)                            ;63a5
        ADD     a,c                                 ;63a8
        LD      c,e                                 ;63a9
        DEC     b                                   ;63aa
        NOP                                         ;63ab
        LD      (bc),a                              ;63ac
        RRA                                         ;63ad
        ADD     a,c                                 ;63ae
        LD      c,h                                 ;63af
        DEC     b                                   ;63b0
        RRA                                         ;63b1
        SUB     b                                   ;63b2
        LD      c,0x33                              ;63b3
        INC     (hl)                                ;63b5
        RRCA                                        ;63b6
        LD      de,0x1010                           ;63b7
        LD      de,0x3b2d                           ;63ba
        INC     a                                   ;63bd
        JR      nc,bD_l63d4h                        ;63be
        LD      b,a                                 ;63c0
        DEC     d                                   ;63c1
        INC     b                                   ;63c2
        DEC     b                                   ;63c3
        NOP                                         ;63c4
        ADD     a,e                                 ;63c5
        ADD     hl,de                               ;63c6
        RLA                                         ;63c7
        INC     b                                   ;63c8
        LD      b,0x0                               ;63c9
        ADD     a,d                                 ;63cb
        DEC     de                                  ;63cc
        DEC     e                                   ;63cd
        LD      b,0x0                               ;63ce
        ADD     a,d                                 ;63d0
        ADD     hl,de                               ;63d1
