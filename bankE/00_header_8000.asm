; Ganbare Goemon (1987) (Konami) (J) - bank 0xE
; disassembled with z80dasm 1.2.0 (linear sweep), origin 0x8000 (0x8000-0x9FFF)
; uppercase mnemonics, 0x hex format, BIOS/system-variable/Ghidra symbol substitution
; symbols: constants/bios.asm, SystemVariables.asm, Variables.asm; labels prefixed bE_
; per-line comments: address / raw bytes / ASCII (z80dasm -a -t)
; z80dasm 1.2.0
; command line: /usr/local/bin/z80dasm -a -t -l -g 0x8000 -o work/banks/bankE.asm work/banks/bankE.bin
        RRCA                                        ;8000
        LD      bc,0x901                            ;8001
        RRCA                                        ;8004
        INC     bc                                  ;8005
        LD      bc,0x1381                           ;8006
        INC     bc                                  ;8009
        LD      bc,0x985                            ;800a
        LD      b,0x7                               ;800d
bE_l800fh:
        LD      b,0x7                               ;800f
        INC     c                                   ;8011
        LD      bc,0x1f83                           ;8012
        JR      nz,$+35                             ;8015
        DEC     b                                   ;8017
        JR      nc,bE_l801eh                        ;8018
        INC     h                                   ;801a
        INC     b                                   ;801b
        DEC     h                                   ;801c
        ADD     a,h                                 ;801d
bE_l801eh:
        DEC     sp                                  ;801e
        INC     a                                   ;801f
        DEC     a                                   ;8020
        INC     d                                   ;8021
        INC     bc                                  ;8022
        LD      e,0x8e                              ;8023
        EX      af,af'                              ;8025
        RRCA                                        ;8026
        RRCA                                        ;8027
        LD      (de),a                              ;8028
        LD      bc,0xf0f                            ;8029
        EX      af,af'                              ;802c
        LD      bc,0x3c15                           ;802d
        DEC     a                                   ;8030
        LD      a,0x9                               ;8031
        INC     bc                                  ;8033
        LD      e,0x86                              ;8034
        LD      bc,0xf13                            ;8036
        RRCA                                        ;8039
        LD      bc,0x409                            ;803a
        RRCA                                        ;803d
        ADD     a,(hl)                              ;803e
        JR      $+27                                ;803f
        RRCA                                        ;8041
        RRCA                                        ;8042
        LD      a,(de)                              ;8043
        DEC     de                                  ;8044
        EX      af,af'                              ;8045
        RRCA                                        ;8046
        ADD     a,(hl)                              ;8047
        JR      $+27                                ;8048
        RRCA                                        ;804a
        RRCA                                        ;804b
        LD      a,(de)                              ;804c
        DEC     de                                  ;804d
        LD      a,(bc)                              ;804e
        RRCA                                        ;804f
        DEC     b                                   ;8050
        JR      nc,$-124                            ;8051
        LD      (0x423),hl                          ;8053
        JR      nc,$-121                            ;8056
        LD      h,(hl)                              ;8058
        JR      nc,$+50                             ;8059
        LD      h,a                                 ;805b
        LD      l,b                                 ;805c
        INC     b                                   ;805d
        JR      nc,$-125                            ;805e
        NOP                                         ;8060
        INC     bc                                  ;8061
        JR      nc,$-125                            ;8062
        ADD     a,a                                 ;8064
        INC     bc                                  ;8065
        JR      nc,$-124                            ;8066
        ADC     a,c                                 ;8068
        ADC     a,b                                 ;8069
        INC     b                                   ;806a
        JR      nc,bE_l800fh                        ;806b
