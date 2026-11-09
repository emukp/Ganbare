TileBlockPlacerA1:
        LD      a,0x1                               ;4e7f
        JP      TileBlockPlacer                     ;4e81
b0_sub_4e84h:
        LD      a,(0xcd27)                          ;4e84
        ADD     a,e                                 ;4e87
        LD      e,a                                 ;4e88
        LD      a,(0xcd28)                          ;4e89
        ADD     a,d                                 ;4e8c
        LD      d,a                                 ;4e8d
        PUSH    bc                                  ;4e8e
        POP     hl                                  ;4e8f
        PUSH    bc                                  ;4e90
        LD      bc,0x1010                           ;4e91
        PUSH    de                                  ;4e94
        LD      a,0x48                              ;4e95
        CALL    VDP_Copy_Dot                        ;4e97
        POP     de                                  ;4e9a
        POP     bc                                  ;4e9b
        CALL    b0_sub_4f26h                        ;4e9c
        LD      a,0x8                               ;4e9f
        ADD     a,d                                 ;4ea1
        LD      d,a                                 ;4ea2
        CALL    b0_sub_4f26h                        ;4ea3
        LD      a,0xf8                              ;4ea6
        ADD     a,d                                 ;4ea8
        LD      d,a                                 ;4ea9
        LD      a,0x8                               ;4eaa
        ADD     a,e                                 ;4eac
        LD      e,a                                 ;4ead
        CALL    b0_sub_4f26h                        ;4eae
b0_l4eb1h:
        LD      a,0x8                               ;4eb1
b0_l4eb3h:
        ADD     a,d                                 ;4eb3
        LD      d,a                                 ;4eb4
        CALL    b0_sub_4f26h                        ;4eb5
        RET                                         ;4eb8
b0_l4eb9h:
        INC     a                                   ;4eb9
        JR      z,b0_l4ed7h                         ;4eba
        DEC     a                                   ;4ebc
        PUSH    af                                  ;4ebd
        PUSH    de                                  ;4ebe
        LD      de,b0_l4efch                        ;4ebf
        CALL    GetPointerDE2A                      ;4ec2
        EX      de,hl                               ;4ec5
        POP     de                                  ;4ec6
        POP     af                                  ;4ec7
        CP      0xe                                 ;4ec8
        LD      bc,0x2020                           ;4eca
        JR      z,b0_l4ed2h                         ;4ecd
        LD      bc,0x1010                           ;4ecf
b0_l4ed2h:
        LD      a,0x1                               ;4ed2
        JP      VDP_Copy_Byte                       ;4ed4
b0_l4ed7h:
        LD      hl,0x0                              ;4ed7
        CALL    b0_sub_4eech                        ;4eda
        LD      hl,0x800                            ;4edd
        CALL    b0_sub_4eech                        ;4ee0
        LD      hl,0xf808                           ;4ee3
        CALL    b0_sub_4eech                        ;4ee6
        LD      hl,0x800                            ;4ee9
b0_sub_4eech:
        ADD     hl,de                               ;4eec
        EX      de,hl                               ;4eed
        LD      hl,0x0                              ;4eee
        PUSH    de                                  ;4ef1
        LD      bc,0x808                            ;4ef2
        LD      a,0x40                              ;4ef5
        CALL    VDP_Copy_Dot                        ;4ef7
        POP     de                                  ;4efa
        RET                                         ;4efb
b0_l4efch: equ     #4efc
        DEFB    0x80,0x50,0x80,0xe0,0x80,0xa0,0x80,0xc0  ;4efc ; data:code-gap
        DEFB    0x80,0xd0,0x80,0x60,0x80,0xb0,0x80,0x70  ;4f04
        DEFB    0x80,0xf0,0x90,0x00,0x90,0x40,0x80,0x80  ;4f0c
        DEFB    0x80,0x90,0x00,0x00,0xa0,0x20,0x00,0x00  ;4f14
        DEFB    0x90,0x20,0x90,0x30,0x90,0x10,0x90,0x80  ;4f1c
        DEFB    0x90,0x90                           ;4f24
