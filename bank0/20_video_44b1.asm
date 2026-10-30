; === RAMtoVRAM (0x44b1) ===
RAMtoVRAM:
        EX      de,hl                               ;44b1
        CALL    SetVramAddressWR                    ;44b2
        CALL    PrepareOtirRegs                     ;44b5
        EX      af,af'                              ;44b8
        LD      a,(0x7)                             ;44b9
        LD      c,a                                 ;44bc
        EX      af,af'                              ;44bd
VRAMtoRAM2_2:
        OTIR                                        ;44be
        DEC     a                                   ;44c0
        JR      nz,VRAMtoRAM2_2                     ;44c1
        RET                                         ;44c3

; === FillVRAM (0x44c4) ===
FillVRAM:
        PUSH    de                                  ;44c4
        PUSH    af                                  ;44c5
        CALL    SetVramAddressWR                    ;44c6
        LD      d,c                                 ;44c9
        LD      a,c                                 ;44ca
        OR      a                                   ;44cb
        JR      z,FillVRAM2                         ;44cc
        INC     b                                   ;44ce
FillVRAM2:
        LD      a,(0x7)                             ;44cf
        LD      c,a                                 ;44d2
        POP     af                                  ;44d3
FillVRAM3:
        OUT     (c),a                               ;44d4
        DEC     d                                   ;44d6
        JR      nz,FillVRAM3                        ;44d7
        DJNZ    FillVRAM3                           ;44d9
        POP     de                                  ;44db
        RET                                         ;44dc
        PUSH    bc                                  ;44dd
        CALL    SetVramAddressRD                    ;44de
        LD      a,(0x6)                             ;44e1
        LD      c,a                                 ;44e4
        IN      a,(c)                               ;44e5
        POP     bc                                  ;44e7
        RET                                         ;44e8

; === WriteVRAM (0x44e9) ===
WriteVRAM:
        PUSH    bc                                  ;44e9
        PUSH    af                                  ;44ea
        CALL    SetVramAddressWR                    ;44eb
        LD      a,(0x7)                             ;44ee
        LD      c,a                                 ;44f1
        POP     af                                  ;44f2
        OUT     (c),a                               ;44f3
        POP     bc                                  ;44f5
        RET                                         ;44f6

; === SetVramAddressWR (0x44f7) ===
SetVramAddressWR:
        PUSH    bc                                  ;44f7
        LD      a,(0x7)                             ;44f8
        INC     a                                   ;44fb
        LD      c,a                                 ;44fc
        LD      a,h                                 ;44fd
        RLCA                                        ;44fe
        RLCA                                        ;44ff
        AND     0x3                                 ;4500
        DI                                          ;4502
        OUT     (c),a                               ;4503
        LD      a,0x8e                              ;4505
        OUT     (c),a                               ;4507
        LD      a,l                                 ;4509
        OUT     (c),a                               ;450a
        LD      a,h                                 ;450c
        AND     0x3f                                ;450d
        OR      0x40                                ;450f
        OUT     (c),a                               ;4511
        POP     bc                                  ;4513
        EI                                          ;4514
        RET                                         ;4515

; === SetVramAddressRD (0x4516) ===
SetVramAddressRD:
        PUSH    bc                                  ;4516
        LD      a,(0x7)                             ;4517
        INC     a                                   ;451a
        LD      c,a                                 ;451b
        LD      a,h                                 ;451c
        RLCA                                        ;451d
        RLCA                                        ;451e
        AND     0x3                                 ;451f
        DI                                          ;4521
        OUT     (c),a                               ;4522
        LD      a,0x8e                              ;4524
        OUT     (c),a                               ;4526
        LD      a,l                                 ;4528
        OUT     (c),a                               ;4529
        LD      a,h                                 ;452b
        AND     0x3f                                ;452c
        OUT     (c),a                               ;452e
        POP     bc                                  ;4530
        EI                                          ;4531
        RET                                         ;4532

