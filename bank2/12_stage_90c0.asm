; === SpawnFieldObjects (0x90c0) ===
SpawnFieldObjects:
        DI                                          ;90c0
        LD      a,0xf                               ;90c1
        LD      (0xa000),a                          ;90c3
        LD      (BanksInA0),a                       ;90c6
        EI                                          ;90c9
        XOR     a                                   ;90ca
        LD      (0xcd41),a                          ;90cb
        LD      a,(0xc483)                          ;90ce
        OR      a                                   ;90d1
        JP      nz,b2_l916eh                        ;90d2
        LD      de,0xa08e                           ;90d5
        LD      a,(GameLand)                        ;90d8
        LD      b,a                                 ;90db
        ADD     a,a                                 ;90dc
        ADD     a,a                                 ;90dd
        ADD     a,a                                 ;90de
        SUB     b                                   ;90df
        LD      b,a                                 ;90e0
        LD      a,(GameScore)                       ;90e1
        ADD     a,b                                 ;90e4
        CALL    GetPointerDE2A                      ;90e5
        CALL    b2_sub_911eh                        ;90e8
        JP      c,SetBanks1_2_3                     ;90eb
b2_l90eeh:
        LD      a,(de)                              ;90ee
        LD      c,a                                 ;90ef
        LD      a,(0xc281)                          ;90f0
        CP      c                                   ;90f3
        JR      nz,SetBanks1_2_3_2                  ;90f4
        INC     de                                  ;90f6
        LD      a,(de)                              ;90f7
        AND     0xf                                 ;90f8
        OR      a                                   ;90fa
        PUSH    de                                  ;90fb
        CALL    nz,b2_sub_8fd5h                     ;90fc
        POP     de                                  ;90ff
        LD      a,(de)                              ;9100
        AND     0xf0                                ;9101
        ADD     a,0x0                               ;9103
        LD      (0xcd27),a                          ;9105
        INC     de                                  ;9108
        LD      a,(de)                              ;9109
        LD      b,a                                 ;910a
        AND     0xf0                                ;910b
        LD      (0xcd28),a                          ;910d
        LD      a,b                                 ;9110
        AND     0xf                                 ;9111
        INC     de                                  ;9113
        PUSH    de                                  ;9114
        CALL    b2_sub_9132h                        ;9115
        POP     de                                  ;9118
        JR      b2_l90eeh                           ;9119
