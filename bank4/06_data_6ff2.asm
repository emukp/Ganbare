        DEFB    0xdd,0xf0,0xdf                      ;6ff2
        DEC     c                                   ;6ff5
        RST     OUTDO                               ;6ff6
        NOP                                         ;6ff7
        RET     nc                                  ;6ff8
        DEFB    0xdd,0xf0,0xf                       ;6ff9
        RET     p                                   ;6ffc
        RST     OUTDO                               ;6ffd
        RET     p                                   ;6ffe
        RRCA                                        ;6fff
        DEC     c                                   ;7000
        RST     OUTDO                               ;7001
        NOP                                         ;7002
        RST     OUTDO                               ;7003
        DEC     c                                   ;7004
        RST     KEYINT                              ;7005
        DEC     c                                   ;7006
        RRCA                                        ;7007
        RET     p                                   ;7008
        INC     bc                                  ;7009
        NOP                                         ;700a
        ADD     a,c                                 ;700b
        RST     KEYINT                              ;700c
        INC     bc                                  ;700d
        NOP                                         ;700e
        ADD     a,d                                 ;700f
        RRCA                                        ;7010
        RET     p                                   ;7011
        INC     bc                                  ;7012
        NOP                                         ;7013
        AND     l                                   ;7014
        RST     KEYINT                              ;7015
        NOP                                         ;7016
        NOP                                         ;7017
        DEC     c                                   ;7018
        RST     KEYINT                              ;7019
        NOP                                         ;701a
        DEC     c                                   ;701b
        NOP                                         ;701c
        RST     OUTDO                               ;701d
        NOP                                         ;701e
        DEC     c                                   ;701f
        NOP                                         ;7020
        DEFB    0xdd,0xf0,0xdf                      ;7021
        NOP                                         ;7024
        DEFB    0xdd,0xfd,0xdf                      ;7025
        DEC     c                                   ;7028
        RST     KEYINT                              ;7029
        DEC     c                                   ;702a
        RRCA                                        ;702b
        DEFB    0xdd,0xf0,0xd                       ;702c
        RST     OUTDO                               ;702f
        RST     OUTDO                               ;7030
        RET     nc                                  ;7031
        DEC     c                                   ;7032
        RST     OUTDO                               ;7033
        RST     OUTDO                               ;7034
        RET     nc                                  ;7035
        DEFB    0xdd,0xdf,0xdf                      ;7036
        RET     nc                                  ;7039
        INC     bc                                  ;703a
        RST     OUTDO                               ;703b
        XOR     e                                   ;703c
        RET     nc                                  ;703d
        RST     OUTDO                               ;703e
        RST     OUTDO                               ;703f
        RRCA                                        ;7040
        RET     nc                                  ;7041
        RST     OUTDO                               ;7042
        RST     OUTDO                               ;7043
        RST     KEYINT                              ;7044
        DEFB    0xdd,0xf,0xf                        ;7045
        NOP                                         ;7048
        RST     OUTDO                               ;7049
        DEFB    0xfd,0xdf,0x0                       ;704a
        RST     OUTDO                               ;704d
        DEFB    0xfd,0xdf,0xd                       ;704e
        RST     OUTDO                               ;7051
        DEFB    0xfd,0xd0,0xd                       ;7052
        RST     OUTDO                               ;7055
        DEFB    0xdd,0xdf,0xd                       ;7056
        DEFB    0xfd,0xfd,0xdf                      ;7059
        DEFB    0xdd,0xd,0xfd                       ;705c
        RST     OUTDO                               ;705f
        RST     OUTDO                               ;7060
        DEC     c                                   ;7061
        RST     KEYINT                              ;7062
        DEFB    0xdd,0xdf,0xdf                      ;7063
        RST     KEYINT                              ;7066
        RST     OUTDO                               ;7067
        DEC     b                                   ;7068
        NOP                                         ;7069
        SUB     a                                   ;706a
        CALL    z,0xce                              ;706b
        INC     c                                   ;706e
        CALL    z,0xe0cc                            ;706f
        INC     c                                   ;7072
        CALL    z,0xe0cc                            ;7073
        INC     c                                   ;7076
