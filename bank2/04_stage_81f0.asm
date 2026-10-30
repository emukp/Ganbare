; === DrawStageIntroStages (0x81f0) ===
DrawStageIntroStages:
        DI                                          ;81f0
        LD      a,0x9                               ;81f1
        LD      (0xa000),a                          ;81f3
        LD      (BanksInA0),a                       ;81f6
        EI                                          ;81f9
        LD      a,(GameLand)                        ;81fa
        LD      de,0xb8ec                           ;81fd
        LD      b,a                                 ;8200
        ADD     a,a                                 ;8201
        ADD     a,a                                 ;8202
        ADD     a,a                                 ;8203
        SUB     b                                   ;8204
        CALL    ADD_DE_A                            ;8205
        LD      b,0x7                               ;8208
        LD      hl,b2_l81c2h                        ;820a
b2_l820dh:
        LD      a,(de)                              ;820d
        INC     de                                  ;820e
        PUSH    hl                                  ;820f
        EXX                                         ;8210
        POP     hl                                  ;8211
        LD      c,(hl)                              ;8212
        INC     hl                                  ;8213
        LD      h,(hl)                              ;8214
        LD      l,c                                 ;8215
        CALL    b2_sub_822ah                        ;8216
        EXX                                         ;8219
        INC     hl                                  ;821a
        INC     hl                                  ;821b
        DJNZ    b2_l820dh                           ;821c
        LD      de,0x5020                           ;821e
        LD      hl,ApSndTrackPC                     ;8221
        CALL    b2_sub_8233h                        ;8224
        JP      SetBanks1_2_3                       ;8227
b2_sub_822ah:
        EX      de,hl                               ;822a
        ADD     a,a                                 ;822b
        ADD     a,a                                 ;822c
        ADD     a,a                                 ;822d
        ADD     a,a                                 ;822e
        ADD     a,a                                 ;822f
        LD      h,a                                 ;8230
        LD      l,0x10                              ;8231
b2_sub_8233h:
        LD      a,0x1                               ;8233
        LD      bc,0x2018                           ;8235
        JP      VDP_Copy_Byte                       ;8238
