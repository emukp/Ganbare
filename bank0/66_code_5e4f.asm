BlinkSelectedMenuItem:
        LD      hl,0x63bc                           ;5e4f
        JR      z,b0_l5e57h                         ;5e52
        LD      hl,0x63cb                           ;5e54
b0_l5e57h:
        LD      a,(WaitCounter)                     ;5e57
        BIT     2,a                                 ;5e5a
        JR      z,b0_l5e63h                         ;5e5c
        CALL    EraseTextXY                         ;5e5e
        JR      b0_l5e66h                           ;5e61
b0_l5e63h:
        CALL    PrintTextXY                         ;5e63
b0_l5e66h:
        LD      hl,WaitCounter                      ;5e66
        DEC     (hl)                                ;5e69
        RET     nz                                  ;5e6a
        DEFB    0x3a,0x00,0xef,0xb7,0x20,0x1c,0x18,0xd0  ;5e6b ; data:code-gap

