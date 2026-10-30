; === BuildGameField (0x662c) ===
BuildGameField:
        CALL    LoadTitleScreenAssets               ;662c
        CALL    BuildFieldMap                       ;662f
        LD      de,0x1010                           ;6632
        LD      (FrameDivider),de                   ;6635
        RET                                         ;6639

; === SetupGameFieldSession (0x663a) ===
SetupGameFieldSession:
        DI                                          ;663a
        LD      a,0x9                               ;663b
        LD      (0xa000),a                          ;663d
        LD      (BanksInA0),a                       ;6640
b1_l6643h:
        EI                                          ;6643
        CALL    GetStageTableIndex                  ;6644
        SRL     a                                   ;6647
b1_l6649h:
        LD      hl,0xb8ec                           ;6649
        CALL    ADD_HL_A                            ;664c
        LD      a,(hl)                              ;664f
        LD      (0xc289),a                          ;6650
        CALL    SetBanks1_2_3                       ;6653
        CALL    BuildFieldMap                       ;6656
        CALL    LoadStageMap                        ;6659
        LD      hl,0xd000                           ;665c
b1_l665fh:
        LD      de,0xd001                           ;665f
        LD      bc,0x17ff                           ;6662
b1_l6665h:
        LD      (hl),0x0                            ;6665
        LDIR                                        ;6667
        CALL    UnpackMapTiles                      ;6669
        CALL    LoadMapLayout                       ;666c
        CALL    LoadMapCellGfx                      ;666f
        DI                                          ;6672
        LD      a,0x9                               ;6673
        LD      (0xa000),a                          ;6675
        LD      (BanksInA0),a                       ;6678
        EI                                          ;667b
        CALL    LoadStageObjects                    ;667c
        CALL    SetBanks1_2_3                       ;667f
        CALL    SetAllSpritesHidden                 ;6682
        CALL    ShiftC490Queue                      ;6685
        CALL    ClearFieldRecordHeaders             ;6688
        LD      hl,0xc268                           ;668b
        LD      a,(hl)                              ;668e
        AND     a                                   ;668f
        JR      nz,b1_l66bch                        ;6690
        INC     (hl)                                ;6692
        DI                                          ;6693
        LD      a,0x9                               ;6694
        LD      (0xa000),a                          ;6696
        LD      (BanksInA0),a                       ;6699
        EI                                          ;669c
        CALL    GetStageTableIndex                  ;669d
        SRL     a                                   ;66a0
        LD      hl,0xb8af                           ;66a2
        CALL    ADD_HL_A                            ;66a5
        LD      a,(hl)                              ;66a8
        EXX                                         ;66a9
        LD      hl,ControlConfig                    ;66aa
        BIT     6,(hl)                              ;66ad
        EXX                                         ;66af
        JR      z,b1_l66b9h                         ;66b0
        LD      (0xc281),a                          ;66b2
        XOR     a                                   ;66b5
        LD      (0xc267),a                          ;66b6
b1_l66b9h:
        CALL    SetBanks1_2_3                       ;66b9
b1_l66bch:
        CALL    GetMapParams                        ;66bc
        LD      a,(FrameDivider)                    ;66bf
        LD      (0xc481),a                          ;66c2
        LD      de,0x700                            ;66c5
        LD      (0xc4b0),de                         ;66c8
        LD      a,0x1                               ;66cc
        LD      (0xc4b2),a                          ;66ce
        LD      a,(GameScore)                       ;66d1
        CP      0x6                                 ;66d4
        JR      nz,b1_l66e6h                        ;66d6
        LD      de,0x3080                           ;66d8
        LD      hl,0x80                             ;66db
        LD      bc,0x1010                           ;66de
        LD      a,0x5                               ;66e1
        CALL    VDP_Copy_Byte                       ;66e3
b1_l66e6h:
        XOR     a                                   ;66e6
        LD      (0xc0af),a                          ;66e7
        CALL    0x5311                              ;66ea
        CALL    0x4188                              ;66ed
        CALL    0x955c                              ;66f0
        CALL    PrepareLandBanks                    ;66f3
LoadSceneObjects:
        CALL    b1_sub_6617h                        ;66f6
        CALL    b1_sub_7d9eh                        ;66f9
        CALL    SetAllSpritesHidden                 ;66fc
        CALL    ClearFieldRecordHeaders             ;66ff
        CALL    ShiftCC00Queue                      ;6702
        CALL    b1_sub_67e8h                        ;6705
        CALL    DisableScreen                       ;6708
        CALL    ClearSprAttr                        ;670b
        CALL    BuildScreenFromMap                  ;670e
        CALL    DrawScreenTiles                     ;6711
        CALL    0x90c0                              ;6714
        CALL    LoadLandStartPos                    ;6717
        CALL    0x5413                              ;671a
        CALL    DrawFieldItems                      ;671d
        CALL    SetFieldPalette                     ;6720
        CALL    0x4d14                              ;6723
        CALL    0x8656                              ;6726
        CALL    0x8573                              ;6729
        JP      EnableScreen                        ;672c
