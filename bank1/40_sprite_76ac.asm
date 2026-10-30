; === HideSpriteRecord (0x76ac) ===
HideSpriteRecord:
        PUSH    hl                                  ;76ac
        LD      a,l                                 ;76ad
        AND     0xf0                                ;76ae
        LD      l,a                                 ;76b0
        LD      d,h                                 ;76b1
        LD      e,l                                 ;76b2
        INC     de                                  ;76b3
        LD      (hl),0x0                            ;76b4
        LD      bc,0xf                              ;76b6
        LDIR                                        ;76b9
        POP     hl                                  ;76bb
        LD      (hl),0xe0                           ;76bc
        LD      a,l                                 ;76be
        AND     0xf0                                ;76bf
        CP      0xd0                                ;76c1
        LD      hl,0xee10                           ;76c3
        JR      z,b1_l76cbh                         ;76c6
        LD      hl,0xee14                           ;76c8
b1_l76cbh:
        LD      a,0xe0                              ;76cb
        LD      (hl),a                              ;76cd
        INC     hl                                  ;76ce
        LD      (hl),a                              ;76cf
        RET                                         ;76d0
b1_sub_76d1h:
        CALL    b1_sub_7675h                        ;76d1
        CALL    b1_sub_768eh                        ;76d4
        CALL    b1_sub_766ch                        ;76d7
        RET     z                                   ;76da
        LD      de,0xc4d0                           ;76db
        LD      hl,0xee10                           ;76de
        CALL    b1_sub_76eah                        ;76e1
        LD      de,0xc4e0                           ;76e4
        LD      hl,0xee14                           ;76e7
b1_sub_76eah:
        LD      a,(de)                              ;76ea
        AND     a                                   ;76eb
        RET     z                                   ;76ec
        INC     de                                  ;76ed
        INC     de                                  ;76ee
        INC     de                                  ;76ef
        LD      a,(de)                              ;76f0
        SUB     0x4                                 ;76f1
        LD      (hl),a                              ;76f3
        INC     hl                                  ;76f4
        INC     de                                  ;76f5
        LD      a,(de)                              ;76f6
        SUB     0x4                                 ;76f7
        LD      (hl),a                              ;76f9
        INC     hl                                  ;76fa
        LD      (hl),0x1c                           ;76fb
        LD      de,0xec40                           ;76fd
        CALL    b1_sub_7706h                        ;7700
        LD      de,0xec50                           ;7703
b1_sub_7706h:
        LD      hl,b1_l770fh                        ;7706
        LD      bc,0x10                             ;7709
        LDIR                                        ;770c
        RET                                         ;770e
b1_l770fh: equ     #770f
