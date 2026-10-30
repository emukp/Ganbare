; Ganbare Goemon (1987) (Konami) (J) - bank 0xC
; disassembled with z80dasm 1.2.0 (linear sweep), origin 0xA000 (0xA000-0xBFFF)
; uppercase mnemonics, 0x hex format, BIOS/system-variable/Ghidra symbol substitution
; symbols: constants/bios.asm, SystemVariables.asm, Variables.asm; labels prefixed bC_
; per-line comments: address / raw bytes / ASCII (z80dasm -a -t)
; z80dasm 1.2.0
; command line: /usr/local/bin/z80dasm -a -t -l -g 0xA000 -o work/banks/bankC.asm work/banks/bankC.bin
        RET     nz                                  ;a000
        RET     nz                                  ;a001
        ADD     a,b                                 ;a002
        RET     nz                                  ;a003
        NOP                                         ;a004
        NOP                                         ;a005
        XOR     h                                   ;a006
        JR      nc,$-38                             ;a007
bC_sub_a009h:
        RET     c                                   ;a009
bC_sub_a00ah:
        NOP                                         ;a00a
        JR      c,$-58                              ;a00b
        CALL    nz,0x70b4                           ;a00d
        LD      a,b                                 ;a010
        INC     e                                   ;a011
        LD      a,h                                 ;a012
        DEC     b                                   ;a013
        NOP                                         ;a014
        ADC     a,l                                 ;a015
        LD      bc,0x1807                           ;a016
        JR      nz,bC_la061h                        ;a019
        XOR     c                                   ;a01b
        CP      c                                   ;a01c
        ADD     a,0xa0                              ;a01d
        ADD     a,b                                 ;a01f
        AND     b                                   ;a020
        LD      b,e                                 ;a021
        LD      a,a                                 ;a022
        INC     bc                                  ;a023
        NOP                                         ;a024
        ADC     a,l                                 ;a025
        RET     po                                  ;a026
        RET     p                                   ;a027
        JR      c,bC_la032h                         ;a028
        INC     b                                   ;a02a
        INC     a                                   ;a02b
        CALL    m,0x484c                            ;a02c
        DJNZ    bC_la051h                           ;a02f
        RST     KEYINT                              ;a031
bC_la032h:
        RST     GETYPR                              ;a032
        DEC     b                                   ;a033
        NOP                                         ;a034
        ADC     a,d                                 ;a035
        RLCA                                        ;a036
        RRA                                         ;a037
        ADD     hl,sp                               ;a038
        LD      d,(hl)                              ;a039
        LD      b,(hl)                              ;a03a
        ADD     hl,sp                               ;a03b
        LD      e,a                                 ;a03c
        LD      a,a                                 ;a03d
        LD      e,a                                 ;a03e
        INC     a                                   ;a03f
        LD      b,0x0                               ;a040
        ADC     a,a                                 ;a042
        RET     nz                                  ;a043
        RET     p                                   ;a044
        RET     m                                   ;a045
        RET     nz                                  ;a046
        NOP                                         ;a047
        OR      b                                   ;a048
        OR      b                                   ;a049
        RET     po                                  ;a04a
        RET     nz                                  ;a04b
        NOP                                         ;a04c
        LD      d,(hl)                              ;a04d
        NOP                                         ;a04e
        RRCA                                        ;a04f
        RRA                                         ;a050
bC_la051h:
        RRCA                                        ;a051
        INC     b                                   ;a052
        NOP                                         ;a053
        INC     b                                   ;a054
        LD      bc,0x4                              ;a055
        ADC     a,c                                 ;a058
        RRA                                         ;a059
        RST     KEYINT                              ;a05a
        RST     DCOMPR                              ;a05b
        JP      nz,0x3840                           ;a05c
        LD      b,a                                 ;a05f
        RST     KEYINT                              ;a060
