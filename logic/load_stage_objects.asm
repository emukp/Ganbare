; === LoadStageObjects (0x6afc) ===
LoadStageObjects:
        CALL    GetStageTableIndex                  ;6afc
        LD      hl,0xaf08                           ;6aff
        CALL    GetTableWord                        ;6b02
        LD      de,0xea00                           ;6b05
        LD      b,0xf                               ;6b08
b1_l6b0ah:
        LD      a,(hl)                              ;6b0a
        PUSH    bc                                  ;6b0b
        PUSH    hl                                  ;6b0c
        LD      h,0x0                               ;6b0d
        LD      l,a                                 ;6b0f
        ADD     hl,hl                               ;6b10
        LD      bc,0xb04f                           ;6b11
        ADD     hl,bc                               ;6b14
        LD      a,(hl)                              ;6b15
        LD      (de),a                              ;6b16
        INC     hl                                  ;6b17
        INC     de                                  ;6b18
        LD      a,(hl)                              ;6b19
        LD      (de),a                              ;6b1a
        INC     de                                  ;6b1b
        POP     hl                                  ;6b1c
        POP     bc                                  ;6b1d
        INC     hl                                  ;6b1e
        DJNZ    b1_l6b0ah                           ;6b1f
        CALL    GetStageTableIndex                  ;6b21
        LD      hl,0xb21b                           ;6b24
        CALL    GetTableWord                        ;6b27
        PUSH    hl                                  ;6b2a
        LD      de,0xea80                           ;6b2b
        LD      a,(hl)                              ;6b2e
        LD      (de),a                              ;6b2f
        LD      b,a                                 ;6b30
        INC     hl                                  ;6b31
        INC     de                                  ;6b32
b1_l6b33h:
        LD      a,(hl)                              ;6b33
        LD      (de),a                              ;6b34
        INC     hl                                  ;6b35
        INC     de                                  ;6b36
        LD      a,(hl)                              ;6b37
        AND     0x1f                                ;6b38
        LD      (de),a                              ;6b3a
        INC     hl                                  ;6b3b
        INC     de                                  ;6b3c
        DJNZ    b1_l6b33h                           ;6b3d
        POP     hl                                  ;6b3f
        LD      de,0xeb00                           ;6b40
        LD      a,(hl)                              ;6b43
        LD      (de),a                              ;6b44
        LD      b,a                                 ;6b45
        INC     hl                                  ;6b46
        INC     de                                  ;6b47
b1_l6b48h:
        INC     de                                  ;6b48
        LD      a,(hl)                              ;6b49
        LD      (de),a                              ;6b4a
        INC     hl                                  ;6b4b
        DEC     de                                  ;6b4c
        LD      a,(hl)                              ;6b4d
        AND     0x1f                                ;6b4e
        LD      (de),a                              ;6b50
        INC     de                                  ;6b51
        INC     de                                  ;6b52
        LD      a,(hl)                              ;6b53
        RLCA                                        ;6b54
        RLCA                                        ;6b55
        RLCA                                        ;6b56
        AND     0x7                                 ;6b57
        LD      (de),a                              ;6b59
        INC     hl                                  ;6b5a
        INC     de                                  ;6b5b
        DJNZ    b1_l6b48h                           ;6b5c
        RET                                         ;6b5e
b1_sub_6b5fh:
        LD      hl,0xeb90                           ;6b5f
        LD      a,(ControlConfig)                   ;6b62
        RRCA                                        ;6b65
        RRCA                                        ;6b66
        RRCA                                        ;6b67
        AND     0x10                                ;6b68
        LD      b,a                                 ;6b6a
        LD      a,(GameLand)                        ;6b6b
        OR      b                                   ;6b6e
        LD      (hl),a                              ;6b6f
        INC     hl                                  ;6b70
        LD      a,(GameScore)                       ;6b71
        CALL    b1_sub_6bf5h                        ;6b74
        INC     hl                                  ;6b77
        LD      a,(0xc281)                          ;6b78
        CALL    b1_sub_6bf5h                        ;6b7b
        INC     hl                                  ;6b7e
        LD      a,(0xc267)                          ;6b7f
        LD      (hl),a                              ;6b82
        INC     hl                                  ;6b83
        LD      a,(0xc00e)                          ;6b84
        LD      (hl),a                              ;6b87
        INC     hl                                  ;6b88
        EX      de,hl                               ;6b89
        LD      hl,0xeb90                           ;6b8a
        LD      b,0x7                               ;6b8d
        XOR     a                                   ;6b8f
