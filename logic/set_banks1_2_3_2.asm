SetBanks1_2_3_2:
        JP      SetBanks1_2_3                       ;911b
b2_sub_911eh:
        LD      a,(de)                              ;911e
        OR      a                                   ;911f
        JR      z,b2_l9130h                         ;9120
        INC     de                                  ;9122
        LD      b,a                                 ;9123
        LD      a,(0xc281)                          ;9124
        LD      c,a                                 ;9127
b2_l9128h:
        LD      a,(de)                              ;9128
        CP      c                                   ;9129
        RET     z                                   ;912a
        INC     de                                  ;912b
        INC     de                                  ;912c
        INC     de                                  ;912d
        DJNZ    b2_l9128h                           ;912e
b2_l9130h:
        SCF                                         ;9130
        RET                                         ;9131
b2_sub_9132h:
        LD      de,0xa02b                           ;9132
        CALL    GetPointerDE2A                      ;9135
        EX      de,hl                               ;9138
        LD      c,(hl)                              ;9139
        INC     hl                                  ;913a
        LD      b,(hl)                              ;913b
        INC     hl                                  ;913c
        LD      a,b                                 ;913d
        CP      0xff                                ;913e
        RET     z                                   ;9140
b2_l9141h:
        LD      a,0xff                              ;9141
        LD      e,(hl)                              ;9143
        CP      e                                   ;9144
        RET     z                                   ;9145
        INC     hl                                  ;9146
        LD      d,(hl)                              ;9147
        INC     hl                                  ;9148
        PUSH    hl                                  ;9149
        LD      a,0xff                              ;914a
        LD      (0xcd2a),a                          ;914c
        CALL    0x4e84                              ;914f
        POP     hl                                  ;9152
        JR      b2_l9141h                           ;9153
b2_sub_9155h:
        LD      de,0xb36d                           ;9155
        CALL    GetPointerDE2A                      ;9158
        EX      de,hl                               ;915b
b2_l915ch:
        LD      c,(hl)                              ;915c
        INC     hl                                  ;915d
        LD      b,(hl)                              ;915e
        INC     hl                                  ;915f
        LD      a,c                                 ;9160
        CP      0xff                                ;9161
        RET     z                                   ;9163
        LD      de,0x0                              ;9164
        PUSH    hl                                  ;9167
        CALL    0x4e84                              ;9168
        POP     hl                                  ;916b
        JR      b2_l915ch                           ;916c
b2_l916eh:
        LD      a,0x1                               ;916e
        LD      (0xcd15),a                          ;9170
        CALL    b2_sub_9221h                        ;9173
        LD      a,(0xc484)                          ;9176
        ADD     a,a                                 ;9179
        ADD     a,a                                 ;917a
        ADD     a,a                                 ;917b
        LD      de,0xcde0                           ;917c
        CALL    ADD_DE_A                            ;917f
        LD      b,0x4                               ;9182
b2_l9184h:
        XOR     a                                   ;9184
        LD      (0xcd2a),a                          ;9185
        LD      a,(de)                              ;9188
        INC     a                                   ;9189
        JP      z,SetBanks1_2_3_2                   ;918a
        PUSH    bc                                  ;918d
        PUSH    de                                  ;918e
        EXX                                         ;918f
        POP     de                                  ;9190
        CALL    b2_sub_91d8h                        ;9191
        EXX                                         ;9194
        LD      a,(0xcd4f)                          ;9195
        OR      a                                   ;9198
        JR      nz,b2_l91a3h                        ;9199
        LD      a,(de)                              ;919b
        AND     0xf                                 ;919c
        PUSH    de                                  ;919e
        CALL    nz,b2_sub_8fd5h                     ;919f
        POP     de                                  ;91a2
b2_l91a3h:
        LD      a,(de)                              ;91a3
        LD      b,a                                 ;91a4
        AND     0xf0                                ;91a5
        ADD     a,0x20                              ;91a7
        LD      (0xcd27),a                          ;91a9
        INC     de                                  ;91ac
        LD      a,(de)                              ;91ad
        AND     0xf0                                ;91ae
        LD      (0xcd28),a                          ;91b0
        LD      a,(0xcd4f)                          ;91b3
        OR      a                                   ;91b6
        JR      nz,b2_l91ceh                        ;91b7
        LD      a,b                                 ;91b9
        AND     0xf                                 ;91ba
        CALL    z,b2_sub_91cbh                      ;91bc
b2_l91bfh:
        INC     de                                  ;91bf
        PUSH    de                                  ;91c0
        CALL    b2_sub_9155h                        ;91c1
        POP     de                                  ;91c4
        POP     bc                                  ;91c5
        DJNZ    b2_l9184h                           ;91c6
        JP      SetBanks1_2_3_2                     ;91c8
b2_sub_91cbh:
        LD      a,0x2                               ;91cb
        RET                                         ;91cd
b2_l91ceh:
        CP      0x1                                 ;91ce
        LD      a,0x0                               ;91d0
        JR      z,b2_l91bfh                         ;91d2
        LD      a,0x1                               ;91d4
        JR      b2_l91bfh                           ;91d6