b4_sub_7077h:
        INC     c                                   ;7077
        NOP                                         ;7078
        RET     nz                                  ;7079
        INC     c                                   ;707a
        RET     nz                                  ;707b
        CALL    z,0x3e0                             ;707c
        CALL    z,0x30cc                            ;707f
        RLCA                                        ;7082
        INC     sp                                  ;7083
        SBC     a,l                                 ;7084
        LD      (hl),e                              ;7085
        INC     a                                   ;7086
        JP      b4_l7377h                           ;7087
        ADC     a,0xcc                              ;708a
        RST     0                                   ;708c
        LD      (hl),a                              ;708d
        ADC     a,0xcc                              ;708e
        CALL    z,0xc77                             ;7090
        RET     nc                                  ;7093
        CALL    0xf077                              ;7094
        DEFB    0xdd,0xd,0x70                       ;7097
        DEFB    0xfd,0xfd,0xf                       ;709a
        DEC     c                                   ;709d
        RST     KEYINT                              ;709e
        RST     OUTDO                               ;709f
        RST     KEYINT                              ;70a0
        RST     KEYINT                              ;70a1
        LD      b,0x0                               ;70a2
        ADD     a,l                                 ;70a4
        DEC     b                                   ;70a5
        NOP                                         ;70a6
        NOP                                         ;70a7
        DEC     b                                   ;70a8
        DEC     b                                   ;70a9
        INC     bc                                  ;70aa
        NOP                                         ;70ab
        ADD     a,h                                 ;70ac
        DEC     b                                   ;70ad
        LD      d,l                                 ;70ae
        DEC     b                                   ;70af
        DEC     b                                   ;70b0
        INC     b                                   ;70b1
        NOP                                         ;70b2
        XOR     d                                   ;70b3
        LD      d,l                                 ;70b4
        LD      d,b                                 ;70b5
        DEC     b                                   ;70b6
        DEC     b                                   ;70b7
        LD      c,0x55                              ;70b8
        LD      d,b                                 ;70ba
        NOP                                         ;70bb
        DEC     b                                   ;70bc
        NOP                                         ;70bd
        NOP                                         ;70be
        LD      d,b                                 ;70bf
        NOP                                         ;70c0
        NOP                                         ;70c1
        LD      d,b                                 ;70c2
        NOP                                         ;70c3
        LD      c,0x5                               ;70c4
        RET     po                                  ;70c6
