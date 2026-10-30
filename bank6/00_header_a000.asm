; Ganbare Goemon (1987) (Konami) (J) - bank 0x6
; disassembled with z80dasm 1.2.0 (linear sweep), origin 0xA000 (0xA000-0xBFFF)
; uppercase mnemonics, 0x hex format, BIOS/system-variable/Ghidra symbol substitution
; symbols: constants/bios.asm, SystemVariables.asm, Variables.asm; labels prefixed b6_
; per-line comments: address / raw bytes / ASCII (z80dasm -a -t)
; z80dasm 1.2.0
; command line: /usr/local/bin/z80dasm -a -t -l -g 0xA000 -o work/banks/bank6.asm work/banks/bank6.bin
        CALL    z,0x8c08                            ;a000
        CALL    z,0x888                             ;a003
        CALL    z,0x8888                            ;a006
        INC     c                                   ;a009
        JP      nz,0x8822                           ;a00a
        INC     c                                   ;a00d
        DEC     hl                                  ;a00e
        OR      l                                   ;a00f
        INC     l                                   ;a010
        INC     c                                   ;a011
        DEC     hl                                  ;a012
        OR      l                                   ;a013
b6_la014h:
        INC     l                                   ;a014
        EX      af,af'                              ;a015
        DEC     h                                   ;a016
        LD      d,l                                 ;a017
        JR      z,$+10                              ;a018
        ADD     a,d                                 ;a01a
        LD      (0x48c),hl                          ;a01b
        NOP                                         ;a01e
        INC     e                                   ;a01f
        CALL    z,0x558f                            ;a020
        JP      pe,0x70a7                           ;a023
        LD      d,l                                 ;a026
        JP      pe,0x70a7                           ;a027
        LD      d,l                                 ;a02a
        JP      pe,0x70a7                           ;a02b
        DEC     b                                   ;a02e
        JP      pe,0x5a7                            ;a02f
        NOP                                         ;a032
        ADC     a,h                                 ;a033
        LD      d,b                                 ;a034
        NOP                                         ;a035
        NOP                                         ;a036
        LD      (hl),b                              ;a037
        LD      d,l                                 ;a038
        JP      pe,0x70a7                           ;a039
        LD      (hl),l                              ;a03c
        JP      pe,0x70a7                           ;a03d
        JR      nz,b6_la042h                        ;a040
b6_la042h:
        AND     b                                   ;a042
        SUB     b                                   ;a043
        NOP                                         ;a044
        NOP                                         ;a045
        ADD     hl,bc                               ;a046
        LD      d,l                                 ;a047
        JP      pe,0x70a7                           ;a048
        LD      d,l                                 ;a04b
        JP      pe,0x70a7                           ;a04c
        SUB     b                                   ;a04f
        NOP                                         ;a050
        NOP                                         ;a051
        ADD     hl,bc                               ;a052
        LD      d,l                                 ;a053
        JP      pe,0x70a7                           ;a054
        LD      d,l                                 ;a057
        JP      pe,0x70a7                           ;a058
        SUB     b                                   ;a05b
        NOP                                         ;a05c
        NOP                                         ;a05d
        ADD     hl,bc                               ;a05e
        SUB     b                                   ;a05f
        NOP                                         ;a060
        NOP                                         ;a061
        ADD     hl,bc                               ;a062
        EX      af,af'                              ;a063
        SBC     a,c                                 ;a064
        INC     b                                   ;a065
        CALL    z,0x4                               ;a066
        INC     b                                   ;a069
        LD      d,l                                 ;a06a
        INC     b                                   ;a06b
        XOR     d                                   ;a06c
        INC     b                                   ;a06d
        LD      (hl),a                              ;a06e
        INC     b                                   ;a06f
        NOP                                         ;a070
        DJNZ    $-101                               ;a071
        INC     b                                   ;a073
        CALL    z,0x4                               ;a074
        EX      af,af'                              ;a077
        LD      (hl),a                              ;a078
        DJNZ    b6_la014h                           ;a079
        INC     b                                   ;a07b
        CALL    z,0x5                               ;a07c
        INC     bc                                  ;a07f
        LD      (hl),a                              ;a080
        ADD     a,c                                 ;a081
        RLCA                                        ;a082
        INC     bc                                  ;a083
        LD      (hl),a                              ;a084
        AND     b                                   ;a085
        LD      (hl),l                              ;a086
        LD      d,l                                 ;a087
        LD      d,l                                 ;a088
        AND     b                                   ;a089
        LD      (hl),l                              ;a08a
        LD      d,l                                 ;a08b
        LD      d,l                                 ;a08c
        AND     b                                   ;a08d
        LD      (hl),l                              ;a08e
        LD      d,l                                 ;a08f
        LD      d,l                                 ;a090
        AND     b                                   ;a091
        LD      (hl),l                              ;a092
        LD      d,l                                 ;a093
        LD      d,l                                 ;a094
        AND     b                                   ;a095
        LD      (hl),l                              ;a096
        LD      d,l                                 ;a097
        LD      d,l                                 ;a098
        AND     b                                   ;a099
        LD      (hl),l                              ;a09a
        LD      d,l                                 ;a09b
        LD      d,l                                 ;a09c
        AND     b                                   ;a09d
        LD      (hl),l                              ;a09e
        LD      d,l                                 ;a09f
        LD      d,l                                 ;a0a0
        AND     b                                   ;a0a1
        LD      (hl),l                              ;a0a2
        LD      d,l                                 ;a0a3
        LD      d,l                                 ;a0a4
        AND     b                                   ;a0a5
        JR      nz,b6_la0fdh                        ;a0a6
