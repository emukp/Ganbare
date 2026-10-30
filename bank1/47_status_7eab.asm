; === CheckGameMasterCart (0x7eab) ===
CheckGameMasterCart:
        LD      bc,0x400                            ;7eab
        LD      hl,EXPTBL                           ;7eae
CheckGameMasterCart2:
        PUSH    bc                                  ;7eb1
        PUSH    hl                                  ;7eb2
        LD      a,(hl)                              ;7eb3
        BIT     7,a                                 ;7eb4
        JR      nz,CheckGameMasterCart6             ;7eb6
        CALL    CheckGameMasterSlot                 ;7eb8
CheckGameMasterCart3:
        POP     hl                                  ;7ebb
        POP     bc                                  ;7ebc
        JR      c,CheckGameMasterCart4              ;7ebd
        INC     hl                                  ;7ebf
        INC     c                                   ;7ec0
        DJNZ    CheckGameMasterCart2                ;7ec1
        XOR     a                                   ;7ec3
        JR      CheckGameMasterCart5                ;7ec4
CheckGameMasterCart4:
        LD      a,0xff                              ;7ec6
CheckGameMasterCart5:
        LD      (BGameMasterFound),a                ;7ec8
        RET                                         ;7ecb
CheckGameMasterCart6:
        CALL    CheckGameMasterSubslots             ;7ecc
        JR      CheckGameMasterCart3                ;7ecf
CheckGameMasterSubslots:
        AND     0x80                                ;7ed1
        OR      c                                   ;7ed3
        LD      c,a                                 ;7ed4
        LD      b,0x4                               ;7ed5
CheckGameMasterSubs2:
        PUSH    bc                                  ;7ed7
        CALL    CheckGameMasterSlot                 ;7ed8
        POP     bc                                  ;7edb
        RET     c                                   ;7edc
        LD      a,c                                 ;7edd
        ADD     a,0x4                               ;7ede
        LD      c,a                                 ;7ee0
        DJNZ    CheckGameMasterSubs2                ;7ee1
        AND     a                                   ;7ee3
        RET                                         ;7ee4

; === CheckGameMasterSlot (0x7ee5) ===
CheckGameMasterSlot:
        LD      de,AbGmSigPage2Tail                 ;7ee5
        LD      hl,0xbffa                           ;7ee8
        LD      b,0x6                               ;7eeb
        CALL    FindSlotPattern                     ;7eed
        RET     c                                   ;7ef0
        LD      de,AbGmSigPage1Tail                 ;7ef1
        LD      hl,b1_l7ffah                        ;7ef4
        LD      b,0x6                               ;7ef7

