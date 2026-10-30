; Ganbare Goemon (1987) (Konami) (J) - bank 0xF
; disassembled with z80dasm 1.2.0 (linear sweep), origin 0xA000 (0xA000-0xBFFF)
; uppercase mnemonics, 0x hex format, BIOS/system-variable/Ghidra symbol substitution
; symbols: constants/bios.asm, SystemVariables.asm, Variables.asm; labels prefixed bF_
; per-line comments: address / raw bytes / ASCII (z80dasm -a -t)
; z80dasm 1.2.0
; command line: /usr/local/bin/z80dasm -a -t -l -g 0xA000 -o work/banks/bankF.asm work/banks/bankF.bin
        NOP                                         ;a000
        JR      $+62                                ;a001
        INC     a                                   ;a003
        JR      bF_la006h                           ;a004
bF_la006h:
        LD      a,a                                 ;a006
        LD      c,0xff                              ;a007
        ADD     a,d                                 ;a009
        LD      a,a                                 ;a00a
        CP      0xe                                 ;a00b
        RST     KEYINT                              ;a00d
        ADD     a,d                                 ;a00e
        CP      0xf0                                ;a00f
        INC     bc                                  ;a011
        ADD     a,b                                 ;a012
        EX      af,af'                              ;a013
        NOP                                         ;a014
        INC     bc                                  ;a015
        ADD     a,b                                 ;a016
        ADD     a,d                                 ;a017
        RET     p                                   ;a018
        RRCA                                        ;a019
        INC     bc                                  ;a01a
        LD      bc,0x8                              ;a01b
        INC     bc                                  ;a01e
        LD      bc,0xf81                            ;a01f
        RRCA                                        ;a022
        NOP                                         ;a023
        ADD     a,c                                 ;a024
        RST     KEYINT                              ;a025
        RRCA                                        ;a026
        NOP                                         ;a027
        ADD     a,c                                 ;a028
        RST     KEYINT                              ;a029
        NOP                                         ;a02a
        DEC     a                                   ;a02b
        AND     b                                   ;a02c
        LD      b,d                                 ;a02d
        AND     b                                   ;a02e
        LD      b,a                                 ;a02f
        AND     b                                   ;a030
        LD      c,h                                 ;a031
        AND     b                                   ;a032
        LD      d,c                                 ;a033
        AND     b                                   ;a034
        LD      h,h                                 ;a035
        AND     b                                   ;a036
        LD      (hl),a                              ;a037
        AND     b                                   ;a038
        ADC     a,d                                 ;a039
        AND     b                                   ;a03a
        ADC     a,h                                 ;a03b
        AND     b                                   ;a03c
        ADD     a,b                                 ;a03d
        DJNZ    bF_la040h                           ;a03e
bF_la040h:
        NOP                                         ;a040
        RST     KEYINT                              ;a041
        ADD     a,b                                 ;a042
        JR      nz,bF_la045h                        ;a043
bF_la045h:
        NOP                                         ;a045
        RST     KEYINT                              ;a046
        ADD     a,b                                 ;a047
bF_la048h:
        NOP                                         ;a048
        NOP                                         ;a049
        NOP                                         ;a04a
        RST     KEYINT                              ;a04b
        ADD     a,b                                 ;a04c
        JR      nc,bF_la04fh                        ;a04d
bF_la04fh:
        NOP                                         ;a04f
        RST     KEYINT                              ;a050
        ADD     a,b                                 ;a051
        JR      nc,bF_la054h                        ;a052
bF_la054h:
        NOP                                         ;a054
        NOP                                         ;a055
        DJNZ    bF_la058h                           ;a056
bF_la058h:
        JR      nz,bF_la05ah                        ;a058
bF_la05ah:
        JR      nc,bF_la06ch                        ;a05a
        NOP                                         ;a05c
        DJNZ    $+18                                ;a05d
        DJNZ    $+34                                ;a05f
        DJNZ    bF_la093h                           ;a061
        RST     KEYINT                              ;a063
        ADD     a,b                                 ;a064
        JR      nc,bF_la067h                        ;a065
bF_la067h:
        NOP                                         ;a067
        NOP                                         ;a068
        DJNZ    bF_la07bh                           ;a069
        NOP                                         ;a06b
