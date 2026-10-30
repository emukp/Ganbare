; === TickGameField (0x6802) ===
TickGameField:
        CALL    UploadPlayerSprite                  ;6802
        LD      a,(0xcdb1)                          ;6805
        OR      a                                   ;6808
        JR      z,b1_l6815h                         ;6809
        CALL    UpdateControls                      ;680b
        CALL    b1_sub_6877h                        ;680e
        RET     c                                   ;6811
        JP      0x987a                              ;6812
b1_l6815h:
        LD      a,(TickCounter)                     ;6815
        RRA                                         ;6818
        JR      c,b1_l685fh                         ;6819
        LD      hl,0xc00d                           ;681b
        INC     (hl)                                ;681e
        CALL    UpdateControls                      ;681f
        LD      a,(BlockQueue)                      ;6822
        CP      0x3                                 ;6825
        JR      z,b1_l682dh                         ;6827
        CALL    b1_sub_6877h                        ;6829
        RET     c                                   ;682c
b1_l682dh:
        CALL    0x4cab                              ;682d
        CALL    b1_sub_6d38h                        ;6830
        CALL    b1_sub_71bbh                        ;6833
        LD      a,(0xcdb1)                          ;6836
        OR      a                                   ;6839
        RET     nz                                  ;683a
        LD      a,(SceneType)                       ;683b
        AND     a                                   ;683e
        RET     nz                                  ;683f
        CALL    b1_sub_75e4h                        ;6840
        CALL    b1_sub_7370h                        ;6843
        DI                                          ;6846
        LD      a,0x9                               ;6847
        LD      (0xa000),a                          ;6849
        LD      (BanksInA0),a                       ;684c
        EI                                          ;684f
        CALL    b1_sub_74a6h                        ;6850
        CALL    SetBanks1_2_3                       ;6853
        CALL    b1_sub_76d1h                        ;6856
        CALL    0x8cb0                              ;6859
        JP      0x868e                              ;685c
b1_l685fh:
        CALL    0x86fc                              ;685f
        CALL    0x8861                              ;6862
        CALL    0x88b0                              ;6865
        CALL    0x86f1                              ;6868
        CALL    0x8857                              ;686b
        CALL    b1_sub_7833h                        ;686e
        CALL    0x58c5                              ;6871
        JP      0x5b1d                              ;6874
b1_sub_6877h:
        LD      a,(0xc00b)                          ;6877
        RRA                                         ;687a
        RET     nc                                  ;687b
        LD      a,0x1                               ;687c
        LD      (0xc008),a                          ;687e
        CALL    0x4cab                              ;6881
        LD      a,0xfd                              ;6884
        CALL    ProcessSoundCommand                 ;6886
        SCF                                         ;6889
        RET                                         ;688a

