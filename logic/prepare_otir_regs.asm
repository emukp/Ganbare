; === PrepareOtirRegs (0x44a9) ===
PrepareOtirRegs:
        EX      de,hl                               ;44a9
        LD      a,c                                 ;44aa
        OR      a                                   ;44ab
        LD      a,b                                 ;44ac
        LD      b,c                                 ;44ad
        RET     z                                   ;44ae
        INC     a                                   ;44af
        RET                                         ;44b0