bF_la06ch:
        DJNZ    bF_la07eh                           ;a06c
        JR      nz,bF_la070h                        ;a06e
bF_la070h:
        JR      nz,bF_la082h                        ;a070
bF_la072h:
        JR      nc,bF_la074h                        ;a072
bF_la074h:
        JR      nc,bF_la086h                        ;a074
        RST     KEYINT                              ;a076
        ADD     a,b                                 ;a077
        JR      nc,bF_la07ah                        ;a078
bF_la07ah:
        NOP                                         ;a07a
bF_la07bh:
        NOP                                         ;a07b
        DJNZ    bF_la07eh                           ;a07c
bF_la07eh:
        JR      nz,bF_la080h                        ;a07e
bF_la080h:
        JR      nc,bF_la082h                        ;a080
bF_la082h:
        LD      b,b                                 ;a082
        NOP                                         ;a083
        LD      d,b                                 ;a084
        NOP                                         ;a085
bF_la086h:
        LD      h,b                                 ;a086
        NOP                                         ;a087
        LD      (hl),b                              ;a088
        RST     KEYINT                              ;a089
        RST     KEYINT                              ;a08a
        RST     KEYINT                              ;a08b
        RST     KEYINT                              ;a08c
        RST     KEYINT                              ;a08d
        RET     p                                   ;a08e
        AND     b                                   ;a08f
        LD      (hl),e                              ;a090
        AND     c                                   ;a091
        XOR     e                                   ;a092
bF_la093h:
        AND     c                                   ;a093
        CALL    nc,0x33a1                           ;a094
        AND     d                                   ;a097
        LD      a,l                                 ;a098
        AND     d                                   ;a099
        RST     0                                   ;a09a
        AND     d                                   ;a09b
        LD      (bc),a                              ;a09c
        AND     e                                   ;a09d
        LD      h,a                                 ;a09e
        AND     e                                   ;a09f
        XOR     (hl)                                ;a0a0
        AND     e                                   ;a0a1
bF_la0a2h:
        JR      z,bF_la048h                         ;a0a2
        LD      e,l                                 ;a0a4
        AND     h                                   ;a0a5
        CALL    nc,0x45a4                           ;a0a6
        AND     l                                   ;a0a9
        LD      l,e                                 ;a0aa
        AND     l                                   ;a0ab
        INC     bc                                  ;a0ac
        AND     (hl)                                ;a0ad
        LD      c,l                                 ;a0ae
        AND     (hl)                                ;a0af
        OR      l                                   ;a0b0
        AND     (hl)                                ;a0b1
        RST     KEYINT                              ;a0b2
        AND     (hl)                                ;a0b3
        SUB     c                                   ;a0b4
        AND     a                                   ;a0b5
        RLA                                         ;a0b6
        XOR     b                                   ;a0b7
        LD      b,b                                 ;a0b8
        XOR     b                                   ;a0b9
        CALL    z,0x3aa8                            ;a0ba
        XOR     c                                   ;a0bd
        LD      a,e                                 ;a0be
        XOR     c                                   ;a0bf
        LD      d,0xaa                              ;a0c0
        OR      c                                   ;a0c2
        XOR     d                                   ;a0c3
        EI                                          ;a0c4
        XOR     d                                   ;a0c5
        LD      e,0xab                              ;a0c6
        XOR     l                                   ;a0c8
        XOR     e                                   ;a0c9
        LD      d,a                                 ;a0ca
        XOR     h                                   ;a0cb
        SBC     a,b                                 ;a0cc
        XOR     h                                   ;a0cd
        POP     bc                                  ;a0ce
        XOR     h                                   ;a0cf
        INC     hl                                  ;a0d0
        XOR     l                                   ;a0d1
        SUB     a                                   ;a0d2
        XOR     l                                   ;a0d3
        PUSH    de                                  ;a0d4
        XOR     l                                   ;a0d5
        RRA                                         ;a0d6
