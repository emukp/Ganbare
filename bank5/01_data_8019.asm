        DEFB    0xdd,0xdf,0x0                       ;8019
        RET     p                                   ;801c
        RST     OUTDO                               ;801d
        RST     KEYINT                              ;801e
        RET     p                                   ;801f
        ADD     hl,bc                               ;8020
        RST     KEYINT                              ;8021
        RST     KEYINT                              ;8022
        NOP                                         ;8023
        SBC     a,c                                 ;8024
        DEC     c                                   ;8025
        RRCA                                        ;8026
        RST     OUTDO                               ;8027
        DEFB    0xfd,0xf,0xdd                       ;8028
        RST     KEYINT                              ;802b
        DEFB    0xdd,0xff,0xfd                      ;802c
        DEFB    0xdd,0xfd,0x0                       ;802f
        RST     KEYINT                              ;8032
        RST     OUTDO                               ;8033
        RST     OUTDO                               ;8034
        RRCA                                        ;8035
        RET     nc                                  ;8036
        DEFB    0xfd,0xdd,0x90                      ;8037
        DEFB    0xfd,0xff,0xdf                      ;803a
        SUB     b                                   ;803d
        RET     p                                   ;803e
        DEFB    0xfd,0xff,0x99                      ;803f
        RRCA                                        ;8042
        RRCA                                        ;8043
        DEFB    0xfd,0x7b,0x7a                      ;8044
        XOR     e                                   ;8047
        CP      e                                   ;8048
        XOR     e                                   ;8049
        XOR     e                                   ;804a
        AND     a                                   ;804b
        LD      a,e                                 ;804c
        OR      a                                   ;804d
        CP      e                                   ;804e
        CP      d                                   ;804f
        XOR     e                                   ;8050
        XOR     e                                   ;8051
        AND     a                                   ;8052
        XOR     e                                   ;8053
        XOR     e                                   ;8054
        AND     a                                   ;8055
        CP      e                                   ;8056
        LD      a,e                                 ;8057
        LD      a,e                                 ;8058
        LD      (hl),a                              ;8059
        AND     a                                   ;805a
        AND     a                                   ;805b
        XOR     e                                   ;805c
        CP      e                                   ;805d
        CP      d                                   ;805e
        AND     a                                   ;805f
        LD      a,e                                 ;8060
        LD      a,e                                 ;8061
        INC     bc                                  ;8062
        XOR     e                                   ;8063
        LD      c,0x0                               ;8064
        SUB     d                                   ;8066
        CALL    pe,0xe                              ;8067
        CALL    pe,0xecb0                           ;806a
        INC     c                                   ;806d
        CP      e                                   ;806e
        LD      c,0xce                              ;806f
        DEC     bc                                  ;8071
        OR      b                                   ;8072
        CALL    z,0xcbce                            ;8073
        INC     c                                   ;8076
        CALL    z,0x5ec                             ;8077
        NOP                                         ;807a
        ADD     a,e                                 ;807b
        LD      c,0xee                              ;807c
        NOP                                         ;807e
        INC     bc                                  ;807f
        XOR     0x89                                ;8080
        RET     po                                  ;8082
        ADC     a,0xee                              ;8083
        CALL    z,0xceee                            ;8085
        CALL    z,0xceec                            ;8088
        INC     bc                                  ;808b
        CALL    pe,0xce02                           ;808c
        ADD     a,d                                 ;808f
        CALL    z,0x3ce                             ;8090
        CALL    z,0xc82                             ;8093
        CALL    z,CHRGTR                            ;8096
        ADD     a,c                                 ;8099
        RET     po                                  ;809a
        INC     bc                                  ;809b
        NOP                                         ;809c
        ADD     a,c                                 ;809d
        CALL    z,0x3                               ;809e
        ADD     a,(hl)                              ;80a1
        CALL    pe,BEEP                             ;80a2
        NOP                                         ;80a5
        CALL    pe,0x8cb                            ;80a6
        NOP                                         ;80a9
        RST     KEYINT                              ;80aa
        XOR     0x0                                 ;80ab
        NOP                                         ;80ad
        CP      0xcc                                ;80ae
        RET     po                                  ;80b0
        NOP                                         ;80b1
        CALL    m,0xccfc                            ;80b2
        INC     c                                   ;80b5
        RET     p                                   ;80b6
        RST     KEYINT                              ;80b7
        CALL    z,0xdfcc                            ;80b8
        RST     KEYINT                              ;80bb
        RET     nz                                  ;80bc
        NOP                                         ;80bd
        RST     OUTDO                               ;80be
        RST     OUTDO                               ;80bf
        NOP                                         ;80c0
        RST     KEYINT                              ;80c1
        RST     OUTDO                               ;80c2
        RST     KEYINT                              ;80c3
        RET     p                                   ;80c4
        OR      b                                   ;80c5
        CALL    z,0xc0cc                            ;80c6
        INC     c                                   ;80c9
        CP      h                                   ;80ca
        INC     c                                   ;80cb
        INC     c                                   ;80cc
        RST     8                                   ;80cd
        NOP                                         ;80ce
        RET     nz                                  ;80cf
        INC     c                                   ;80d0
        CP      l                                   ;80d1
        CP      h                                   ;80d2
        RRCA                                        ;80d3
        RST     0                                   ;80d4
        DEC     c                                   ;80d5
        NOP                                         ;80d6
        RRCA                                        ;80d7
        RET     p                                   ;80d8
        RST     KEYINT                              ;80d9
        CALL    m,SLTSL                             ;80da
        DEFB    0xdd,0xf0,0xfd                      ;80dd
        RST     OUTDO                               ;80e0
        RST     KEYINT                              ;80e1
        RET     nc                                  ;80e2
        DEFB    0xfd,0xdf,0xc7                      ;80e3
        CALL    z,0xc0c                             ;80e6
        RST     0                                   ;80e9
        LD      a,h                                 ;80ea
        INC     c                                   ;80eb
        NOP                                         ;80ec
        LD      (hl),b                              ;80ed
        RST     CALLF                               ;80ee
        RET     nz                                  ;80ef
        NOP                                         ;80f0
        RLCA                                        ;80f1
        RST     KEYINT                              ;80f2
        LD      a,h                                 ;80f3
        RET     p                                   ;80f4
        LD      a,a                                 ;80f5
        RST     KEYINT                              ;80f6
        LD      (hl),b                              ;80f7
        RET     p                                   ;80f8
        LD      a,a                                 ;80f9
        RST     OUTDO                               ;80fa
        RST     KEYINT                              ;80fb
        RET     p                                   ;80fc
        RRCA                                        ;80fd
        RST     OUTDO                               ;80fe
        RST     OUTDO                               ;80ff
        RET     nc                                  ;8100
        RST     KEYINT                              ;8101
        RST     OUTDO                               ;8102
        RST     KEYINT                              ;8103
        RST     OUTDO                               ;8104
        CALL    z,0xbbcc                            ;8105
        NOP                                         ;8108
        RET     nz                                  ;8109
        CP      h                                   ;810a
        DEC     bc                                  ;810b
        OR      b                                   ;810c
        RST     8                                   ;810d
        DEC     bc                                  ;810e
        RET     nz                                  ;810f
        DEC     bc                                  ;8110
        DEC     c                                   ;8111
        RET     nz                                  ;8112
        RST     8                                   ;8113
        INC     c                                   ;8114
        CP      l                                   ;8115
        NOP                                         ;8116
        CP      a                                   ;8117
        RET     p                                   ;8118
        RST     KEYINT                              ;8119
        RET     p                                   ;811a
        DEFB    0xfd,0xff,0xdf                      ;811b
        RET     p                                   ;811e
        DEFB    0xfd,0xff,0xff                      ;811f
        RET     nc                                  ;8122
        DEFB    0xfd,0xdf,0xa                       ;8123
        AND     b                                   ;8126
        NOP                                         ;8127
        NOP                                         ;8128
        LD      a,(bc)                              ;8129
        SUB     a                                   ;812a
        AND     b                                   ;812b
        CP      e                                   ;812c
        CP      e                                   ;812d
        LD      a,(bc)                              ;812e
        AND     b                                   ;812f
        CP      e                                   ;8130
        CP      e                                   ;8131
        LD      a,(bc)                              ;8132
        AND     b                                   ;8133
        CP      e                                   ;8134
        CP      e                                   ;8135
        LD      a,(bc)                              ;8136
        AND     b                                   ;8137
        CP      e                                   ;8138
        CP      e                                   ;8139
        LD      a,(bc)                              ;813a
        AND     b                                   ;813b
        CP      e                                   ;813c
        CP      e                                   ;813d
        DEC     bc                                  ;813e
        OR      b                                   ;813f
        LD      (hl),a                              ;8140
        LD      (hl),a                              ;8141
        INC     b                                   ;8142
        NOP                                         ;8143
        SBC     a,h                                 ;8144
        XOR     d                                   ;8145
        NOP                                         ;8146
        NOP                                         ;8147
        LD      a,(bc)                              ;8148
        XOR     d                                   ;8149
        DEC     bc                                  ;814a
        CP      e                                   ;814b
        CP      d                                   ;814c
        XOR     d                                   ;814d
        DEC     bc                                  ;814e
        CP      e                                   ;814f
        CP      d                                   ;8150
        XOR     d                                   ;8151
        DEC     bc                                  ;8152
        CP      e                                   ;8153
        CP      d                                   ;8154
        XOR     d                                   ;8155
        DEC     bc                                  ;8156
        CP      e                                   ;8157
        CP      d                                   ;8158
        XOR     d                                   ;8159
        DEC     bc                                  ;815a
        CP      e                                   ;815b
        CP      d                                   ;815c
        CP      e                                   ;815d
        RLCA                                        ;815e
        LD      (hl),a                              ;815f
        LD      a,e                                 ;8160
        INC     b                                   ;8161
        NOP                                         ;8162
        SBC     a,h                                 ;8163
        AND     b                                   ;8164
        NOP                                         ;8165
        NOP                                         ;8166
        XOR     d                                   ;8167
        AND     b                                   ;8168
        CP      e                                   ;8169
        CP      e                                   ;816a
        XOR     d                                   ;816b
        AND     b                                   ;816c
        CP      e                                   ;816d
        CP      e                                   ;816e
        XOR     d                                   ;816f
        AND     b                                   ;8170
        CP      e                                   ;8171
        CP      e                                   ;8172
        XOR     d                                   ;8173
        AND     b                                   ;8174
        CP      e                                   ;8175
        CP      e                                   ;8176
        XOR     d                                   ;8177
        AND     b                                   ;8178
        CP      e                                   ;8179
        CP      e                                   ;817a
        XOR     d                                   ;817b
        OR      b                                   ;817c
        LD      (hl),a                              ;817d
        LD      (hl),a                              ;817e
        CP      e                                   ;817f
        INC     b                                   ;8180
        NOP                                         ;8181
        AND     b                                   ;8182
        DEC     bc                                  ;8183
        OR      a                                   ;8184
        NOP                                         ;8185
        LD      (hl),b                              ;8186
        DEC     bc                                  ;8187
        OR      a                                   ;8188
        NOP                                         ;8189
        OR      b                                   ;818a
        LD      a,(bc)                              ;818b
        XOR     e                                   ;818c
        DEC     bc                                  ;818d
        XOR     e                                   ;818e
        LD      a,(bc)                              ;818f
        XOR     e                                   ;8190
        NOP                                         ;8191
        OR      b                                   ;8192
        LD      a,(bc)                              ;8193
        XOR     e                                   ;8194
        NOP                                         ;8195
        OR      b                                   ;8196
        LD      a,(bc)                              ;8197
        XOR     e                                   ;8198
        LD      a,(bc)                              ;8199
        XOR     d                                   ;819a
        LD      a,(bc)                              ;819b
        XOR     e                                   ;819c
        DEC     bc                                  ;819d
        CP      e                                   ;819e
        LD      a,(bc)                              ;819f
        XOR     e                                   ;81a0
        NOP                                         ;81a1
        NOP                                         ;81a2
        INC     b                                   ;81a3
        LD      (hl),b                              ;81a4
        INC     b                                   ;81a5
        OR      b                                   ;81a6
        INC     b                                   ;81a7
        XOR     e                                   ;81a8
        EX      af,af'                              ;81a9
        OR      b                                   ;81aa
        INC     b                                   ;81ab
        XOR     d                                   ;81ac
        INC     b                                   ;81ad
        CP      e                                   ;81ae
        INC     b                                   ;81af
        NOP                                         ;81b0
        LD      (bc),a                              ;81b1
        LD      (hl),b                              ;81b2
        ADC     a,c                                 ;81b3
        CP      e                                   ;81b4
        LD      (hl),b                              ;81b5
        OR      b                                   ;81b6
        OR      b                                   ;81b7
        CP      e                                   ;81b8
        LD      (hl),b                              ;81b9
        XOR     e                                   ;81ba
        XOR     e                                   ;81bb
        XOR     d                                   ;81bc
        INC     bc                                  ;81bd
        OR      b                                   ;81be
        ADD     a,c                                 ;81bf
        XOR     d                                   ;81c0
        INC     bc                                  ;81c1
        OR      b                                   ;81c2
        ADD     a,d                                 ;81c3
        XOR     d                                   ;81c4
        OR      b                                   ;81c5
        INC     bc                                  ;81c6
        XOR     d                                   ;81c7
        RET                                         ;81c8
        OR      b                                   ;81c9
        CP      e                                   ;81ca
        CP      e                                   ;81cb
        XOR     d                                   ;81cc
        OR      b                                   ;81cd
        NOP                                         ;81ce
        NOP                                         ;81cf
        XOR     d                                   ;81d0
        OR      b                                   ;81d1
        LD      a,(bc)                              ;81d2
        XOR     e                                   ;81d3
        LD      c,0xcc                              ;81d4
        LD      a,(bc)                              ;81d6
        XOR     e                                   ;81d7
        LD      c,0xfe                              ;81d8
        LD      a,(bc)                              ;81da
        XOR     e                                   ;81db
        LD      c,0xfe                              ;81dc
        LD      a,(bc)                              ;81de
        XOR     e                                   ;81df
        INC     c                                   ;81e0
        CALL    pe,0xab0a                           ;81e1
        INC     c                                   ;81e4
        RST     GETYPR                              ;81e5
        LD      a,(bc)                              ;81e6
        XOR     e                                   ;81e7
        LD      c,0xef                              ;81e8
        LD      a,(bc)                              ;81ea
        XOR     e                                   ;81eb
        INC     c                                   ;81ec
        XOR     0xa                                 ;81ed
        XOR     e                                   ;81ef
        NOP                                         ;81f0
        NOP                                         ;81f1
        CALL    pe,0xaaf0                           ;81f2
        OR      b                                   ;81f5
        XOR     0xcf                                ;81f6
        XOR     d                                   ;81f8
        OR      b                                   ;81f9
        XOR     0xcf                                ;81fa
        XOR     d                                   ;81fc
        OR      b                                   ;81fd
        XOR     0xce                                ;81fe
        XOR     d                                   ;8200
        OR      b                                   ;8201
        XOR     0xce                                ;8202
        XOR     d                                   ;8204
        OR      b                                   ;8205
        XOR     0xee                                ;8206
        XOR     d                                   ;8208
        OR      b                                   ;8209
        CALL    pe,0xaaee                           ;820a
        OR      b                                   ;820d
        NOP                                         ;820e
        NOP                                         ;820f
        XOR     d                                   ;8210
        OR      b                                   ;8211
        INC     b                                   ;8212
        NOP                                         ;8213
        INC     b                                   ;8214
        XOR     d                                   ;8215
        XOR     b                                   ;8216
        AND     b                                   ;8217
        NOP                                         ;8218
        NOP                                         ;8219
        LD      a,(bc)                              ;821a
        AND     b                                   ;821b
        CALL    z,0xacc                             ;821c
        AND     b                                   ;821f
        XOR     0xee                                ;8220
        LD      a,(bc)                              ;8222
        AND     b                                   ;8223
        XOR     0xee                                ;8224
        LD      a,(bc)                              ;8226
        AND     b                                   ;8227
        XOR     0xee                                ;8228
        LD      a,(bc)                              ;822a
        AND     b                                   ;822b
        XOR     0xee                                ;822c
        LD      a,(bc)                              ;822e
        AND     b                                   ;822f
        XOR     0xee                                ;8230
        LD      a,(bc)                              ;8232
        AND     b                                   ;8233
        XOR     0xee                                ;8234
        LD      a,(bc)                              ;8236
        AND     b                                   ;8237
        XOR     0xee                                ;8238
        LD      a,(bc)                              ;823a
        AND     b                                   ;823b
        NOP                                         ;823c
        NOP                                         ;823d
        LD      a,(bc)                              ;823e
        INC     b                                   ;823f
        XOR     d                                   ;8240
        ADD     a,c                                 ;8241
        XOR     e                                   ;8242
        INC     bc                                  ;8243
        LD      a,d                                 ;8244
        ADD     a,c                                 ;8245
        XOR     e                                   ;8246
        INC     bc                                  ;8247
        LD      a,(bc)                              ;8248
        ADD     a,c                                 ;8249
        XOR     e                                   ;824a
        INC     bc                                  ;824b
        LD      a,(bc)                              ;824c
        ADD     a,c                                 ;824d
        XOR     e                                   ;824e
        INC     bc                                  ;824f
        LD      a,(bc)                              ;8250
        INC     b                                   ;8251
        XOR     d                                   ;8252
        ADD     a,c                                 ;8253
        XOR     e                                   ;8254
        INC     bc                                  ;8255
        LD      a,(bc)                              ;8256
        ADD     a,c                                 ;8257
        XOR     e                                   ;8258
        INC     bc                                  ;8259
        LD      a,(bc)                              ;825a
        ADD     a,c                                 ;825b
        XOR     e                                   ;825c
        INC     bc                                  ;825d
        LD      a,(bc)                              ;825e
        ADD     a,c                                 ;825f
        XOR     e                                   ;8260
        INC     bc                                  ;8261
        LD      a,d                                 ;8262
        INC     b                                   ;8263
        XOR     d                                   ;8264
        EX      af,af'                              ;8265
        NOP                                         ;8266
        INC     b                                   ;8267
        XOR     d                                   ;8268
        INC     b                                   ;8269
        LD      a,d                                 ;826a
        EX      af,af'                              ;826b
        LD      a,(bc)                              ;826c
        INC     b                                   ;826d
        XOR     d                                   ;826e
        INC     b                                   ;826f
        LD      a,d                                 ;8270
        INC     b                                   ;8271
        LD      a,(bc)                              ;8272
        AND     b                                   ;8273
        NOP                                         ;8274
        CP      d                                   ;8275
        AND     a                                   ;8276
        NOP                                         ;8277
        NOP                                         ;8278
        CP      d                                   ;8279
        AND     a                                   ;827a
        NOP                                         ;827b
        NOP                                         ;827c
        CP      d                                   ;827d
        AND     a                                   ;827e
        NOP                                         ;827f
        NOP                                         ;8280
        CP      d                                   ;8281
        AND     a                                   ;8282
        NOP                                         ;8283
        NOP                                         ;8284
        CP      d                                   ;8285
        AND     a                                   ;8286
        NOP                                         ;8287
        NOP                                         ;8288
        CP      d                                   ;8289
        AND     a                                   ;828a
        NOP                                         ;828b
        NOP                                         ;828c
        CP      d                                   ;828d
        AND     a                                   ;828e
        NOP                                         ;828f
        NOP                                         ;8290
        CP      d                                   ;8291
        AND     a                                   ;8292
        NOP                                         ;8293
        INC     b                                   ;8294
        LD      a,(bc)                              ;8295
        INC     b                                   ;8296
        XOR     d                                   ;8297
        INC     b                                   ;8298
        LD      a,d                                 ;8299
        EX      af,af'                              ;829a
        LD      a,(bc)                              ;829b
        INC     b                                   ;829c
        XOR     d                                   ;829d
        INC     b                                   ;829e
        LD      a,d                                 ;829f
        INC     b                                   ;82a0
        LD      a,(bc)                              ;82a1
        RET     nz                                  ;82a2
        RST     KEYINT                              ;82a3
        LD      a,(bc)                              ;82a4
        XOR     e                                   ;82a5
        LD      (hl),b                              ;82a6
        RET     nc                                  ;82a7
        LD      a,(bc)                              ;82a8
        XOR     e                                   ;82a9
        LD      (hl),b                              ;82aa
        RRCA                                        ;82ab
        LD      a,(bc)                              ;82ac
        XOR     e                                   ;82ad
        LD      (hl),b                              ;82ae
        RST     KEYINT                              ;82af
        LD      a,(bc)                              ;82b0
        XOR     e                                   ;82b1
        LD      (hl),b                              ;82b2
        DEFB    0xfd,0xa,0xab                       ;82b3
        LD      (hl),b                              ;82b6
        RRCA                                        ;82b7
        LD      a,(bc)                              ;82b8
        XOR     e                                   ;82b9
        LD      (hl),b                              ;82ba
        DEC     c                                   ;82bb
        LD      a,(bc)                              ;82bc
        XOR     e                                   ;82bd
        LD      (hl),b                              ;82be
        RET     p                                   ;82bf
        JP      m,0x70ab                            ;82c0
        NOP                                         ;82c3
        CP      d                                   ;82c4
        AND     a                                   ;82c5
        NOP                                         ;82c6
        NOP                                         ;82c7
        CP      d                                   ;82c8
        AND     a                                   ;82c9
        RRCA                                        ;82ca
        NOP                                         ;82cb
        CP      d                                   ;82cc
        AND     a                                   ;82cd
        NOP                                         ;82ce
        NOP                                         ;82cf
        CP      d                                   ;82d0
        AND     a                                   ;82d1
        DEC     c                                   ;82d2
        NOP                                         ;82d3
        CP      d                                   ;82d4
