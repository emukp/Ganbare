; === ResetSound (0x4fb5) ===
ResetSound:
        LD      a,0xbc                              ;4fb5
        LD      (BSndPsgMixer),a                    ;4fb7
        XOR     a                                   ;4fba
        LD      (BSndTickCounter),a                 ;4fbb
        LD      (BSndSongCounter),a                 ;4fbe
        LD      (BSndAuxFlag),a                     ;4fc1
        LD      (0xc0b2),a                          ;4fc4
StopMusic:
        XOR     a                                   ;4fc7
        LD      (BSndMusicId),a                     ;4fc8
        LD      (BSndSfxId),a                       ;4fcb
        LD      (BSndSfxMode),a                     ;4fce
        LD      (BSndMusicPlaying),a                ;4fd1
        LD      hl,0x6067                           ;4fd4
        LD      (ApSndTrackPC),hl                   ;4fd7
        LD      (0xc012),hl                         ;4fda
        LD      (0xc014),hl                         ;4fdd
        LD      (0xc016),hl                         ;4fe0
        RET                                         ;4fe3

; === ProcessSoundCommand (0x4fe4) ===
ProcessSoundCommand:
        PUSH    hl                                  ;4fe4
        PUSH    de                                  ;4fe5
        PUSH    bc                                  ;4fe6
        PUSH    af                                  ;4fe7
        DI                                          ;4fe8
        LD      a,0xa                               ;4fe9
        LD      (0x6000),a                          ;4feb
        LD      (BanksIn60),a                       ;4fee
        EI                                          ;4ff1
        DI                                          ;4ff2
        LD      a,0xb                               ;4ff3
        LD      (0x8000),a                          ;4ff5
        LD      (BanksIn80),a                       ;4ff8
        EI                                          ;4ffb
        DI                                          ;4ffc
        LD      a,0xc                               ;4ffd
        LD      (0xa000),a                          ;4fff
        LD      (BanksInA0),a                       ;5002
        EI                                          ;5005
        POP     af                                  ;5006
        DI                                          ;5007
        OR      a                                   ;5008
        JP      z,ProcessStopMusic                  ;5009
        CP      0xfd                                ;500c
        JP      nc,ProcessSoundCommand2             ;500e
        OR      a                                   ;5011
        JP      p,b0_l50bdh                         ;5012
        LD      (BSndSfxId),a                       ;5015
        LD      a,(0xc0af)                          ;5018
        OR      a                                   ;501b
        JR      z,NoNoiseSfx                        ;501c
        LD      a,(BSndSfxId)                       ;501e
        CP      0x82                                ;5021
        JR      c,NoNoiseSfx                        ;5023
        CP      0x88                                ;5025
        JR      nc,NoNoiseSfx                       ;5027
        LD      a,0x1                               ;5029
        LD      (BSndNoiseFxFlag),a                 ;502b
        XOR     a                                   ;502e
        JR      b0_l5035h                           ;502f
NoNoiseSfx:
        XOR     a                                   ;5031
        LD      (BSndNoiseFxFlag),a                 ;5032
b0_l5035h:
        LD      (BSndNoiseFxTmr),a                  ;5035
        LD      a,(BSndSfxId)                       ;5038
        LD      de,0xc01a                           ;503b
        LD      hl,sndChannelTemplate               ;503e
        LD      bc,0x1a                             ;5041
        LDIR                                        ;5044
        LD      hl,sndChannelTemplate               ;5046
        LD      bc,0x1a                             ;5049
        LDIR                                        ;504c
        LD      hl,sndChannelTemplate               ;504e
        LD      bc,0x1a                             ;5051
        LDIR                                        ;5054
        AND     0x7f                                ;5056
        RLCA                                        ;5058
        LD      e,a                                 ;5059
        RLCA                                        ;505a
        ADD     a,e                                 ;505b
        LD      hl,0x6592                           ;505c
        ADD     a,l                                 ;505f
        LD      l,a                                 ;5060
        JR      nc,b0_l5064h                        ;5061
        INC     h                                   ;5063
b0_l5064h:
        LD      e,(hl)                              ;5064
        INC     hl                                  ;5065
        LD      d,(hl)                              ;5066
        INC     hl                                  ;5067
        LD      (0xc01a),de                         ;5068
        LD      e,(hl)                              ;506c
        INC     hl                                  ;506d
        LD      d,(hl)                              ;506e
        INC     hl                                  ;506f
        LD      (0xc034),de                         ;5070
        LD      e,(hl)                              ;5074
        INC     hl                                  ;5075
        LD      d,(hl)                              ;5076
        LD      (0xc04e),de                         ;5077
        LD      hl,0x60f4                           ;507b
        LD      (ApSndTrackPC),hl                   ;507e
        LD      hl,0x60fb                           ;5081
        LD      (0xc012),hl                         ;5084
        LD      hl,0x6102                           ;5087
        LD      (0xc014),hl                         ;508a
b0_l508dh:
        XOR     a                                   ;508d
        LD      (BSndTickCounter),a                 ;508e
        LD      (BSndSongCounter),a                 ;5091
        LD      (BSndMusicPlaying),a                ;5094
        LD      a,0x7                               ;5097
        LD      (BSndAuxFlag),a                     ;5099
ProcessSoundCommandEnd:
        CALL    SetBanks1_2_3                       ;509c
        POP     bc                                  ;509f
        POP     de                                  ;50a0
        POP     hl                                  ;50a1
        RET                                         ;50a2
sndChannelTemplate: equ     #50a3
        DEFB    0x00                                ;50a3 ; data:data
        DEFB    0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00  ;50a4 ; data:code-gap
        DEFB    0x01,0x00,0x00,0x00,0x00,0x01,0x01,0x00  ;50ac
        DEFB    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00  ;50b4
        DEFB    0x00                                ;50bc
