GS_BonusStage:
        DJNZ    b1_l605dh                           ;6034
        LD      a,(0xc289)                          ;6036
        CP      0x4                                 ;6039
        JR      z,b1_l606bh                         ;603b
        CALL    ClearScreen                         ;603d
        CALL    DisableScreen                       ;6040
        CALL    0x4bab                              ;6043
        CALL    0x4d63                              ;6046
        CALL    BuildScreenFromMap                  ;6049
        CALL    DrawScreenTiles                     ;604c
        CALL    EnableScreen                        ;604f
        CALL    0x960c                              ;6052
        LD      a,0x8c                              ;6055
        CALL    ProcessSoundCommand                 ;6057
        JP      NextSubstatus                       ;605a
b1_l605dh:
        DJNZ    b1_l6073h                           ;605d
        CALL    0x963f                              ;605f
        LD      a,(0xcd11)                          ;6062
        LD      b,a                                 ;6065
        LD      a,(BSndAuxFlag)                     ;6066
        OR      b                                   ;6069
        RET     nz                                  ;606a
b1_l606bh:
        CALL    0x8f7b                              ;606b
        LD      a,0x4                               ;606e
        JP      SetGameStatus                       ;6070
b1_l6073h:
        LD      hl,(0xc4b0)                         ;6073
        LD      a,h                                 ;6076
        OR      l                                   ;6077
        JP      nz,b1_l650ah                        ;6078
        LD      hl,PlayerStatus                     ;607b
        LD      a,(hl)                              ;607e
        ADD     a,0x1                               ;607f
        DAA                                         ;6081
        LD      (hl),a                              ;6082
        LD      hl,0xc261                           ;6083
        LD      a,(hl)                              ;6086
        ADD     a,0x1                               ;6087
        DAA                                         ;6089
        LD      (hl),a                              ;608a
        LD      hl,GameScore                        ;608b
        INC     (hl)                                ;608e
        INC     hl                                  ;608f
        XOR     a                                   ;6090
        INC     hl                                  ;6091
        LD      (hl),a                              ;6092
        LD      (0xc28a),a                          ;6093
        LD      (0xc28c),a                          ;6096
        JP      NextSubstatus                       ;6099
