; === PrepareLandBanks (0x7e42) ===
PrepareLandBanks:
        DI                                          ;7e42
        LD      a,0xe                               ;7e43
        LD      (0x8000),a                          ;7e45
        LD      (BanksIn80),a                       ;7e48
        EI                                          ;7e4b
        LD      a,(GameLand)                        ;7e4c
        LD      b,a                                 ;7e4f
        ADD     a,a                                 ;7e50
        ADD     a,a                                 ;7e51
        ADD     a,a                                 ;7e52
        SUB     b                                   ;7e53
        LD      b,a                                 ;7e54
        LD      a,(GameScore)                       ;7e55
        ADD     a,b                                 ;7e58
        LD      de,0x981d                           ;7e59
        CALL    GetPointerDE2A                      ;7e5c
        LD      hl,0xc340                           ;7e5f
        LD      a,(de)                              ;7e62
        INC     de                                  ;7e63
        LD      b,a                                 ;7e64
        LD      c,0x0                               ;7e65
b1_l7e67h:
        INC     de                                  ;7e67
        LD      a,(de)                              ;7e68
        AND     0x7f                                ;7e69
        CP      0x14                                ;7e6b
        CALL    z,b1_sub_7e8ch                      ;7e6d
        INC     de                                  ;7e70
        DJNZ    b1_l7e67h                           ;7e71
        LD      a,c                                 ;7e73
        LD      (0xc28d),a                          ;7e74
        OR      a                                   ;7e77
        JP      z,SetBanks1_2_3                     ;7e78
        LD      a,r                                 ;7e7b
        DEC     c                                   ;7e7d
        AND     c                                   ;7e7e
        ADD     a,a                                 ;7e7f
        LD      hl,0xc341                           ;7e80
        CALL    ADD_HL_A                            ;7e83
        LD      a,0x80                              ;7e86
        LD      (hl),a                              ;7e88
        JP      SetBanks1_2_3                       ;7e89
b1_sub_7e8ch:
        DEC     de                                  ;7e8c
        LD      a,(de)                              ;7e8d
        LD      (hl),a                              ;7e8e
        INC     de                                  ;7e8f
        INC     hl                                  ;7e90
        LD      a,b                                 ;7e91
        AND     0x3                                 ;7e92
        LD      a,0x80                              ;7e94
        JR      z,b1_l7e99h                         ;7e96
        XOR     a                                   ;7e98
b1_l7e99h:
        INC     c                                   ;7e99
        LD      (hl),a                              ;7e9a
        INC     hl                                  ;7e9b
        RET                                         ;7e9c
        LD      hl,0xc341                           ;7e9d
        LD      b,0x10                              ;7ea0
b1_l7ea2h:
        LD      a,(hl)                              ;7ea2
        AND     0x80                                ;7ea3
        LD      (hl),a                              ;7ea5
        INC     hl                                  ;7ea6
        INC     hl                                  ;7ea7
        DJNZ    b1_l7ea2h                           ;7ea8
        RET                                         ;7eaa

