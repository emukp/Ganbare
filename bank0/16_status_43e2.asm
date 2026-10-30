DrawGameHud:
        LD      a,(ControlConfig)                   ;43e2
        LD      hl,0x6412                           ;43e5 zh-hud: 1P name (shadow bank)
        ADD     a,a                                 ;43e8
        JR      nc,b0_l43eeh                        ;43e9
        LD      hl,0x641e                           ;43eb zh-hud: 2P name (shadow bank)
b0_l43eeh:
        CALL    PrintTextXY                         ;43ee
        LD      hl,0x63f0                           ;43f1 zh-hud: label stream (shadow bank)
        CALL    PrintTextXY                         ;43f4
        CALL    DrawFieldItems                      ;43f7
        CALL    DrawHudMoney                        ;43fa
        CALL    DrawLives                           ;43fd
        CALL    DrawHudLifeBar                      ;4400
        CALL    DrawBcdNum01                        ;4403
b0_l4406h:
        LD      a,(ControlConfig)                   ;4406
        LD      de,0x1008                           ;4409
        LD      hl,0xc259                           ;440c
        ADD     a,a                                 ;440f
        JR      nc,b0_l4414h                        ;4410
        LD      l,0x5c                              ;4412
b0_l4414h:
        LD      b,0x3                               ;4414
        JR      DrawBcdNumber                       ;4416