b4_sub_70c7h:
        LD      d,b                                 ;70c7
        DEC     b                                   ;70c8
        NOP                                         ;70c9
        LD      d,l                                 ;70ca
        DEC     b                                   ;70cb
        RET     po                                  ;70cc
        NOP                                         ;70cd
        DEC     b                                   ;70ce
        NOP                                         ;70cf
        LD      d,l                                 ;70d0
        PUSH    hl                                  ;70d1
        LD      d,l                                 ;70d2
        LD      d,l                                 ;70d3
        NOP                                         ;70d4
        LD      d,l                                 ;70d5
        NOP                                         ;70d6
        DEC     b                                   ;70d7
        RET     po                                  ;70d8
        LD      e,(hl)                              ;70d9
        NOP                                         ;70da
        LD      c,0x55                              ;70db
        LD      d,l                                 ;70dd
        INC     b                                   ;70de
        NOP                                         ;70df
        ADD     a,c                                 ;70e0
        DEC     b                                   ;70e1
        INC     b                                   ;70e2
        NOP                                         ;70e3
        AND     b                                   ;70e4
        DEC     b                                   ;70e5
        NOP                                         ;70e6
        NOP                                         ;70e7
        DEC     b                                   ;70e8
        LD      d,l                                 ;70e9
        NOP                                         ;70ea
        NOP                                         ;70eb
        LD      c,0x0                               ;70ec
        DEC     b                                   ;70ee
        NOP                                         ;70ef
        LD      d,l                                 ;70f0
        LD      d,b                                 ;70f1
        LD      d,b                                 ;70f2
        NOP                                         ;70f3
        LD      d,b                                 ;70f4
        LD      c,0x55                              ;70f5
        NOP                                         ;70f7
        DEC     b                                   ;70f8
        NOP                                         ;70f9
        LD      c,0x0                               ;70fa
        NOP                                         ;70fc
        PUSH    hl                                  ;70fd
        LD      d,l                                 ;70fe
        LD      d,l                                 ;70ff
        NOP                                         ;7100
        DEC     b                                   ;7101
        LD      e,(hl)                              ;7102
        LD      d,b                                 ;7103
        LD      d,b                                 ;7104
        INC     b                                   ;7105
        NOP                                         ;7106
        ADD     a,d                                 ;7107
        LD      e,(hl)                              ;7108
        LD      d,l                                 ;7109
        INC     bc                                  ;710a
        NOP                                         ;710b
        ADD     a,l                                 ;710c
        LD      d,b                                 ;710d
        DEC     b                                   ;710e
        LD      d,b                                 ;710f
        DEC     b                                   ;7110
        DEC     b                                   ;7111
        INC     bc                                  ;7112
        NOP                                         ;7113
        SBC     a,b                                 ;7114
        DEC     b                                   ;7115
        LD      d,b                                 ;7116
        NOP                                         ;7117
        NOP                                         ;7118
        LD      d,b                                 ;7119
        NOP                                         ;711a
        LD      (hl),l                              ;711b
        LD      d,b                                 ;711c
        LD      d,l                                 ;711d
        DEC     b                                   ;711e
        LD      d,a                                 ;711f
        LD      d,b                                 ;7120
        LD      c,0x0                               ;7121
        LD      e,(hl)                              ;7123
        LD      d,l                                 ;7124
        NOP                                         ;7125
        RET     po                                  ;7126
        RLCA                                        ;7127
        LD      (hl),a                              ;7128
        DEC     b                                   ;7129
        NOP                                         ;712a
        NOP                                         ;712b
        LD      (hl),a                              ;712c
        INC     bc                                  ;712d
        NOP                                         ;712e
        LD      (bc),a                              ;712f
        LD      (hl),b                              ;7130
        SUB     l                                   ;7131
        DEC     b                                   ;7132
        NOP                                         ;7133
        NOP                                         ;7134
        RLCA                                        ;7135
        NOP                                         ;7136
        NOP                                         ;7137
        RLCA                                        ;7138
        NOP                                         ;7139
        NOP                                         ;713a
        LD      d,l                                 ;713b
        LD      d,b                                 ;713c
        NOP                                         ;713d
        LD      d,b                                 ;713e
        LD      d,b                                 ;713f
        PUSH    hl                                  ;7140
        DEC     b                                   ;7141
        NOP                                         ;7142
        LD      d,l                                 ;7143
        PUSH    hl                                  ;7144
        LD      d,b                                 ;7145
        NOP                                         ;7146
        INC     b                                   ;7147
        LD      d,b                                 ;7148
        ADD     a,d                                 ;7149
        NOP                                         ;714a
        LD      d,b                                 ;714b
        INC     bc                                  ;714c
        NOP                                         ;714d
        ADC     a,b                                 ;714e
        LD      e,(hl)                              ;714f
        LD      d,l                                 ;7150
        NOP                                         ;7151
        NOP                                         ;7152
        DEC     b                                   ;7153
        DEC     b                                   ;7154
        NOP                                         ;7155
        DEC     b                                   ;7156
        INC     b                                   ;7157
        NOP                                         ;7158
        SBC     a,a                                 ;7159
        DEC     bc                                  ;715a
        CP      e                                   ;715b
        CP      e                                   ;715c
        AND     a                                   ;715d
        NOP                                         ;715e
        DEC     bc                                  ;715f
        OR      b                                   ;7160
        XOR     d                                   ;7161
        SCF                                         ;7162
        LD      (hl),b                              ;7163
        NOP                                         ;7164
        XOR     d                                   ;7165
        AND     a                                   ;7166
        LD      (hl),a                              ;7167
        LD      (hl),b                              ;7168
        XOR     d                                   ;7169
        AND     a                                   ;716a
        NOP                                         ;716b
        XOR     d                                   ;716c
        INC     sp                                  ;716d
        LD      (hl),b                              ;716e
        LD      a,(bc)                              ;716f
        AND     b                                   ;7170
        NOP                                         ;7171
        NOP                                         ;7172
        XOR     d                                   ;7173
        AND     b                                   ;7174
        JR      nc,b4_l7181h                        ;7175
        XOR     d                                   ;7177
        AND     b                                   ;7178
        INC     bc                                  ;7179
        LD      (hl),a                              ;717a
        ADD     a,c                                 ;717b
        AND     b                                   ;717c
        INC     bc                                  ;717d
        LD      (hl),a                              ;717e
        ADD     a,c                                 ;717f
        AND     b                                   ;7180