b1_l6b90h:
        LD      c,(hl)                              ;6b90
        ADD     a,c                                 ;6b91
        INC     hl                                  ;6b92
        DJNZ    b1_l6b90h                           ;6b93
        EX      de,hl                               ;6b95
        CALL    b1_sub_6bf5h                        ;6b96
        LD      a,(0xeb96)                          ;6b99
        LD      c,a                                 ;6b9c
        LD      hl,0xeb90                           ;6b9d
        LD      de,0xeba0                           ;6ba0
        LD      b,0x9                               ;6ba3
b1_l6ba5h:
        LD      a,(hl)                              ;6ba5
        PUSH    de                                  ;6ba6
        LD      d,a                                 ;6ba7
        LD      a,b                                 ;6ba8
        CP      0x4                                 ;6ba9
        JR      nc,b1_l6bb0h                        ;6bab
        LD      a,d                                 ;6bad
        JR      b1_l6bc1h                           ;6bae
b1_l6bb0h:
        LD      e,a                                 ;6bb0
        RR      e                                   ;6bb1
        JR      c,b1_l6bb6h                         ;6bb3
        ADD     a,a                                 ;6bb5
b1_l6bb6h:
        ADD     a,a                                 ;6bb6
        ADD     a,c                                 ;6bb7
        ADD     a,d                                 ;6bb8
b1_l6bb9h:
        CP      0x2e                                ;6bb9
        JR      c,b1_l6bc1h                         ;6bbb
        SUB     0x2e                                ;6bbd
        JR      b1_l6bb9h                           ;6bbf
b1_l6bc1h:
        ADD     a,0x30                              ;6bc1
        POP     de                                  ;6bc3
        LD      (de),a                              ;6bc4
        INC     hl                                  ;6bc5
        INC     de                                  ;6bc6
        DJNZ    b1_l6ba5h                           ;6bc7
        LD      a,0xff                              ;6bc9
        LD      (de),a                              ;6bcb
        LD      hl,0x5070                           ;6bcc
        LD      bc,0x601c                           ;6bcf
        LD      de,0xa0c0                           ;6bd2
        CALL    b1_sub_6382h                        ;6bd5
        LD      hl,b1_l6ccch                        ;6bd8
        CALL    PrintTextXY                         ;6bdb
        LD      hl,0xeba0                           ;6bde
        LD      de,0x6080                           ;6be1
        JP      PrintText                           ;6be4
b1_sub_6be7h:
        LD      de,0x5070                           ;6be7
        LD      bc,0x601c                           ;6bea
        LD      hl,0xa0c0                           ;6bed
        LD      a,0x1                               ;6bf0
        JP      VDP_Copy_Byte                       ;6bf2
b1_sub_6bf5h:
        LD      b,a                                 ;6bf5
        RRA                                         ;6bf6
        RRA                                         ;6bf7
        RRA                                         ;6bf8
        RRA                                         ;6bf9
        AND     0xf                                 ;6bfa
        LD      (hl),a                              ;6bfc
        INC     hl                                  ;6bfd
        LD      a,b                                 ;6bfe
        AND     0xf                                 ;6bff
        LD      (hl),a                              ;6c01
        RET                                         ;6c02
b1_sub_6c03h:
        CALL    0x6cd8                              ;6c03
        XOR     a                                   ;6c06
        LD      (0xeb82),a                          ;6c07
        LD      de,0xebb0                           ;6c0a
        LD      hl,0xeb83                           ;6c0d
        LD      a,(hl)                              ;6c10
        CP      0x9                                 ;6c11
        JR      nc,b1_l6c31h                        ;6c13
        LD      a,(0xeb81)                          ;6c15
        AND     a                                   ;6c18
        RET     z                                   ;6c19
        PUSH    af                                  ;6c1a
        LD      a,(hl)                              ;6c1b
        ADD     a,e                                 ;6c1c
        LD      e,a                                 ;6c1d
        POP     af                                  ;6c1e
        LD      (de),a                              ;6c1f
        EXX                                         ;6c20
        LD      c,0xff                              ;6c21
        LD      hl,0xebb0                           ;6c23
        LD      de,0x6080                           ;6c26
        CALL    PrintText                           ;6c29
        EXX                                         ;6c2c
        INC     de                                  ;6c2d
        INC     (hl)                                ;6c2e
        XOR     a                                   ;6c2f
        RET                                         ;6c30
