HandleGameMasterKeys:
        LD      a,0x7                               ;40e7
        CALL    SNSMAT                              ;40e9
        CPL                                         ;40ec
        AND     0x10                                ;40ed
        LD      b,a                                 ;40ef
        LD      a,0x1                               ;40f0
        CALL    SNSMAT                              ;40f2
        CPL                                         ;40f5
        AND     0x80                                ;40f6
        OR      b                                   ;40f8
        LD      hl,BGmKeysPrev                      ;40f9
        LD      c,(hl)                              ;40fc
        LD      (hl),a                              ;40fd
        XOR     c                                   ;40fe
        AND     (hl)                                ;40ff
        LD      c,a                                 ;4100
        LD      hl,BGmPsgMuteMode                   ;4101
        LD      a,(hl)                              ;4104
        OR      a                                   ;4105
        JR      nz,b0_l4113h                        ;4106
        BIT     4,c                                 ;4108
        JP      z,b0_l404dh                         ;410a
        LD      (hl),c                              ;410d
        CALL    SetPsgMuteSaveVols                  ;410e
        EI                                          ;4111
        RET                                         ;4112
b0_l4113h:
        BIT     7,c                                 ;4113
        JP      nz,b0_l411eh                        ;4115
        BIT     4,c                                 ;4118
        JR      z,b0_l4124h                         ;411a
        XOR     a                                   ;411c
        LD      (hl),a                              ;411d
b0_l411eh:
        CALL    SetPsgVolsFromSave                  ;411e
        JP      b0_l404dh                           ;4121
b0_l4124h:
        CALL    SetPsgVolsZero                      ;4124
        EI                                          ;4127
        RET                                         ;4128