bC_la061h:
        ADD     a,e                                 ;a061
        INC     bc                                  ;a062
        RST     KEYINT                              ;a063
        ADD     a,a                                 ;a064
        CP      0x7c                                ;a065
        NOP                                         ;a067
        RST     KEYINT                              ;a068
        NOP                                         ;a069
        NOP                                         ;a06a
        DEC     bc                                  ;a06b
        LD      c,0x0                               ;a06c
        ADC     a,h                                 ;a06e
        RLCA                                        ;a06f
        RET     c                                   ;a070
        DEC     a                                   ;a071
        CCF                                         ;a072
        RLCA                                        ;a073
        NOP                                         ;a074
        NOP                                         ;a075
        LD      a,h                                 ;a076
        ADD     a,d                                 ;a077
        JP      m,0x7cf6                            ;a078
        INC     bc                                  ;a07b
        NOP                                         ;a07c
        LD      (bc),a                              ;a07d
        RST     KEYINT                              ;a07e
        ADD     a,e                                 ;a07f
        RRCA                                        ;a080
        RRA                                         ;a081
        CCF                                         ;a082
        INC     b                                   ;a083
        RST     KEYINT                              ;a084
        ADC     a,l                                 ;a085
        RRCA                                        ;a086
bC_la087h:
        ADD     a,h                                 ;a087
        LD      b,h                                 ;a088
        LD      (0x8c42),hl                         ;a089
        RST     KEYINT                              ;a08c
        CALL    z,0xe4e4                            ;a08d
        CALL    m,0xc3fe                            ;a090
        INC     bc                                  ;a093
        RST     KEYINT                              ;a094
        AND     c                                   ;a095
        CP      0x7c                                ;a096
        LD      h,b                                 ;a098
        LD      b,b                                 ;a099
        JR      nz,bC_la0bch                        ;a09a
        CP      0x7f                                ;a09c
        NOP                                         ;a09e
        RST     CALLF                               ;a09f
        RST     GETYPR                              ;a0a0
        RST     OUTDO                               ;a0a1
        NOP                                         ;a0a2
        LD      h,b                                 ;a0a3
        RST     KEYINT                              ;a0a4
        RRCA                                        ;a0a5
        RET     p                                   ;a0a6
        LD      a,e                                 ;a0a7
        DEC     sp                                  ;a0a8
        DEC     e                                   ;a0a9
        DEC     a                                   ;a0aa
        LD      (hl),e                              ;a0ab
        NOP                                         ;a0ac
        JR      nc,bC_la087h                        ;a0ad
        RET     c                                   ;a0af
        RET     nz                                  ;a0b0
        NOP                                         ;a0b1
        INC     a                                   ;a0b2
        JP      nz,bC_lb6dah                        ;a0b3
        INC     a                                   ;a0b6
        INC     bc                                  ;a0b7
        ADD     a,b                                 ;a0b8
        LD      (bc),a                              ;a0b9
        RET     nz                                  ;a0ba
        ADD     a,c                                 ;a0bb
bC_la0bch:
        NOP                                         ;a0bc
        NOP                                         ;a0bd
        EX      af,af'                              ;a0be
        NOP                                         ;a0bf
        ADC     a,l                                 ;a0c0
        LD      a,a                                 ;a0c1
        LD      l,0x15                              ;a0c2
        DEC     d                                   ;a0c4
        CCF                                         ;a0c5
        SCF                                         ;a0c6
        CCF                                         ;a0c7
        LD      e,0x44                              ;a0c8
        LD      l,h                                 ;a0ca
        DJNZ    bC_la0d5h                           ;a0cb
        EX      af,af'                              ;a0cd
        INC     bc                                  ;a0ce
        NOP                                         ;a0cf
        ADD     a,c                                 ;a0d0
        CALL    m,0x8004                            ;a0d1
        ADD     a,d                                 ;a0d4
