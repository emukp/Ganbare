        DEFW    0x8fb0,0x8fcb                       ;8fac ; data:jumptable
        XOR     a                                   ;8fb0
        LD      (ix+0xc),a                          ;8fb1
        LD      a,(ix+0xd)                          ;8fb4
        OR      a                                   ;8fb7
        RET     z                                   ;8fb8
        INC     (ix+0x1)                            ;8fb9
        CALL    b2_sub_8e76h                        ;8fbc
        LD      (ix+0xb),0x10                       ;8fbf
        CALL    b2_sub_8f57h                        ;8fc3
        LD      a,0x16                              ;8fc6
        JP      ProcessSoundCommand                 ;8fc8
        DEC     (ix+0xb)                            ;8fcb
        RET     nz                                  ;8fce
        CALL    b2_sub_8e86h                        ;8fcf
        JP      b2_l87b7h                           ;8fd2
b2_sub_8fd5h: equ     #8fd5
        LD      ix,0xcc00                           ;8fd5
        LD      b,0x4                               ;8fd9
        EX      de,hl                               ;8fdb
b2_l8fdch: equ     #8fdc
        LD      a,(ix+0x0)                          ;8fdc
        OR      a                                   ;8fdf
        JR      z,b2_l8feah                         ;8fe0
        LD      de,0x40                             ;8fe2
        ADD     ix,de                               ;8fe5
        DJNZ    b2_l8fdch                           ;8fe7
        RET                                         ;8fe9
b2_l8feah: equ     #8fea
        LD      c,0x0                               ;8fea
        LD      a,(0xc483)                          ;8fec
        OR      a                                   ;8fef
        JR      z,b2_l8ff4h                         ;8ff0
        LD      c,0x20                              ;8ff2
b2_l8ff4h: equ     #8ff4
        LD      a,(hl)                              ;8ff4
        AND     0xf0                                ;8ff5
        ADD     a,c                                 ;8ff7
        ADD     a,0xf                               ;8ff8
        LD      e,a                                 ;8ffa
        INC     hl                                  ;8ffb
        LD      a,(hl)                              ;8ffc
        AND     0xf0                                ;8ffd
        ADD     a,0x8                               ;8fff
        LD      d,a                                 ;9001
        DEC     hl                                  ;9002
        LD      a,(hl)                              ;9003
        AND     0xf                                 ;9004
        CP      0xe                                 ;9006
        CALL    z,b2_sub_9066h                      ;9008
        LD      (0xcd3f),de                         ;900b
        LD      (0xcd3c),ix                         ;900f
        LD      (0xcd3e),a                          ;9013
        LD      hl,0x907c                           ;9016
        CALL    ADD_HL_A                            ;9019
        LD      a,(hl)                              ;901c
        LD      (ix+0x20),a                         ;901d
        OR      a                                   ;9020
        CALL    nz,b2_sub_908ch                     ;9021
        PUSH    ix                                  ;9024
        POP     hl                                  ;9026
        LD      a,(0xcd3e)                          ;9027
        LD      (hl),a                              ;902a
        INC     l                                   ;902b
        LD      (hl),0x0                            ;902c
        LD      de,(0xcd3f)                         ;902e
        INC     l                                   ;9032
        LD      (hl),0x0                            ;9033
        INC     l                                   ;9035
        LD      (hl),e                              ;9036
        INC     l                                   ;9037
b2_l9038h:
        LD      (hl),0x0                            ;9038
        INC     l                                   ;903a
        LD      (hl),d                              ;903b
        INC     l                                   ;903c
        LD      (hl),0x0                            ;903d
        LD      a,(ix+0x0)                          ;903f
        CP      0x7                                 ;9042
        JR      c,b2_l904ah                         ;9044
        LD      (ix+0xc),0x1                        ;9046
b2_l904ah:
        LD      a,(ix+0x20)                         ;904a
        OR      a                                   ;904d
        RET     z                                   ;904e
        LD      a,(ix+0x0)                          ;904f
        LD      de,b2_l906ch                        ;9052
        CALL    b2_sub_8485h                        ;9055
        LD      (ix+0xe),0x1                        ;9058
        PUSH    ix                                  ;905c
        POP     hl                                  ;905e
        XOR     a                                   ;905f
        LD      (0xcd37),a                          ;9060
        JP      0x5503                              ;9063
b2_sub_9066h:
        PUSH    af                                  ;9066
        LD      a,0xff                              ;9067
        LD      (0xcd2a),a                          ;9069
b2_l906ch:
        POP     af                                  ;906c
        RET                                         ;906d
        DEFB    0x7b,0x90,0x7b,0x90,0x7b,0x90,0x7a,0x90  ;906e ; data:code-gap
        DEFB    0x7a,0x90,0x7a,0x90,0x08,0x01,0x42,0x02  ;9076
        DEFB    0x02,0x02,0x01,0x01,0x00,0x00,0x00,0x00  ;907e
        DEFB    0x00,0x00,0x00,0x00,0x00,0x00       ;9086
b2_l9070h: equ     #9070
b2_sub_908ch:
        LD      b,a                                 ;908c
        LD      a,(0xcd41)                          ;908d
        LD      l,a                                 ;9090
        LD      h,0x0                               ;9091
        ADD     hl,hl                               ;9093
        ADD     hl,hl                               ;9094
        LD      de,0xee20                           ;9095
        ADD     hl,de                               ;9098
        LD      de,0x4                              ;9099
        LD      c,0xe1                              ;909c
        EXX                                         ;909e
        LD      de,0x5                              ;909f
        LD      hl,(0xcd3c)                         ;90a2
        SET     5,l                                 ;90a5
        INC     l                                   ;90a7
        EXX                                         ;90a8
        CALL    b2_sub_90afh                        ;90a9
        DEC     b                                   ;90ac
        JR      z,b2_l90b8h                         ;90ad
b2_sub_90afh:
        LD      (hl),c                              ;90af
        ADD     hl,de                               ;90b0
        EXX                                         ;90b1
        LD      a,(0xcd41)                          ;90b2
        LD      (hl),a                              ;90b5
        ADD     hl,de                               ;90b6
        EXX                                         ;90b7
b2_l90b8h:
        LD      a,(0xcd41)                          ;90b8
        INC     a                                   ;90bb
        LD      (0xcd41),a                          ;90bc
        RET                                         ;90bf