b6_la0a8h:
        INC     b                                   ;a0a8
        NOP                                         ;a0a9
        INC     b                                   ;a0aa
        LD      d,l                                 ;a0ab
        INC     d                                   ;a0ac
        XOR     d                                   ;a0ad
        EX      af,af'                              ;a0ae
        NOP                                         ;a0af
        EX      af,af'                              ;a0b0
        LD      d,l                                 ;a0b1
        INC     c                                   ;a0b2
        XOR     d                                   ;a0b3
        INC     b                                   ;a0b4
        LD      (hl),a                              ;a0b5
b6_la0b6h:
        INC     b                                   ;a0b6
        NOP                                         ;a0b7
        JR      nz,b6_la0a8h                        ;a0b8
        INC     b                                   ;a0ba
        LD      (0xee1c),hl                         ;a0bb
        INC     b                                   ;a0be
        LD      (hl),a                              ;a0bf
        INC     e                                   ;a0c0
        XOR     d                                   ;a0c1
        INC     b                                   ;a0c2
        NOP                                         ;a0c3
        INC     e                                   ;a0c4
        ADC     a,b                                 ;a0c5
        JR      b6_la0b6h                           ;a0c6
        EX      af,af'                              ;a0c8
        NOP                                         ;a0c9
        INC     b                                   ;a0ca
        LD      d,l                                 ;a0cb
        INC     b                                   ;a0cc
        XOR     d                                   ;a0cd
        INC     b                                   ;a0ce
        LD      (hl),a                              ;a0cf
        INC     b                                   ;a0d0
        NOP                                         ;a0d1
        INC     b                                   ;a0d2
        LD      d,l                                 ;a0d3
        INC     b                                   ;a0d4
        XOR     d                                   ;a0d5
        INC     b                                   ;a0d6
        LD      (hl),a                              ;a0d7
        EX      af,af'                              ;a0d8
        NOP                                         ;a0d9
        INC     b                                   ;a0da
        LD      d,l                                 ;a0db
        INC     b                                   ;a0dc
        XOR     d                                   ;a0dd
        INC     b                                   ;a0de
        LD      (hl),a                              ;a0df
        EX      af,af'                              ;a0e0
        NOP                                         ;a0e1
        EX      af,af'                              ;a0e2
        LD      d,l                                 ;a0e3
        INC     b                                   ;a0e4
        NOP                                         ;a0e5
        INC     b                                   ;a0e6
        LD      d,l                                 ;a0e7
        INC     b                                   ;a0e8
        XOR     d                                   ;a0e9
        INC     b                                   ;a0ea
        LD      (hl),a                              ;a0eb
        INC     b                                   ;a0ec
        NOP                                         ;a0ed
        DEC     c                                   ;a0ee
        LD      d,l                                 ;a0ef
        INC     bc                                  ;a0f0
        NOP                                         ;a0f1
        SBC     a,b                                 ;a0f2
        LD      d,l                                 ;a0f3
        INC     c                                   ;a0f4
        CALL    z,0x55cc                            ;a0f5
        INC     c                                   ;a0f8
        XOR     0xee                                ;a0f9
        LD      d,l                                 ;a0fb
        INC     c                                   ;a0fc
