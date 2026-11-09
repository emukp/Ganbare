GS_Playing:
        CALL    0x6802                              ;5f17
        LD      a,(0xc282)                          ;5f1a
        AND     a                                   ;5f1d
        LD      a,0x8                               ;5f1e
        JP      nz,SetGameStatus                    ;5f20
        LD      a,(SceneType)                       ;5f23
        AND     a                                   ;5f26
        LD      a,0x9                               ;5f27
        JP      nz,SetGameStatus                    ;5f29
        LD      a,(0xc008)                          ;5f2c
        AND     a                                   ;5f2f
        JR      nz,b0_l5f42h                        ;5f30
        LD      a,(0xc28b)                          ;5f32
        AND     a                                   ;5f35
        LD      a,0xb                               ;5f36
        JP      nz,SetGameStatus                    ;5f38
        LD      a,(BGameFieldActive)                ;5f3b
        OR      a                                   ;5f3e
        RET     nz                                  ;5f3f
        JR      NextStatusT                         ;5f40
b0_l5f42h:
        LD      hl,0xc580                           ;5f42
        LD      de,0xc581                           ;5f45
        LD      bc,0x1f                             ;5f48
        LD      (hl),0x0                            ;5f4b
        LDIR                                        ;5f4d
        CALL    0x635a                              ;5f4f
        LD      a,0xa                               ;5f52
        JP      SetGameStatus                       ;5f54
GS_PlayerSwap:
        CALL    0x7e9d                              ;5f57
        LD      a,(PlayerStatus)                    ;5f5a
        OR      a                                   ;5f5d
        JR      z,b0_l5f7eh                         ;5f5e
        LD      a,(AbP2State)                       ;5f60
        OR      a                                   ;5f63
        JR      z,b0_l5f79h                         ;5f64
b0_l5f66h:
        LD      hl,PlayerStatus                     ;5f66
        LD      de,AbP2State                        ;5f69
        LD      bc,0x100                            ;5f6c
        CALL    SwapMemBlocks                       ;5f6f
        LD      hl,ControlConfig                    ;5f72
        LD      a,(hl)                              ;5f75
        XOR     0x80                                ;5f76
        LD      (hl),a                              ;5f78
b0_l5f79h:
        LD      a,0x4                               ;5f79
        JP      SetGameStatus                       ;5f7b
b0_l5f7eh:
        LD      a,0x8e                              ;5f7e
        CALL    ProcessSoundCommand                 ;5f80
        JP      NextStatusT                         ;5f83
GS_GameOver:
        DJNZ    b0_l5fcch                           ;5f86
        LD      a,(0xc27f)                          ;5f88
        AND     a                                   ;5f8b
        JR      z,b0_l5f9eh                         ;5f8c
        CALL    b0_sub_5fe9h                        ;5f8e
        JR      c,b0_l5f9eh                         ;5f91
        LD      a,0x1                               ;5f93
        LD      (0xc486),a                          ;5f95
        LD      hl,0x63e3                           ;5f98
        CALL    EraseTextXY                         ;5f9b
b0_l5f9eh:
        LD      a,(BSndAuxFlag)                     ;5f9e
        OR      a                                   ;5fa1
        RET     nz                                  ;5fa2
        LD      a,(0xc27f)                          ;5fa3
        AND     a                                   ;5fa6
        JR      z,b0_l5fafh                         ;5fa7
        LD      a,(0xc486)                          ;5fa9
        AND     a                                   ;5fac
        JR      nz,b0_l5ff1h                        ;5fad
b0_l5fafh:
        LD      a,(AbP2State)                       ;5faf
        AND     a                                   ;5fb2
        JR      nz,b0_l5f66h                        ;5fb3
        LD      hl,ControlConfig                    ;5fb5
        LD      a,(hl)                              ;5fb8
        AND     0xbf                                ;5fb9
        LD      (hl),a                              ;5fbb
        XOR     a                                   ;5fbc
        LD      (ControllerLatch),a                 ;5fbd
        LD      (0xef80),a                          ;5fc0
        LD      (BlipCounter),a                     ;5fc3
        LD      (0xcd60),a                          ;5fc6
        JP      b0_l5e2ch                           ;5fc9
b0_l5fcch:
        CALL    ClearScreen                         ;5fcc
        LD      a,0x18                              ;5fcf zh: bank 0x18 (Game Over streams)
        LD      (0x6000),a                          ;5fd2
        LD      (BanksIn60),a                       ;5fd5
        CALL    ZGameOverPrint                      ;5fd8 (0x6000)
        CALL    SetBanks1_2_3                       ;5fdb restore banks
        NOP                                         ;5fde layout padding
        NOP
        NOP
        NOP
b0_l5fe1h:
        CALL    DrawGameHud                         ;5fe1
        LD      a,0x78                              ;5fe4
        JP      NextSubstatusT                      ;5fe6
b0_sub_5fe9h:
        LD      a,0x7                               ;5fe9
        CALL    SNSMAT                              ;5feb
        RRA                                         ;5fee
        RRA                                         ;5fef
        RET                                         ;5ff0
b0_l5ff1h:
        LD      a,0x3                               ;5ff1
        LD      (PlayerStatus),a                    ;5ff3
        LD      a,(ControlConfig)                   ;5ff6
        LD      hl,0xc257                           ;5ff9
        BIT     5,a                                 ;5ffc
        JR      nz,$+8                              ;5ffe