b4_l7181h:
        INC     b                                   ;7181
        NOP                                         ;7182
        RST     KEYINT                              ;7183
        LD      (hl),a                              ;7184
        RLCA                                        ;7185
        RLCA                                        ;7186
        LD      (hl),a                              ;7187
        LD      (hl),a                              ;7188
        XOR     d                                   ;7189
        RLCA                                        ;718a
        LD      (hl),a                              ;718b
        AND     a                                   ;718c
        NOP                                         ;718d
        LD      a,d                                 ;718e
        XOR     d                                   ;718f
        NOP                                         ;7190
        RLCA                                        ;7191
        NOP                                         ;7192
        NOP                                         ;7193
        LD      (hl),a                              ;7194
        RLCA                                        ;7195
        RLCA                                        ;7196
        LD      (hl),a                              ;7197
        CP      e                                   ;7198
        CP      e                                   ;7199
        NOP                                         ;719a
        NOP                                         ;719b
        CP      e                                   ;719c
        NOP                                         ;719d
        RLCA                                        ;719e
        XOR     d                                   ;719f
        OR      b                                   ;71a0
        RLCA                                        ;71a1
        LD      (hl),a                              ;71a2
        LD      (hl),a                              ;71a3
        NOP                                         ;71a4
        LD      (hl),a                              ;71a5
        LD      (hl),a                              ;71a6
        INC     sp                                  ;71a7
        RLCA                                        ;71a8
        LD      (hl),a                              ;71a9
        XOR     d                                   ;71aa
        XOR     d                                   ;71ab
        LD      (hl),e                              ;71ac
        LD      a,(0xa0a0)                          ;71ad
        LD      (hl),a                              ;71b0
        LD      (hl),a                              ;71b1
        INC     sp                                  ;71b2
        AND     e                                   ;71b3
        SCF                                         ;71b4
        LD      (hl),e                              ;71b5
        AND     b                                   ;71b6
        AND     b                                   ;71b7
        LD      (hl),a                              ;71b8
        XOR     d                                   ;71b9
        RLCA                                        ;71ba
        LD      (hl),a                              ;71bb
        AND     a                                   ;71bc
        NOP                                         ;71bd
        LD      a,d                                 ;71be
        XOR     d                                   ;71bf
        NOP                                         ;71c0
        RLCA                                        ;71c1
        NOP                                         ;71c2
        NOP                                         ;71c3
        LD      (hl),a                              ;71c4
        RLCA                                        ;71c5
        RLCA                                        ;71c6
        LD      (hl),a                              ;71c7
        LD      (hl),a                              ;71c8
        XOR     d                                   ;71c9
        RLCA                                        ;71ca
        LD      (hl),a                              ;71cb
        AND     a                                   ;71cc
        NOP                                         ;71cd
        LD      a,d                                 ;71ce
        XOR     d                                   ;71cf
        NOP                                         ;71d0
        RLCA                                        ;71d1
        NOP                                         ;71d2
        NOP                                         ;71d3
        LD      (hl),a                              ;71d4
        RLCA                                        ;71d5
        RLCA                                        ;71d6
        LD      (hl),a                              ;71d7
        LD      (hl),a                              ;71d8
        XOR     d                                   ;71d9
        NOP                                         ;71da
        AND     b                                   ;71db
        LD      a,d                                 ;71dc
        JR      nc,b4_l71e9h                        ;71dd
        AND     b                                   ;71df
        LD      a,(0xa0)                            ;71e0
        NOP                                         ;71e3
        XOR     d                                   ;71e4
        INC     sp                                  ;71e5
        JR      nc,b4_l71e8h                        ;71e6
b4_l71e8h:
        AND     a                                   ;71e8
b4_l71e9h:
        LD      (hl),b                              ;71e9
        JR      nc,b4_l721ch                        ;71ea
        LD      (hl),a                              ;71ec
        AND     e                                   ;71ed
        NOP                                         ;71ee
        NOP                                         ;71ef
        AND     a                                   ;71f0
        AND     b                                   ;71f1
        INC     bc                                  ;71f2
        NOP                                         ;71f3
        AND     a                                   ;71f4
        NOP                                         ;71f5
        JR      nc,b4_l71f8h                        ;71f6
