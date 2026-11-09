; === UpdateSound (0x6000) ===
UpdateSound:
        LD      a,(BSndPsgMixer)                    ;6000
        LD      e,a                                 ;6003
        LD      a,0x7                               ;6004
        CALL    WRTPSG                              ;6006
        LD      a,(BSndSfxMode)                     ;6009
        OR      a                                   ;600c
        JP      nz,SndSfxHandler                    ;600d
        LD      a,(BSndTickCounter)                 ;6010
        DEC     a                                   ;6013
        JP      m,UpdateSound4                      ;6014
        JP      nz,UpdateSound3                     ;6017
        LD      a,(BSndSongCounter)                 ;601a
        DEC     a                                   ;601d
        LD      (BSndSongCounter),a                 ;601e
        CP      0xf0                                ;6021
        JP      nz,UpdateSound2                     ;6023
        LD      hl,SndTrackIdle                     ;6026
        LD      (ApSndTrackPC),hl                   ;6029
        LD      (0xc012),hl                         ;602c
        LD      (0xc014),hl                         ;602f
        XOR     a                                   ;6032
        LD      (BSndAuxFlag),a                     ;6033
        JP      UpdateSound3                        ;6036
UpdateSound2:
        LD      a,0x3a                              ;6039
UpdateSound3:
        LD      (BSndTickCounter),a                 ;603b
UpdateSound4:
        XOR     a                                   ;603e
        LD      b,a                                 ;603f
        LD      hl,(ApSndTrackPC)                   ;6040
        CALL    SndDispatchTrack                    ;6043
        LD      a,0x1                               ;6046
        LD      b,a                                 ;6048
        LD      hl,(0xc012)                         ;6049
        CALL    SndDispatchTrack                    ;604c
        LD      a,0x2                               ;604f
        LD      b,a                                 ;6051
        LD      hl,(0xc014)                         ;6052
        CALL    SndDispatchTrack                    ;6055
        LD      a,0x2                               ;6058
        LD      b,0x3                               ;605a
        LD      hl,(0xc016)                         ;605c