bE_l806dh:
        LD      a,l                                 ;806d
        LD      a,0x30                              ;806e
        JR      nc,bE_l80f0h                        ;8070
        LD      b,d                                 ;8072
        JR      nc,bE_l80f0h                        ;8073
        DEC     sp                                  ;8075
        INC     a                                   ;8076
        JR      nc,bE_l80f5h                        ;8077
        CCF                                         ;8079
        LD      b,b                                 ;807a
        DEC     sp                                  ;807b
        SBC     a,(hl)                              ;807c
        JR      nc,bE_l80afh                        ;807d
        CCF                                         ;807f
        SBC     a,a                                 ;8080
        JR      nc,bE_l80b3h                        ;8081
        DEC     a                                   ;8083
        LD      a,0x9c                              ;8084
        JR      nc,$+67                             ;8086
        LD      b,d                                 ;8088
        SBC     a,l                                 ;8089
        JR      nc,bE_l80b5h                        ;808a
        CPL                                         ;808c
        CPL                                         ;808d
        ADD     hl,hl                               ;808e
        INC     b                                   ;808f
        DAA                                         ;8090
        INC     b                                   ;8091
        LD      hl,(0x41bc)                         ;8092
        LD      b,d                                 ;8095
        CCF                                         ;8096
        LD      b,b                                 ;8097
        DEC     sp                                  ;8098
        INC     a                                   ;8099
        DEC     a                                   ;809a
        LD      a,0x3f                              ;809b
        LD      b,b                                 ;809d
        LD      b,c                                 ;809e
        LD      b,d                                 ;809f
        DEC     a                                   ;80a0
        LD      a,0x3b                              ;80a1
        INC     a                                   ;80a3
        LD      b,c                                 ;80a4
        LD      b,d                                 ;80a5
        CCF                                         ;80a6
        LD      b,b                                 ;80a7
        LD      l,h                                 ;80a8
        DEC     b                                   ;80a9
        DEC     b                                   ;80aa
        ADC     a,l                                 ;80ab
        LD      l,l                                 ;80ac
        NOP                                         ;80ad
        NOP                                         ;80ae
bE_l80afh:
        ADC     a,(hl)                              ;80af
        LD      l,l                                 ;80b0
        NOP                                         ;80b1
        NOP                                         ;80b2
bE_l80b3h:
        ADC     a,(hl)                              ;80b3
        LD      l,(hl)                              ;80b4
bE_l80b5h:
        INC     bc                                  ;80b5
        INC     bc                                  ;80b6
        ADC     a,a                                 ;80b7
        LD      h,c                                 ;80b8
        INC     b                                   ;80b9
        INC     b                                   ;80ba
        ADD     a,d                                 ;80bb
        LD      h,d                                 ;80bc
        NOP                                         ;80bd
        NOP                                         ;80be
        ADD     a,e                                 ;80bf
        LD      h,e                                 ;80c0
        NOP                                         ;80c1
        NOP                                         ;80c2
        ADD     a,h                                 ;80c3
        LD      h,h                                 ;80c4
        LD      (bc),a                              ;80c5
        LD      (bc),a                              ;80c6
        ADD     a,l                                 ;80c7
        JR      nc,bE_l8133h                        ;80c8
        ADC     a,d                                 ;80ca
        JR      nc,bE_l8137h                        ;80cb
        LD      l,e                                 ;80cd
        ADC     a,h                                 ;80ce
        ADC     a,e                                 ;80cf
        INC     b                                   ;80d0
        LD      h,0x84                              ;80d1
        LD      l,0x28                              ;80d3
        DEC     hl                                  ;80d5
        JR      z,$+7                               ;80d6
        JR      nc,bE_l806dh                        ;80d8
        LD      e,(hl)                              ;80da
        LD      a,a                                 ;80db
        JR      nc,bE_l813dh                        ;80dc
        LD      h,b                                 ;80de
        ADD     a,c                                 ;80df
        ADD     a,b                                 ;80e0
        ADD     a,(hl)                              ;80e1
        INC     l                                   ;80e2
        INC     l                                   ;80e3
        LD      h,l                                 ;80e4
        LD      c,(hl)                              ;80e5
        LD      c,a                                 ;80e6
        LD      b,(hl)                              ;80e7
        LD      b,a                                 ;80e8
        LD      d,b                                 ;80e9
        LD      d,c                                 ;80ea
        LD      c,b                                 ;80eb
        LD      c,c                                 ;80ec
        INC     b                                   ;80ed
        LD      h,0x8c                              ;80ee
