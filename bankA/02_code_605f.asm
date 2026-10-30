SndDispatchTrack:
        LD      (BSndCurPsgChan),a                  ;605f
        LD      a,b                                 ;6062
        LD      (BSndCurTrack),a                    ;6063
        JP      (hl)                                ;6066

; === SndTrackIdle (0x6067) ===
SndTrackIdle:
        LD      a,(BSndCurTrack)                    ;6067
        CP      0x3                                 ;606a
        JP      nz,SndTrackIdle2                    ;606c
        XOR     a                                   ;606f
        LD      (BSndMusicId),a                     ;6070
        LD      a,(BSndCurTrack)                    ;6073
SndTrackIdle2:
        RLCA                                        ;6076
        LD      hl,ApSndTrackPC                     ;6077
        ADD     a,l                                 ;607a
        LD      l,a                                 ;607b
        JR      nc,SndTrackIdle3                    ;607c
        INC     h                                   ;607e
SndTrackIdle3:
        LD      de,bA_l608ah                        ;607f
        LD      (hl),e                              ;6082
        INC     hl                                  ;6083
        LD      (hl),d                              ;6084
        LD      e,0x0                               ;6085
        JP      SndSetChanVolume                    ;6087
bA_l608ah:
        RET                                         ;608a