b0_l4f1bh: equ     #4f1b
b0_sub_4f26h:
        PUSH    de                                  ;4f26
        PUSH    bc                                  ;4f27
        EX      de,hl                               ;4f28
        LD      c,h                                 ;4f29
        LD      a,l                                 ;4f2a
        SUB     0x20                                ;4f2b
        AND     0xf8                                ;4f2d
        LD      l,a                                 ;4f2f
        LD      h,0x0                               ;4f30
        LD      b,h                                 ;4f32
        ADD     hl,hl                               ;4f33
        ADD     hl,hl                               ;4f34
        SRL     c                                   ;4f35
        SRL     c                                   ;4f37
        SRL     c                                   ;4f39
        ADD     hl,bc                               ;4f3b
        LD      bc,0xd800                           ;4f3c
        ADD     hl,bc                               ;4f3f
        LD      a,(0xcd2a)                          ;4f40
        LD      (hl),a                              ;4f43
        POP     bc                                  ;4f44
        POP     de                                  ;4f45
        RET                                         ;4f46
        PUSH    af                                  ;4f47
        CALL    SetBanks7_8_9                       ;4f48
        XOR     a                                   ;4f4b
        LD      (0xcd27),a                          ;4f4c
        LD      (0xcd28),a                          ;4f4f
        LD      de,0x20                             ;4f52
        LD      a,0xff                              ;4f55
        CALL    b0_sub_4f94h                        ;4f57
        LD      a,0xff                              ;4f5a
        CALL    b0_sub_4f94h                        ;4f5c
        LD      de,0xc0                             ;4f5f
        LD      a,0xff                              ;4f62
        CALL    b0_sub_4f94h                        ;4f64
        LD      a,0xff                              ;4f67
        CALL    b0_sub_4f94h                        ;4f69
        POP     af                                  ;4f6c
        ADD     a,a                                 ;4f6d
        LD      l,a                                 ;4f6e
        LD      h,0x0                               ;4f6f
        LD      e,a                                 ;4f71
        LD      d,0x0                               ;4f72
        ADD     hl,hl                               ;4f74
        ADD     hl,hl                               ;4f75
        ADD     hl,hl                               ;4f76
        ADD     hl,de                               ;4f77
        LD      de,0xab18                           ;4f78
        ADD     hl,de                               ;4f7b
        LD      de,0x30                             ;4f7c
        LD      b,0x9                               ;4f7f
b0_l4f81h:
        LD      a,(hl)                              ;4f81
        INC     hl                                  ;4f82
        CALL    b0_sub_4f94h                        ;4f83
        LD      a,(hl)                              ;4f86
        INC     hl                                  ;4f87
        CALL    b0_sub_4f94h                        ;4f88
        LD      a,0x10                              ;4f8b
        ADD     a,e                                 ;4f8d
        LD      e,a                                 ;4f8e
        DJNZ    b0_l4f81h                           ;4f8f
        JP      SetBanks1_2_3                       ;4f91
b0_sub_4f94h:
        LD      c,b                                 ;4f94
        LD      b,0x8                               ;4f95
b0_l4f97h:
        RLA                                         ;4f97
        PUSH    af                                  ;4f98
        JR      nc,b0_l4fach                        ;4f99
        PUSH    de                                  ;4f9b
        PUSH    hl                                  ;4f9c
        PUSH    bc                                  ;4f9d
        LD      bc,0x80                             ;4f9e
        LD      a,0xff                              ;4fa1
        LD      (0xcd2a),a                          ;4fa3
        CALL    b0_sub_4e84h                        ;4fa6
        POP     bc                                  ;4fa9
        POP     hl                                  ;4faa
        POP     de                                  ;4fab
b0_l4fach:
        LD      a,0x10                              ;4fac
        ADD     a,d                                 ;4fae
        LD      d,a                                 ;4faf
        POP     af                                  ;4fb0
        DJNZ    b0_l4f97h                           ;4fb1
        LD      b,c                                 ;4fb3
        RET                                         ;4fb4