b4_l71f8h:
        NOP                                         ;71f8
        LD      a,d                                 ;71f9
        AND     a                                   ;71fa
        NOP                                         ;71fb
        NOP                                         ;71fc
        LD      a,d                                 ;71fd
        AND     a                                   ;71fe
        NOP                                         ;71ff
        NOP                                         ;7200
        LD      a,d                                 ;7201
        AND     a                                   ;7202
        LD      (bc),a                              ;7203
        NOP                                         ;7204
        SBC     a,b                                 ;7205
        LD      a,d                                 ;7206
        AND     a                                   ;7207
        NOP                                         ;7208
        NOP                                         ;7209
        LD      a,d                                 ;720a
        AND     a                                   ;720b
        NOP                                         ;720c
        NOP                                         ;720d
        LD      a,d                                 ;720e
        AND     a                                   ;720f
        NOP                                         ;7210
        NOP                                         ;7211
        LD      a,d                                 ;7212
        AND     a                                   ;7213
        NOP                                         ;7214
        NOP                                         ;7215
        LD      a,d                                 ;7216
        AND     a                                   ;7217
        NOP                                         ;7218
        XOR     d                                   ;7219
        XOR     d                                   ;721a
        LD      a,(bc)                              ;721b
b4_l721ch:
        NOP                                         ;721c
        AND     b                                   ;721d
        INC     bc                                  ;721e
        NOP                                         ;721f
        LD      (bc),a                              ;7220
        LD      a,(bc)                              ;7221
        ADC     a,a                                 ;7222
        AND     b                                   ;7223
        NOP                                         ;7224
        NOP                                         ;7225
        INC     sp                                  ;7226
b4_l7227h:
        JR      nc,b4_l725ch                        ;7227
        NOP                                         ;7229
        AND     b                                   ;722a
        INC     bc                                  ;722b
        JR      nc,b4_l722eh                        ;722c
b4_l722eh:
        NOP                                         ;722e
        AND     e                                   ;722f
        JR      nc,b4_l723ch                        ;7230
        INC     b                                   ;7232
        NOP                                         ;7233
        AND     e                                   ;7234
        LD      a,(bc)                              ;7235
        NOP                                         ;7236
        NOP                                         ;7237
        INC     c                                   ;7238
        RST     0                                   ;7239
        INC     c                                   ;723a
        RST     0                                   ;723b
b4_l723ch:
        INC     c                                   ;723c
        RST     0                                   ;723d
        INC     c                                   ;723e
        RST     0                                   ;723f
        INC     c                                   ;7240
        RST     0                                   ;7241
        INC     c                                   ;7242
        RST     0                                   ;7243
        INC     c                                   ;7244
        RST     0                                   ;7245
        INC     c                                   ;7246
        RST     0                                   ;7247
        INC     c                                   ;7248
        RST     0                                   ;7249
        INC     c                                   ;724a
        RST     0                                   ;724b
        INC     c                                   ;724c
        RST     0                                   ;724d
        INC     c                                   ;724e
        RST     0                                   ;724f
        INC     c                                   ;7250
        RST     0                                   ;7251
        INC     c                                   ;7252
        RST     0                                   ;7253
        INC     c                                   ;7254
        RST     0                                   ;7255
        INC     c                                   ;7256
        RST     0                                   ;7257
        INC     b                                   ;7258
        NOP                                         ;7259
        INC     b                                   ;725a
        XOR     d                                   ;725b
b4_l725ch:
        INC     b                                   ;725c
        LD      (hl),a                              ;725d
        INC     b                                   ;725e
        NOP                                         ;725f
        AND     h                                   ;7260
        XOR     d                                   ;7261
        LD      a,(bc)                              ;7262
        AND     b                                   ;7263
        XOR     d                                   ;7264
        LD      (hl),a                              ;7265
        RLCA                                        ;7266
        LD      (hl),b                              ;7267
        LD      (hl),a                              ;7268
        LD      (hl),a                              ;7269
        RLCA                                        ;726a
        LD      (hl),b                              ;726b
        LD      (hl),a                              ;726c
        LD      (hl),a                              ;726d
        RLCA                                        ;726e
        LD      (hl),b                              ;726f
        LD      (hl),a                              ;7270
        LD      (hl),a                              ;7271
        RLCA                                        ;7272
        LD      (hl),b                              ;7273
        LD      (hl),a                              ;7274
        LD      (hl),a                              ;7275
        RLCA                                        ;7276
        LD      (hl),b                              ;7277
        LD      (hl),a                              ;7278
        LD      (hl),a                              ;7279
        RLCA                                        ;727a
        LD      (hl),b                              ;727b
        LD      (hl),a                              ;727c
        LD      (hl),a                              ;727d
        RLCA                                        ;727e
        LD      (hl),b                              ;727f
        LD      (hl),a                              ;7280
        LD      (hl),a                              ;7281
        RLCA                                        ;7282
        LD      (hl),b                              ;7283
