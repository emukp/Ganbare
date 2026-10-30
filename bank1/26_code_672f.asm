DrawShopScene:
        CALL    SetAllSpritesHidden                 ;672f
        CALL    ClearFieldRecordHeaders             ;6732
        CALL    ShiftCC00Queue                      ;6735
        CALL    b1_sub_67e8h                        ;6738
        CALL    DisableScreen                       ;673b
        CALL    ClearSprAttr                        ;673e
        CALL    BuildScreenFromMap                  ;6741
        CALL    DrawScreenTiles                     ;6744
        CALL    b1_sub_6798h                        ;6747
        CALL    SetMapPalette02                     ;674a
        CALL    0x925d                              ;674d
        CALL    EnableScreen                        ;6750
        JP      0x94f7                              ;6753
