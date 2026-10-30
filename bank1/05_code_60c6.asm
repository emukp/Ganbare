GotoPlaying:
        XOR     a                                   ;60c6
        LD      (SceneType),a                       ;60c7
        LD      a,0x5                               ;60ca
        JP      SetGameStatus                       ;60cc
b1_l60cfh:
        CALL    b1_sub_6a06h                        ;60cf
        JR      GotoPlaying                         ;60d2