b4_l7284h:
        LD      (hl),a                              ;7284
        INC     b                                   ;7285
        NOP                                         ;7286
        INC     b                                   ;7287
        XOR     d                                   ;7288
        INC     b                                   ;7289
        LD      (hl),a                              ;728a
        EX      af,af'                              ;728b
        NOP                                         ;728c
        ADD     a,c                                 ;728d
        RLCA                                        ;728e
        INC     bc                                  ;728f
        LD      (hl),a                              ;7290
        ADD     a,c                                 ;7291
        INC     bc                                  ;7292
        INC     bc                                  ;7293
        INC     sp                                  ;7294
        ADD     a,c                                 ;7295
        INC     bc                                  ;7296
        INC     bc                                  ;7297
        INC     sp                                  ;7298
        ADD     a,l                                 ;7299
        LD      c,0x3e                              ;729a
        EX      (sp),hl                             ;729c
        EX      (sp),hl                             ;729d
        LD      c,0x3                               ;729e
        XOR     0x81                                ;72a0
        LD      c,0x3                               ;72a2
        XOR     0x4                                 ;72a4
        NOP                                         ;72a6
        OR      (hl)                                ;72a7
        LD      a,(bc)                              ;72a8
        LD      (hl),a                              ;72a9
        LD      a,(bc)                              ;72aa
        LD      (hl),a                              ;72ab
        LD      a,(bc)                              ;72ac
b4_l72adh:
        AND     a                                   ;72ad
        LD      a,(bc)                              ;72ae
        LD      (hl),a                              ;72af
        LD      a,(bc)                              ;72b0
        LD      (hl),a                              ;72b1
        LD      a,(bc)                              ;72b2
        LD      (hl),a                              ;72b3
        LD      a,(bc)                              ;72b4
        LD      (hl),a                              ;72b5
        LD      a,(bc)                              ;72b6
        LD      (hl),a                              ;72b7
        LD      a,(bc)                              ;72b8
        LD      a,d                                 ;72b9
        LD      a,(bc)                              ;72ba
        LD      (hl),a                              ;72bb
        LD      a,(bc)                              ;72bc
        LD      (hl),a                              ;72bd
        LD      a,(bc)                              ;72be
        LD      (hl),a                              ;72bf
        LD      a,(bc)                              ;72c0
        LD      (hl),a                              ;72c1
        LD      a,(bc)                              ;72c2
        LD      (hl),a                              ;72c3
        AND     b                                   ;72c4
        XOR     d                                   ;72c5
        XOR     d                                   ;72c6
        INC     bc                                  ;72c7
        AND     b                                   ;72c8
        LD      a,(bc)                              ;72c9
        NOP                                         ;72ca
        NOP                                         ;72cb
        AND     b                                   ;72cc
        AND     e                                   ;72cd
        INC     bc                                  ;72ce
        JR      nc,b4_l72dbh                        ;72cf
        NOP                                         ;72d1
        INC     bc                                  ;72d2
        NOP                                         ;72d3
        AND     e                                   ;72d4
        AND     b                                   ;72d5
        JR      nc,b4_l72dbh                        ;72d6
        NOP                                         ;72d8
        LD      a,(bc)                              ;72d9
        XOR     d                                   ;72da
b4_l72dbh:
        NOP                                         ;72db
        NOP                                         ;72dc
        LD      a,(bc)                              ;72dd
        LD      a,(bc)                              ;72de
        NOP                                         ;72df
        EX      af,af'                              ;72e0
        LD      (hl),a                              ;72e1
        INC     b                                   ;72e2
        RLCA                                        ;72e3
        JR      nz,b4_l72adh                        ;72e4
        INC     b                                   ;72e6
        RLCA                                        ;72e7
        INC     c                                   ;72e8
        LD      (hl),a                              ;72e9
        ADD     a,e                                 ;72ea
        LD      a,(bc)                              ;72eb
        NOP                                         ;72ec
        LD      a,(bc)                              ;72ed
        INC     b                                   ;72ee
        NOP                                         ;72ef
        ADC     a,d                                 ;72f0
        LD      a,(bc)                              ;72f1
        JR      nc,b4_l72f4h                        ;72f2
