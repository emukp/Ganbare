; === DrawTile (0x4940) ===
DrawTile:
        PUSH    bc                                  ;4940
        PUSH    hl                                  ;4941
        PUSH    de                                  ;4942
        CALL    GetTileXY                           ;4943
        LD      bc,0x808                            ;4946
        LD      a,0x1                               ;4949
        CALL    VDP_Copy_Byte                       ;494b
        POP     de                                  ;494e
        POP     hl                                  ;494f
        POP     bc                                  ;4950
        RET                                         ;4951

; === DrawTileTMP (0x4952) ===
DrawTileTMP:
        PUSH    bc                                  ;4952
        PUSH    hl                                  ;4953
        PUSH    de                                  ;4954
        CALL    GetTileXY                           ;4955
        LD      bc,0x808                            ;4958
        LD      a,0x48                              ;495b
        CALL    VDP_Copy_Dot                        ;495d
        POP     de                                  ;4960
        POP     hl                                  ;4961
        POP     bc                                  ;4962
        RET                                         ;4963

; === DrawTile_P1 (0x4964) ===
DrawTile_P1:
        PUSH    bc                                  ;4964
        PUSH    hl                                  ;4965
        PUSH    de                                  ;4966
        CALL    GetTileXY                           ;4967
        LD      bc,0x808                            ;496a
        LD      a,0x5                               ;496d
        CALL    VDP_Copy_Byte                       ;496f
        POP     de                                  ;4972
        POP     hl                                  ;4973
        POP     bc                                  ;4974
        RET                                         ;4975

; === GetTileXY (0x4976) ===
GetTileXY:
        LD      b,a                                 ;4976
        AND     0x1f                                ;4977
        ADD     a,a                                 ;4979
        ADD     a,a                                 ;497a
        ADD     a,a                                 ;497b
        LD      h,a                                 ;497c
        LD      a,b                                 ;497d
        AND     0xe0                                ;497e
        RRCA                                        ;4980
        RRCA                                        ;4981
        LD      l,a                                 ;4982
        RET                                         ;4983

