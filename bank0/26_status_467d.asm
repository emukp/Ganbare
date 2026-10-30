; === ReadStatusReg (0x467d) ===
ReadStatusReg:
        PUSH    bc                                  ;467d
        PUSH    hl                                  ;467e
        LD      hl,(0x6)                            ;467f
        INC     h                                   ;4682
        INC     l                                   ;4683
        LD      c,h                                 ;4684
        DI                                          ;4685
        OUT     (c),a                               ;4686
        LD      a,0x8f                              ;4688
        OUT     (c),a                               ;468a
        LD      c,l                                 ;468c
        IN      a,(c)                               ;468d
        PUSH    af                                  ;468f
        XOR     a                                   ;4690
        LD      c,h                                 ;4691
        OUT     (c),a                               ;4692
        LD      a,0x8f                              ;4694
        OUT     (c),a                               ;4696
        POP     af                                  ;4698
        POP     hl                                  ;4699
        POP     bc                                  ;469a
        EI                                          ;469b
        RET                                         ;469c