bF_la0d7h:
        XOR     (hl)                                ;a0d7
        ADD     a,0xae                              ;a0d8
        LD      b,(hl)                              ;a0da
        XOR     a                                   ;a0db
        LD      a,b                                 ;a0dc
        XOR     a                                   ;a0dd
        DEC     c                                   ;a0de
        OR      b                                   ;a0df
        LD      h,(hl)                              ;a0e0
        OR      b                                   ;a0e1
        ADC     a,a                                 ;a0e2
        OR      b                                   ;a0e3
        PUSH    hl                                  ;a0e4
        OR      b                                   ;a0e5
        LD      (0x70b1),a                          ;a0e6
        OR      c                                   ;a0e9
        INC     hl                                  ;a0ea
        OR      d                                   ;a0eb
        SUB     a                                   ;a0ec
        OR      d                                   ;a0ed
        DEC     sp                                  ;a0ee
        OR      e                                   ;a0ef
        DEC     hl                                  ;a0f0
        NOP                                         ;a0f1
        LD      (hl),b                              ;a0f2
        AND     l                                   ;a0f3
        LD      bc,0x5081                           ;a0f4
        LD      bc,0x7570                           ;a0f7
        LD      bc,bF_la184h                        ;a0fa
        LD      bc,0xc580                           ;a0fd
        LD      (bc),a                              ;a100
        LD      h,b                                 ;a101
        DEC     h                                   ;a102
        LD      (bc),a                              ;a103
        AND     d                                   ;a104
        LD      d,b                                 ;a105
        INC     bc                                  ;a106
        LD      (hl),b                              ;a107
bF_la108h:
        DEC     (hl)                                ;a108
        INC     bc                                  ;a109
        AND     h                                   ;a10a
        SUB     c                                   ;a10b
        INC     b                                   ;a10c
        ADD     a,b                                 ;a10d
        DEC     h                                   ;a10e
        INC     b                                   ;a10f
        ADD     a,b                                 ;a110
        LD      b,h                                 ;a111
        INC     b                                   ;a112
        LD      (hl),c                              ;a113
        SUB     b                                   ;a114
        DEC     b                                   ;a115
        ADD     a,b                                 ;a116
        INC     h                                   ;a117
        DEC     b                                   ;a118
        LD      h,b                                 ;a119
        LD      h,l                                 ;a11a
        DEC     b                                   ;a11b
        HALT                                        ;a11c
        RST     0                                   ;a11d
        EX      af,af'                              ;a11e
        ADD     a,d                                 ;a11f
        JR      nc,bF_la12ah                        ;a120
        ADD     a,b                                 ;a122
        ADD     a,h                                 ;a123
        ADD     hl,bc                               ;a124
        ADD     a,b                                 ;a125
        LD      b,(hl)                              ;a126
        ADD     hl,bc                               ;a127
        ADD     a,b                                 ;a128
        PUSH    bc                                  ;a129
bF_la12ah:
        LD      a,(bc)                              ;a12a
        SUB     (hl)                                ;a12b
        LD      b,a                                 ;a12c
        DEC     c                                   ;a12d
        SUB     (hl)                                ;a12e
        LD      h,a                                 ;a12f
        DEC     c                                   ;a130
        LD      (hl),b                              ;a131
        AND     l                                   ;a132
        LD      c,0xa4                              ;a133
        LD      d,c                                 ;a135
        LD      c,0x84                              ;a136
        LD      h,c                                 ;a138
        LD      c,0x60                              ;a139
        LD      (hl),l                              ;a13b
        RRCA                                        ;a13c
        ADD     a,b                                 ;a13d
        DEC     d                                   ;a13e
        RRCA                                        ;a13f
        AND     d                                   ;a140
        LD      b,b                                 ;a141
        RRCA                                        ;a142
        LD      h,b                                 ;a143
        AND     l                                   ;a144
        DJNZ    bF_la0d7h                           ;a145
        LD      b,(hl)                              ;a147
        LD      de,0x4071                           ;a148
        LD      (de),a                              ;a14b
        HALT                                        ;a14c
        LD      h,a                                 ;a14d
        LD      (de),a                              ;a14e
        LD      h,b                                 ;a14f
        SUB     l                                   ;a150
        LD      (de),a                              ;a151
        AND     b                                   ;a152
        LD      h,(hl)                              ;a153
        INC     de                                  ;a154
        SUB     c                                   ;a155
        ADD     a,b                                 ;a156
        DEC     d                                   ;a157
        ADD     a,h                                 ;a158
        LD      sp,0x9415                           ;a159
        LD      d,c                                 ;a15c
        DEC     d                                   ;a15d
        AND     h                                   ;a15e
        LD      (hl),c                              ;a15f
        DEC     d                                   ;a160
        LD      (hl),b                              ;a161
        LD      (hl),h                              ;a162
        DEC     d                                   ;a163
