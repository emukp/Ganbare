b2_l8f34h:
        LD      (0xc270),a                          ;8f34
b2_l8f37h:
        CALL    b2_sub_8f57h                        ;8f37
        CALL    b2_sub_8e8fh                        ;8f3a
        CALL    DrawFieldItems                      ;8f3d
        JP      b2_l87b7h                           ;8f40
        LD      a,(ix+0xd)                          ;8f43
        OR      a                                   ;8f46
        RET     z                                   ;8f47
        LD      a,(0xc279)                          ;8f48
        INC     a                                   ;8f4b
        CP      0x4                                 ;8f4c
        JR      nz,b2_l8f52h                        ;8f4e
        LD      a,0x3                               ;8f50
b2_l8f52h:
        LD      (0xc279),a                          ;8f52
        JR      b2_l8f37h                           ;8f55
b2_sub_8f57h:
        LD      hl,0xcd4e                           ;8f57
        LD      a,(hl)                              ;8f5a
        CP      0x30                                ;8f5b
        RET     nc                                  ;8f5d
        INC     (hl)                                ;8f5e
        LD      b,a                                 ;8f5f
        ADD     a,a                                 ;8f60
        ADD     a,b                                 ;8f61
        LD      hl,0xc2b0                           ;8f62
        CALL    ADD_HL_A                            ;8f65
        LD      a,(0xc484)                          ;8f68
        LD      (hl),a                              ;8f6b
        INC     hl                                  ;8f6c
        LD      a,(ix+0x5)                          ;8f6d
        SUB     0x8                                 ;8f70
        LD      (hl),a                              ;8f72
        INC     hl                                  ;8f73
        LD      a,(ix+0x3)                          ;8f74
        SUB     0x2f                                ;8f77
        LD      (hl),a                              ;8f79
        RET                                         ;8f7a
        LD      hl,0xc2b0                           ;8f7b
        LD      d,h                                 ;8f7e
        LD      e,l                                 ;8f7f
        INC     de                                  ;8f80
        XOR     a                                   ;8f81
        LD      (hl),a                              ;8f82
        LD      bc,0x8f                             ;8f83
        LDIR                                        ;8f86
        LD      hl,0xcda0                           ;8f88
        XOR     a                                   ;8f8b
        LD      b,0x10                              ;8f8c
b2_l8f8eh:
        LD      (hl),a                              ;8f8e
        INC     hl                                  ;8f8f
        DJNZ    b2_l8f8eh                           ;8f90
        CALL    0xbcf2                              ;8f92
        XOR     a                                   ;8f95
        LD      (0xcd4e),a                          ;8f96
        RET                                         ;8f99
        LD      a,(ix+0xd)                          ;8f9a
        OR      a                                   ;8f9d
        RET     z                                   ;8f9e
        LD      a,0x1                               ;8f9f
        LD      (0xc271),a                          ;8fa1
        JR      b2_l8f37h                           ;8fa4
        LD      a,(ix+0x1)                          ;8fa6
        CALL    JumpIndex                           ;8fa9
