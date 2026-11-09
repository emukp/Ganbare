; === GameStatusLogic (0x5dbb) ===
GameStatusLogic:
        LD      hl,TickCounter                      ;5dbb
        INC     (hl)                                ;5dbe
        LD      bc,(GameStatus)                     ;5dbf
        LD      a,c                                 ;5dc3
        CP      0x3                                 ;5dc4
        JR      nc,GameStatusLogic2                 ;5dc6
b0_l5dc8h:
        LD      hl,0x62fe                           ;5dc8
        PUSH    hl                                  ;5dcb
GameStatusLogic2:
        CALL    JumpIndex                           ;5dcc
GameStatusTbl: equ     #5dcf
        DEFW    GS_Logo,GS_Title,GS_AttractDemo,GS_StartGame  ;5dcf ; data:table
        DEFW    GS_StageIntro,GS_Playing,GS_PlayerSwap,GS_GameOver  ;5dd7
        DEFW    GS_BonusStage,GS_SceneRouter,GS_Pause,GS_StagePlay  ;5ddf
        DEFW    GS_GmCheatMenu,GS_MinigamePerform,GS_LandSelect,GS_EndingDemo  ;5de7
GS_Logo:
        DJNZ    KonamiLogoPhase2                    ;5def
KonamiLogoPhase1:
        CALL    0x6486                              ;5df1
        LD      a,(isDrawKonamiLogoFinished)        ;5df4
        OR      a                                   ;5df7
        RET     z                                   ;5df8
        CALL    LoadTitleScreenAssets               ;5df9
        XOR     a                                   ;5dfc
        JR      NextSubstatusT                      ;5dfd
KonamiLogoPhase2:
        DJNZ    KonamiLogoPhase0                    ;5dff
        LD      hl,WaitCounter                      ;5e01
        DEC     (hl)                                ;5e04
        RET     nz                                  ;5e05
        CALL    InitTitleScreen                     ;5e06
        XOR     a                                   ;5e09
        JP      NextGameStatus                      ;5e0a
KonamiLogoPhase0:
        CALL    ClearScreen                         ;5e0d
        CALL    0x643f                              ;5e10
        JR      NextSubstatus                       ;5e13
GS_Title:
        LD      hl,WaitCounter                      ;5e15
        DEC     (hl)                                ;5e18
        JP      nz,PreDrawTitleCursor               ;5e19
        JP      NextStatusT                         ;5e1c
GS_AttractDemo:
        DJNZ    AttractDemoPhase1                   ;5e1f
        CALL    0x6923                              ;5e21
        CALL    0x68f3                              ;5e24
        LD      a,(BGameFieldActive)                ;5e27
        OR      a                                   ;5e2a
        RET     nz                                  ;5e2b
b0_l5e2ch:
        XOR     a                                   ;5e2c

; === SetGameStatus (0x5e2d) ===
SetGameStatus:
        LD      (GameStatus),a                      ;5e2d
        LD      a,0x20                              ;5e30
        LD      (WaitCounter),a                     ;5e32
        JP      ResetSubstatus                      ;5e35
AttractDemoPhase1:
        CALL    ClearScreen                         ;5e38
        CALL    0x688b                              ;5e3b
        LD      a,0x20                              ;5e3e

; === NextSubstatusT (0x5e40) ===
NextSubstatusT:
        LD      (WaitCounter),a                     ;5e40
NextSubstatus:
        LD      hl,GameSubStatus                    ;5e43
        INC     (hl)                                ;5e46
        RET                                         ;5e47

; === GS_StartGame (0x5e48) ===
GS_StartGame:
        DJNZ    StartGamePhase0                     ;5e48
        LD      a,(ControlConfig)                   ;5e4a
        BIT     5,a                                 ;5e4d
BlinkSelectedMenuItem:
        LD      hl,0x63bc                           ;5e4f
        JR      z,b0_l5e57h                         ;5e52
        LD      hl,0x63cb                           ;5e54
b0_l5e57h:
        LD      a,(WaitCounter)                     ;5e57
        BIT     2,a                                 ;5e5a
        JR      z,b0_l5e63h                         ;5e5c
        CALL    EraseTextXY                         ;5e5e
        JR      b0_l5e66h                           ;5e61
b0_l5e63h:
        CALL    PrintTextXY                         ;5e63
b0_l5e66h:
        LD      hl,WaitCounter                      ;5e66
        DEC     (hl)                                ;5e69
        RET     nz                                  ;5e6a
        DEFB    0x3a,0x00,0xef,0xb7,0x20,0x1c,0x18,0xd0  ;5e6b ; data:code-gap

; === StartGamePhase0 (0x5e73) ===
StartGamePhase0:
        DJNZ    gotoNextSubStatus                   ;5e73
        CALL    InitPlayerStatus                    ;5e75
        CALL    0x662c                              ;5e78
        LD      hl,BGmOptPending                    ;5e7b
        LD      a,(hl)                              ;5e7e
        OR      a                                   ;5e7f
        JR      z,gotoNoGmOpt                       ;5e80
        LD      (hl),0x0                            ;5e82
        CALL    0x8050                              ;5e84
gotoNoGmOpt:
        JR      NextStatusT                         ;5e87
gotoNextSubStatus:
        LD      a,0x3c                              ;5e89
        JR      NextSubstatusT                      ;5e8b
GotoGmOpt:
        XOR     a                                   ;5e8d
        LD      (BGmOptPending),a                   ;5e8e
        LD      a,0x1                               ;5e91
        LD      (BGmOptMoney),a                     ;5e93
        LD      (BGmOptLand),a                      ;5e96
        LD      a,0x3                               ;5e99
        LD      (BGmOptLives),a                     ;5e9b
        LD      a,0xc                               ;5e9e
        JP      SetGameStatus                       ;5ea0
