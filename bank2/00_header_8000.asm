; Ganbare Goemon (1987) (Konami) (J) - bank 0x2
; disassembled with z80dasm 1.2.0 (linear sweep), origin 0x8000 (0x8000-0x9FFF)
; uppercase mnemonics, 0x hex format, BIOS/system-variable/Ghidra symbol substitution
; symbols: constants/bios.asm, SystemVariables.asm, Variables.asm; labels prefixed b2_
; per-line comments: address / raw bytes / ASCII (z80dasm -a -t)
; z80dasm 1.2.0
; command line: /usr/local/bin/z80dasm -a -t -l -g 0x8000 -o work/banks/bank2.asm work/banks/bank2.bin
b2_l8000h:
        RRA                                         ;8000
        RET     c                                   ;8001
        INC     d                                   ;8002
        DJNZ    b2_l8000h                           ;8003
        RET                                         ;8005
        XOR     a                                   ;8006
        CALL    SNSMAT                              ;8007
        CPL                                         ;800a
        LD      d,a                                 ;800b
        LD      a,0x1                               ;800c
        CALL    SNSMAT                              ;800e
        CPL                                         ;8011
        AND     0x3                                 ;8012
        LD      e,a                                 ;8014
        LD      a,d                                 ;8015
        LD      hl,0xef08                           ;8016
        LD      c,(hl)                              ;8019
        LD      (hl),a                              ;801a
        XOR     c                                   ;801b
        AND     (hl)                                ;801c
        LD      d,a                                 ;801d
        LD      a,e                                 ;801e
        INC     hl                                  ;801f
        LD      c,(hl)                              ;8020
        LD      (hl),a                              ;8021
        XOR     c                                   ;8022
        AND     (hl)                                ;8023
        LD      e,a                                 ;8024
        OR      d                                   ;8025
        RET                                         ;8026
        LD      hl,0xef0f                           ;8027
        LD      a,(hl)                              ;802a
        LD      c,a                                 ;802b
        RRCA                                        ;802c
        RRCA                                        ;802d
        RRCA                                        ;802e
        RRCA                                        ;802f
        AND     0xf                                 ;8030
        ADD     a,a                                 ;8032
        LD      b,a                                 ;8033
        ADD     a,a                                 ;8034
        ADD     a,a                                 ;8035
        ADD     a,b                                 ;8036
        LD      b,a                                 ;8037
        LD      a,c                                 ;8038
        AND     0xf                                 ;8039
        ADD     a,b                                 ;803b
        LD      (0xef0e),a                          ;803c
        RET                                         ;803f
        LD      a,0x7                               ;8040
        CALL    SNSMAT                              ;8042
        CPL                                         ;8045
        AND     0x80                                ;8046
        LD      hl,0xef0a                           ;8048
        LD      c,(hl)                              ;804b
        LD      (hl),a                              ;804c
        XOR     c                                   ;804d
        AND     (hl)                                ;804e
        RET                                         ;804f

