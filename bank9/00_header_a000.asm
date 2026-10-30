; Ganbare Goemon (1987) (Konami) (J) - bank 0x9
; disassembled with z80dasm 1.2.0 (linear sweep), origin 0xA000 (0xA000-0xBFFF)
; uppercase mnemonics, 0x hex format, BIOS/system-variable/Ghidra symbol substitution
; symbols: constants/bios.asm, SystemVariables.asm, Variables.asm; labels prefixed b9_
; per-line comments: address / raw bytes / ASCII (z80dasm -a -t)
; z80dasm 1.2.0
; command line: /usr/local/bin/z80dasm -a -t -l -g 0xA000 -o work/banks/bank9.asm work/banks/bank9.bin
        SBC     a,a                                 ;a000
        CCF                                         ;a001
        INC     bc                                  ;a002
        RST     KEYINT                              ;a003
        ADD     a,h                                 ;a004
        CP      0xfc                                ;a005
        CP      0xfe                                ;a007
        INC     bc                                  ;a009
        RST     KEYINT                              ;a00a
        XOR     d                                   ;a00b
        NOP                                         ;a00c
        JR      nz,b9_la024h                        ;a00d
        LD      d,a                                 ;a00f
        LD      l,e                                 ;a010
        LD      l,d                                 ;a011
        LD      b,d                                 ;a012
        LD      (hl),d                              ;a013
        LD      (hl),h                              ;a014
        LD      (0x3f05),a                          ;a015
        LD      a,c                                 ;a018
        LD      a,(hl)                              ;a019
        LD      a,(hl)                              ;a01a
        NOP                                         ;a01b
        NOP                                         ;a01c
        LD      e,(hl)                              ;a01d
        CP      h                                   ;a01e
        LD      d,(hl)                              ;a01f
        LD      l,(hl)                              ;a020
        ADC     a,0x6                               ;a021
        LD      a,d                                 ;a023
b9_la024h:
        CP      0xfc                                ;a024
        JR      c,$-58                              ;a026
        CALL    m,0x7efe                            ;a028
        NOP                                         ;a02b
        NOP                                         ;a02c
        LD      e,a                                 ;a02d
        LD      l,a                                 ;a02e
        RST     GETYPR                              ;a02f
        RST     CALLF                               ;a030
        RST     CALLF                               ;a031
        RST     KEYINT                              ;a032
        RST     KEYINT                              ;a033
        EI                                          ;a034
        LD      a,l                                 ;a035
        INC     b                                   ;a036
        CCF                                         ;a037
        ADC     a,b                                 ;a038
        RRA                                         ;a039
        CCF                                         ;a03a
        RST     KEYINT                              ;a03b
        POP     hl                                  ;a03c
        JP      nz,0x9faf                           ;a03d
        CCF                                         ;a040
        INC     bc                                  ;a041
        RST     KEYINT                              ;a042
        AND     e                                   ;a043
        CP      0xfc                                ;a044
        RET     m                                   ;a046
        CALL    m,0xfefc                            ;a047
        RST     KEYINT                              ;a04a
        RST     KEYINT                              ;a04b
        JR      nz,b9_la063h                        ;a04c
        LD      d,a                                 ;a04e
        LD      l,e                                 ;a04f
        LD      l,d                                 ;a050
        LD      b,d                                 ;a051
        LD      (hl),d                              ;a052
        LD      (hl),h                              ;a053
        LD      (0x1f05),a                          ;a054
        DEC     e                                   ;a057
        DEC     de                                  ;a058
        DEC     bc                                  ;a059
        DEC     de                                  ;a05a
        NOP                                         ;a05b
        LD      e,(hl)                              ;a05c
        CP      h                                   ;a05d
        LD      d,(hl)                              ;a05e
        LD      l,(hl)                              ;a05f
        ADC     a,0x6                               ;a060
        LD      a,d                                 ;a062