bE_l80f0h:
        LD      l,0x28                              ;80f0
        DEC     hl                                  ;80f2
        JR      z,bE_l8143h                         ;80f3
bE_l80f5h:
        LD      c,a                                 ;80f5
        JR      nc,bE_l8128h                        ;80f6
        LD      d,b                                 ;80f8
        LD      d,c                                 ;80f9
        LD      c,(hl)                              ;80fa
        LD      c,a                                 ;80fb
bE_l80fch:
        INC     b                                   ;80fc
        LD      h,0x8c                              ;80fd
        LD      l,0x28                              ;80ff
        DEC     hl                                  ;8101
        JR      z,bE_l8134h                         ;8102
        JR      nc,bE_l813ah                        ;8104
        DEC     (hl)                                ;8106
        LD      c,(hl)                              ;8107
        LD      c,a                                 ;8108
bE_l8109h:
        LD      (hl),0x37                           ;8109
        INC     b                                   ;810b
        LD      h,0x8c                              ;810c
        JR      z,bE_l813eh                         ;810e
        LD      l,0x28                              ;8110
        JR      nc,bE_l8144h                        ;8112
        LD      c,(hl)                              ;8114
        LD      c,a                                 ;8115
        LD      c,(hl)                              ;8116
        LD      c,a                                 ;8117
        LD      d,b                                 ;8118
        LD      d,c                                 ;8119
        INC     b                                   ;811a
        LD      h,0x94                              ;811b
        JR      z,bE_l814ah                         ;811d
        DEC     hl                                  ;811f
        JR      z,bE_l8152h                         ;8120
        JR      nc,bE_l818ah                        ;8122
        INC     h                                   ;8124
        LD      c,(hl)                              ;8125
        LD      h,a                                 ;8126
        LD      l,b                                 ;8127
bE_l8128h:
        DEC     h                                   ;8128
        LD      h,0x26                              ;8129
        LD      h,l                                 ;812b
        DEC     l                                   ;812c
        JR      z,bE_l815ah                         ;812d
        JR      z,bE_l815fh                         ;812f
        INC     b                                   ;8131
        INC     h                                   ;8132
bE_l8133h:
        INC     b                                   ;8133
bE_l8134h:
        DEC     h                                   ;8134
        INC     b                                   ;8135
        DEC     l                                   ;8136
bE_l8137h:
        SUB     h                                   ;8137
        LD      l,0x28                              ;8138
bE_l813ah:
        JR      z,bE_l816ah                         ;813a
        INC     h                                   ;813c
bE_l813dh:
        ADD     a,a                                 ;813d
bE_l813eh:
        JR      nc,bE_l8170h                        ;813e
        DEC     h                                   ;8140
        ADC     a,c                                 ;8141
        ADC     a,b                                 ;8142
bE_l8143h:
        LD      c,a                                 ;8143
bE_l8144h:
        DEC     l                                   ;8144
        ADD     a,(hl)                              ;8145
        LD      h,0x26                              ;8146
bE_l8148h:
        LD      l,0x28                              ;8148
bE_l814ah:
        DEC     hl                                  ;814a
        JR      z,bE_l8151h                         ;814b
        INC     h                                   ;814d
        INC     b                                   ;814e
        DEC     h                                   ;814f
        ADD     a,h                                 ;8150
bE_l8151h:
        CPL                                         ;8151
bE_l8152h:
        ADD     hl,hl                               ;8152
        CPL                                         ;8153
        ADD     hl,hl                               ;8154
        INC     b                                   ;8155
        LD      hl,(0x7da0)                         ;8156
        INC     a                                   ;8159
bE_l815ah:
        DEC     a                                   ;815a
        LD      a,0x7e                              ;815b
        LD      b,b                                 ;815d
        LD      b,c                                 ;815e