bC_la0d5h:
        RET     c                                   ;a0d5
        RET     p                                   ;a0d6
        INC     bc                                  ;a0d7
        NOP                                         ;a0d8
        SBC     a,b                                 ;a0d9
        INC     bc                                  ;a0da
        RRCA                                        ;a0db
        RRCA                                        ;a0dc
        CCF                                         ;a0dd
        LD      a,a                                 ;a0de
        LD      a,a                                 ;a0df
        ADD     a,b                                 ;a0e0
        POP     de                                  ;a0e1
        JP      pe,0xc0ea                           ;a0e2
        LD      c,b                                 ;a0e5
        LD      c,b                                 ;a0e6
        LD      hl,0x0                              ;a0e7
        CALL    pe,DAC                              ;a0ea
        RST     KEYINT                              ;a0ed
        EI                                          ;a0ee
        CALL    m,0x7e02                            ;a0ef
        INC     bc                                  ;a0f2
        LD      a,a                                 ;a0f3
        OR      b                                   ;a0f4
        DAA                                         ;a0f5
        LD      c,0xf6                              ;a0f6
        RRA                                         ;a0f8
        ADD     hl,de                               ;a0f9
        DEC     (hl)                                ;a0fa
        CALL    nz,0x31d5                           ;a0fb
        RRA                                         ;a0fe
bC_la0ffh:
        RRA                                         ;a0ff
        DEC     d                                   ;a100
        LD      de,0x213f                           ;a101
        LD      d,c                                 ;a104
        RST     KEYINT                              ;a105
        RST     KEYINT                              ;a106
        NOP                                         ;a107
        LD      e,a                                 ;a108
        RRA                                         ;a109
        LD      e,a                                 ;a10a
        LD      a,a                                 ;a10b
        LD      a,a                                 ;a10c
        JP      m,0xf6f6                            ;a10d
        LD      d,(hl)                              ;a110
        LD      (de),a                              ;a111
        LD      iy,0xff1f                           ;a112
        CALL    m,0x100                             ;a116
        RLCA                                        ;a119
        RRA                                         ;a11a
        CCF                                         ;a11b
        CCF                                         ;a11c
        LD      e,0x1                               ;a11d
        NOP                                         ;a11f
bC_la120h:
        RRCA                                        ;a120
        RRCA                                        ;a121
        NOP                                         ;a122
        LD      e,0x2e                              ;a123
        INC     bc                                  ;a125
        NOP                                         ;a126
        LD      (bc),a                              ;a127
        OR      0x8a                                ;a128
        XOR     0xd6                                ;a12a
        CP      d                                   ;a12c
        LD      (hl),h                              ;a12d
        CALL    pe,0xfc1c                           ;a12e
        CALL    m,0x1e02                            ;a131
        LD      a,(bc)                              ;a134
        NOP                                         ;a135
        ADD     a,d                                 ;a136
        LD      a,a                                 ;a137
        RRA                                         ;a138
        DEC     bc                                  ;a139
        NOP                                         ;a13a
        LD      (bc),a                              ;a13b
        INC     bc                                  ;a13c
        ADD     a,e                                 ;a13d
        JR      c,bC_la120h                         ;a13e
        ADD     a,b                                 ;a140
        DEC     c                                   ;a141
        NOP                                         ;a142
        ADD     a,h                                 ;a143
        RST     KEYINT                              ;a144
        ADD     a,b                                 ;a145
        LD      h,b                                 ;a146
        RRA                                         ;a147
        DEC     b                                   ;a148
        NOP                                         ;a149
        ADD     a,c                                 ;a14a
        INC     bc                                  ;a14b
        INC     b                                   ;a14c
        NOP                                         ;a14d
        ADD     a,(hl)                              ;a14e
        INC     bc                                  ;a14f
        RRA                                         ;a150
        CALL    nz,0x6018                           ;a151
        ADD     a,b                                 ;a154
        INC     b                                   ;a155
        NOP                                         ;a156
        ADD     a,d                                 ;a157
        INC     bc                                  ;a158
        RST     KEYINT                              ;a159
        ADD     hl,bc                               ;a15a
        NOP                                         ;a15b
        ADC     a,l                                 ;a15c
        LD      a,a                                 ;a15d
        LD      l,0x15                              ;a15e
        DEC     d                                   ;a160
        CCF                                         ;a161
        SCF                                         ;a162
        CP      a                                   ;a163
        SBC     a,0x44                              ;a164
        LD      l,h                                 ;a166
        DJNZ    bC_la171h                           ;a167
        EX      af,af'                              ;a169
        INC     bc                                  ;a16a
        NOP                                         ;a16b
        ADD     a,c                                 ;a16c
        CALL    m,0x8004                            ;a16d
        ADD     a,d                                 ;a170