bF_la164h:
        LD      (hl),b                              ;a164
        OR      l                                   ;a165
        LD      d,0x82                              ;a166
        JR      nz,bF_la180h                        ;a168
        ADD     a,b                                 ;a16a
        LD      b,(hl)                              ;a16b
        LD      d,0x80                              ;a16c
        PUSH    bc                                  ;a16e
        RLA                                         ;a16f
        HALT                                        ;a170
        AND     a                                   ;a171
        RST     KEYINT                              ;a172
        LD      (de),a                              ;a173
        LD      bc,InterruptTick2                   ;a174
        LD      bc,0x40a2                           ;a177
        LD      bc,bF_lb796h                        ;a17a
        LD      (bc),a                              ;a17d
        HALT                                        ;a17e
        LD      h,a                                 ;a17f
bF_la180h:
        INC     bc                                  ;a180
        LD      (hl),d                              ;a181
        LD      d,b                                 ;a182
        INC     bc                                  ;a183
bF_la184h:
        ADD     a,h                                 ;a184
        OR      c                                   ;a185
        INC     bc                                  ;a186
        ADD     a,h                                 ;a187
        POP     bc                                  ;a188
        INC     b                                   ;a189
        LD      (hl),c                              ;a18a
        RET     nz                                  ;a18b
        DEC     b                                   ;a18c
        HALT                                        ;a18d
        RST     DCOMPR                              ;a18e
        RLCA                                        ;a18f
        OR      (hl)                                ;a190
        LD      (hl),a                              ;a191
        EX      af,af'                              ;a192
        HALT                                        ;a193
        LD      (hl),a                              ;a194
        EX      af,af'                              ;a195
        LD      (hl),h                              ;a196
        POP     bc                                  ;a197
        ADD     hl,bc                               ;a198
        AND     (hl)                                ;a199
        LD      (hl),a                              ;a19a
        LD      a,(bc)                              ;a19b
        ADD     a,h                                 ;a19c
        LD      hl,0x740a                           ;a19d
        LD      sp,0x760b                           ;a1a0
        LD      h,a                                 ;a1a3
        DEC     bc                                  ;a1a4
        ADD     a,d                                 ;a1a5
        ADD     a,b                                 ;a1a6
        INC     c                                   ;a1a7
        SUB     (hl)                                ;a1a8
        AND     a                                   ;a1a9
        RST     KEYINT                              ;a1aa
        DEC     c                                   ;a1ab
        NOP                                         ;a1ac
        SUB     d                                   ;a1ad
        ADD     a,b                                 ;a1ae
        LD      bc,0x3194                           ;a1af
        LD      bc,0x6092                           ;a1b2
        LD      bc,0x97a6                           ;a1b5
        INC     bc                                  ;a1b8
        OR      (hl)                                ;a1b9
        LD      b,a                                 ;a1ba
        INC     b                                   ;a1bb
        AND     (hl)                                ;a1bc
        OR      a                                   ;a1bd
        RLCA                                        ;a1be
        LD      (hl),h                              ;a1bf
        LD      sp,0x7407                           ;a1c0
        LD      h,c                                 ;a1c3
        RLCA                                        ;a1c4
        ADD     a,h                                 ;a1c5
        ADD     a,c                                 ;a1c6
        ADD     hl,bc                               ;a1c7
        LD      h,(hl)                              ;a1c8
        ADD     a,a                                 ;a1c9
        DEC     bc                                  ;a1ca
        SUB     c                                   ;a1cb
        LD      b,b                                 ;a1cc
        INC     c                                   ;a1cd
        LD      (hl),h                              ;a1ce
        OR      c                                   ;a1cf
        DEC     c                                   ;a1d0
        HALT                                        ;a1d1
        DAA                                         ;a1d2
        RST     KEYINT                              ;a1d3
        RRA                                         ;a1d4
        NOP                                         ;a1d5
        ADD     a,(hl)                              ;a1d6
        ADD     a,a                                 ;a1d7
        LD      bc,0x9460                           ;a1d8
        LD      bc,bF_lb082h                        ;a1db
        LD      (bc),a                              ;a1de
        ADD     a,h                                 ;a1df
        LD      d,c                                 ;a1e0
        LD      (bc),a                              ;a1e1
        LD      (hl),h                              ;a1e2
        LD      h,c                                 ;a1e3
        LD      (bc),a                              ;a1e4
        LD      (hl),b                              ;a1e5
        SUB     h                                   ;a1e6
        LD      (bc),a                              ;a1e7
        AND     (hl)                                ;a1e8
        SUB     a                                   ;a1e9
