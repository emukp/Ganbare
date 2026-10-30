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
