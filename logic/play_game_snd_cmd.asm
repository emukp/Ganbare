PlayGameSndCmd:
        LD      a,(ControlConfig)                   ;416f
        AND     0x40                                ;4172
        RET     z                                   ;4174
        LD      hl,b0_l4182h                        ;4175
        LD      a,(0xc289)                          ;4178
        CALL    ADD_HL_A                            ;417b
        LD      a,(hl)                              ;417e
        JP      ProcessSoundCommand                 ;417f
b0_l4182h:
        ADD     a,d                                 ;4182
        ADD     a,e                                 ;4183
        ADD     a,(hl)                              ;4184
        ADD     a,h                                 ;4185
        ADD     a,l                                 ;4186
        ADD     a,a                                 ;4187
        CALL    SetBanks4_5_6                       ;4188
        CALL    GetStageTableIndex                  ;418b
        LD      hl,0xb7d0                           ;418e
        CALL    GetTableWord                        ;4191
        PUSH    hl                                  ;4194
        LD      a,(hl)                              ;4195
        PUSH    af                                  ;4196
        ADD     a,a                                 ;4197
        LD      h,0x0                               ;4198
        LD      l,a                                 ;419a
        ADD     hl,hl                               ;419b
        DEC     hl                                  ;419c
        LD      b,h                                 ;419d
        LD      c,l                                 ;419e
        LD      hl,0xe780                           ;419f
        LD      de,0xe781                           ;41a2
        LD      (hl),0xff                           ;41a5
        LDIR                                        ;41a7
        POP     af                                  ;41a9
        DEC     a                                   ;41aa
        LD      b,a                                 ;41ab
        LD      hl,0xe783                           ;41ac
        LD      a,0x1                               ;41af
        LD      (hl),a                              ;41b1
b0_l41b2h:
        INC     hl                                  ;41b2
        INC     hl                                  ;41b3
        INC     hl                                  ;41b4
        DEC     a                                   ;41b5
        LD      (hl),a                              ;41b6
        INC     hl                                  ;41b7
        INC     a                                   ;41b8
        INC     a                                   ;41b9
        LD      (hl),a                              ;41ba
        DJNZ    b0_l41b2h                           ;41bb
        LD      (hl),0xff                           ;41bd
        POP     hl                                  ;41bf
        INC     hl                                  ;41c0
        LD      a,(hl)                              ;41c1
        AND     a                                   ;41c2
        JP      z,SetBanks1_2_3                     ;41c3
        LD      b,a                                 ;41c6
        INC     hl                                  ;41c7
b0_l41c8h:
        PUSH    hl                                  ;41c8
        LD      a,(hl)                              ;41c9
        AND     0x7f                                ;41ca
        ADD     a,a                                 ;41cc
        LD      h,0x0                               ;41cd
        LD      l,a                                 ;41cf
        ADD     hl,hl                               ;41d0
        LD      de,0xe780                           ;41d1
        ADD     hl,de                               ;41d4
        EX      de,hl                               ;41d5
        POP     hl                                  ;41d6
        LD      a,(hl)                              ;41d7
        LD      c,0x0                               ;41d8
        RLA                                         ;41da
        RL      c                                   ;41db
        INC     hl                                  ;41dd
        LD      a,(hl)                              ;41de
        RLA                                         ;41df
        RL      c                                   ;41e0
        LD      a,c                                 ;41e2
        CALL    ADD_DE_A                            ;41e3
        LD      a,(hl)                              ;41e6
        AND     0x7f                                ;41e7
        CP      0x7f                                ;41e9
        JR      nz,b0_l41efh                        ;41eb
        LD      a,0xff                              ;41ed
b0_l41efh:
        LD      (de),a                              ;41ef
        INC     hl                                  ;41f0
        DJNZ    b0_l41c8h                           ;41f1
        JP      SetBanks1_2_3                       ;41f3
GetStageTableIndex:
        LD      a,(GameLand)                        ;41f6
        LD      b,a                                 ;41f9
        ADD     a,a                                 ;41fa
        LD      c,a                                 ;41fb
        ADD     a,a                                 ;41fc
        ADD     a,b                                 ;41fd
        ADD     a,c                                 ;41fe
        LD      c,a                                 ;41ff
        LD      a,(GameScore)                       ;4200
        ADD     a,c                                 ;4203
        ADD     a,a                                 ;4204
        RET                                         ;4205

