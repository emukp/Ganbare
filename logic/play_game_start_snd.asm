PlayGameStartSnd:
        LD      a,(BSndTickCounter)                 ;51d6
        OR      a                                   ;51d9
        JR      nz,b0_l51e4h                        ;51da
        LD      a,(BSndAuxFlag)                     ;51dc
        OR      a                                   ;51df
        LD      a,(BSndSfxId)                       ;51e0
        RET                                         ;51e3
b0_l51e4h:
        LD      a,(BSndSongCounter)                 ;51e4
        CP      0xf8                                ;51e7
        LD      a,(BSndSfxId)                       ;51e9
        RET                                         ;51ec

