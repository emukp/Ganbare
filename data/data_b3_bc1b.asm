        DEFB    0x98,0x68,0x90,0x68,0x90,0x60,0x00,0x00  ;bc1b ; data:code-gap
        DEFB    0x00,0x00,0x00,0x00                 ;bc23
        LD      a,(ControlsTrigger)                 ;bc27
        AND     0x10                                ;bc2a
        RET     z                                   ;bc2c
        XOR     a                                   ;bc2d
        LD      (0xcdc8),a                          ;bc2e
        CALL    DisableScreen                       ;bc31
        CALL    0x598d                              ;bc34
        JP      EnableScreen                        ;bc37
b3_sub_bc3ah:
        LD      bc,0xd4                             ;bc3a
        CALL    ClearPage0                          ;bc3d
        JP      ClearSprAttr                        ;bc40
b3_lbc43h:
        LD      a,(0xc27a)                          ;bc43
        OR      a                                   ;bc46
        CALL    nz,b3_sub_bca5h                     ;bc47
        LD      a,(0xc27b)                          ;bc4a
        OR      a                                   ;bc4d
        RET     z                                   ;bc4e
        LD      b,a                                 ;bc4f
        XOR     a                                   ;bc50
b3_lbc51h:
        PUSH    af                                  ;bc51
        PUSH    bc                                  ;bc52
        CALL    b3_sub_bc89h                        ;bc53
        POP     bc                                  ;bc56
        POP     af                                  ;bc57
        INC     a                                   ;bc58
        DJNZ    b3_lbc51h                           ;bc59
        RET                                         ;bc5b
        LD      hl,(0xcdc6)                         ;bc5c
        CALL    0x5a6a                              ;bc5f
        LD      a,(hl)                              ;bc62
        OR      a                                   ;bc63
        RET     z                                   ;bc64
        CP      0x6                                 ;bc65
        RET     z                                   ;bc67
        CALL    b3_sub_bcd3h                        ;bc68
        LD      c,0x0                               ;bc6b
        LD      a,(hl)                              ;bc6d
        LD      (hl),c                              ;bc6e
b3_lbc6fh:
        DEC     a                                   ;bc6f
        DEC     a                                   ;bc70
        CALL    JumpIndex                           ;bc71
        DEFW    0xbc7e,0xbc97,0xbca0,0xbcad         ;bc74 ; data:jumptable
        DEFW    0xbcbe                              ;bc7c
        LD      de,0x200                            ;bc7e
        CALL    0x592b                              ;bc81
        LD      hl,0xc27b                           ;bc84
        LD      a,(hl)                              ;bc87
        INC     (hl)                                ;bc88
b3_sub_bc89h: equ     #bc89
        LD      d,0x28                              ;bc89
        ADD     a,a                                 ;bc8b
        ADD     a,a                                 ;bc8c
        ADD     a,a                                 ;bc8d
        ADD     a,a                                 ;bc8e
        ADD     a,0x40                              ;bc8f
        LD      e,a                                 ;bc91
        LD      a,0x10                              ;bc92
        JP      0x4eb9                              ;bc94
        LD      hl,0xc279                           ;bc97
        INC     (hl)                                ;bc9a
        LD      a,0x9                               ;bc9b
        JP      DrawFieldItem                       ;bc9d
        LD      a,0x1                               ;bca0
        LD      (0xc27a),a                          ;bca2
b3_sub_bca5h: equ     #bca5
        LD      a,0x11                              ;bca5
        LD      de,0x2830                           ;bca7
        JP      0x4eb9                              ;bcaa
        LD      hl,PlayerStatus                     ;bcad
        LD      a,(hl)                              ;bcb0
        ADD     a,0x1                               ;bcb1
        DAA                                         ;bcb3
        CP      0x9a                                ;bcb4
        JR      c,b3_lbcbah                         ;bcb6
        LD      a,0x99                              ;bcb8
b3_lbcbah: equ     #bcba
        LD      (hl),a                              ;bcba
        JP      DrawGameHud                         ;bcbb
        XOR     a                                   ;bcbe
        LD      (0xcdd2),a                          ;bcbf
        LD      (0xcdc5),a                          ;bcc2
        INC     a                                   ;bcc5
        LD      (0xcdcd),a                          ;bcc6
        LD      a,0xf                               ;bcc9
        LD      (0xcdce),a                          ;bccb
        LD      a,0x80                              ;bcce
        JP      ProcessSoundCommand                 ;bcd0
b3_sub_bcd3h: equ     #bcd3
        LD      de,0xc290                           ;bcd3
        LD      b,0xb                               ;bcd6