bC_la171h:
        RET     c                                   ;a171
        RET     p                                   ;a172
        INC     bc                                  ;a173
        NOP                                         ;a174
        SBC     a,b                                 ;a175
        INC     bc                                  ;a176
        RRCA                                        ;a177
        RRCA                                        ;a178
        CCF                                         ;a179
        LD      a,a                                 ;a17a
        LD      a,a                                 ;a17b
        ADD     a,b                                 ;a17c
        POP     de                                  ;a17d
        JP      pe,0xc0ea                           ;a17e
        RET     z                                   ;a181
        LD      c,b                                 ;a182
        LD      hl,0x0                              ;a183
        CALL    pe,DAC                              ;a186
        RST     KEYINT                              ;a189
        EI                                          ;a18a
        CALL    m,0x7e02                            ;a18b
        INC     bc                                  ;a18e
        LD      a,a                                 ;a18f
        SUB     a                                   ;a190
        DAA                                         ;a191
        LD      c,0xf0                              ;a192
        CP      0xa2                                ;a194
        XOR     d                                   ;a196
        ADC     a,b                                 ;a197
        LD      l,e                                 ;a198
        RRA                                         ;a199
        RRCA                                        ;a19a
        RLA                                         ;a19b
        DEC     d                                   ;a19c
        LD      de,0x1415                           ;a19d
        RRCA                                        ;a1a0
        EX      af,af'                              ;a1a1
        RLCA                                        ;a1a2
        LD      a,a                                 ;a1a3
        XOR     b                                   ;a1a4
        LD      l,0xaf                              ;a1a5
        RST     8                                   ;a1a7
        INC     bc                                  ;a1a8
        RST     KEYINT                              ;a1a9
        ADC     a,d                                 ;a1aa
        CP      0x54                                ;a1ab
        INC     d                                   ;a1ad
        LD      e,b                                 ;a1ae
        LD      c,b                                 ;a1af
        RET     p                                   ;a1b0
        LD      d,b                                 ;a1b1
        RET     p                                   ;a1b2
        RET     m                                   ;a1b3
        LD      bc,0x7f03                           ;a1b4
        ADD     a,h                                 ;a1b7
        LD      e,0x1                               ;a1b8
        RLCA                                        ;a1ba
        EX      af,af'                              ;a1bb
        INC     b                                   ;a1bc
        RRCA                                        ;a1bd
        SUB     d                                   ;a1be
        NOP                                         ;a1bf
        RLCA                                        ;a1c0
        NOP                                         ;a1c1
        NOP                                         ;a1c2
        RET     p                                   ;a1c3
        RET     p                                   ;a1c4
        SUB     0xb6                                ;a1c5
        LD      c,0xf6                              ;a1c7
        JP      m,0xf800                            ;a1c9
        RET     m                                   ;a1cc
        RET     p                                   ;a1cd
        RET     p                                   ;a1ce
        NOP                                         ;a1cf
bC_la1d0h:
        AND     b                                   ;a1d0
        INC     bc                                  ;a1d1
        NOP                                         ;a1d2
        LD      (bc),a                              ;a1d3
        EX      af,af'                              ;a1d4
        LD      (bc),a                              ;a1d5
        INC     c                                   ;a1d6
        ADD     a,h                                 ;a1d7
        LD      c,0x7                               ;a1d8
        RLCA                                        ;a1da
        LD      bc,0xe                              ;a1db
        LD      (bc),a                              ;a1de
        ADD     a,b                                 ;a1df
        ADD     a,h                                 ;a1e0
        LD      b,b                                 ;a1e1
bC_la1e2h:
        JR      nc,bC_la21ch                        ;a1e2
        JR      bC_la1e9h                           ;a1e4
        NOP                                         ;a1e6
        ADC     a,d                                 ;a1e7
        EX      af,af'                              ;a1e8
bC_la1e9h:
        INC     d                                   ;a1e9
        INC     d                                   ;a1ea
        LD      (de),a                              ;a1eb
        LD      (de),a                              ;a1ec
        LD      de,0x808                            ;a1ed
        LD      b,0x1                               ;a1f0
        INC     c                                   ;a1f2
        NOP                                         ;a1f3
        ADC     a,d                                 ;a1f4
        ADD     a,b                                 ;a1f5
        LD      b,b                                 ;a1f6
        LD      b,b                                 ;a1f7
        AND     b                                   ;a1f8
        LD      (hl),b                              ;a1f9
        JR      c,bC_la218h                         ;a1fa
        LD      c,0x7                               ;a1fc
