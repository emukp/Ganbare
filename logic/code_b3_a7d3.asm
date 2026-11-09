b3_la7d3h:
        LD      a,(de)                              ;a7d3
        CALL    b3_sub_a58eh                        ;a7d4
        LD      a,(ix+0x73)                         ;a7d7
        INC     a                                   ;a7da
        CP      0x8                                 ;a7db
        JR      nz,b3_la7e0h                        ;a7dd
        XOR     a                                   ;a7df
b3_la7e0h:
        LD      (ix+0x73),a                         ;a7e0
        BIT     0,(ix+0x74)                         ;a7e3
        JR      nz,b3_la7f4h                        ;a7e7
        LD      (ix+0xb),0x12                       ;a7e9
        LD      (ix+0x73),0x0                       ;a7ed
        CALL    0x893d                              ;a7f1
b3_la7f4h:
        LD      (ix+0x74),0x1                       ;a7f4
        JR      b3_la827h                           ;a7f8
b3_la7fah:
        LD      (ix+0x74),0x0                       ;a7fa
        JR      b3_la821h                           ;a7fe
b3_la800h: equ     #a800