b9_la063h:
        CP      0xfc                                ;a063
        JR      c,$-62                              ;a065
        INC     bc                                  ;a067
        RET     m                                   ;a068
        ADC     a,e                                 ;a069
        CP      0x0                                 ;a06a
        LD      e,a                                 ;a06c
        LD      l,a                                 ;a06d
        RST     GETYPR                              ;a06e
        RST     CALLF                               ;a06f
        RST     CALLF                               ;a070
        RST     KEYINT                              ;a071
        RST     KEYINT                              ;a072
        PUSH    af                                  ;a073
        LD      a,a                                 ;a074
        INC     bc                                  ;a075
        RST     KEYINT                              ;a076
        INC     b                                   ;a077
        NOP                                         ;a078
        ADD     a,l                                 ;a079
        POP     hl                                  ;a07a
        JP      nz,0x1faf                           ;a07b
        CCF                                         ;a07e
        INC     b                                   ;a07f
        RST     KEYINT                              ;a080
        ADD     a,e                                 ;a081
        CP      0xff                                ;a082
        RST     KEYINT                              ;a084
        INC     b                                   ;a085
        NOP                                         ;a086
        ADC     a,e                                 ;a087
        JR      nz,b9_la09fh                        ;a088
        LD      d,a                                 ;a08a
        LD      l,d                                 ;a08b
        LD      l,d                                 ;a08c
        LD      b,d                                 ;a08d
        LD      (hl),b                              ;a08e
        LD      l,d                                 ;a08f
        RRA                                         ;a090
        LD      (hl),c                              ;a091
        LD      (hl),a                              ;a092
        DEC     b                                   ;a093
        NOP                                         ;a094
        ADC     a,e                                 ;a095
        LD      e,(hl)                              ;a096
        CP      h                                   ;a097
        LD      d,(hl)                              ;a098
        XOR     0xce                                ;a099
        LD      b,0x7a                              ;a09b
        LD      a,(hl)                              ;a09d
        CP      (hl)                                ;a09e
b9_la09fh:
        RET     nz                                  ;a09f
        CP      0x8                                 ;a0a0
        NOP                                         ;a0a2
        LD      (bc),a                              ;a0a3
        LD      bc,0x204                            ;a0a4
        INC     bc                                  ;a0a7
        LD      bc,0x303                            ;a0a8
        ADD     a,h                                 ;a0ab
        RRCA                                        ;a0ac
        LD      (de),a                              ;a0ad
        LD      a,l                                 ;a0ae
        CP      b                                   ;a0af
        INC     bc                                  ;a0b0
        LD      (hl),b                              ;a0b1
        ADD     a,(hl)                              ;a0b2
        LD      (hl),c                              ;a0b3
        LD      h,c                                 ;a0b4
        LD      h,c                                 ;a0b5
        LD      bc,0x8100                           ;a0b6
        INC     b                                   ;a0b9
        RST     KEYINT                              ;a0ba
        DEC     b                                   ;a0bb
        NOP                                         ;a0bc
        INC     b                                   ;a0bd
        LD      bc,0x3                              ;a0be
        LD      (bc),a                              ;a0c1
        LD      bc,0x2                              ;a0c2
        ADD     a,e                                 ;a0c5
        INC     c                                   ;a0c6
        LD      (bc),a                              ;a0c7
        LD      b,a                                 ;a0c8
        INC     bc                                  ;a0c9
        ADC     a,a                                 ;a0ca
        SUB     l                                   ;a0cb
        ADC     a,(hl)                              ;a0cc
        SBC     a,(hl)                              ;a0cd
        SBC     a,(hl)                              ;a0ce
        CP      0xff                                ;a0cf
        LD      a,(hl)                              ;a0d1
        RET     nz                                  ;a0d2
        AND     a                                   ;a0d3
        RST     GETYPR                              ;a0d4
        NOP                                         ;a0d5
        NOP                                         ;a0d6
        CALL    m,0xe0c3                            ;a0d7
        POP     af                                  ;a0da
        DI                                          ;a0db
        RST     CALLF                               ;a0dc
        RST     DCOMPR                              ;a0dd
        XOR     0xfe                                ;a0de
