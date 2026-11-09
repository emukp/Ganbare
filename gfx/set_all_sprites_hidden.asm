; === SetAllSpritesHidden (0x67da) ===
SetAllSpritesHidden:
        LD      hl,AbSprAttrTable                   ;67da
        LD      b,0x20                              ;67dd
SetAllSpritesHidden2:
        LD      (hl),0xe0                           ;67df
        INC     l                                   ;67e1
        INC     l                                   ;67e2
        INC     l                                   ;67e3
        INC     l                                   ;67e4
        DJNZ    SetAllSpritesHidden2                ;67e5
        RET                                         ;67e7
b1_sub_67e8h:
        LD      hl,0xc4d3                           ;67e8
        CALL    HideSpriteRecord                    ;67eb
        LD      hl,0xc4e3                           ;67ee
        JP      HideSpriteRecord                    ;67f1