bC_la1feh:
        INC     bc                                  ;a1fe
        NOP                                         ;a1ff
        ADD     a,l                                 ;a200
        NOP                                         ;a201
bC_la202h:
        JR      nc,bC_la234h                        ;a202
        EX      af,af'                              ;a204
        EX      af,af'                              ;a205
bC_la206h:
        INC     b                                   ;a206
        NOP                                         ;a207
        ADD     a,c                                 ;a208
        LD      bc,0x3                              ;a209
        ADD     a,c                                 ;a20c
        LD      bc,0xd                              ;a20d
        LD      (bc),a                              ;a210
        ADD     a,b                                 ;a211
        INC     b                                   ;a212
        NOP                                         ;a213
        LD      (bc),a                              ;a214
        JR      nc,bC_la219h                        ;a215
        NOP                                         ;a217
bC_la218h:
        LD      (bc),a                              ;a218
bC_la219h:
        INC     c                                   ;a219
        ADD     a,e                                 ;a21a
        CCF                                         ;a21b
bC_la21ch:
        LD      a,a                                 ;a21c
        CP      0x3                                 ;a21d
        RST     KEYINT                              ;a21f
        ADD     a,e                                 ;a220
        CP      0x7f                                ;a221
        CCF                                         ;a223
        EX      af,af'                              ;a224
        NOP                                         ;a225
        ADD     a,a                                 ;a226
        ADD     a,b                                 ;a227
        RET     nz                                  ;a228
        RET     nz                                  ;a229
        LD      b,b                                 ;a22a
        LD      b,b                                 ;a22b
        RET     nz                                  ;a22c
        ADD     a,b                                 ;a22d
        DEC     b                                   ;a22e
        NOP                                         ;a22f
        ADC     a,c                                 ;a230
        LD      bc,0x402                            ;a231
bC_la234h:
        ADD     hl,bc                               ;a234
        LD      a,(bc)                              ;a235
        ADD     hl,bc                               ;a236
        INC     b                                   ;a237
        LD      (bc),a                              ;a238
        LD      bc,0x7                              ;a239
        ADC     a,c                                 ;a23c
        RET     nz                                  ;a23d
bC_la23eh:
        JR      nz,bC_la1d0h                        ;a23e
        LD      c,b                                 ;a240
        JR      z,$+74                              ;a241
        SUB     b                                   ;a243
        JR      nz,bC_la206h                        ;a244
        LD      b,0x0                               ;a246
        ADC     a,e                                 ;a248
        LD      (bc),a                              ;a249
        INC     b                                   ;a24a
        EX      af,af'                              ;a24b
        LD      de,0x1402                           ;a24c
        LD      (bc),a                              ;a24f
        LD      de,0x408                            ;a250
        LD      (bc),a                              ;a253
        DEC     b                                   ;a254
        NOP                                         ;a255
        ADC     a,e                                 ;a256
        AND     b                                   ;a257
        DJNZ    bC_la1e2h                           ;a258
        LD      b,h                                 ;a25a
        JR      nz,bC_la271h                        ;a25b
        JR      nz,bC_la2a3h                        ;a25d
        ADC     a,b                                 ;a25f
        DJNZ    bC_la202h                           ;a260
        DEC     b                                   ;a262
        NOP                                         ;a263
        ADC     a,e                                 ;a264
        LD      bc,0x806                            ;a265
        ADD     hl,bc                               ;a268
        LD      (de),a                              ;a269
        INC     d                                   ;a26a
        LD      (de),a                              ;a26b
        ADD     hl,bc                               ;a26c
        EX      af,af'                              ;a26d
        LD      b,0x1                               ;a26e
        DEC     b                                   ;a270
