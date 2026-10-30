GS_AttractDemo:
        DJNZ    AttractDemoPhase1                   ;5e1f
        CALL    0x6923                              ;5e21
        CALL    0x68f3                              ;5e24
        LD      a,(BGameFieldActive)                ;5e27
        OR      a                                   ;5e2a
        RET     nz                                  ;5e2b
b0_l5e2ch:
        XOR     a                                   ;5e2c