bF_la1eah:
        INC     b                                   ;a1ea
        LD      (hl),c                              ;a1eb
        LD      (hl),b                              ;a1ec
        DEC     b                                   ;a1ed
        LD      (hl),h                              ;a1ee
        ADD     a,c                                 ;a1ef
        DEC     b                                   ;a1f0
        SUB     b                                   ;a1f1
        LD      h,(hl)                              ;a1f2
        LD      b,0x81                              ;a1f3
        RET     nz                                  ;a1f5
        RLCA                                        ;a1f6
bF_la1f7h:
        ADD     a,h                                 ;a1f7
        LD      b,c                                 ;a1f8
        RLCA                                        ;a1f9
        SUB     h                                   ;a1fa
        LD      d,c                                 ;a1fb
        RLCA                                        ;a1fc
        AND     h                                   ;a1fd
        LD      h,c                                 ;a1fe
        RLCA                                        ;a1ff
        HALT                                        ;a200
        SUB     a                                   ;a201
        EX      af,af'                              ;a202
        AND     (hl)                                ;a203
        AND     a                                   ;a204
        ADD     hl,bc                               ;a205
        LD      h,b                                 ;a206
        ADD     a,l                                 ;a207
        LD      a,(bc)                              ;a208
        LD      (hl),b                              ;a209
        LD      (hl),0xa                            ;a20a
        SUB     d                                   ;a20c
        JR      nc,bF_la21ah                        ;a20d
        ADD     a,h                                 ;a20f
        LD      sp,0x760b                           ;a210
        SUB     a                                   ;a213
        DEC     c                                   ;a214
        SUB     h                                   ;a215
        LD      sp,0x940d                           ;a216
        LD      d,c                                 ;a219
bF_la21ah:
        DEC     c                                   ;a21a
        SUB     h                                   ;a21b
        LD      (hl),c                              ;a21c
        DEC     c                                   ;a21d
        HALT                                        ;a21e
        RST     DCOMPR                              ;a21f
        RRCA                                        ;a220
        LD      h,b                                 ;a221
        LD      b,l                                 ;a222
        RRCA                                        ;a223
        ADD     a,b                                 ;a224
        LD      h,l                                 ;a225
        LD      de,0x5680                           ;a226
        LD      de,0x70a1                           ;a229
        LD      (de),a                              ;a22c
        SUB     b                                   ;a22d
        LD      d,(hl)                              ;a22e
        LD      (de),a                              ;a22f
        HALT                                        ;a230
        RST     DCOMPR                              ;a231
        RST     KEYINT                              ;a232
        JR      bF_la236h                           ;a233
        ADD     a,d                                 ;a235
bF_la236h:
        LD      b,b                                 ;a236
        LD      (bc),a                              ;a237
        ADD     a,c                                 ;a238
        LD      (hl),b                              ;a239
        INC     b                                   ;a23a
        HALT                                        ;a23b
        DAA                                         ;a23c