b3_lbcd8h: equ     #bcd8
        LD      a,(de)                              ;bcd8
        LD      c,a                                 ;bcd9
        INC     de                                  ;bcda
        LD      a,(de)                              ;bcdb
        INC     de                                  ;bcdc
        OR      c                                   ;bcdd
        JR      z,b3_lbce3h                         ;bcde
        DJNZ    b3_lbcd8h                           ;bce0
        RET                                         ;bce2
b3_lbce3h: equ     #bce3
        DEC     de                                  ;bce3
        DEC     de                                  ;bce4
        EX      de,hl                               ;bce5
        LD      (hl),e                              ;bce6
        INC     hl                                  ;bce7
        LD      (hl),d                              ;bce8
        EX      de,hl                               ;bce9
        PUSH    hl                                  ;bcea
        LD      a,0x12                              ;bceb
        CALL    ProcessSoundCommand                 ;bced
        POP     hl                                  ;bcf0
        RET                                         ;bcf1
        LD      hl,0xc290                           ;bcf2
        XOR     a                                   ;bcf5
        LD      b,0x16                              ;bcf6
b3_lbcf8h:
        LD      (hl),a                              ;bcf8
        INC     hl                                  ;bcf9
        DJNZ    b3_lbcf8h                           ;bcfa
        LD      hl,0x0                              ;bcfc
        LD      (0xc27a),hl                         ;bcff
        LD      (0xc28e),a                          ;bd02
        RET                                         ;bd05
        LD      a,(0xcdd2)                          ;bd06
        CALL    JumpIndex                           ;bd09
        DEFW    0xbd12,0xbdb2,0xbdd5                ;bd0c ; data:jumptable
        LD      de,0x4c30                           ;bd12
        LD      hl,0x3870                           ;bd15
        LD      a,0x4                               ;bd18
        LD      c,0xe                               ;bd1a
        CALL    b3_sub_bd48h                        ;bd1c
        CALL    b3_sub_bd57h                        ;bd1f
        LD      hl,0xcdce                           ;bd22
        DEC     (hl)                                ;bd25
        RET     nz                                  ;bd26
        LD      a,0x80                              ;bd27
        LD      (hl),a                              ;bd29
        LD      hl,0xcdd2                           ;bd2a
        INC     (hl)                                ;bd2d
        LD      de,0x7848                           ;bd2e
        LD      a,0x13                              ;bd31
        CALL    0x4eb9                              ;bd33
        LD      de,0x8848                           ;bd36
        LD      a,0x14                              ;bd39
        CALL    0x4eb9                              ;bd3b
        LD      a,(0xc28e)                          ;bd3e
        OR      a                                   ;bd41
        RET     z                                   ;bd42
        LD      hl,0xcdd2                           ;bd43
        INC     (hl)                                ;bd46
        RET                                         ;bd47
b3_sub_bd48h: equ     #bd48
        LD      (0xcd08),de                         ;bd48
        LD      (0xcd0a),hl                         ;bd4c
        LD      (0xcd0c),a                          ;bd4f
        LD      a,c                                 ;bd52
        LD      (0xcd0d),a                          ;bd53
        RET                                         ;bd56
b3_sub_bd57h: equ     #bd57
        LD      de,(0xcd08)                         ;bd57
        LD      a,(0xcd0c)                          ;bd5b
        LD      l,0x0                               ;bd5e
        LD      h,a                                 ;bd60
        ADD     hl,de                               ;bd61
        LD      bc,(0xcd0a)                         ;bd62
        XOR     a                                   ;bd66
        CALL    VDP_Copy_Byte                       ;bd67
        LD      a,(0xcd0d)                          ;bd6a
        LD      b,a                                 ;bd6d
        LD      de,(0xcd08)                         ;bd6e
        LD      a,(0xcd0b)                          ;bd72
        LD      c,a                                 ;bd75
        LD      a,(0xcd0c)                          ;bd76
        ADD     a,c                                 ;bd79
        ADD     a,c                                 ;bd7a
        LD      h,a                                 ;bd7b
        LD      l,0x0                               ;bd7c
        ADD     hl,de                               ;bd7e