bE_l815fh:
        LD      b,d                                 ;815f
        DEC     a                                   ;8160
        LD      a,0x3b                              ;8161
        INC     a                                   ;8163
        LD      b,c                                 ;8164
        LD      b,d                                 ;8165
        CCF                                         ;8166
        LD      b,b                                 ;8167
        DEC     sp                                  ;8168
        INC     a                                   ;8169
bE_l816ah:
        DEC     a                                   ;816a
        SBC     a,(hl)                              ;816b
        CCF                                         ;816c
        LD      b,b                                 ;816d
        LD      b,c                                 ;816e
        SBC     a,a                                 ;816f
bE_l8170h:
        DEC     a                                   ;8170
        LD      a,0x3b                              ;8171
        INC     a                                   ;8173
        LD      b,c                                 ;8174
        LD      b,d                                 ;8175
        CCF                                         ;8176
        LD      b,b                                 ;8177
        INC     bc                                  ;8178
        JR      nc,bE_l80fch                        ;8179
        LD      a,e                                 ;817b
        INC     bc                                  ;817c
        JR      nc,bE_l8109h                        ;817d
        LD      a,h                                 ;817f
        JR      nc,bE_l81b2h                        ;8180
        LD      a,l                                 ;8182
        INC     a                                   ;8183
        JR      nc,bE_l81b6h                        ;8184
        LD      a,(hl)                              ;8186
        LD      b,b                                 ;8187
        SBC     a,h                                 ;8188
        INC     bc                                  ;8189
bE_l818ah:
        JR      nc,$-125                            ;818a
        SBC     a,l                                 ;818c
        INC     bc                                  ;818d
        JR      nc,bE_l8148h                        ;818e
        DEC     a                                   ;8190
        SBC     a,(hl)                              ;8191
        JR      nc,$+50                             ;8192
        LD      b,c                                 ;8194
        SBC     a,a                                 ;8195
        JR      nc,bE_l81c8h                        ;8196
        LD      d,d                                 ;8198
        LD      d,e                                 ;8199
        LD      d,h                                 ;819a
        LD      d,h                                 ;819b
        LD      d,l                                 ;819c
        LD      d,(hl)                              ;819d
        LD      d,a                                 ;819e
        LD      d,l                                 ;819f
        LD      e,d                                 ;81a0
        LD      e,c                                 ;81a1
        LD      e,b                                 ;81a2
        LD      e,d                                 ;81a3
        LD      e,e                                 ;81a4
        LD      e,h                                 ;81a5
        LD      e,l                                 ;81a6
        LD      e,e                                 ;81a7
        LD      d,d                                 ;81a8
        LD      d,l                                 ;81a9
        LD      d,e                                 ;81aa
        LD      d,h                                 ;81ab
        LD      d,l                                 ;81ac
        LD      d,l                                 ;81ad
        LD      d,(hl)                              ;81ae
        LD      d,a                                 ;81af
        LD      e,b                                 ;81b0
        LD      e,b                                 ;81b1
bE_l81b2h:
        LD      e,c                                 ;81b2
        LD      e,d                                 ;81b3
        LD      e,e                                 ;81b4
        LD      e,e                                 ;81b5
bE_l81b6h:
        LD      e,h                                 ;81b6
        LD      e,l                                 ;81b7
        LD      d,d                                 ;81b8
        LD      d,e                                 ;81b9
        LD      d,h                                 ;81ba
        JR      nc,bE_l8212h                        ;81bb
        LD      d,(hl)                              ;81bd
        LD      d,a                                 ;81be
        JR      nc,bE_l8219h                        ;81bf
        LD      e,c                                 ;81c1
        LD      e,d                                 ;81c2
        JR      nc,$+93                             ;81c3
        LD      e,h                                 ;81c5
bE_l81c6h:
        LD      e,l                                 ;81c6
        LD      e,l                                 ;81c7
