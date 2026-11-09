; === ApplyGmCheatOptions (0x8050) ===
ApplyGmCheatOptions:
        PUSH    af                                  ;8050
        CALL    ApplyGmStartOptions                 ;8051
        POP     af                                  ;8054
        LD      b,a                                 ;8055
        LD      a,(ControlConfig)                   ;8056
        AND     0x20                                ;8059
        RET     z                                   ;805b
        PUSH    bc                                  ;805c
        CALL    SaveStateToP2Area                   ;805d
        POP     bc                                  ;8060
        LD      a,b                                 ;8061
        CALL    ApplyGmStartOptions                 ;8062
SaveStateToP2Area:
        LD      hl,PlayerStatus                     ;8065
        LD      de,AbP2State                        ;8068
        LD      bc,0x100                            ;806b
        JP      SwapMemBlocks                       ;806e
ApplyGmStartOptions:
        RRA                                         ;8071
        PUSH    af                                  ;8072
        JR      nc,b2_l808ch                        ;8073
        LD      a,(BGmOptLand)                      ;8075
        DEC     a                                   ;8078
        CP      0x7                                 ;8079
        JR      c,b2_l807eh                         ;807b
        XOR     a                                   ;807d
b2_l807eh:
        LD      (GameScore),a                       ;807e
        LD      a,(BGmOptMoney)                     ;8081
        CP      0x8                                 ;8084
        JR      c,b2_l8089h                         ;8086
        XOR     a                                   ;8088
b2_l8089h:
        LD      (0xc261),a                          ;8089
b2_l808ch:
        POP     af                                  ;808c
        RRA                                         ;808d
        RET     nc                                  ;808e
        LD      a,(BGmOptLives)                     ;808f
        LD      (PlayerStatus),a                    ;8092
        RET                                         ;8095
        RRA                                         ;8096
        LD      a,0x1                               ;8097
        JR      nc,b2_l809dh                        ;8099
        LD      a,0xff                              ;809b
b2_l809dh:
        LD      b,a                                 ;809d
        LD      hl,BGmMenuCursor                    ;809e
        ADD     a,(hl)                              ;80a1
        AND     0x3                                 ;80a2
        CP      0x3                                 ;80a4
        JR      nz,b2_l80afh                        ;80a6
        LD      a,b                                 ;80a8
        ADD     a,a                                 ;80a9
        LD      a,0x2                               ;80aa
        JR      c,b2_l80afh                         ;80ac
        XOR     a                                   ;80ae
b2_l80afh:
        PUSH    af                                  ;80af
        PUSH    hl                                  ;80b0
        LD      a,(hl)                              ;80b1
        CALL    b2_sub_80bbh                        ;80b2
        POP     hl                                  ;80b5
        POP     af                                  ;80b6
        LD      (hl),a                              ;80b7
        JP      b2_l80c0h                           ;80b8
b2_sub_80bbh:
        LD      bc,0x0                              ;80bb
        JR      b2_l80c3h                           ;80be
b2_l80c0h:
        LD      bc,0xbcbd                           ;80c0
b2_l80c3h:
        LD      hl,b2_l80d6h                        ;80c3
        CALL    ADD_HL_A                            ;80c6
        LD      e,(hl)                              ;80c9
        LD      d,0x24                              ;80ca
        LD      a,b                                 ;80cc
        CALL    DrawChar                            ;80cd
        LD      d,0x2c                              ;80d0
        LD      a,c                                 ;80d2
        JP      DrawChar                            ;80d3
b2_l80d6h:
        XOR     b                                   ;80d6
        OR      b                                   ;80d7
        CP      b                                   ;80d8