b3_lbd7fh: equ     #bd7f
        PUSH    bc                                  ;bd7f
        PUSH    hl                                  ;bd80
        LD      a,(0xcd0c)                          ;bd81
        LD      e,0x0                               ;bd84
        LD      d,a                                 ;bd86
        OR      a                                   ;bd87
        SBC     hl,de                               ;bd88
        POP     de                                  ;bd8a
        PUSH    hl                                  ;bd8b
        LD      a,(0xcd0c)                          ;bd8c
        LD      b,a                                 ;bd8f
        LD      a,(0xcd0a)                          ;bd90
        LD      c,a                                 ;bd93
        XOR     a                                   ;bd94
        CALL    VDP_Copy_Byte                       ;bd95
        POP     hl                                  ;bd98
        POP     bc                                  ;bd99
        DJNZ    b3_lbd7fh                           ;bd9a
        LD      hl,(0xcd08)                         ;bd9c
        LD      a,(0xcd0b)                          ;bd9f
        ADD     a,h                                 ;bda2
        LD      h,a                                 ;bda3
        LD      a,(0xcd0c)                          ;bda4
        ADD     a,a                                 ;bda7
        LD      b,a                                 ;bda8
        LD      a,(0xcd0a)                          ;bda9
        LD      c,a                                 ;bdac
        XOR     a                                   ;bdad
        LD      d,a                                 ;bdae
        JP      FillRect                            ;bdaf
        DEFB    0x21,0xce,0xcd,0x35,0xc0,0x3e,0xa0,0x77  ;bdb2 ; data:code-gap
        DEFB    0x3e,0x0e,0xcd,0x86,0x42,0x0e,0x01,0x11  ;bdba
        DEFB    0x00,0x00,0xcd,0x80,0x43,0x21,0xd2,0xcd  ;bdc2
        DEFB    0x34,0x3e,0x01,0x32,0x8e,0xc2,0x3e,0x93  ;bdca
        DEFB    0xc3,0xe4,0x4f,0x21,0xce,0xcd,0x35,0xc0  ;bdd2
        DEFB    0xcd,0xee,0x45,0xcd,0xb8,0x72,0xaf,0x32  ;bdda
        DEFB    0xb0,0xcd,0x32,0xb1,0xcd,0x32,0xcd,0xcd  ;bde2
        DEFB    0x3c,0x32,0xa2,0xc4,0x3e,0x0e,0xcd,0xfc  ;bdea
        DEFB    0xae,0xc3,0x96,0x4a                 ;bdf2
        CALL    0x6cd8                              ;bdf6
        LD      a,(0xeb81)                          ;bdf9
        AND     a                                   ;bdfc
        RET     z                                   ;bdfd
        LD      b,a                                 ;bdfe
        LD      de,0xc580                           ;bdff
        LD      hl,0xc590                           ;be02
        LD      a,(hl)                              ;be05
        CP      0x5                                 ;be06
        RET     nc                                  ;be08
        CALL    ADD_DE_A                            ;be09
        LD      a,b                                 ;be0c
        LD      (de),a                              ;be0d
        INC     (hl)                                ;be0e
        LD      a,(hl)                              ;be0f
        CP      0x5                                 ;be10
        RET     nz                                  ;be12
        LD      a,(0xcdb1)                          ;be13
        AND     a                                   ;be16
        JR      z,b3_lbe2ch                         ;be17
        LD      de,b3_lbe44h                        ;be19
        LD      c,0x1                               ;be1c
        CALL    b3_sub_be31h                        ;be1e
        LD      a,(0xef80)                          ;be21
        RRA                                         ;be24
        RET     nc                                  ;be25
        LD      a,0x1                               ;be26
        LD      (0xc27a),a                          ;be28
        RET                                         ;be2b
b3_lbe2ch:
        LD      de,b3_lbe49h                        ;be2c
        LD      c,0x2                               ;be2f
b3_sub_be31h:
        LD      hl,0xc580                           ;be31
        LD      b,0x5                               ;be34
b3_lbe36h:
        LD      a,(de)                              ;be36
        CP      (hl)                                ;be37
        RET     nz                                  ;be38
        INC     hl                                  ;be39
        INC     de                                  ;be3a
        DJNZ    b3_lbe36h                           ;be3b
        LD      hl,0xef80                           ;be3d
        LD      a,(hl)                              ;be40
        OR      c                                   ;be41
        LD      (hl),a                              ;be42
        RET                                         ;be43
b3_lbe44h: equ     #be44
        DEFB    0x34,0x53,0x4b,0x63,0x5d,0x3c,0x36,0x53  ;be44 ; data:code-gap
        DEFB    0x47,0x5d                           ;be4c
b3_lbe49h: equ     #be49
        LD      bc,0x420                            ;be4e