bF_la23dh:
        DEC     b                                   ;a23d
        ADD     a,h                                 ;a23e
        ADD     a,c                                 ;a23f
        DEC     b                                   ;a240
        SUB     h                                   ;a241
        AND     c                                   ;a242
        DEC     b                                   ;a243
        ADD     a,h                                 ;a244
        POP     bc                                  ;a245
        RLCA                                        ;a246
        ADD     a,h                                 ;a247
        LD      h,c                                 ;a248
        RLCA                                        ;a249
        SUB     h                                   ;a24a
        LD      (hl),c                              ;a24b
        RLCA                                        ;a24c
        AND     h                                   ;a24d
        ADD     a,c                                 ;a24e
        EX      af,af'                              ;a24f
        HALT                                        ;a250
        LD      (hl),a                              ;a251
        ADD     hl,bc                               ;a252
        ADD     a,d                                 ;a253
        LD      h,b                                 ;a254
        DEC     bc                                  ;a255
        HALT                                        ;a256
        RST     DCOMPR                              ;a257
        DEC     c                                   ;a258
        LD      (hl),h                              ;a259
        LD      b,c                                 ;a25a
        DEC     c                                   ;a25b
        ADD     a,h                                 ;a25c
        LD      d,c                                 ;a25d
        DEC     c                                   ;a25e
        SUB     h                                   ;a25f
        LD      h,c                                 ;a260
        DJNZ    bF_la1f7h                           ;a261
        SUB     c                                   ;a263
        DJNZ    bF_la1eah                           ;a264
        AND     c                                   ;a266
        DJNZ    bF_la2ddh                           ;a267
        OR      c                                   ;a269
        INC     de                                  ;a26a
        HALT                                        ;a26b
        RLA                                         ;a26c
        INC     de                                  ;a26d
        ADD     a,c                                 ;a26e
        AND     b                                   ;a26f
        INC     d                                   ;a270
        HALT                                        ;a271
        AND     a                                   ;a272
        INC     d                                   ;a273
        SUB     c                                   ;a274
        OR      b                                   ;a275
        LD      d,0x74                              ;a276
        LD      hl,0x6618                           ;a278
        LD      (hl),a                              ;a27b
        RST     KEYINT                              ;a27c
        JR      bF_la282h                           ;a27d
        AND     (hl)                                ;a27f
        SCF                                         ;a280
        INC     b                                   ;a281
bF_la282h:
        ADD     a,b                                 ;a282
        LD      h,h                                 ;a283
        INC     b                                   ;a284
        AND     b                                   ;a285
        AND     h                                   ;a286
        DEC     b                                   ;a287
        SUB     d                                   ;a288
        LD      h,b                                 ;a289
        RLCA                                        ;a28a
        AND     (hl)                                ;a28b
        SCF                                         ;a28c
        DEC     bc                                  ;a28d
        SUB     (hl)                                ;a28e
        SUB     a                                   ;a28f
        DEC     c                                   ;a290
        ADD     a,(hl)                              ;a291
        RST     0                                   ;a292
        RRCA                                        ;a293
        SUB     b                                   ;a294
        LD      b,(hl)                              ;a295
        RRCA                                        ;a296
        AND     b                                   ;a297
        ADD     a,h                                 ;a298
        INC     de                                  ;a299
        ADD     a,c                                 ;a29a
        LD      (hl),b                              ;a29b
        INC     de                                  ;a29c
        SUB     d                                   ;a29d
        LD      (hl),b                              ;a29e
        DEC     d                                   ;a29f
        ADD     a,(hl)                              ;a2a0
        LD      h,a                                 ;a2a1
        RLA                                         ;a2a2
        ADD     a,d                                 ;a2a3
        LD      (hl),b                              ;a2a4
        JR      bF_la23dh                           ;a2a5
        SUB     a                                   ;a2a7
        LD      a,(de)                              ;a2a8
        SUB     (hl)                                ;a2a9
        OR      a                                   ;a2aa
        RRA                                         ;a2ab
        SUB     c                                   ;a2ac
        JR      nc,bF_la2ceh                        ;a2ad
        RET     nz                                  ;a2af
        LD      d,0x1f                              ;a2b0
        ADD     a,b                                 ;a2b2
        SUB     l                                   ;a2b3
        RRA                                         ;a2b4
        ADD     a,b                                 ;a2b5
        OR      l                                   ;a2b6
        LD      (0x44a0),hl                         ;a2b7
        INC     hl                                  ;a2ba
        SUB     (hl)                                ;a2bb
        LD      b,a                                 ;a2bc
        INC     hl                                  ;a2bd
        AND     b                                   ;a2be
        LD      (hl),0x23                           ;a2bf
        ADD     a,b                                 ;a2c1
        OR      l                                   ;a2c2
        INC     h                                   ;a2c3
        OR      (hl)                                ;a2c4
        LD      h,a                                 ;a2c5
        RST     KEYINT                              ;a2c6
        INC     de                                  ;a2c7
        NOP                                         ;a2c8
        SUB     (hl)                                ;a2c9
        LD      b,a                                 ;a2ca
        LD      b,0x84                              ;a2cb
        LD      h,c                                 ;a2cd