b5_l82d5h:
        AND     a                                   ;82d5
        NOP                                         ;82d6
        NOP                                         ;82d7
        CP      d                                   ;82d8
        AND     a                                   ;82d9
        RRCA                                        ;82da
b5_l82dbh:
        NOP                                         ;82db
        CP      d                                   ;82dc
        AND     a                                   ;82dd
        RRCA                                        ;82de
        NOP                                         ;82df
        CP      d                                   ;82e0
        AND     a                                   ;82e1
        NOP                                         ;82e2
        INC     b                                   ;82e3
        LD      a,(bc)                              ;82e4
        INC     b                                   ;82e5
        XOR     d                                   ;82e6
        INC     b                                   ;82e7
        LD      a,d                                 ;82e8
        EX      af,af'                              ;82e9
        LD      a,(bc)                              ;82ea
        INC     b                                   ;82eb
        XOR     d                                   ;82ec
        INC     b                                   ;82ed
        LD      a,d                                 ;82ee
        INC     b                                   ;82ef
        NOP                                         ;82f0
        ADD     a,a                                 ;82f1
        LD      (0xd22d),hl                         ;82f2
        LD      (0x2f22),hl                         ;82f5
        RST     OUTDO                               ;82f8
        INC     bc                                  ;82f9
        LD      (0x2d83),hl                         ;82fa
        LD      (0x3f2),hl                          ;82fd
        LD      (0xff83),hl                         ;8300
        LD      (0x322),hl                          ;8303
        JP      p,0x228a                            ;8306
        JP      p,0x2fff                            ;8309
        LD      (0xff22),hl                         ;830c
        RST     KEYINT                              ;830f
        LD      (0x622),hl                          ;8310
        NOP                                         ;8313
        SBC     a,d                                 ;8314
        LD      a,(bc)                              ;8315
        LD      (hl),b                              ;8316
        XOR     0xee                                ;8317
        JP      pe,0xee70                           ;8319
        XOR     0xea                                ;831c
        LD      (hl),b                              ;831e
        XOR     0xee                                ;831f
        JP      pe,0xee70                           ;8321
        XOR     0xea                                ;8324
        LD      (hl),b                              ;8326
        XOR     0xee                                ;8327
        JP      pe,0xcc70                           ;8329
        CALL    z,0xca                              ;832c
        EX      af,af'                              ;832f
        XOR     d                                   ;8330
        INC     b                                   ;8331
        LD      (hl),a                              ;8332
        INC     b                                   ;8333
        NOP                                         ;8334
        INC     b                                   ;8335
        AND     b                                   ;8336
        INC     c                                   ;8337
        AND     a                                   ;8338
        NOP                                         ;8339
        JR      nz,b5_l82d5h                        ;833a
        INC     b                                   ;833c
        NOP                                         ;833d
        INC     b                                   ;833e
        LD      d,l                                 ;833f
        JR      b5_l82dbh                           ;8340
        INC     bc                                  ;8342
        CP      e                                   ;8343
        SUB     d                                   ;8344
        OR      b                                   ;8345
        CP      e                                   ;8346
        OR      b                                   ;8347
        NOP                                         ;8348
        DEC     b                                   ;8349
        OR      b                                   ;834a
        DEC     b                                   ;834b
        LD      d,l                                 ;834c
        LD      e,c                                 ;834d
        NOP                                         ;834e
        LD      d,l                                 ;834f
        SBC     a,c                                 ;8350
        SBC     a,c                                 ;8351
        DEC     b                                   ;8352
        LD      e,c                                 ;8353
        SBC     a,c                                 ;8354
        SBC     a,c                                 ;8355
        DEC     b                                   ;8356
        INC     bc                                  ;8357
        SBC     a,c                                 ;8358
        ADD     a,c                                 ;8359
        DEC     b                                   ;835a
        INC     bc                                  ;835b
        SBC     a,c                                 ;835c
        ADD     a,c                                 ;835d
        ADD     hl,bc                               ;835e
        INC     bc                                  ;835f
        SBC     a,c                                 ;8360
        INC     bc                                  ;8361
        CP      e                                   ;8362
        SBC     a,d                                 ;8363
        OR      b                                   ;8364
        CP      e                                   ;8365
        CP      e                                   ;8366
        OR      b                                   ;8367
        DEC     b                                   ;8368
        CP      e                                   ;8369
        OR      b                                   ;836a
        NOP                                         ;836b
        LD      e,c                                 ;836c
        CP      e                                   ;836d
        NOP                                         ;836e
        LD      d,l                                 ;836f
        SBC     a,c                                 ;8370
        CP      e                                   ;8371
        DEC     b                                   ;8372
        SBC     a,c                                 ;8373
        SBC     a,c                                 ;8374
        OR      b                                   ;8375
        LD      e,c                                 ;8376
        SBC     a,c                                 ;8377
        SBC     a,c                                 ;8378
        DEC     b                                   ;8379
        LD      e,c                                 ;837a
        SBC     a,c                                 ;837b
        SBC     a,c                                 ;837c
        DEC     b                                   ;837d
        INC     bc                                  ;837e
        SBC     a,c                                 ;837f
        INC     bc                                  ;8380
        CP      e                                   ;8381
        JP      z,0xbb05                            ;8382
        CP      e                                   ;8385
        OR      b                                   ;8386
        LD      d,l                                 ;8387
        CP      e                                   ;8388
        CP      e                                   ;8389
        DEC     b                                   ;838a
        LD      e,c                                 ;838b
        CP      e                                   ;838c
        CP      e                                   ;838d
        DEC     b                                   ;838e
        SBC     a,c                                 ;838f
        CP      e                                   ;8390
        OR      b                                   ;8391
        LD      d,l                                 ;8392
        SBC     a,c                                 ;8393
        CP      e                                   ;8394
        NOP                                         ;8395
        LD      e,c                                 ;8396
        SBC     a,c                                 ;8397
        OR      b                                   ;8398
        DEC     b                                   ;8399
        LD      e,c                                 ;839a
        SBC     a,c                                 ;839b
        OR      b                                   ;839c
        DEC     b                                   ;839d
        SBC     a,c                                 ;839e
        SBC     a,c                                 ;839f
        NOP                                         ;83a0
        LD      d,l                                 ;83a1
        SBC     a,c                                 ;83a2
        SBC     a,c                                 ;83a3
        NOP                                         ;83a4
        LD      d,l                                 ;83a5
        SBC     a,c                                 ;83a6
        SBC     a,c                                 ;83a7
        NOP                                         ;83a8
        LD      d,l                                 ;83a9
        SBC     a,c                                 ;83aa
        SBC     a,c                                 ;83ab
        NOP                                         ;83ac
        LD      d,l                                 ;83ad
        SBC     a,c                                 ;83ae
        SBC     a,c                                 ;83af
        NOP                                         ;83b0
        DEC     b                                   ;83b1
        SBC     a,c                                 ;83b2
        SBC     a,c                                 ;83b3
        OR      b                                   ;83b4
        DEC     b                                   ;83b5
        LD      e,c                                 ;83b6
        SBC     a,c                                 ;83b7
        OR      b                                   ;83b8
        NOP                                         ;83b9
        LD      e,c                                 ;83ba
        SBC     a,c                                 ;83bb
        OR      b                                   ;83bc
        NOP                                         ;83bd
        LD      d,l                                 ;83be
        SBC     a,c                                 ;83bf
        OR      b                                   ;83c0
        DEC     b                                   ;83c1
        SBC     a,c                                 ;83c2
        SBC     a,c                                 ;83c3
        NOP                                         ;83c4
        LD      e,c                                 ;83c5
        SBC     a,c                                 ;83c6
        SBC     a,c                                 ;83c7
        NOP                                         ;83c8
        LD      e,c                                 ;83c9
        SBC     a,c                                 ;83ca
        SBC     a,c                                 ;83cb
        DEC     b                                   ;83cc
        INC     bc                                  ;83cd
        SBC     a,c                                 ;83ce
        ADD     a,c                                 ;83cf
        DEC     b                                   ;83d0
        INC     bc                                  ;83d1
        SBC     a,c                                 ;83d2
        ADD     a,c                                 ;83d3
        DEC     b                                   ;83d4
        INC     bc                                  ;83d5
        SBC     a,c                                 ;83d6
        ADD     a,c                                 ;83d7
        DEC     b                                   ;83d8
        INC     bc                                  ;83d9
        SBC     a,c                                 ;83da
        ADD     a,c                                 ;83db
        DEC     b                                   ;83dc
        INC     bc                                  ;83dd
        SBC     a,c                                 ;83de
        ADD     a,c                                 ;83df
        DEC     b                                   ;83e0
        INC     bc                                  ;83e1
        SBC     a,c                                 ;83e2
        ADD     a,c                                 ;83e3
        DEC     b                                   ;83e4
        INC     bc                                  ;83e5
        SBC     a,c                                 ;83e6
        ADD     a,c                                 ;83e7
        DEC     b                                   ;83e8
        INC     bc                                  ;83e9
        SBC     a,c                                 ;83ea
        ADD     a,c                                 ;83eb
        DEC     b                                   ;83ec
        INC     bc                                  ;83ed
        SBC     a,c                                 ;83ee
        ADD     a,c                                 ;83ef
        DEC     b                                   ;83f0
        INC     bc                                  ;83f1
        SBC     a,c                                 ;83f2
        ADD     a,c                                 ;83f3
        DEC     b                                   ;83f4
        INC     bc                                  ;83f5
        SBC     a,c                                 ;83f6
        ADD     a,c                                 ;83f7
        DEC     b                                   ;83f8
        INC     bc                                  ;83f9
        SBC     a,c                                 ;83fa
        ADD     a,c                                 ;83fb
        DEC     b                                   ;83fc
        INC     bc                                  ;83fd
        SBC     a,c                                 ;83fe
        ADD     a,c                                 ;83ff
        DEC     b                                   ;8400
        INC     bc                                  ;8401
        SBC     a,c                                 ;8402
        ADD     a,c                                 ;8403
        DEC     b                                   ;8404
        INC     bc                                  ;8405
        SBC     a,c                                 ;8406
        ADD     a,c                                 ;8407
        DEC     b                                   ;8408
        INC     bc                                  ;8409
        SBC     a,c                                 ;840a
        ADD     a,c                                 ;840b
        DEC     b                                   ;840c
        INC     bc                                  ;840d
        SBC     a,c                                 ;840e
        ADD     a,c                                 ;840f
        DEC     b                                   ;8410
        INC     bc                                  ;8411
        SBC     a,c                                 ;8412
        ADD     a,c                                 ;8413
        DEC     b                                   ;8414
        INC     bc                                  ;8415
        SBC     a,c                                 ;8416
        ADD     a,(hl)                              ;8417
        NOP                                         ;8418
        LD      e,c                                 ;8419
        SBC     a,c                                 ;841a
        SBC     a,c                                 ;841b
        NOP                                         ;841c
        LD      e,c                                 ;841d
        LD      a,(bc)                              ;841e
        SBC     a,c                                 ;841f
        ADD     a,c                                 ;8420
        LD      e,c                                 ;8421
        INC     bc                                  ;8422
        SBC     a,c                                 ;8423
        LD      (bc),a                              ;8424
        LD      d,l                                 ;8425
        LD      (bc),a                              ;8426
        SBC     a,c                                 ;8427
        ADC     a,b                                 ;8428
        NOP                                         ;8429
        DEC     b                                   ;842a
        LD      d,l                                 ;842b
        SBC     a,c                                 ;842c
        NOP                                         ;842d
        NOP                                         ;842e
        DEC     b                                   ;842f
        LD      e,c                                 ;8430
        INC     bc                                  ;8431
        NOP                                         ;8432
        ADD     a,c                                 ;8433
        LD      d,l                                 ;8434
        INC     bc                                  ;8435
        NOP                                         ;8436
        ADD     a,c                                 ;8437
        DEC     b                                   ;8438
        INC     bc                                  ;8439
        NOP                                         ;843a
        ADD     a,c                                 ;843b
        DEC     b                                   ;843c
        INC     bc                                  ;843d
        NOP                                         ;843e
        ADC     a,(hl)                              ;843f
        LD      e,c                                 ;8440
        NOP                                         ;8441
        NOP                                         ;8442
        LD      d,l                                 ;8443
        SBC     a,c                                 ;8444
        NOP                                         ;8445
        LD      d,l                                 ;8446
        SBC     a,c                                 ;8447
        SBC     a,c                                 ;8448
        DEC     b                                   ;8449
        LD      e,c                                 ;844a
        SBC     a,c                                 ;844b
        SBC     a,c                                 ;844c
        DEC     b                                   ;844d
        INC     bc                                  ;844e
        SBC     a,c                                 ;844f
        ADD     a,c                                 ;8450
        DEC     b                                   ;8451
        INC     bc                                  ;8452
        SBC     a,c                                 ;8453
        ADD     a,c                                 ;8454
        ADD     hl,bc                               ;8455
        INC     bc                                  ;8456
        SBC     a,c                                 ;8457
        INC     bc                                  ;8458
        CP      e                                   ;8459
        SBC     a,d                                 ;845a
        NOP                                         ;845b
        CP      e                                   ;845c
        CP      e                                   ;845d
        OR      b                                   ;845e
        DEC     b                                   ;845f
        CP      e                                   ;8460
        OR      b                                   ;8461
        DEC     b                                   ;8462
        LD      e,c                                 ;8463
        CP      e                                   ;8464
        DEC     b                                   ;8465
        LD      d,l                                 ;8466
        SBC     a,c                                 ;8467
        OR      b                                   ;8468
        LD      d,l                                 ;8469
        SBC     a,c                                 ;846a
        SBC     a,c                                 ;846b
        OR      b                                   ;846c
        LD      e,c                                 ;846d
        SBC     a,c                                 ;846e
        SBC     a,c                                 ;846f
        DEC     b                                   ;8470
        LD      e,c                                 ;8471
        SBC     a,c                                 ;8472
        SBC     a,c                                 ;8473
        DEC     b                                   ;8474
        INC     bc                                  ;8475
        SBC     a,c                                 ;8476
        ADD     a,c                                 ;8477
        DEC     b                                   ;8478
        INC     bc                                  ;8479
        SBC     a,c                                 ;847a
        ADD     a,c                                 ;847b
        DEC     b                                   ;847c
        INC     bc                                  ;847d
        SBC     a,c                                 ;847e
        SBC     a,b                                 ;847f
        NOP                                         ;8480
        LD      e,c                                 ;8481
        SBC     a,c                                 ;8482
        SBC     a,c                                 ;8483
        NOP                                         ;8484
        LD      e,c                                 ;8485
        SBC     a,c                                 ;8486
        SBC     a,c                                 ;8487
        NOP                                         ;8488
        LD      e,c                                 ;8489
        SBC     a,c                                 ;848a
        SBC     a,c                                 ;848b
        NOP                                         ;848c
        DEC     b                                   ;848d
        SBC     a,c                                 ;848e
        SBC     a,c                                 ;848f
        NOP                                         ;8490
        DEC     b                                   ;8491
        LD      e,c                                 ;8492
        SBC     a,c                                 ;8493
        NOP                                         ;8494
        NOP                                         ;8495
        LD      d,l                                 ;8496
        SBC     a,c                                 ;8497
        DEC     l                                   ;8498
        CP      e                                   ;8499
        ADC     a,d                                 ;849a
        XOR     0xeb                                ;849b
        CP      e                                   ;849d
        CP      (hl)                                ;849e
        CP      d                                   ;849f
        XOR     (hl)                                ;84a0
        EX      de,hl                               ;84a1
        CP      e                                   ;84a2
        CP      e                                   ;84a3
        CP      d                                   ;84a4
        INC     b                                   ;84a5
        CP      e                                   ;84a6
        ADD     a,c                                 ;84a7
        CP      (hl)                                ;84a8
        ADD     hl,bc                               ;84a9
        CP      e                                   ;84aa
        ADC     a,e                                 ;84ab
        XOR     0xbb                                ;84ac
        CP      e                                   ;84ae
        CP      (hl)                                ;84af
        CP      d                                   ;84b0
        EX      de,hl                               ;84b1
        EX      de,hl                               ;84b2
        CP      e                                   ;84b3
        CP      e                                   ;84b4
        XOR     e                                   ;84b5
        XOR     e                                   ;84b6
        EX      af,af'                              ;84b7
        CP      e                                   ;84b8
        ADD     a,e                                 ;84b9
        CP      (hl)                                ;84ba
        CP      e                                   ;84bb
        EX      de,hl                               ;84bc
        ADD     hl,de                               ;84bd
        CP      e                                   ;84be
        ADD     a,c                                 ;84bf
        EX      de,hl                               ;84c0
        INC     b                                   ;84c1
        CP      e                                   ;84c2
        ADD     a,a                                 ;84c3
        CP      (hl)                                ;84c4
        EX      de,hl                               ;84c5
        CP      e                                   ;84c6
        CP      e                                   ;84c7
        JP      pe,0xebbb                           ;84c8
        DEC     c                                   ;84cb
        CP      e                                   ;84cc
        ADD     a,a                                 ;84cd
        XOR     0xeb                                ;84ce
        CP      e                                   ;84d0
        CP      (hl)                                ;84d1
        CP      e                                   ;84d2
        CP      (hl)                                ;84d3
        EX      de,hl                               ;84d4
        RLCA                                        ;84d5
        CP      e                                   ;84d6
        ADD     a,c                                 ;84d7
        CP      (hl)                                ;84d8
        ADD     hl,bc                               ;84d9
        CP      e                                   ;84da
        ADD     a,a                                 ;84db
        XOR     0xbb                                ;84dc
        CP      e                                   ;84de
        CP      (hl)                                ;84df
        CP      e                                   ;84e0
        EX      de,hl                               ;84e1
        EX      de,hl                               ;84e2
        INC     c                                   ;84e3
        CP      e                                   ;84e4
        ADD     a,e                                 ;84e5
        CP      (hl)                                ;84e6
        CP      e                                   ;84e7
        EX      de,hl                               ;84e8
        DEC     b                                   ;84e9
        CP      e                                   ;84ea
        ADD     a,h                                 ;84eb
        EX      de,hl                               ;84ec
        CP      (hl)                                ;84ed
        CP      e                                   ;84ee
        EX      de,hl                               ;84ef
        INC     e                                   ;84f0
        CP      e                                   ;84f1
        ADC     a,h                                 ;84f2
        EX      de,hl                               ;84f3
        CP      e                                   ;84f4
        EX      de,hl                               ;84f5
        CP      (hl)                                ;84f6
        CP      e                                   ;84f7
        EX      de,hl                               ;84f8
        CP      e                                   ;84f9
        CP      e                                   ;84fa
        EX      de,hl                               ;84fb
        CP      e                                   ;84fc
        CP      (hl)                                ;84fd
        EX      de,hl                               ;84fe
        INC     d                                   ;84ff
        CP      e                                   ;8500
        ADD     a,d                                 ;8501
        XOR     d                                   ;8502
        AND     b                                   ;8503
        INC     bc                                  ;8504
        XOR     d                                   ;8505
        CP      c                                   ;8506
        AND     b                                   ;8507
        NOP                                         ;8508
        LD      a,(bc)                              ;8509
        AND     b                                   ;850a
        NOP                                         ;850b
        CALL    z,0xa00a                            ;850c
        CALL    z,0xaee                             ;850f
        AND     b                                   ;8512
        XOR     0xee                                ;8513
        LD      a,(bc)                              ;8515
        RET     po                                  ;8516
        XOR     0xee                                ;8517
        LD      c,0xe0                              ;8519
        XOR     0xee                                ;851b
        LD      c,0x0                               ;851d
        XOR     0xee                                ;851f
        NOP                                         ;8521
        OR      b                                   ;8522
        XOR     0xee                                ;8523
        DEC     bc                                  ;8525
        OR      b                                   ;8526
        LD      c,0xee                              ;8527
        DEC     bc                                  ;8529
        NOP                                         ;852a
        LD      d,b                                 ;852b
        XOR     0xb                                 ;852c
        DEC     b                                   ;852e
        LD      d,l                                 ;852f
        NOP                                         ;8530
        NOP                                         ;8531
        RLCA                                        ;8532
        LD      (hl),l                              ;8533
        LD      d,b                                 ;8534
        LD      d,b                                 ;8535
        OR      b                                   ;8536
        LD      (hl),a                              ;8537
        LD      d,l                                 ;8538
        DEC     bc                                  ;8539
        CP      e                                   ;853a
        NOP                                         ;853b
        NOP                                         ;853c
        CP      (hl)                                ;853d
        EX      de,hl                               ;853e
        EX      de,hl                               ;853f
        INC     bc                                  ;8540
        CP      e                                   ;8541
        ADD     a,c                                 ;8542
        OR      b                                   ;8543
        INC     bc                                  ;8544
        CP      e                                   ;8545
        CP      e                                   ;8546
        OR      b                                   ;8547
        NOP                                         ;8548
        DEC     bc                                  ;8549
        OR      b                                   ;854a
        NOP                                         ;854b
        CALL    z,0xb00b                            ;854c
        CALL    z,0xbee                             ;854f
        OR      b                                   ;8552
        XOR     0xee                                ;8553
        DEC     bc                                  ;8555
        OR      b                                   ;8556
        XOR     0xee                                ;8557
        DEC     bc                                  ;8559
        OR      b                                   ;855a
        XOR     0xee                                ;855b
        DEC     bc                                  ;855d
        OR      b                                   ;855e
        XOR     0xee                                ;855f
        DEC     bc                                  ;8561
        SBC     a,c                                 ;8562
        SUB     b                                   ;8563
        NOP                                         ;8564
        SBC     a,c                                 ;8565
        SUB     b                                   ;8566
        DEC     b                                   ;8567
        LD      d,b                                 ;8568
        ADD     hl,bc                               ;8569
        RLCA                                        ;856a
        LD      d,l                                 ;856b
        LD      d,l                                 ;856c
        LD      (hl),b                              ;856d
        RLCA                                        ;856e
        LD      (hl),l                              ;856f
        LD      d,l                                 ;8570
        LD      (hl),b                              ;8571
        NOP                                         ;8572
        LD      (hl),l                              ;8573
        LD      d,l                                 ;8574
        LD      (hl),b                              ;8575
        NOP                                         ;8576
        RLCA                                        ;8577
        LD      d,l                                 ;8578
        LD      (hl),b                              ;8579
        NOP                                         ;857a
        RLCA                                        ;857b
        LD      d,l                                 ;857c
        LD      (hl),b                              ;857d
        LD      (hl),b                              ;857e
        RLCA                                        ;857f
        LD      (hl),a                              ;8580
        LD      (hl),b                              ;8581
        INC     b                                   ;8582
        SBC     a,c                                 ;8583
        CALL    p,GICINI                            ;8584
        LD      d,a                                 ;8587
        SBC     a,c                                 ;8588
        DEC     b                                   ;8589
        LD      d,l                                 ;858a
        LD      d,l                                 ;858b
        LD      (hl),b                              ;858c
        DEC     b                                   ;858d
        LD      d,l                                 ;858e
        LD      d,a                                 ;858f
        LD      (hl),b                              ;8590
        RLCA                                        ;8591
        LD      d,l                                 ;8592
        LD      d,a                                 ;8593
        LD      (hl),b                              ;8594
        NOP                                         ;8595
        LD      (hl),a                              ;8596
        LD      (hl),a                              ;8597
        NOP                                         ;8598
        NOP                                         ;8599
        LD      (hl),a                              ;859a
        LD      (hl),a                              ;859b
        DEC     b                                   ;859c
        NOP                                         ;859d
        LD      (hl),a                              ;859e
        LD      (hl),b                              ;859f
        LD      d,l                                 ;85a0
        LD      (hl),b                              ;85a1
        LD      d,b                                 ;85a2
        LD      (hl),a                              ;85a3
        LD      (hl),b                              ;85a4
        LD      (hl),b                              ;85a5
        LD      d,b                                 ;85a6
        RLCA                                        ;85a7
        LD      (hl),b                              ;85a8
        LD      (hl),b                              ;85a9
        LD      d,l                                 ;85aa
        RLCA                                        ;85ab
        NOP                                         ;85ac
        LD      (hl),b                              ;85ad
        LD      d,l                                 ;85ae
        NOP                                         ;85af
        NOP                                         ;85b0
        LD      (hl),b                              ;85b1
        LD      (hl),l                              ;85b2
        NOP                                         ;85b3
        DEC     b                                   ;85b4
        LD      (hl),b                              ;85b5
        LD      (hl),l                              ;85b6
        LD      (hl),b                              ;85b7
        RLCA                                        ;85b8
        LD      (hl),b                              ;85b9
        LD      (hl),a                              ;85ba
        LD      (hl),b                              ;85bb
        RLCA                                        ;85bc
        LD      (hl),b                              ;85bd
        LD      (hl),a                              ;85be
        XOR     d                                   ;85bf
        OR      a                                   ;85c0
        NOP                                         ;85c1
        RLCA                                        ;85c2
        LD      (hl),b                              ;85c3
        LD      d,l                                 ;85c4
        DEC     b                                   ;85c5
        RLCA                                        ;85c6
        NOP                                         ;85c7
        LD      d,l                                 ;85c8
        LD      (hl),l                              ;85c9
        NOP                                         ;85ca
        RLCA                                        ;85cb
        LD      d,l                                 ;85cc
        LD      d,l                                 ;85cd
        LD      (hl),b                              ;85ce
        RLCA                                        ;85cf
        LD      d,l                                 ;85d0
        LD      d,l                                 ;85d1
        LD      (hl),b                              ;85d2
        RLCA                                        ;85d3
        LD      d,l                                 ;85d4
        LD      d,a                                 ;85d5
        LD      (hl),b                              ;85d6
        NOP                                         ;85d7
        LD      (hl),l                              ;85d8
        LD      d,a                                 ;85d9
        LD      (hl),b                              ;85da
        NOP                                         ;85db
        LD      (hl),a                              ;85dc
        LD      (hl),a                              ;85dd
        XOR     d                                   ;85de
        OR      a                                   ;85df
        LD      (hl),a                              ;85e0
        CP      e                                   ;85e1
        CP      e                                   ;85e2
        NOP                                         ;85e3
        NOP                                         ;85e4
        CP      e                                   ;85e5
        CP      e                                   ;85e6
        NOP                                         ;85e7
        NOP                                         ;85e8
        CP      e                                   ;85e9
        CP      e                                   ;85ea
        OR      b                                   ;85eb
        NOP                                         ;85ec
        CP      e                                   ;85ed
        CP      e                                   ;85ee
        OR      b                                   ;85ef
        NOP                                         ;85f0
        CP      e                                   ;85f1
        CP      e                                   ;85f2
        OR      b                                   ;85f3
        NOP                                         ;85f4
        CP      e                                   ;85f5
        CP      e                                   ;85f6
        OR      b                                   ;85f7
        NOP                                         ;85f8
        INC     bc                                  ;85f9
        CP      e                                   ;85fa
        ADD     a,c                                 ;85fb
        NOP                                         ;85fc
        INC     bc                                  ;85fd
        CP      e                                   ;85fe
        LD      (bc),a                              ;85ff
        OR      b                                   ;8600
        ADC     a,h                                 ;8601
        NOP                                         ;8602
        DEC     b                                   ;8603
        SBC     a,c                                 ;8604
        CP      e                                   ;8605
        NOP                                         ;8606
        NOP                                         ;8607
        LD      e,c                                 ;8608
        CP      e                                   ;8609
        NOP                                         ;860a
        NOP                                         ;860b
        DEC     b                                   ;860c
        CP      e                                   ;860d
        INC     bc                                  ;860e
        NOP                                         ;860f
        POP     de                                  ;8610
        CP      e                                   ;8611
        OR      b                                   ;8612
        NOP                                         ;8613
        NOP                                         ;8614
        CP      e                                   ;8615
        OR      b                                   ;8616
        NOP                                         ;8617
        NOP                                         ;8618
        CP      e                                   ;8619
        OR      b                                   ;861a
        NOP                                         ;861b
        NOP                                         ;861c
        CP      e                                   ;861d
        OR      b                                   ;861e
        NOP                                         ;861f
        NOP                                         ;8620
        DEC     b                                   ;8621
        NOP                                         ;8622
        LD      d,l                                 ;8623
        LD      e,c                                 ;8624
        RLCA                                        ;8625
        LD      d,b                                 ;8626
        NOP                                         ;8627
        DEC     b                                   ;8628
        RLCA                                        ;8629
        LD      d,l                                 ;862a
        LD      d,l                                 ;862b
        NOP                                         ;862c
        RLCA                                        ;862d
        LD      (hl),l                              ;862e
        LD      d,l                                 ;862f
        LD      d,b                                 ;8630
        RLCA                                        ;8631
        LD      (hl),l                              ;8632
        LD      d,l                                 ;8633
        LD      (hl),b                              ;8634
        RLCA                                        ;8635
        LD      (hl),a                              ;8636
        LD      (hl),a                              ;8637
        NOP                                         ;8638
        OR      a                                   ;8639
        LD      (hl),a                              ;863a
        LD      (hl),a                              ;863b
        NOP                                         ;863c
        CP      e                                   ;863d
        LD      (hl),a                              ;863e
        LD      (hl),a                              ;863f
        NOP                                         ;8640
        CP      e                                   ;8641
        LD      (hl),a                              ;8642
        LD      (hl),b                              ;8643
        NOP                                         ;8644
        CP      e                                   ;8645
        LD      (hl),a                              ;8646
        LD      (hl),b                              ;8647
        LD      d,b                                 ;8648
        CP      e                                   ;8649
        OR      a                                   ;864a
        NOP                                         ;864b
        LD      d,a                                 ;864c
        CP      e                                   ;864d
        CP      e                                   ;864e
        RLCA                                        ;864f
        LD      d,l                                 ;8650
        CP      e                                   ;8651
        CP      e                                   ;8652
        RLCA                                        ;8653
        LD      d,l                                 ;8654
        CP      e                                   ;8655
        CP      e                                   ;8656
        RLCA                                        ;8657
        LD      (hl),l                              ;8658
        CP      e                                   ;8659
        CP      e                                   ;865a
        OR      a                                   ;865b
        LD      (hl),l                              ;865c
        CP      e                                   ;865d
        CP      e                                   ;865e
        XOR     d                                   ;865f
        LD      (hl),a                              ;8660
        LD      e,c                                 ;8661
        INC     bc                                  ;8662
        SBC     a,c                                 ;8663
        CALL    c,0x5505                            ;8664
        SBC     a,c                                 ;8667
        SBC     a,c                                 ;8668
        NOP                                         ;8669
        NOP                                         ;866a
        LD      e,c                                 ;866b
        SBC     a,c                                 ;866c
        NOP                                         ;866d
        LD      d,b                                 ;866e
        DEC     b                                   ;866f
        SBC     a,c                                 ;8670
        RLCA                                        ;8671
        LD      d,l                                 ;8672
        DEC     b                                   ;8673
        SBC     a,c                                 ;8674
        RLCA                                        ;8675
        LD      d,l                                 ;8676
        LD      (hl),b                              ;8677
        LD      e,c                                 ;8678
        RLCA                                        ;8679
        LD      d,l                                 ;867a
        LD      (hl),b                              ;867b
        LD      e,c                                 ;867c
        RLCA                                        ;867d
        LD      (hl),a                              ;867e
        LD      (hl),b                              ;867f
        DEC     b                                   ;8680
        RLCA                                        ;8681
        LD      (hl),a                              ;8682
        DEC     b                                   ;8683
        RLCA                                        ;8684
        RLCA                                        ;8685
        LD      (hl),b                              ;8686
        DEC     b                                   ;8687
        RLCA                                        ;8688
        RLCA                                        ;8689
        LD      (hl),b                              ;868a
        LD      d,l                                 ;868b
        RLCA                                        ;868c
        RLCA                                        ;868d
        NOP                                         ;868e
        LD      d,l                                 ;868f
        RLCA                                        ;8690
        OR      a                                   ;8691
        NOP                                         ;8692
        LD      d,a                                 ;8693
        RLCA                                        ;8694
        OR      a                                   ;8695
        RLCA                                        ;8696
        LD      d,a                                 ;8697
        RLCA                                        ;8698
        CP      e                                   ;8699
        RLCA                                        ;869a
        LD      (hl),a                              ;869b
        RLCA                                        ;869c
        CP      e                                   ;869d
        RLCA                                        ;869e
        LD      (hl),a                              ;869f
        RLCA                                        ;86a0
        CP      e                                   ;86a1
        RLCA                                        ;86a2
        LD      (hl),b                              ;86a3
        NOP                                         ;86a4
        CP      e                                   ;86a5
        RLCA                                        ;86a6
        LD      (hl),b                              ;86a7
        LD      d,b                                 ;86a8
        CP      e                                   ;86a9
        OR      a                                   ;86aa
        LD      (hl),b                              ;86ab
        LD      d,a                                 ;86ac
        CP      e                                   ;86ad
        CP      e                                   ;86ae
        RLCA                                        ;86af
        LD      d,l                                 ;86b0
        CP      e                                   ;86b1
        CP      e                                   ;86b2
        RLCA                                        ;86b3
        LD      d,l                                 ;86b4
        CP      e                                   ;86b5
        CP      e                                   ;86b6
        RLCA                                        ;86b7
        LD      (hl),l                              ;86b8
        CP      e                                   ;86b9
        CP      e                                   ;86ba
        OR      a                                   ;86bb
        LD      (hl),l                              ;86bc
        CP      e                                   ;86bd
        CP      e                                   ;86be
        XOR     d                                   ;86bf
        LD      (hl),a                              ;86c0
        JR      nz,b5_l86c3h                        ;86c1
