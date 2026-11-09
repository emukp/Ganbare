VRAMtoRAM:
        CALL    SetVramAddressRD                    ;4496
        CALL    PrepareOtirRegs                     ;4499
        EX      af,af'                              ;449c
        LD      a,(0x6)                             ;449d
        LD      c,a                                 ;44a0
        EX      af,af'                              ;44a1
VRAMtoRAM2:
        INIR                                        ;44a2
        DEC     a                                   ;44a4
        JR      nz,VRAMtoRAM2                       ;44a5
        EX      de,hl                               ;44a7
        RET                                         ;44a8

