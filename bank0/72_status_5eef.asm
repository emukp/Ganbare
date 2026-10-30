NextStatusT:
        LD      a,0x20                              ;5eef
NextGameStatus:
        LD      (WaitCounter),a                     ;5ef1
        LD      hl,GameStatus                       ;5ef4
        INC     (hl)                                ;5ef7
ResetSubstatus:
        XOR     a                                   ;5ef8
        LD      (GameSubStatus),a                   ;5ef9
        RET                                         ;5efc

