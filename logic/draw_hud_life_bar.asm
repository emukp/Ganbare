DrawHudLifeBar:
        LD      hl,FrameDivider                     ;5890
        LD      a,(ControlConfig)                   ;5893
        ADD     a,a                                 ;5896
        JP      m,b0_l589ch                         ;5897
        LD      (hl),0x10                           ;589a
b0_l589ch:
        LD      b,(hl)                              ;589c
        LD      hl,0xc481                           ;589d
        LD      c,(hl)                              ;58a0
        LD      de,0xa008                           ;58a1
b0_l58a4h:
        DEC     c                                   ;58a4
        JP      m,b0_l58c0h                         ;58a5
        LD      hl,0xd860                           ;58a8
b0_l58abh:
        PUSH    bc                                  ;58ab
        PUSH    de                                  ;58ac
        LD      bc,0x208                            ;58ad
        LD      a,0x40                              ;58b0
        CALL    VDP_Copy_Dot                        ;58b2
        POP     de                                  ;58b5
        POP     bc                                  ;58b6
        LD      a,0x2                               ;58b7
        ADD     a,d                                 ;58b9
        LD      d,a                                 ;58ba
        DJNZ    b0_l58a4h                           ;58bb
        JP      b0_l4485h                           ;58bd
b0_l58c0h:
        LD      hl,0xdc60                           ;58c0
        JR      b0_l58abh                           ;58c3
        LD      a,(0xcd32)                          ;58c5
        OR      a                                   ;58c8
        RET     nz                                  ;58c9
        LD      hl,isDrawKonamiLogoFinished         ;58ca
        BIT     0,(hl)                              ;58cd
        JR      nz,DrawLives                        ;58cf
        LD      a,(BlockQueue)                      ;58d1
        CP      0x2                                 ;58d4
        JR      nc,DrawLives                        ;58d6
        LD      hl,0xc4b2                           ;58d8
        DEC     (hl)                                ;58db
        RET     nz                                  ;58dc
        LD      a,(GameLand)                        ;58dd
        LD      b,a                                 ;58e0
        ADD     a,a                                 ;58e1
        ADD     a,a                                 ;58e2
        ADD     a,b                                 ;58e3
        LD      b,a                                 ;58e4
        LD      a,0x3c                              ;58e5
        SUB     b                                   ;58e7
        LD      (hl),a                              ;58e8
        LD      hl,0xc4b0                           ;58e9
        LD      de,0x1                              ;58ec
        CALL    b0_sub_5915h                        ;58ef
        CALL    b0_sub_5900h                        ;58f2
DrawLives:
        LD      hl,0xc4b1                           ;58f5
        LD      de,b0_l4808h                        ;58f8
        LD      b,0x2                               ;58fb
        JP      DrawBcdNumber                       ;58fd
b0_sub_5900h:
        LD      hl,0xc278                           ;5900
        LD      a,(hl)                              ;5903
        OR      a                                   ;5904
        RET     z                                   ;5905
        LD      hl,0xc27c                           ;5906
        DEC     (hl)                                ;5909
        RET     nz                                  ;590a
        LD      hl,0xc278                           ;590b
        XOR     a                                   ;590e
        LD      (hl),a                              ;590f
        LD      a,0x8                               ;5910
        JP      DrawFieldItem                       ;5912
b0_sub_5915h:
        LD      a,(hl)                              ;5915
        SUB     e                                   ;5916
        DAA                                         ;5917
        LD      (hl),a                              ;5918
        INC     hl                                  ;5919
        LD      a,(hl)                              ;591a
        SBC     a,d                                 ;591b
        DAA                                         ;591c
        LD      (hl),a                              ;591d
        RET                                         ;591e
b0_sub_591fh:
        LD      a,(hl)                              ;591f
        ADD     a,e                                 ;5920
        DAA                                         ;5921
        LD      (hl),a                              ;5922
        INC     hl                                  ;5923
        LD      a,(hl)                              ;5924
        ADC     a,d                                 ;5925
        DAA                                         ;5926
        LD      (hl),a                              ;5927
        RET                                         ;5928
        LD      d,0x0                               ;5929
        LD      hl,PlayerScore                      ;592b
        CALL    b0_sub_591fh                        ;592e
        JR      nc,DrawHudMoney                     ;5931
        LD      de,0x9999                           ;5933
        LD      (PlayerScore),de                    ;5936
DrawHudMoney:
        LD      hl,0xc266                           ;593a
        LD      de,0x7008                           ;593d
        LD      b,0x2                               ;5940
        JP      DrawBcdNumber                       ;5942
        LD      hl,0xc4b0                           ;5945
        CALL    b0_sub_591fh                        ;5948
        CP      0x50                                ;594b
        JR      c,DrawLives                         ;594d
        LD      de,0x5000                           ;594f
        LD      (0xc4b0),de                         ;5952
        JR      DrawLives                           ;5956
        LD      hl,PlayerScore                      ;5958
        CALL    b0_sub_5915h                        ;595b
        JR      nc,DrawHudMoney                     ;595e
        LD      de,0x0                              ;5960
        LD      (PlayerScore),de                    ;5963
        JR      DrawHudMoney                        ;5967
        DEFB    0x3e,0x01,0x32,0xb1,0xcd,0xcd,0xda,0x67  ;5969 ; data:code-gap
        DEFB    0xf3,0x3e,0x09,0x32,0x00,0xa0,0x32,0xf3  ;5971
        DEFB    0xf0,0xfb,0xcd,0xa9,0x59,0xcd,0x06,0x42  ;5979
        DEFB    0xcd,0xee,0x45,0xcd,0x5d,0x4b,0xcd,0x8d  ;5981
        DEFB    0x59,0xc3,0xe1,0x45                 ;5989
b0_sub_598dh:
        CALL    0xb936                              ;598d
        CALL    0xbc3a                              ;5990
        CALL    DrawFieldItems                      ;5993
        CALL    DrawGameHud                         ;5996
        CALL    DrawHudLifeBar                      ;5999
        CALL    0x98be                              ;599c
        CALL    0xb9cb                              ;599f
        CALL    0xb843                              ;59a2
        CALL    0x98e3                              ;59a5
        RET                                         ;59a8
b0_sub_59a9h: equ     #59a9
