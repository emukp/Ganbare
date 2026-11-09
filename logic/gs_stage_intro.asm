GS_StageIntro:
        DJNZ    StageIntroPhase2                    ;5ea3
        CALL    0x823b                              ;5ea5
        LD      hl,WaitCounter                      ;5ea8
        DEC     (hl)                                ;5eab
        RET     nz                                  ;5eac
        CALL    ClearScreen                         ;5ead
        CALL    0x663a                              ;5eb0
        CALL    DrawGameHud                         ;5eb3
        LD      a,(BlipCounter)                     ;5eb6
        SUB     0x6                                 ;5eb9
        CP      0x2                                 ;5ebb
        CALL    c,0xbedd                            ;5ebd
        LD      hl,BGameFieldActive                 ;5ec0
        LD      (hl),0x1                            ;5ec3
        LD      a,0x95                              ;5ec5
        CALL    ProcessSoundCommand                 ;5ec7
        CALL    b0_sub_4cabh                        ;5eca
        DI                                          ;5ecd
        LD      a,0x9                               ;5ece
        LD      (0xa000),a                          ;5ed0
        LD      (BanksInA0),a                       ;5ed3
        EI                                          ;5ed6
        CALL    0x74a6                              ;5ed7
        CALL    SetBanks1_2_3                       ;5eda
        CALL    b0_sub_5b1dh                        ;5edd
        CALL    UploadPlayerSprite                  ;5ee0
        JP      NextSubstatus                       ;5ee3
StageIntroPhase2:
        DJNZ    StageIntroPhase0                    ;5ee6
        CALL    PlayGameStartSnd                    ;5ee8
        RET     nz                                  ;5eeb
        CALL    PlayGameSndCmd                      ;5eec
NextStatusT:
        LD      a,0x20                              ;5eef
NextGameStatus:
        LD      (WaitCounter),a                     ;5ef1
        LD      hl,GameStatus                       ;5ef4
        INC     (hl)                                ;5ef7
ResetSubstatus:
        XOR     a                                   ;5ef8
        LD      (GameSubStatus),a                   ;5ef9
        RET                                         ;5efc

; === StageIntroPhase0 (0x5efd) ===
StageIntroPhase0:
        CALL    ClearScreen                         ;5efd
        LD      a,(PlayerStatus)                    ;5f00
        SUB     0x1                                 ;5f03
        DAA                                         ;5f05
        LD      (PlayerStatus),a                    ;5f06
        CALL    ClearStageIntoBackground            ;5f09
        CALL    SetStageIntoPalette                 ;5f0c
        CALL    0x80d9                              ;5f0f
        LD      a,0x78                              ;5f12
        JP      NextSubstatusT                      ;5f14