bE_l81c8h:
        LD      b,0x30                              ;81c8
        ADD     a,(hl)                              ;81ca
        LD      c,(hl)                              ;81cb
        LD      c,a                                 ;81cc
        LD      c,(hl)                              ;81cd
        LD      c,a                                 ;81ce
        LD      d,b                                 ;81cf
        LD      d,c                                 ;81d0
        INC     b                                   ;81d1
        LD      h,0x2                               ;81d2
        ADD     hl,hl                               ;81d4
bE_l81d5h:
        LD      (bc),a                              ;81d5
        JR      nc,$+4                              ;81d6
        LD      hl,(0x3002)                         ;81d8
        ADC     a,b                                 ;81db
        DEC     sp                                  ;81dc
        JR      c,bE_l820fh                         ;81dd
        LD      a,e                                 ;81df
        JR      c,bE_l8212h                         ;81e0
        JR      nc,bE_l8260h                        ;81e2
        INC     b                                   ;81e4
        ADD     hl,hl                               ;81e5
bE_l81e6h:
        INC     b                                   ;81e6
        LD      hl,(0x3d98)                         ;81e7
bE_l81eah:
        LD      a,0x3b                              ;81ea
        INC     a                                   ;81ec
        LD      b,c                                 ;81ed
        LD      b,d                                 ;81ee
        CCF                                         ;81ef
        LD      b,b                                 ;81f0
        JR      nc,bE_l8223h                        ;81f1
        ADD     hl,hl                               ;81f3
        ADD     hl,hl                               ;81f4
        JR      nc,$+50                             ;81f5
bE_l81f7h:
        LD      hl,(bE_l9c2ah)                      ;81f7
        JR      nc,bE_l8235h                        ;81fa
        INC     a                                   ;81fc
        SBC     a,l                                 ;81fd
        JR      nc,$+50                             ;81fe
        LD      a,(0x3004)                          ;8200
        ADC     a,b                                 ;8203
bE_l8204h:
        INC     (hl)                                ;8204
        DEC     (hl)                                ;8205
        LD      c,(hl)                              ;8206
        LD      c,a                                 ;8207
        LD      (hl),0x37                           ;8208
        LD      d,b                                 ;820a
        LD      d,c                                 ;820b
        INC     b                                   ;820c
        LD      h,0x8c                              ;820d
bE_l820fh:
        SBC     a,a                                 ;820f
        JR      nc,bE_l828fh                        ;8210
bE_l8212h:
        INC     a                                   ;8212
        RRCA                                        ;8213
        INC     e                                   ;8214
        LD      a,(hl)                              ;8215
        LD      b,b                                 ;8216
        RRCA                                        ;8217
        RRCA                                        ;8218
bE_l8219h:
        LD      e,0x1e                              ;8219
        INC     b                                   ;821b
        RRCA                                        ;821c
        ADC     a,h                                 ;821d
        DEC     a                                   ;821e
        LD      a,0x3b                              ;821f
        INC     a                                   ;8221
        LD      b,c                                 ;8222
bE_l8223h:
        LD      b,d                                 ;8223
        CCF                                         ;8224
        LD      b,b                                 ;8225
        DJNZ    bE_l8239h                           ;8226
        LD      e,0x11                              ;8228
        INC     b                                   ;822a
        RRCA                                        ;822b
        ADC     a,d                                 ;822c
        DEC     a                                   ;822d
        SBC     a,(hl)                              ;822e
        JR      nc,bE_l826ah                        ;822f
        LD      b,c                                 ;8231
        SBC     a,a                                 ;8232
        DEC     e                                   ;8233
        RRCA                                        ;8234
bE_l8235h:
        DJNZ    bE_l8255h                           ;8235
        LD      b,0xf                               ;8237
bE_l8239h:
        LD      (bc),a                              ;8239