b6_la0fdh:
        XOR     0xee                                ;a0fd
        LD      d,l                                 ;a0ff
        INC     c                                   ;a100
        XOR     0xee                                ;a101
        LD      d,l                                 ;a103
        INC     c                                   ;a104
        XOR     0xee                                ;a105
        LD      d,l                                 ;a107
        INC     c                                   ;a108
        XOR     0xee                                ;a109
        INC     b                                   ;a10b
        LD      d,l                                 ;a10c
        ADD     a,c                                 ;a10d
        LD      (hl),b                              ;a10e
        INC     bc                                  ;a10f
        NOP                                         ;a110
        ADD     a,c                                 ;a111
        LD      d,b                                 ;a112
        INC     bc                                  ;a113
        CALL    z,0x5094                            ;a114
        ADC     a,0xee                              ;a117
        XOR     0x50                                ;a119
        ADC     a,0xee                              ;a11b
        XOR     0x50                                ;a11d
        ADC     a,0xee                              ;a11f
        XOR     0x50                                ;a121
        ADC     a,0xee                              ;a123
        XOR     0x50                                ;a125
        ADC     a,0xee                              ;a127
        XOR     0x4                                 ;a129
        LD      d,l                                 ;a12b
        SBC     a,e                                 ;a12c
        LD      (hl),b                              ;a12d
        NOP                                         ;a12e
        NOP                                         ;a12f
        LD      d,l                                 ;a130
        LD      d,b                                 ;a131
        CALL    z,0x55cc                            ;a132
        LD      d,b                                 ;a135
        ADC     a,0xee                              ;a136
        LD      d,l                                 ;a138
        LD      d,b                                 ;a139
        ADC     a,0xee                              ;a13a
        LD      d,l                                 ;a13c
        LD      d,b                                 ;a13d
        ADC     a,0xee                              ;a13e
        LD      d,l                                 ;a140
        LD      d,b                                 ;a141
        ADC     a,0xee                              ;a142
        LD      d,l                                 ;a144
        LD      d,b                                 ;a145
        ADC     a,0xee                              ;a146
        LD      b,0x55                              ;a148
        SUB     a                                   ;a14a
        NOP                                         ;a14b
        DEC     b                                   ;a14c
        NOP                                         ;a14d
        LD      d,l                                 ;a14e
        RLCA                                        ;a14f
        LD      d,l                                 ;a150
        RLCA                                        ;a151
        LD      d,l                                 ;a152
        RLCA                                        ;a153
        LD      d,l                                 ;a154
        RLCA                                        ;a155
        LD      d,l                                 ;a156
        RLCA                                        ;a157
        LD      d,l                                 ;a158
        RLCA                                        ;a159
        LD      d,l                                 ;a15a
        RLCA                                        ;a15b
        LD      d,l                                 ;a15c
        RLCA                                        ;a15d
        LD      d,l                                 ;a15e
        RLCA                                        ;a15f
        LD      d,l                                 ;a160
        RLCA                                        ;a161
        INC     b                                   ;a162
        LD      d,l                                 ;a163
        INC     b                                   ;a164
        NOP                                         ;a165
        SBC     a,b                                 ;a166
        DEC     b                                   ;a167
        NOP                                         ;a168
        DEC     b                                   ;a169
        NOP                                         ;a16a
        LD      d,l                                 ;a16b
        RLCA                                        ;a16c
        LD      d,l                                 ;a16d
        RLCA                                        ;a16e
        LD      d,l                                 ;a16f
        RLCA                                        ;a170
        LD      d,l                                 ;a171
        RLCA                                        ;a172
        LD      d,l                                 ;a173
        RLCA                                        ;a174
        LD      d,l                                 ;a175
        RLCA                                        ;a176
        LD      d,l                                 ;a177
        RLCA                                        ;a178
        LD      d,l                                 ;a179
        RLCA                                        ;a17a
        LD      d,l                                 ;a17b
        RLCA                                        ;a17c
        LD      d,l                                 ;a17d
        RLCA                                        ;a17e
        INC     b                                   ;a17f
        LD      d,l                                 ;a180
        INC     b                                   ;a181
        NOP                                         ;a182
        SUB     a                                   ;a183
        DEC     b                                   ;a184
        NOP                                         ;a185
        NOP                                         ;a186
        LD      d,l                                 ;a187
        LD      d,l                                 ;a188
        RLCA                                        ;a189
        LD      d,a                                 ;a18a
        LD      d,l                                 ;a18b
        LD      d,l                                 ;a18c
        RLCA                                        ;a18d
        LD      d,a                                 ;a18e
        LD      d,l                                 ;a18f
        LD      d,l                                 ;a190
        RLCA                                        ;a191
        LD      d,a                                 ;a192
        LD      d,l                                 ;a193
        LD      d,l                                 ;a194
        RLCA                                        ;a195
        LD      d,a                                 ;a196
        LD      d,l                                 ;a197
        LD      d,l                                 ;a198
        RLCA                                        ;a199
        LD      d,a                                 ;a19a
        DEC     b                                   ;a19b
        LD      d,l                                 ;a19c
        INC     b                                   ;a19d
        NOP                                         ;a19e
        ADD     a,c                                 ;a19f
        RRCA                                        ;a1a0
        INC     bc                                  ;a1a1
        RST     KEYINT                              ;a1a2
        SBC     a,h                                 ;a1a3
        RRCA                                        ;a1a4
        DEFB    0xfd,0xf,0xfd                       ;a1a5
        RRCA                                        ;a1a8
        DEFB    0xfd,0xf,0xfd                       ;a1a9
        RRCA                                        ;a1ac
        DEFB    0xfd,0xf,0xfd                       ;a1ad
        RRCA                                        ;a1b0
        DEFB    0xfd,0xf,0xfd                       ;a1b1
        RRCA                                        ;a1b4
        DEFB    0xfd,0xf,0xfd                       ;a1b5
        RRCA                                        ;a1b8
        DEFB    0xfd,0xf,0xfd                       ;a1b9
        RRCA                                        ;a1bc
        DEFB    0xfd,0xf,0xfd                       ;a1bd
        INC     b                                   ;a1c0
        RST     KEYINT                              ;a1c1
        SBC     a,h                                 ;a1c2
        RRCA                                        ;a1c3
        DEFB    0xfd,0xf,0xfd                       ;a1c4
        RRCA                                        ;a1c7
        DEFB    0xfd,0xf,0xfd                       ;a1c8
        RRCA                                        ;a1cb
        DEFB    0xfd,0xf,0xfd                       ;a1cc
        RRCA                                        ;a1cf
        DEFB    0xfd,0xf,0xfd                       ;a1d0
        RRCA                                        ;a1d3
        DEFB    0xfd,0xf,0xfd                       ;a1d4
        RRCA                                        ;a1d7
        DEFB    0xfd,0xf,0xfd                       ;a1d8
        RRCA                                        ;a1db
        DEFB    0xfd,0xf,0xfd                       ;a1dc
        INC     bc                                  ;a1df
        RST     KEYINT                              ;a1e0
        OR      d                                   ;a1e1
        RET     p                                   ;a1e2
        RRCA                                        ;a1e3
        DEFB    0xfd,0xf,0xf0                       ;a1e4
        RRCA                                        ;a1e7
        DEFB    0xfd,0xf,0xf0                       ;a1e8
        RRCA                                        ;a1eb
        DEFB    0xfd,0xf,0xf0                       ;a1ec
        RRCA                                        ;a1ef
        DEFB    0xfd,0xf,0xf0                       ;a1f0
        RRCA                                        ;a1f3
        DEFB    0xfd,0xf,0xf0                       ;a1f4
        RRCA                                        ;a1f7
        DEFB    0xfd,0xf,0xf0                       ;a1f8
        RRCA                                        ;a1fb
        DEFB    0xfd,0xf,0xf0                       ;a1fc
        RRCA                                        ;a1ff
        DEFB    0xfd,0xf,0xfd                       ;a200
        RRCA                                        ;a203
        DEFB    0xfd,0xf,0xfd                       ;a204
        RRCA                                        ;a207
        DEFB    0xfd,0xf,0xfd                       ;a208
        RRCA                                        ;a20b
        DEFB    0xfd,0xf,0xfd                       ;a20c
        RRCA                                        ;a20f