bC_la271h:
        NOP                                         ;a271
        ADC     a,e                                 ;a272
        RET     nz                                  ;a273
        JR      nc,bC_la1feh                        ;a274
        LD      c,b                                 ;a276
        INC     h                                   ;a277
        INC     d                                   ;a278
        INC     h                                   ;a279
        LD      c,b                                 ;a27a
        ADC     a,b                                 ;a27b
        JR      nc,bC_la23eh                        ;a27c
        INC     b                                   ;a27e
        NOP                                         ;a27f
        SBC     a,(hl)                              ;a280
        DEC     b                                   ;a281
        EX      af,af'                              ;a282
        LD      de,0x422                            ;a283
        ADD     hl,hl                               ;a286
        LD      c,d                                 ;a287
        ADD     hl,hl                               ;a288
        INC     b                                   ;a289
        LD      (0x811),hl                          ;a28a
bC_la28dh:
        DEC     b                                   ;a28d
        NOP                                         ;a28e
        NOP                                         ;a28f
        ADD     a,b                                 ;a290
        LD      d,b                                 ;a291
        EX      af,af'                              ;a292
        CALL    nz,0x9022                           ;a293
        LD      c,d                                 ;a296
        ADD     hl,hl                               ;a297
        LD      c,d                                 ;a298
        SUB     b                                   ;a299
        LD      (0x8c4),hl                          ;a29a
        LD      d,b                                 ;a29d
        ADD     a,b                                 ;a29e
        NOP                                         ;a29f
        INC     b                                   ;a2a0
        NOP                                         ;a2a1
        ADC     a,h                                 ;a2a2
bC_la2a3h:
        JR      nz,bC_la2c3h                        ;a2a3
        RRA                                         ;a2a5
        RRCA                                        ;a2a6
        ADD     hl,bc                               ;a2a7
        LD      c,0x8                               ;a2a8
        LD      e,l                                 ;a2aa
bC_la2abh:
        LD      c,a                                 ;a2ab
        LD      l,l                                 ;a2ac
        CP      d                                   ;a2ad
        ADD     a,c                                 ;a2ae
        DEC     b                                   ;a2af
        NOP                                         ;a2b0
        ADC     a,e                                 ;a2b1
        LD      b,b                                 ;a2b2
        RET     po                                  ;a2b3
        RET     p                                   ;a2b4
        RET     po                                  ;a2b5
        RET     nc                                  ;a2b6
        SUB     b                                   ;a2b7
        SUB     b                                   ;a2b8
        JR      nc,bC_la2abh                        ;a2b9
        JR      nc,bC_la28dh                        ;a2bb
        INC     bc                                  ;a2bd
        NOP                                         ;a2be
        ADC     a,l                                 ;a2bf
        RRCA                                        ;a2c0
        RST     OUTDO                               ;a2c1
        LD      h,c                                 ;a2c2
bC_la2c3h:
        LD      h,b                                 ;a2c3
        RET     p                                   ;a2c4
        OR      0xf1                                ;a2c5
        RST     CALLF                               ;a2c7
        AND     d                                   ;a2c8
        OR      b                                   ;a2c9
        SUB     d                                   ;a2ca
        LD      b,l                                 ;a2cb
        LD      a,(hl)                              ;a2cc
        INC     b                                   ;a2cd
        NOP                                         ;a2ce
        ADC     a,(hl)                              ;a2cf
        RET     nz                                  ;a2d0
        AND     b                                   ;a2d1
        DJNZ    $+10                                ;a2d2
        JR      bC_la2feh                           ;a2d4
        LD      l,b                                 ;a2d6
        LD      l,b                                 ;a2d7
        RET     z                                   ;a2d8
        EX      af,af'                              ;a2d9
        RET     z                                   ;a2da
        JR      z,$-125                             ;a2db
        LD      a,a                                 ;a2dd
        INC     b                                   ;a2de
        RST     KEYINT                              ;a2df
        ADD     a,e                                 ;a2e0
        LD      a,a                                 ;a2e1
        CCF                                         ;a2e2
        CCF                                         ;a2e3
bC_la2e4h:
        INC     bc                                  ;a2e4
        LD      a,a                                 ;a2e5
        INC     b                                   ;a2e6
        RST     KEYINT                              ;a2e7
        ADC     a,c                                 ;a2e8
        CP      0xf9                                ;a2e9
