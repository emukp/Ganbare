        DEFB    0xcd,0x2e,0x7f,0x0e,0x0e,0xc3,0x04,0x47  ;7f39 ; data:code-gap
        DEFB    0x58,0x98,0x66,0x66,0x66,0x3d,0x5d,0x3f  ;7f41
        DEFB    0x37,0x66,0x66,0x66,0xfe,0x24,0xa8,0xbc  ;7f49
        DEFB    0xbd,0xfe,0x40,0xa8,0x55,0x44,0x34,0x3b  ;7f51
        DEFB    0x00,0x49,0x3b,0x63,0x51,0x58,0xfe,0x40  ;7f59
        DEFB    0xb0,0x37,0x45,0x48,0x00,0x49,0x63,0x5d  ;7f61
        DEFB    0x39,0x63,0x32,0x5c,0x00,0x35,0x33,0x58  ;7f69
        DEFB    0xfe,0x40,0xb8,0x39,0x63,0x33,0x52,0x5d  ;7f71
        DEFB    0x48,0x35,0x3c,0x63,0x5c,0x00,0x35,0x33  ;7f79
        DEFB    0x58,0xff                           ;7f81
b1_l7f41h: equ     #7f41
b1_l7f42h: equ     #7f42
b1_sub_7f83h:
        LD      hl,b1_l7f94h                        ;7f83
        CALL    b1_sub_7fb1h                        ;7f86
        LD      hl,BGmOptMoney                      ;7f89
        LD      de,0xb0a8                           ;7f8c
b1_l7f8fh:
        LD      b,0x1                               ;7f8f
        JP      DrawBcdNumber                       ;7f91
b1_l7f94h: equ     #7f94
        DEFB    0x48,0xa8,0x37,0x45,0x48,0x49,0x63,0x5d  ;7f94 ; data:code-gap
        DEFB    0x39,0x63,0x32,0x49,0x00,0x67,0xff  ;7f9c
b1_sub_7fa3h:
        LD      hl,b1_l7fb9h                        ;7fa3
        CALL    b1_sub_7fb1h                        ;7fa6
        LD      hl,BGmOptLives                      ;7fa9
        LD      de,0xb8a8                           ;7fac
        JR      b1_l7f8fh                           ;7faf
b1_sub_7fb1h:
        PUSH    hl                                  ;7fb1
        CALL    b1_sub_7fc8h                        ;7fb2
        POP     hl                                  ;7fb5
        JP      PrintTextXY                         ;7fb6
b1_l7fb9h: equ     #7fb9
        DEFB    0x48,0xa8,0x39,0x63,0x33,0x52,0x5d,0x48  ;7fb9 ; data:code-gap
        DEFB    0x35,0x3c,0x63,0x49,0x00,0x67,0xff  ;7fc1
b1_sub_7fc8h:
        LD      hl,0x24a0                           ;7fc8
        LD      bc,0xb820                           ;7fcb
        JP      b1_sub_7f2eh                        ;7fce
b1_l7fd1h:
        CALL    0x8006                              ;7fd1
        RET     z                                   ;7fd4
        LD      hl,(0xef08)                         ;7fd5
        LD      d,0x0                               ;7fd8
        LD      b,0x8                               ;7fda
        LD      a,l                                 ;7fdc
        CALL    0x8000                              ;7fdd
        JR      c,b1_l7fe9h                         ;7fe0
        LD      a,h                                 ;7fe2
        LD      b,0x2                               ;7fe3
        CALL    0x8000                              ;7fe5
        RET     nc                                  ;7fe8
b1_l7fe9h:
        LD      hl,0xef15                           ;7fe9
        LD      (hl),0xff                           ;7fec
        LD      hl,0xef0f                           ;7fee
        LD      a,d                                 ;7ff1
        RLD                                         ;7ff2
        LD      de,(0xef02)                         ;7ff4
        LD      b,0x1                               ;7ff8
b1_l7ffah:
        CALL    DrawBcdNumber                       ;7ffa
        JP      0x8027                              ;7ffd
