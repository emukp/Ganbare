; === InterruptTick (0x4045) ===
InterruptTick:
        DI                                          ;4045
        LD      a,(BGameMasterFound)                ;4046
        OR      a                                   ;4049
        JP      nz,HandleGameMasterKeys             ;404a
b0_l404dh:
        LD      a,0xa                               ;404d
        LD      (0x6000),a                          ;404f
        INC     a                                   ;4052
        LD      (0x8000),a                          ;4053
        INC     a                                   ;4056
        LD      (0xa000),a                          ;4057
        CALL    0x6000                              ;405a
        DI                                          ;405d
        LD      a,(BanksIn60)                       ;405e
        LD      (0x6000),a                          ;4061
        LD      a,(BanksIn80)                       ;4064
        LD      (0x8000),a                          ;4067
        LD      a,(BanksInA0)                       ;406a
        LD      (0xa000),a                          ;406d
        LD      hl,TickInProgress                   ;4070
        BIT     0,(hl)                              ;4073
        JP      nz,InterruptTick2                   ;4075
        INC     (hl)                                ;4078
        EI                                          ;4079
        CALL    GameStatusLogic                     ;407a
        XOR     a                                   ;407d
        LD      (TickInProgress),a                  ;407e
InterruptTick2:
        EI                                          ;4081
        RET                                         ;4082

; === ADD_HL_A (0x4083) ===
ADD_HL_A:
        ADD     a,l                                 ;4083
        LD      l,a                                 ;4084
        RET     nc                                  ;4085
        INC     h                                   ;4086
        RET                                         ;4087

; === ADD_DE_A (0x4088) ===
ADD_DE_A:
        ADD     a,e                                 ;4088
        LD      e,a                                 ;4089
        RET     nc                                  ;408a
        INC     d                                   ;408b
        RET                                         ;408c

; === JumpIndex (0x408d) ===
JumpIndex:
        POP     hl                                  ;408d
        ADD     a,a                                 ;408e
        CALL    ADD_HL_A                            ;408f
        LD      e,(hl)                              ;4092
        INC     hl                                  ;4093
        LD      d,(hl)                              ;4094
        EX      de,hl                               ;4095
        JP      (hl)                                ;4096