b2_sub_91d8h:
        CP      0x8                                 ;91d8
        LD      a,0x0                               ;91da
        LD      (0xcd4f),a                          ;91dc
        RET     z                                   ;91df
        LD      hl,0xc2b0                           ;91e0
        LD      a,(0xcd4e)                          ;91e3
        OR      a                                   ;91e6
        RET     z                                   ;91e7
        LD      b,a                                 ;91e8
        LD      a,(de)                              ;91e9
        LD      c,a                                 ;91ea
        INC     de                                  ;91eb
        LD      a,(de)                              ;91ec
        AND     0xf0                                ;91ed
        LD      d,a                                 ;91ef
        LD      a,c                                 ;91f0
        AND     0xf0                                ;91f1
        LD      e,a                                 ;91f3
b2_l91f4h:
        LD      a,(0xc484)                          ;91f4
        CP      (hl)                                ;91f7
        LD      a,0x3                               ;91f8
        JR      nz,b2_l920ah                        ;91fa
        INC     hl                                  ;91fc
        LD      a,d                                 ;91fd
        CP      (hl)                                ;91fe
        LD      a,0x2                               ;91ff
        JR      nz,b2_l920ah                        ;9201
        INC     hl                                  ;9203
        LD      a,e                                 ;9204
        CP      (hl)                                ;9205
        LD      a,0x1                               ;9206
        JR      z,b2_l9210h                         ;9208
b2_l920ah:
        CALL    ADD_HL_A                            ;920a
        DJNZ    b2_l91f4h                           ;920d
        RET                                         ;920f
b2_l9210h:
        LD      a,0x1                               ;9210
        LD      (0xcd4f),a                          ;9212
        LD      a,c                                 ;9215
        AND     0xf                                 ;9216
        CP      0xe                                 ;9218
        RET     nz                                  ;921a
        LD      a,0x2                               ;921b
        LD      (0xcd4f),a                          ;921d
        RET                                         ;9220
b2_sub_9221h:
        LD      a,(GameLand)                        ;9221
        LD      b,a                                 ;9224
        ADD     a,a                                 ;9225
        ADD     a,a                                 ;9226
        ADD     a,a                                 ;9227
        SUB     b                                   ;9228
        LD      b,a                                 ;9229
        LD      a,(GameScore)                       ;922a
        ADD     a,b                                 ;922d
        LD      de,0xb3be                           ;922e
        CALL    GetPointerDE2A                      ;9231
        LD      hl,0xcde0                           ;9234
        LD      c,0x4                               ;9237
b2_l9239h:
        LD      a,(de)                              ;9239
        LD      (hl),a                              ;923a
        INC     de                                  ;923b
        INC     hl                                  ;923c
        LD      a,(de)                              ;923d
        LD      (hl),a                              ;923e
        INC     hl                                  ;923f
        DEC     c                                   ;9240
        LD      a,(de)                              ;9241
        AND     0x8                                 ;9242
        CALL    nz,b2_sub_924eh                     ;9244
        LD      a,(de)                              ;9247
        AND     0x4                                 ;9248
        RET     nz                                  ;924a
        INC     de                                  ;924b
        JR      b2_l9239h                           ;924c
b2_sub_924eh:
        LD      b,c                                 ;924e
        LD      c,0x4                               ;924f
        LD      a,b                                 ;9251
        OR      a                                   ;9252
        RET     z                                   ;9253
        LD      a,0xff                              ;9254
b2_l9256h:
        LD      (hl),a                              ;9256
        INC     hl                                  ;9257
        LD      (hl),a                              ;9258
        INC     hl                                  ;9259
        DJNZ    b2_l9256h                           ;925a
        RET                                         ;925c
        LD      a,(ControlConfig)                   ;925d
        AND     0x40                                ;9260
        JR      z,b2_l9269h                         ;9262
        LD      a,0x81                              ;9264
        CALL    ProcessSoundCommand                 ;9266
b2_l9269h:
        XOR     a                                   ;9269
        LD      (0xcd2e),a                          ;926a
        LD      hl,0xc500                           ;926d
        LD      de,0x10                             ;9270
        LD      b,0x3                               ;9273
b2_l9275h:
        LD      a,(hl)                              ;9275
        AND     0x80                                ;9276
        JR      nz,b2_l927eh                        ;9278
        ADD     hl,de                               ;927a
        DJNZ    b2_l9275h                           ;927b
        RET                                         ;927d
b2_l927eh:
        LD      a,(hl)                              ;927e
        AND     0x7f                                ;927f
        PUSH    af                                  ;9281
        CALL    0x53e3                              ;9282
        POP     af                                  ;9285
        LD      (0xcd5f),a                          ;9286
        LD      de,b2_l9567h                        ;9289
        CALL    GetPointerDE2A                      ;928c
b2_l928fh:
        LD      a,(de)                              ;928f
        INC     de                                  ;9290
        OR      a                                   ;9291
        JR      z,b2_l929bh                         ;9292
        PUSH    de                                  ;9294
        CALL    DrawShopDialog                      ;9295
        POP     de                                  ;9298
        JR      b2_l928fh                           ;9299
b2_l929bh:
        LD      hl,0xcd80                           ;929b
        EX      de,hl                               ;929e
        LDI                                         ;929f
        LDI                                         ;92a1
        EX      de,hl                               ;92a3
        PUSH    de                                  ;92a4
        CALL    b2_sub_92b2h                        ;92a5
        POP     de                                  ;92a8
        LD      a,(de)                              ;92a9
        JP      PrintDialogText                     ;92aa