bF_la2ceh:
        LD      b,0x94                              ;a2ce
        LD      (hl),c                              ;a2d0
        LD      b,0xa4                              ;a2d1
        ADD     a,c                                 ;a2d3
        DEC     bc                                  ;a2d4
        SUB     (hl)                                ;a2d5
        LD      d,a                                 ;a2d6
        DEC     c                                   ;a2d7
        LD      (hl),h                              ;a2d8
        LD      d,c                                 ;a2d9
        DEC     c                                   ;a2da
        ADD     a,h                                 ;a2db
        LD      (hl),c                              ;a2dc
bF_la2ddh:
        DEC     c                                   ;a2dd
        SUB     h                                   ;a2de
        SUB     c                                   ;a2df
        LD      a,(de)                              ;a2e0
        HALT                                        ;a2e1
        DAA                                         ;a2e2
        DEC     de                                  ;a2e3
        SUB     (hl)                                ;a2e4
        RST     0                                   ;a2e5
        JR      nz,$-104                            ;a2e6
        LD      (hl),a                              ;a2e8
        INC     h                                   ;a2e9
        HALT                                        ;a2ea
        RST     0                                   ;a2eb
        DEC     l                                   ;a2ec
        ADD     a,d                                 ;a2ed
        LD      (hl),b                              ;a2ee
        LD      sp,bF_lb776h                        ;a2ef
        LD      (0x27a6),a                          ;a2f2
        INC     sp                                  ;a2f5
        ADD     a,c                                 ;a2f6
        LD      d,b                                 ;a2f7
        LD      a,(0x7071)                          ;a2f8
        INC     a                                   ;a2fb
        HALT                                        ;a2fc
        AND     a                                   ;a2fd
        CCF                                         ;a2fe
        LD      (hl),d                              ;a2ff
        LD      h,b                                 ;a300
        RST     KEYINT                              ;a301
        LD      hl,0x6000                           ;a302
        LD      (hl),l                              ;a305
        NOP                                         ;a306
        SUB     b                                   ;a307
        SUB     h                                   ;a308
        LD      bc,0x20a2                           ;a309
        LD      bc,0x5560                           ;a30c
        LD      bc,0xa570                           ;a30f
        LD      (bc),a                              ;a312
        SUB     b                                   ;a313
        LD      b,(hl)                              ;a314
        LD      (bc),a                              ;a315
        OR      c                                   ;a316
        LD      (hl),b                              ;a317
        LD      (bc),a                              ;a318
        LD      (hl),h                              ;a319
        OR      c                                   ;a31a
        LD      (bc),a                              ;a31b
        SUB     h                                   ;a31c
        POP     de                                  ;a31d
        INC     bc                                  ;a31e
        LD      h,b                                 ;a31f
        ADD     a,l                                 ;a320
        INC     bc                                  ;a321
        AND     b                                   ;a322
        SUB     h                                   ;a323
        INC     bc                                  ;a324
        LD      (hl),c                              ;a325
        RET     nz                                  ;a326
        INC     b                                   ;a327
        SUB     h                                   ;a328
        ADD     a,c                                 ;a329
        INC     b                                   ;a32a
        ADD     a,h                                 ;a32b
        AND     c                                   ;a32c
        DEC     b                                   ;a32d
        SUB     (hl)                                ;a32e
        DAA                                         ;a32f
        DEC     b                                   ;a330
        LD      h,b                                 ;a331
        LD      (hl),l                              ;a332
        DEC     b                                   ;a333
        SUB     b                                   ;a334
        SUB     h                                   ;a335
        LD      b,0x80                              ;a336
        LD      b,l                                 ;a338
        LD      b,0x92                              ;a339
        ADD     a,b                                 ;a33b
        LD      b,0xb4                              ;a33c
        SUB     c                                   ;a33e
        EX      af,af'                              ;a33f
        SUB     d                                   ;a340
        SUB     b                                   ;a341
        ADD     hl,bc                               ;a342
        HALT                                        ;a343
        LD      d,a                                 ;a344
        ADD     hl,bc                               ;a345
        LD      (hl),b                              ;a346
        AND     l                                   ;a347
        INC     c                                   ;a348
        ADD     a,b                                 ;a349
        LD      b,l                                 ;a34a
        INC     c                                   ;a34b
        LD      h,b                                 ;a34c
        AND     l                                   ;a34d
        INC     c                                   ;a34e
        AND     h                                   ;a34f
        POP     bc                                  ;a350
        INC     c                                   ;a351
        SUB     h                                   ;a352
        POP     de                                  ;a353
        DEC     c                                   ;a354
        ADD     a,h                                 ;a355
        LD      sp,0x600d                           ;a356
        LD      h,l                                 ;a359
        DEC     c                                   ;a35a
        AND     b                                   ;a35b
        LD      b,(hl)                              ;a35c
        DEC     c                                   ;a35d
        ADD     a,(hl)                              ;a35e
        RST     0                                   ;a35f
        LD      c,0x60                              ;a360
        ADD     a,l                                 ;a362
        LD      c,0x90                              ;a363
        AND     h                                   ;a365
        RST     KEYINT                              ;a366
        RLA                                         ;a367
        LD      bc,0x7082                           ;a368
        LD      (bc),a                              ;a36b
        SUB     h                                   ;a36c
        LD      b,c                                 ;a36d
        INC     bc                                  ;a36e
        ADD     a,(hl)                              ;a36f
        RST     0                                   ;a370
        INC     b                                   ;a371
        AND     c                                   ;a372
        LD      d,b                                 ;a373
        INC     b                                   ;a374
        ADD     a,(hl)                              ;a375
        RST     0                                   ;a376
        LD      b,0xb6                              ;a377
        LD      d,a                                 ;a379
        RLCA                                        ;a37a
        OR      c                                   ;a37b
        RET     nz                                  ;a37c
        EX      af,af'                              ;a37d
        ADD     a,h                                 ;a37e
        ADD     a,c                                 ;a37f
        EX      af,af'                              ;a380
        SUB     h                                   ;a381
        SUB     c                                   ;a382
        EX      af,af'                              ;a383
        AND     h                                   ;a384
        AND     c                                   ;a385
        ADD     hl,bc                               ;a386
        HALT                                        ;a387
        OR      a                                   ;a388
        LD      a,(bc)                              ;a389
        HALT                                        ;a38a
        DAA                                         ;a38b
        LD      a,(bc)                              ;a38c
        SUB     h                                   ;a38d
        LD      d,c                                 ;a38e
        LD      a,(bc)                              ;a38f
        ADD     a,h                                 ;a390
        LD      h,c                                 ;a391
        LD      a,(bc)                              ;a392
        LD      (hl),h                              ;a393
        LD      (hl),c                              ;a394
        DEC     bc                                  ;a395
        AND     (hl)                                ;a396
        LD      b,a                                 ;a397
        LD      c,0x96                              ;a398
        AND     a                                   ;a39a
        RRCA                                        ;a39b
        HALT                                        ;a39c
        OR      a                                   ;a39d
        DJNZ    bF_la3f6h                           ;a39e
        RST     0                                   ;a3a0
        LD      de,0x5092                           ;a3a1
        LD      de,bF_lb7a6h                        ;a3a4
        LD      (de),a                              ;a3a7
        LD      (hl),h                              ;a3a8
        LD      sp,0x8412                           ;a3a9
        LD      b,c                                 ;a3ac
        RST     KEYINT                              ;a3ad
        JR      z,bF_la3b0h                         ;a3ae
