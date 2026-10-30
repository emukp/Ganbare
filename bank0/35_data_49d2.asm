        DEFB    0x3a,0x02                           ;49d2
        RET     nz                                  ;49d4
        AND     0x40                                ;49d5
        RET     z                                   ;49d7
        CALL    ReadFKeys                           ;49d8
        LD      hl,FKeysHold                        ;49db
        CALL    StoreControls                       ;49de
        CALL    ReadControls                        ;49e1
