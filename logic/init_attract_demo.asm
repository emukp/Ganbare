; === InitAttractDemo (0x688b) ===
InitAttractDemo:
        LD      hl,ControlConfig                    ;688b
        LD      a,(hl)                              ;688e
        LD      b,a                                 ;688f
        LD      a,(ControllerLatch)                 ;6890
        OR      a                                   ;6893
        JR      nz,b1_l689eh                        ;6894
        INC     a                                   ;6896
        LD      (ControllerLatch),a                 ;6897
        LD      a,b                                 ;689a
        OR      0x80                                ;689b
        LD      b,a                                 ;689d
b1_l689eh:
        LD      a,b                                 ;689e
        XOR     0x80                                ;689f
        LD      (hl),a                              ;68a1
        LD      a,(ControllerLatch)                 ;68a2
        EX      af,af'                              ;68a5
        CALL    InitPlayerStatus                    ;68a6
        EX      af,af'                              ;68a9
        LD      (ControllerLatch),a                 ;68aa
        CALL    BuildGameField                      ;68ad
        XOR     a                                   ;68b0
        LD      (GameScore),a                       ;68b1
        LD      (GameLand),a                        ;68b4
        LD      (BDemoScriptIdx),a                  ;68b7
        LD      (ControlsHold),a                    ;68ba
        INC     a                                   ;68bd
        LD      (BGameFieldActive),a                ;68be
        LD      (BDemoInputTimer),a                 ;68c1
        LD      (0xc267),a                          ;68c4
        LD      a,0xc                               ;68c7
        LD      (0xc281),a                          ;68c9
        CALL    SetupGameFieldSession               ;68cc
        LD      a,0x99                              ;68cf
        LD      (PlayerStatus),a                    ;68d1
        LD      de,0x999                            ;68d4
        LD      (PlayerScore),de                    ;68d7
        LD      hl,DemoInitBlock                    ;68db
        LD      de,0xc270                           ;68de
        LD      bc,0xa                              ;68e1
        LDIR                                        ;68e4
        JP      DrawGameHud                         ;68e6
DemoInitBlock: equ     #68e9
        DEFB    0x02                                ;68e9 ; data:data
        DEFB    0x00,0x05,0x05,0x03,0x05,0x05,0x01,0x00  ;68ea ; data:code-gap
        DEFB    0x02                                ;68f2

; === DispatchDemoEvents (0x68f3) ===
DispatchDemoEvents:
        CALL    TickGameField                       ;68f3
        LD      a,(SceneType)                       ;68f6
        AND     a                                   ;68f9
        RET     z                                   ;68fa
        CP      0x5                                 ;68fb
        JR      z,DemoEvent5                        ;68fd
        CP      0x6                                 ;68ff
        JR      z,DemoEvent6                        ;6901
        LD      a,(0xc483)                          ;6903
        AND     a                                   ;6906
        JR      nz,DemoEventOthers                  ;6907
        CALL    b1_sub_65f7h                        ;6909
b1_l690ch:
        CALL    LoadSceneObjects                    ;690c
b1_l690fh:
        XOR     a                                   ;690f
        LD      (SceneType),a                       ;6910
        RET                                         ;6913
DemoEventOthers:
        CALL    b1_sub_6a06h                        ;6914
        JR      b1_l690fh                           ;6917
DemoEvent5:
        CALL    DrawShopScene                       ;6919
        JR      b1_l690fh                           ;691c
DemoEvent6:
        CALL    SetFieldPalette                     ;691e
        JR      b1_l690ch                           ;6921
PlaybackDemoInputs:
        LD      a,(TickCounter)                     ;6923
        RRA                                         ;6926
        RET     c                                   ;6927
        LD      hl,BDemoInputTimer                  ;6928
        DEC     (hl)                                ;692b
        JR      z,LoadDemoInput                     ;692c
b1_l692eh:
        LD      a,(BDemoCurInput)                   ;692e
        CP      0xff                                ;6931
        JR      z,PlaybackScriptEnd                 ;6933
        JP      StoreControls_                      ;6935
PlaybackScriptEnd:
        XOR     a                                   ;6938
        LD      (BGameFieldActive),a                ;6939
        JP      LoadTitlePalette                    ;693c
LoadDemoInput:
        DEC     hl                                  ;693f
        LD      c,(hl)                              ;6940
        INC     (hl)                                ;6941
        LD      de,AbDemoInputScript                ;6942
        LD      l,c                                 ;6945
        LD      h,0x0                               ;6946
        ADD     hl,hl                               ;6948
        ADD     hl,de                               ;6949
        LD      a,(hl)                              ;694a
        LD      (BDemoInputTimer),a                 ;694b
        INC     hl                                  ;694e
        LD      a,(hl)                              ;694f
        LD      (BDemoCurInput),a                   ;6950
        JR      b1_l692eh                           ;6953
AbDemoInputScript: equ     #6955