b0_l50bdh:
        LD      c,a                                 ;50bd
        LD      a,(BSndMusicPlaying)                ;50be
        OR      a                                   ;50c1
        JP      nz,ProcessSoundCommandEnd           ;50c2
        LD      a,(BSndMusicId)                     ;50c5
        CP      c                                   ;50c8
        JP      z,b0_l50cfh                         ;50c9
        JP      nc,ProcessSoundCommandEnd           ;50cc
b0_l50cfh:
        LD      a,c                                 ;50cf
        LD      (BSndMusicId),a                     ;50d0
        LD      de,0xc068                           ;50d3
        LD      hl,sndChannelTemplate               ;50d6
        LD      bc,0x1a                             ;50d9
        LDIR                                        ;50dc
        RLCA                                        ;50de
        LD      hl,0x6550                           ;50df
        ADD     a,l                                 ;50e2
        LD      l,a                                 ;50e3
        JR      nc,b0_l50e7h                        ;50e4
        INC     h                                   ;50e6
b0_l50e7h:
        LD      e,(hl)                              ;50e7
        INC     hl                                  ;50e8
        LD      d,(hl)                              ;50e9
        LD      (0xc074),de                         ;50ea
        LD      hl,0x6449                           ;50ee
        LD      (0xc016),hl                         ;50f1
        JP      ProcessSoundCommandEnd              ;50f4
ProcessStopMusic:
        CALL    StopMusic                           ;50f7
        JP      ProcessSoundCommandEnd              ;50fa
ProcessSoundCommand2:
        JP      z,ProcessSfxMixer                   ;50fd
        CP      0xfe                                ;5100
        JP      z,ProcessSoundResume                ;5102
        LD      a,0x3a                              ;5105
        LD      (BSndTickCounter),a                 ;5107
        JP      ProcessSoundCommandEnd              ;510a
ProcessSfxMixer:
        LD      a,0x1                               ;510d
        LD      (BSndSfxMode),a                     ;510f
        LD      a,(BSndTickCounter)                 ;5112
        LD      (BSndSaveTick),a                    ;5115
        LD      a,(BSndSongCounter)                 ;5118
        LD      (BSndSaveSongCnt),a                 ;511b
        LD      a,(BSndPsgMixer)                    ;511e
        LD      (BSndSaveMixer),a                   ;5121
        LD      a,(BSndAuxFlag)                     ;5124
        LD      (BSndSaveAux),a                     ;5127
        XOR     a                                   ;512a
        LD      (BSndAuxFlag),a                     ;512b
        LD      a,0xbf                              ;512e
        LD      (BSndPsgMixer),a                    ;5130
        XOR     a                                   ;5133
        CALL    RDPSG                               ;5134
        LD      (AbSndSavePsg),a                    ;5137
        LD      a,0x1                               ;513a
        CALL    RDPSG                               ;513c
        LD      (0xc0a5),a                          ;513f
        LD      a,0x8                               ;5142
        CALL    RDPSG                               ;5144
        LD      (0xc0a6),a                          ;5147
        LD      a,0x9                               ;514a
        CALL    RDPSG                               ;514c
        LD      (0xc0a7),a                          ;514f
        LD      a,0xa                               ;5152
        CALL    RDPSG                               ;5154
        LD      (0xc0a8),a                          ;5157
        LD      a,0x9                               ;515a
        LD      e,0x0                               ;515c
        CALL    WRTPSG                              ;515e
        LD      a,0xa                               ;5161
        LD      e,0x0                               ;5163
        CALL    WRTPSG                              ;5165
        XOR     a                                   ;5168
        LD      (BSndCurPsgChan),a                  ;5169
        LD      a,0x4                               ;516c
        LD      (BSndCurTrack),a                    ;516e
        LD      hl,0x60ed                           ;5171
        LD      (PSndSfxHandler),hl                 ;5174
        LD      de,0xc082                           ;5177
        LD      hl,sndChannelTemplate               ;517a
        LD      bc,0x1a                             ;517d
        LDIR                                        ;5180
        LD      hl,0x6b74                           ;5182
        LD      (0xc082),hl                         ;5185
        JP      b0_l508dh                           ;5188
ProcessSoundResume:
        XOR     a                                   ;518b
        LD      (BSndSfxMode),a                     ;518c
        LD      a,(BSndSaveTick)                    ;518f
        LD      (BSndTickCounter),a                 ;5192
        LD      a,(BSndSaveSongCnt)                 ;5195
        LD      (BSndSongCounter),a                 ;5198
        LD      a,(BSndSaveMixer)                   ;519b
        LD      (BSndPsgMixer),a                    ;519e
        LD      a,(BSndSaveAux)                     ;51a1
        LD      (BSndAuxFlag),a                     ;51a4
        LD      a,(AbSndSavePsg)                    ;51a7
        LD      e,a                                 ;51aa
        XOR     a                                   ;51ab
        CALL    WRTPSG                              ;51ac
        LD      a,(0xc0a5)                          ;51af
        LD      e,a                                 ;51b2
        LD      a,0x1                               ;51b3
        CALL    WRTPSG                              ;51b5
        LD      a,(0xc0a6)                          ;51b8
        LD      e,a                                 ;51bb
        LD      a,0x8                               ;51bc
        CALL    WRTPSG                              ;51be
        LD      a,(0xc0a7)                          ;51c1
        LD      e,a                                 ;51c4
        LD      a,0x9                               ;51c5
        CALL    WRTPSG                              ;51c7
        LD      a,(0xc0a8)                          ;51ca
        LD      e,a                                 ;51cd
        LD      a,0xa                               ;51ce
        CALL    WRTPSG                              ;51d0
        JP      ProcessSoundCommandEnd              ;51d3