b1_l6c31h:
        EX      de,hl                               ;6c31
        LD      de,0xebc0                           ;6c32
        LD      b,0x9                               ;6c35
b1_l6c37h:
        LD      a,(hl)                              ;6c37
        SUB     0x30                                ;6c38
        LD      (de),a                              ;6c3a
        INC     hl                                  ;6c3b
        INC     de                                  ;6c3c
        DJNZ    b1_l6c37h                           ;6c3d
        LD      hl,0xebc0                           ;6c3f
        LD      bc,0x609                            ;6c42
        LD      a,(0xebc6)                          ;6c45
        LD      e,a                                 ;6c48
b1_l6c49h:
        LD      a,b                                 ;6c49
        RRA                                         ;6c4a
        LD      a,c                                 ;6c4b
        JR      nc,b1_l6c4fh                        ;6c4c
        ADD     a,a                                 ;6c4e
b1_l6c4fh:
        ADD     a,a                                 ;6c4f
        LD      d,a                                 ;6c50
        LD      a,(hl)                              ;6c51
        SUB     d                                   ;6c52
        SUB     e                                   ;6c53
        LD      d,a                                 ;6c54
        RL      d                                   ;6c55
        JR      nc,b1_l6c5bh                        ;6c57
        ADD     a,0x2e                              ;6c59
b1_l6c5bh:
        LD      (hl),a                              ;6c5b
        DEC     c                                   ;6c5c
        INC     hl                                  ;6c5d
        DJNZ    b1_l6c49h                           ;6c5e
        LD      hl,0xebc0                           ;6c60
        LD      b,0x7                               ;6c63
        XOR     a                                   ;6c65
b1_l6c66h:
        ADD     a,(hl)                              ;6c66
        INC     hl                                  ;6c67
        DJNZ    b1_l6c66h                           ;6c68
        LD      d,a                                 ;6c6a
        LD      hl,(0xebc7)                         ;6c6b
        CALL    b1_sub_6cabh                        ;6c6e
        CP      d                                   ;6c71
        SCF                                         ;6c72
        RET     nz                                  ;6c73
        LD      a,0x1                               ;6c74
        LD      (0xeb82),a                          ;6c76
        RET                                         ;6c79
b1_sub_6c7ah:
        LD      a,(0xebc0)                          ;6c7a
        LD      b,a                                 ;6c7d
        AND     0xf                                 ;6c7e
        LD      (GameLand),a                        ;6c80
        LD      a,b                                 ;6c83
        AND     0x10                                ;6c84
        LD      hl,ControlConfig                    ;6c86
        JR      z,b1_l6c8dh                         ;6c89
        SET     7,(hl)                              ;6c8b
b1_l6c8dh:
        LD      hl,(0xebc1)                         ;6c8d
        CALL    b1_sub_6cabh                        ;6c90
        LD      (GameScore),a                       ;6c93
        LD      hl,(0xebc3)                         ;6c96
        CALL    b1_sub_6cabh                        ;6c99
        LD      (0xc281),a                          ;6c9c
        LD      a,(0xebc5)                          ;6c9f
        LD      (0xc267),a                          ;6ca2
        LD      a,0x1                               ;6ca5
        LD      (0xc268),a                          ;6ca7
        RET                                         ;6caa
b1_sub_6cabh:
        RL      l                                   ;6cab
        RL      l                                   ;6cad
        RL      l                                   ;6caf
        RL      l                                   ;6cb1
        LD      a,l                                 ;6cb3
        AND     0xf0                                ;6cb4
        OR      h                                   ;6cb6
        RET                                         ;6cb7
b1_sub_6cb8h:
        XOR     a                                   ;6cb8
        LD      (0xeb83),a                          ;6cb9
        LD      hl,0xebb0                           ;6cbc
        LD      de,0xebb1                           ;6cbf
        LD      bc,0x8                              ;6cc2
        LD      (hl),a                              ;6cc5
        LDIR                                        ;6cc6
        INC     hl                                  ;6cc8
        LD      (hl),0xff                           ;6cc9
        RET                                         ;6ccb
b1_l6ccch: equ     #6ccc
