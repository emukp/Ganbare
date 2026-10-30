; === SndSetChanPeriod (0x608f) ===
SndSetChanPeriod:
        LD      a,(BSndCurPsgChan)                  ;608f
        RLCA                                        ;6092
        CALL    WRTPSG                              ;6093
        INC     a                                   ;6096
        LD      e,d                                 ;6097
        JP      WRTPSG                              ;6098
SndSetChanVolume:
        LD      a,(BSndCurPsgChan)                  ;609b
        ADD     a,0x8                               ;609e
        JP      WRTPSG                              ;60a0
bA_sub_60a3h:
        PUSH    hl                                  ;60a3
        LD      hl,bA_l60e7h                        ;60a4
        JP      bA_l60bch                           ;60a7
bA_sub_60aah:
        PUSH    hl                                  ;60aa
        LD      hl,bA_l60e1h                        ;60ab
        JP      bA_l60bch                           ;60ae
bA_sub_60b1h:
        PUSH    hl                                  ;60b1
        LD      hl,0x60db                           ;60b2
        JP      bA_l60bch                           ;60b5
SndUpdateMixer:
        PUSH    hl                                  ;60b8
        LD      hl,bA_l60d5h                        ;60b9
bA_l60bch:
        LD      a,(BSndCurPsgChan)                  ;60bc
        RLCA                                        ;60bf
        ADD     a,l                                 ;60c0
        LD      l,a                                 ;60c1
        JR      nc,bA_l60c5h                        ;60c2
        INC     h                                   ;60c4
bA_l60c5h:
        LD      a,(BSndPsgMixer)                    ;60c5
        AND     (hl)                                ;60c8
        INC     hl                                  ;60c9
        OR      (hl)                                ;60ca
        LD      (BSndPsgMixer),a                    ;60cb
        POP     hl                                  ;60ce
        LD      e,a                                 ;60cf
        LD      a,0x7                               ;60d0
        JP      WRTPSG                              ;60d2
bA_l60d5h: equ     #60d5
        DEFB    0xfe,0x08,0xfd,0x10,0xfb,0x20,0xf7,0x01  ;60d5 ; data:code-gap
        DEFB    0xef,0x02,0xdf,0x04,0xf6,0x00,0xed,0x00  ;60dd
        DEFB    0xdb,0x00,0xff,0x09,0xff,0x12,0xff,0x24  ;60e5
bA_l60e1h: equ     #60e1
bA_l60e7h: equ     #60e7