bE_l823ah:
        JR      nc,bE_l81c6h                        ;823a
        LD      c,(hl)                              ;823c
        LD      c,a                                 ;823d
        LD      c,(hl)                              ;823e
        LD      c,a                                 ;823f
        LD      d,b                                 ;8240
        LD      d,c                                 ;8241
        LD      d,b                                 ;8242
        LD      d,c                                 ;8243
        LD      d,b                                 ;8244
        LD      d,c                                 ;8245
        INC     b                                   ;8246
        LD      h,0x4                               ;8247
        JR      nc,bE_l81d5h                        ;8249
        LD      c,(hl)                              ;824b
        LD      c,a                                 ;824c
        JR      nc,$+50                             ;824d
        INC     h                                   ;824f
        INC     h                                   ;8250
        JR      nc,bE_l8283h                        ;8251
        DEC     h                                   ;8253
        DEC     h                                   ;8254
bE_l8255h:
        EX      af,af'                              ;8255
        JR      nc,bE_l81e6h                        ;8256
        LD      c,(hl)                              ;8258
        LD      c,a                                 ;8259
        JR      nc,bE_l828ch                        ;825a
        INC     h                                   ;825c
        INC     h                                   ;825d
        JR      nc,$+50                             ;825e
bE_l8260h:
        DEC     h                                   ;8260
        DEC     h                                   ;8261
        JR      nc,bE_l8283h                        ;8262
bE_l8264h:
        JR      nz,bE_l8287h                        ;8264
        INC     b                                   ;8266
        JR      nc,bE_l81eah                        ;8267
        LD      l,a                                 ;8269
bE_l826ah:
        INC     bc                                  ;826a
        INC     h                                   ;826b
        ADD     a,c                                 ;826c
        LD      l,a                                 ;826d
        INC     bc                                  ;826e
        DEC     h                                   ;826f
        DEC     b                                   ;8270
        JR      nc,bE_l81f7h                        ;8271
        LD      (0x3023),hl                         ;8273
        LD      l,a                                 ;8276
        INC     bc                                  ;8277
        INC     h                                   ;8278
        ADD     a,c                                 ;8279
        LD      l,a                                 ;827a
        INC     bc                                  ;827b
        DEC     h                                   ;827c
        EX      af,af'                              ;827d
        JR      nc,bE_l8283h                        ;827e
        INC     h                                   ;8280
        ADD     a,c                                 ;8281
        SUB     b                                   ;8282
bE_l8283h:
        INC     bc                                  ;8283
        DEC     h                                   ;8284
        ADD     a,(hl)                              ;8285
        SUB     b                                   ;8286
bE_l8287h:
        JR      nc,bE_l82eeh                        ;8287
        LD      sp,0x302b                           ;8289
bE_l828ch:
        INC     bc                                  ;828c
        LD      b,e                                 ;828d
        ADD     a,c                                 ;828e
bE_l828fh:
        JR      nc,bE_l8294h                        ;828f
        LD      b,h                                 ;8291
        ADD     a,c                                 ;8292
        LD      e,e                                 ;8293
bE_l8294h:
        INC     bc                                  ;8294
        LD      b,l                                 ;8295
        ADD     a,h                                 ;8296
        DEC     hl                                  ;8297
        LD      sp,0x3086                           ;8298
        INC     bc                                  ;829b
        LD      b,e                                 ;829c
        ADD     a,c                                 ;829d
        JR      nc,$+5                              ;829e
        LD      b,h                                 ;82a0
        ADD     a,c                                 ;82a1
        JR      nc,bE_l82a7h                        ;82a2
        LD      b,l                                 ;82a4
        AND     l                                   ;82a5
        LD      e,e                                 ;82a6
bE_l82a7h:
        JR      bE_l82c2h                           ;82a7
        JR      $+24                                ;82a9
        LD      a,(de)                              ;82ab
        DEC     de                                  ;82ac
        LD      a,(de)                              ;82ad
        LD      a,(bc)                              ;82ae
        RRCA                                        ;82af
        RRCA                                        ;82b0
        LD      (de),a                              ;82b1
        LD      bc,0xf0f                            ;82b2
        EX      af,af'                              ;82b5
        LD      bc,0x1917                           ;82b6
        JR      bE_l82d4h                           ;82b9
        DEC     bc                                  ;82bb
        DEC     de                                  ;82bc
        LD      a,(de)                              ;82bd
        DEC     de                                  ;82be
        LD      bc,0xf13                            ;82bf
