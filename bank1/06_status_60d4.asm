GS_Pause:
        LD      a,(0xc00e)                          ;60d4
        INC     a                                   ;60d7
        CP      0x2e                                ;60d8
        JR      c,b1_l60ddh                         ;60da
        XOR     a                                   ;60dc
b1_l60ddh:
        LD      (0xc00e),a                          ;60dd
        CALL    UpdateControls                      ;60e0
        LD      a,(0xc00b)                          ;60e3
        RRA                                         ;60e6
        JR      c,b1_l60f9h                         ;60e7
        RRA                                         ;60e9
        JP      nc,0xbdf6                           ;60ea
        LD      a,(0xc28c)                          ;60ed
        AND     a                                   ;60f0
        JP      0xbdf6                              ;60f1 zh-hack: F2 ignored (password display disabled)
        LD      a,0xd                               ;60f4
        JP      SetGameStatus                       ;60f6
b1_l60f9h:
        XOR     a                                   ;60f9
        LD      (0xc008),a                          ;60fa
        CALL    b1_sub_6374h                        ;60fd
        LD      a,0xfe                              ;6100
        CALL    ProcessSoundCommand                 ;6102
        LD      a,0x5                               ;6105
        JP      SetGameStatus                       ;6107
