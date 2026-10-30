GS_SceneRouter:
        LD      a,(0xc483)                          ;609c
        AND     a                                   ;609f
        JR      nz,b1_l60cfh                        ;60a0
        LD      a,(SceneType)                       ;60a2
        CP      0x5                                 ;60a5
        JR      z,SceneTypeShop                     ;60a7
        CP      0x6                                 ;60a9
        JR      z,FieldScene                        ;60ab
        CALL    b1_sub_65f7h                        ;60ad
        CALL    LoadSceneObjects                    ;60b0
        JR      GotoPlaying                         ;60b3