bE_l82c2h:
        RRCA                                        ;82c2
        LD      bc,0xf09                            ;82c3
        RRCA                                        ;82c6
        LD      bc,0x601                            ;82c7
        RLCA                                        ;82ca
        INC     c                                   ;82cb
        LD      bc,0x682                            ;82cc
        RLCA                                        ;82cf
        LD      c,0x1                               ;82d0
        ADD     a,e                                 ;82d2
        RRA                                         ;82d3
bE_l82d4h:
        LD      hl,0x321                            ;82d4
        JR      nc,$-124                            ;82d7
        LD      (0x1923),hl                         ;82d9
        JR      nc,bE_l8264h                        ;82dc
        LD      a,e                                 ;82de
        DEC     a                                   ;82df
        LD      a,0x1d                              ;82e0
        RRCA                                        ;82e2
        LD      de,0xf09                            ;82e3
        ADC     a,b                                 ;82e6
        DEC     sp                                  ;82e7
        INC     a                                   ;82e8
        SBC     a,h                                 ;82e9
        JR      nc,bE_l82fbh                        ;82ea
        DJNZ    $+17                                ;82ec
bE_l82eeh:
        INC     e                                   ;82ee
        EX      af,af'                              ;82ef
        RRCA                                        ;82f0
        NOP                                         ;82f1
        DJNZ    bE_l82f5h                           ;82f2
        ADD     a,c                                 ;82f4
bE_l82f5h:
        RLCA                                        ;82f5
        INC     bc                                  ;82f6
        LD      bc,0x881                            ;82f7
        INC     bc                                  ;82fa
bE_l82fbh:
        LD      bc,0x981                            ;82fb
        INC     bc                                  ;82fe
        LD      bc,0xa81                            ;82ff
        LD      b,0x1                               ;8302
        ADD     a,c                                 ;8304
        LD      (de),a                              ;8305
        INC     bc                                  ;8306
        LD      bc,0x1381                           ;8307
        INC     bc                                  ;830a
        LD      bc,0x1481                           ;830b
        INC     bc                                  ;830e
        LD      bc,0x158c                           ;830f
        LD      d,0xf                               ;8312
        LD      c,0xf                               ;8314
        JR      bE_l8329h                           ;8316
        DJNZ    bE_l832bh                           ;8318
        DEC     bc                                  ;831a
        INC     c                                   ;831b
        DEC     c                                   ;831c
        DEC     b                                   ;831d
        DEC     bc                                  ;831e
        ADC     a,e                                 ;831f
        LD      c,0xf                               ;8320
        LD      c,0xf                               ;8322
        DJNZ    bE_l8337h                           ;8324
        DJNZ    bE_l8339h                           ;8326
        INC     c                                   ;8328
bE_l8329h:
        DEC     c                                   ;8329
        INC     c                                   ;832a
bE_l832bh:
        DEC     b                                   ;832b
        DEC     bc                                  ;832c
        ADC     a,e                                 ;832d
        LD      c,0xf                               ;832e
        LD      c,0x17                              ;8330
        DJNZ    $+19                                ;8332
        DJNZ    bE_l834fh                           ;8334
        DEC     bc                                  ;8336
bE_l8337h:
        DEC     c                                   ;8337
        INC     c                                   ;8338
bE_l8339h:
        DEC     b                                   ;8339
        DEC     bc                                  ;833a
        LD      (bc),a                              ;833b
        ADD     hl,hl                               ;833c
        ADC     a,(hl)                              ;833d
        JR      z,bE_l8344h                         ;833e
        ADD     hl,hl                               ;8340
