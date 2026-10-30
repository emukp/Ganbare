; === NextSubstatusT (0x5e40) ===
NextSubstatusT:
        LD      (WaitCounter),a                     ;5e40
NextSubstatus:
        LD      hl,GameSubStatus                    ;5e43
        INC     (hl)                                ;5e46
        RET                                         ;5e47

; === GS_StartGame (0x5e48) ===
GS_StartGame:
        DJNZ    StartGamePhase0                     ;5e48
        LD      a,(ControlConfig)                   ;5e4a
        BIT     5,a                                 ;5e4d