b3_lbe51h:
        LD      a,b                                 ;be51
        DEC     a                                   ;be52
        LD      d,a                                 ;be53
        ADD     a,a                                 ;be54
        ADD     a,a                                 ;be55
        ADD     a,a                                 ;be56
        ADD     a,d                                 ;be57
        LD      de,b3_lbe8ah                        ;be58
        CALL    ADD_DE_A                            ;be5b
        PUSH    bc                                  ;be5e
        LD      hl,0xebb0                           ;be5f
        LD      b,0x9                               ;be62
        CALL    b3_lbe36h                           ;be64
        POP     bc                                  ;be67
        RRC     c                                   ;be68
        DJNZ    b3_lbe51h                           ;be6a
        LD      a,(0xef80)                          ;be6c
        AND     0x3c                                ;be6f
        JR      nz,b3_lbe7ah                        ;be71
        LD      hl,0x0                              ;be73
        LD      (GameStatus),hl                     ;be76
        RET                                         ;be79
b3_lbe7ah:
        CALL    InitPlayerStatus                    ;be7a
        CALL    0x662c                              ;be7d
        CALL    0xbeae                              ;be80
        LD      hl,0x4                              ;be83
        LD      (GameStatus),hl                     ;be86
        RET                                         ;be89
b3_lbe8ah: equ     #be8a
        DEFB    0x37,0x58,0x37,0x58,0x42,0x5d,0x42,0x5d  ;be8a ; data:code-gap
        DEFB    0x1f,0x36,0x4f,0x40,0x53,0x5d,0x38,0x63  ;be92
        DEFB    0x5d,0x36,0x30,0x38,0x4f,0x3a,0x5d,0x48  ;be9a
        DEFB    0x3a,0x31,0x4b,0x41,0x41,0x63,0x36,0x35  ;bea2
        DEFB    0x63,0x3b,0x3f,0x31                 ;beaa
        DEFB    0x3e,0x40                           ;beae
        LD      (ControlConfig),a                   ;beb0
        LD      a,(0xef80)                          ;beb3
        RRA                                         ;beb6
        RRA                                         ;beb7
        RRA                                         ;beb8
        JR      c,b3_lbec4h                         ;beb9
        RRA                                         ;bebb
        JR      c,b3_lbecah                         ;bebc
        RRA                                         ;bebe
        JR      c,b3_lbed0h                         ;bebf
        RRA                                         ;bec1
        JR      b3_lbed7h                           ;bec2
b3_lbec4h:
        LD      hl,ControlConfig                    ;bec4
        SET     7,(hl)                              ;bec7
        RET                                         ;bec9
b3_lbecah:
        LD      a,0x20                              ;beca
        LD      (FrameDivider),a                    ;becc
        RET                                         ;becf
b3_lbed0h:
        LD      hl,0x2000                           ;bed0
        LD      (PlayerScore),hl                    ;bed3
        RET                                         ;bed6
b3_lbed7h:
        LD      a,0x1                               ;bed7
        LD      (0xc27f),a                          ;bed9
        RET                                         ;bedc
        LD      hl,0xef80                           ;bedd
        LD      a,(hl)                              ;bee0
        OR      0x40                                ;bee1
        LD      (hl),a                              ;bee3
        RET                                         ;bee4
        DEFB    0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff  ;bee5 ; data:code-gap
        DEFB    0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff  ;beed
        DEFB    0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff  ;bef5
        DEFB    0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff  ;befd
        DEFB    0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff  ;bf05
        DEFB    0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff  ;bf0d
        DEFB    0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff  ;bf15
        DEFB    0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff  ;bf1d
        DEFB    0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff  ;bf25
        DEFB    0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff  ;bf2d
        DEFB    0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff  ;bf35
        DEFB    0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff  ;bf3d
        DEFB    0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff  ;bf45
        DEFB    0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff  ;bf4d
        DEFB    0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff  ;bf55
        DEFB    0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff  ;bf5d
        DEFB    0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff  ;bf65
        DEFB    0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff  ;bf6d
        DEFB    0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff  ;bf75
        DEFB    0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff  ;bf7d
        DEFB    0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff  ;bf85
        DEFB    0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff  ;bf8d
        DEFB    0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff  ;bf95
        DEFB    0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff  ;bf9d
        DEFB    0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff  ;bfa5
        DEFB    0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff  ;bfad
        DEFB    0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff  ;bfb5
        DEFB    0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff  ;bfbd
        DEFB    0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff  ;bfc5
        DEFB    0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff  ;bfcd
        DEFB    0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff  ;bfd5
        DEFB    0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff  ;bfdd
        DEFB    0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff  ;bfe5
        DEFB    0xff,0xff,0xff,0xff,0xff,0x5d,0x52,0x33  ;bfed
        DEFB    0x63,0x39,0x59,0x63,0x49,0x5d,0x63,0x35  ;bff5
        DEFB    0x0b,0x48,0xaa                      ;bffd
b3_lbeeeh: equ     #beee
b3_lbefdh: equ     #befd
