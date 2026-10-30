        DEFW    0x88ea,0x8918,0x8925,0x892a         ;88dc ; data:jumptable
        DEFW    0x8926,0x8925,0x8981,0x7edd         ;88e4
        DEFW    0xb701                              ;88ec
        JR      nz,b2_l8909h                        ;88ee
        LD      de,0x10                             ;88f0
        CALL    0xa13b                              ;88f3
        LD      a,(0xc494)                          ;88f6
        CP      (ix+0x3)                            ;88f9
        RET     nc                                  ;88fc
b2_sub_88fdh: equ     #88fd
        INC     (ix+0x1)                            ;88fd
        LD      de,0x0                              ;8900
        CALL    b2_sub_87e4h                        ;8903
        JP      b2_l87ebh                           ;8906
b2_l8909h: equ     #8909
        LD      (ix+0xa),0x3d                       ;8909
b2_l890dh: equ     #890d
        LD      (ix+0xc),0x0                        ;890d
        DEC     (ix+0xb)                            ;8911
        RET     nz                                  ;8914
        JP      b2_l87b7h                           ;8915
        LD      b,0x58                              ;8918
        LD      a,(0xc00d)                          ;891a
        RRCA                                        ;891d
        RRCA                                        ;891e
        AND     0x3                                 ;891f
        ADD     a,b                                 ;8921
        LD      (ix+0xa),a                          ;8922
        RET                                         ;8925
        LD      b,0x93                              ;8926
        JR      b2_l892ch                           ;8928
        LD      b,0x5a                              ;892a
b2_l892ch: equ     #892c
        LD      a,(0xc00d)                          ;892c
        RRCA                                        ;892f
        RRCA                                        ;8930
        AND     0x1                                 ;8931
        ADD     a,b                                 ;8933
        LD      (ix+0xa),a                          ;8934
        RET                                         ;8937
        LD      de,TickCounter                      ;8938
        JR      b2_l8953h                           ;893b
b2_l893dh: equ     #893d
        LD      a,(ix+0x7e)                         ;893d
        BIT     0,(ix+0xf)                          ;8940
        JR      z,b2_l8948h                         ;8944
        ADD     a,0x2                               ;8946
b2_l8948h: equ     #8948
        LD      (ix+0xa),a                          ;8948
        JR      b2_l8975h                           ;894b
        LD      a,(ix+0x7e)                         ;894d
        LD      de,0xc00d                           ;8950
b2_l8953h: equ     #8953
        BIT     0,(ix+0xf)                          ;8953
        JR      z,b2_l895bh                         ;8957
        ADD     a,0x2                               ;8959
b2_l895bh: equ     #895b
        LD      b,a                                 ;895b
        PUSH    ix                                  ;895c
        POP     hl                                  ;895e
        ADD     hl,hl                               ;895f
        ADD     hl,hl                               ;8960
        LD      a,0x3                               ;8961
        AND     h                                   ;8963
        LD      c,a                                 ;8964
        LD      a,(de)                              ;8965
        SUB     c                                   ;8966
        LD      c,a                                 ;8967
        AND     0x7                                 ;8968
        RET     nz                                  ;896a
        LD      a,c                                 ;896b
        RRCA                                        ;896c
        RRCA                                        ;896d
        RRCA                                        ;896e
        AND     0x1                                 ;896f
        ADD     a,b                                 ;8971
        LD      (ix+0xa),a                          ;8972
b2_l8975h:
        PUSH    ix                                  ;8975
        POP     hl                                  ;8977
        LD      a,(ix+0x0)                          ;8978
        LD      (0xcd37),a                          ;897b
        JP      0x54e6                              ;897e
        LD      a,(ix+0x1)                          ;8981
        OR      a                                   ;8984
        JR      nz,b2_l89b3h                        ;8985
        LD      de,0x80                             ;8987
        CALL    0xa13b                              ;898a
        LD      a,(ix+0x10)                         ;898d
        CP      (ix+0x3)                            ;8990
        RET     nc                                  ;8993
        LD      a,0x3                               ;8994
        CALL    ProcessSoundCommand                 ;8996
        CALL    b2_sub_88fdh                        ;8999
        LD      (ix+0x25),0x3                       ;899c
        LD      (ix+0x2a),0x8                       ;89a0
        LD      a,0x53                              ;89a4
        PUSH    ix                                  ;89a6
        POP     hl                                  ;89a8
        LD      (ix+0xa),a                          ;89a9
        EXX                                         ;89ac
        LD      de,0x562c                           ;89ad
        JP      0x5502                              ;89b0
b2_l89b3h:
        LD      a,(ix+0xb)                          ;89b3
        RRCA                                        ;89b6
        RRCA                                        ;89b7
        AND     0x1                                 ;89b8
        ADD     a,0x52                              ;89ba
        LD      (ix+0xa),a                          ;89bc
        JP      b2_l890dh                           ;89bf
        LD      b,a                                 ;89c2
        LD      hl,b2_l8b6bh                        ;89c3
        ADD     a,l                                 ;89c6
        LD      l,a                                 ;89c7
        JR      nc,b2_l89cbh                        ;89c8
        INC     h                                   ;89ca
b2_l89cbh:
        LD      a,(ix+0x3)                          ;89cb
        SUB     (hl)                                ;89ce
        LD      c,a                                 ;89cf
        LD      a,b                                 ;89d0
        LD      b,(ix+0x5)                          ;89d1
        LD      (0xcd18),a                          ;89d4
        LD      (0xcd1b),bc                         ;89d7
        PUSH    ix                                  ;89db
        CALL    b2_sub_89e9h                        ;89dd
        CALL    b2_sub_86f1h                        ;89e0
        CALL    b2_sub_8857h                        ;89e3
        POP     ix                                  ;89e6
        RET                                         ;89e8
b2_sub_89e9h:
        LD      a,(0xcd18)                          ;89e9
        LD      hl,0xca00                           ;89ec
        LD      b,0x8                               ;89ef
        XOR     a                                   ;89f1
        LD      de,0x40                             ;89f2
b2_l89f5h:
        CP      (hl)                                ;89f5
        JR      z,b2_l89fch                         ;89f6
        ADD     hl,de                               ;89f8
        DJNZ    b2_l89f5h                           ;89f9
        RET                                         ;89fb
b2_l89fch:
        PUSH    hl                                  ;89fc
        POP     ix                                  ;89fd
        LD      (0xcd3c),hl                         ;89ff
        LD      c,0x2                               ;8a02
        LD      (ix+0x20),c                         ;8a04
        LD      de,0x0                              ;8a07
        LD      hl,0xee20                           ;8a0a
        LD      b,0xc                               ;8a0d
b2_l8a0fh:
        LD      a,(hl)                              ;8a0f
        CP      0xe0                                ;8a10
        JR      nz,b2_l8a34h                        ;8a12
        LD      (hl),0xe1                           ;8a14
        CALL    b2_sub_84a0h                        ;8a16
        INC     e                                   ;8a19
        INC     d                                   ;8a1a
        LD      a,0x4                               ;8a1b
        CALL    ADD_HL_A                            ;8a1d
        LD      (hl),0xe1                           ;8a20
        CALL    b2_sub_84a0h                        ;8a22
        INC     e                                   ;8a25
        INC     d                                   ;8a26
        LD      a,0x4                               ;8a27
        CALL    ADD_HL_A                            ;8a29
        DEC     c                                   ;8a2c
        JR      z,b2_l8a41h                         ;8a2d
        DEC     c                                   ;8a2f
        JR      z,b2_l8a41h                         ;8a30
        JR      b2_l8a3eh                           ;8a32
b2_l8a34h:
        INC     d                                   ;8a34
        INC     d                                   ;8a35
        INC     hl                                  ;8a36
        INC     hl                                  ;8a37
        INC     hl                                  ;8a38
        INC     hl                                  ;8a39
        INC     hl                                  ;8a3a
        INC     hl                                  ;8a3b
        INC     hl                                  ;8a3c
        INC     hl                                  ;8a3d
b2_l8a3eh:
        DJNZ    b2_l8a0fh                           ;8a3e
        RET                                         ;8a40
b2_l8a41h:
        LD      hl,(0xcd3c)                         ;8a41
        LD      a,(0xcd18)                          ;8a44
        LD      (hl),a                              ;8a47
        INC     l                                   ;8a48
        LD      (hl),0x0                            ;8a49
        LD      de,(0xcd1b)                         ;8a4b
        INC     l                                   ;8a4f
        LD      (hl),0x0                            ;8a50
        INC     l                                   ;8a52
        LD      (hl),e                              ;8a53
        INC     l                                   ;8a54
        LD      (hl),0x0                            ;8a55
        INC     l                                   ;8a57
        LD      (hl),d                              ;8a58
        LD      (ix+0xc),0x1                        ;8a59
        LD      a,(ix+0x0)                          ;8a5d
        LD      de,b2_l8b52h                        ;8a60
        CALL    GetPointerDE2A                      ;8a63
        LD      hl,(0xcd3c)                         ;8a66
        SET     5,l                                 ;8a69
        LD      b,(hl)                              ;8a6b
        LD      a,0x5                               ;8a6c
        ADD     a,l                                 ;8a6e
        LD      l,a                                 ;8a6f
b2_l8a70h:
        LD      a,(de)                              ;8a70
        LD      (hl),a                              ;8a71
        INC     de                                  ;8a72
        LD      a,l                                 ;8a73
        ADD     a,0x5                               ;8a74
        LD      l,a                                 ;8a76
        DJNZ    b2_l8a70h                           ;8a77
        LD      hl,(0xcd3c)                         ;8a79
        CALL    b2_sub_8893h                        ;8a7c
        LD      hl,(0xcd3c)                         ;8a7f
        LD      a,(ix+0x0)                          ;8a82
        ADD     a,0x2f                              ;8a85
        LD      (0xcd37),a                          ;8a87
        CALL    0x54e6                              ;8a8a
        LD      a,(ix+0x0)                          ;8a8d
        DEC     a                                   ;8a90
        CALL    JumpIndex                           ;8a91
        DEFW    0x8aa2,0x8ab9,0x8acf,0x8ad8         ;8a94 ; data:jumptable
        DEFW    0x8ae1,0x8b02                       ;8a9c
        LD      (0xdd8b),hl                         ;8aa0
        LD      (hl),0xa                            ;8aa3
        INC     a                                   ;8aa5
        LD      (ix+0xb),0x20                       ;8aa6
        LD      de,0x0                              ;8aaa
        CALL    b2_sub_87e4h                        ;8aad
        LD      de,0x200                            ;8ab0
        CALL    b2_sub_8b48h                        ;8ab3
        JP      b2_l87ebh                           ;8ab6
        LD      a,0x6                               ;8ab9
        CALL    ProcessSoundCommand                 ;8abb
        LD      a,0x58                              ;8abe
b2_l8ac0h: equ     #8ac0
        LD      (ix+0xa),a                          ;8ac0
        LD      a,0x40                              ;8ac3
        CALL    b2_sub_8b76h                        ;8ac5
        CALL    b2_sub_87e4h                        ;8ac8
        EX      de,hl                               ;8acb
        JP      b2_l87ebh                           ;8acc
        LD      a,0x6                               ;8acf
        CALL    ProcessSoundCommand                 ;8ad1
        LD      a,0x49                              ;8ad4
        JR      b2_l8ac0h                           ;8ad6
        LD      a,0x5                               ;8ad8
        CALL    ProcessSoundCommand                 ;8ada
        LD      a,0x5a                              ;8add
        JR      b2_l8ac0h                           ;8adf
        LD      a,0x6                               ;8ae1
        CALL    ProcessSoundCommand                 ;8ae3
        LD      b,0x93                              ;8ae6
b2_l8ae8h: equ     #8ae8
        LD      (ix+0xa),b                          ;8ae8
        LD      de,0x0                              ;8aeb
        CALL    b2_l87ebh                           ;8aee
        LD      de,0x280                            ;8af1
        CALL    b2_sub_8b48h                        ;8af4
        LD      hl,0xcd38                           ;8af7
        BIT     0,(hl)                              ;8afa
        CALL    z,b2_sub_8c0ah                      ;8afc
        JP      b2_sub_87e4h                        ;8aff
        LD      a,0x7                               ;8b02
        CALL    ProcessSoundCommand                 ;8b04
        LD      b,0x3c                              ;8b07
        LD      a,(ix+0x5)                          ;8b09
        LD      hl,0xcd38                           ;8b0c
        BIT     0,(hl)                              ;8b0f
        JR      z,b2_l8b1eh                         ;8b11
        INC     b                                   ;8b13
        DEFB    0xc6,0x10,0xda,0xb7,0x87,0xdd,0x77,0x05  ;8b14 ; data:code-gap
        DEFB    0x18,0xca,0xd6,0x10,0x18,0xf4,0x11,0x00  ;8b1c
        DEFB    0xfa,0xcd,0xeb,0x87,0x11,0x00,0x02,0xcd  ;8b24
        DEFB    0x48,0x8b,0x21,0x38,0xcd,0xcb,0x46,0xcc  ;8b2c
        DEFB    0x0a,0x8c,0xcd,0xe4,0x87,0xdd,0x7e,0x03  ;8b34
        DEFB    0xdd,0x77,0x10,0xdd,0x36,0x0b,0x07,0xdd  ;8b3c
        DEFB    0x36,0x0a,0x1b,0xc9,0x3a,0x12,0xcd,0x87  ;8b44
        DEFB    0x87,0x87,0x87,0x83,0x5f,0xd0,0x14,0xc9  ;8b4c
        DEFB    0x62,0x8b,0x64,0x8b,0x66,0x8b,0x6a,0x8b  ;8b54
        DEFB    0x68,0x8b,0x62,0x8b,0x64,0x8b,0x02,0x45  ;8b5c
        DEFB    0x01,0x42,0x02,0x0e,0x02,0x06,0x02,0x4c  ;8b64
        DEFB    0x00,0x08,0x00,0x00,0x08,0x08,0x0c,0x00  ;8b6c
        DEFB    0x3e,0x80                           ;8b74
b2_l8b16h: equ     #8b16
b2_l8b1eh: equ     #8b1e
b2_sub_8b48h: equ     #8b48
b2_l8b52h: equ     #8b52
b2_l8b6bh: equ     #8b6b
b2_sub_8b76h:
        LD      e,(ix+0x3)                          ;8b76
        LD      d,(ix+0x5)                          ;8b79
        LD      c,a                                 ;8b7c
        LD      a,(0xcd12)                          ;8b7d
        ADD     a,a                                 ;8b80
        ADD     a,a                                 ;8b81
        ADD     a,a                                 ;8b82
        ADD     a,c                                 ;8b83
        LD      (0xcd1d),a                          ;8b84
        CALL    b2_sub_8bc2h                        ;8b87
        LD      a,(0xcd1e)                          ;8b8a
        LD      e,a                                 ;8b8d
        LD      d,0x0                               ;8b8e
        SUB     0x3f                                ;8b90
        NEG                                         ;8b92
        LD      hl,0x8c70                           ;8b94
        PUSH    hl                                  ;8b97
        ADD     hl,de                               ;8b98
        LD      c,(hl)                              ;8b99
        POP     hl                                  ;8b9a
        LD      e,a                                 ;8b9b
        ADD     hl,de                               ;8b9c
        LD      a,(hl)                              ;8b9d
        LD      (0xcd1f),a                          ;8b9e
        LD      e,c                                 ;8ba1
        CALL    b2_sub_8c12h                        ;8ba2
        LD      a,(0xcd20)                          ;8ba5
        AND     a                                   ;8ba8
        CALL    nz,b2_sub_8c0ah                     ;8ba9
        LD      (0xcd22),de                         ;8bac
        LD      a,(0xcd1f)                          ;8bb0
        LD      e,a                                 ;8bb3
        CALL    b2_sub_8c12h                        ;8bb4
        LD      a,(0xcd21)                          ;8bb7
        AND     a                                   ;8bba
        CALL    nz,b2_sub_8c0ah                     ;8bbb
        LD      hl,(0xcd22)                         ;8bbe
        RET                                         ;8bc1
b2_sub_8bc2h:
        LD      hl,0xcd20                           ;8bc2
        LD      (hl),0x0                            ;8bc5
        LD      a,(0xc494)                          ;8bc7
        SUB     e                                   ;8bca
        JR      nc,b2_l8bd0h                        ;8bcb
        NEG                                         ;8bcd
        INC     (hl)                                ;8bcf
b2_l8bd0h:
        INC     hl                                  ;8bd0
        LD      (hl),0x0                            ;8bd1
        RRA                                         ;8bd3
        RRA                                         ;8bd4
        AND     0x38                                ;8bd5
        LD      e,a                                 ;8bd7
        LD      a,(0xc496)                          ;8bd8
        SUB     d                                   ;8bdb
        JR      nc,b2_l8be1h                        ;8bdc
        NEG                                         ;8bde
        INC     (hl)                                ;8be0
b2_l8be1h:
        RRA                                         ;8be1
        RRA                                         ;8be2
        RRA                                         ;8be3
        RRA                                         ;8be4
        RRA                                         ;8be5
        AND     0x7                                 ;8be6
        ADD     a,e                                 ;8be8
        LD      hl,b2_l8c30h                        ;8be9
        CALL    ADD_HL_A                            ;8bec
        LD      a,(hl)                              ;8bef
        LD      (0xcd1e),a                          ;8bf0
        LD      c,a                                 ;8bf3
        LD      hl,(0xcd20)                         ;8bf4
        LD      a,h                                 ;8bf7
        LD      b,0x0                               ;8bf8
        AND     a                                   ;8bfa
        JR      z,b2_l8bffh                         ;8bfb
        LD      b,0x80                              ;8bfd
b2_l8bffh:
        CP      l                                   ;8bff
        LD      a,c                                 ;8c00
        JR      z,b2_l8c05h                         ;8c01
        NEG                                         ;8c03
b2_l8c05h:
        ADD     a,b                                 ;8c05
        LD      (0xcd24),a                          ;8c06
        RET                                         ;8c09
b2_sub_8c0ah:
        LD      a,d                                 ;8c0a
        CPL                                         ;8c0b
        LD      d,a                                 ;8c0c
        LD      a,e                                 ;8c0d
        CPL                                         ;8c0e
        LD      e,a                                 ;8c0f
        INC     de                                  ;8c10
        RET                                         ;8c11
b2_sub_8c12h:
        LD      a,(0xcd1d)                          ;8c12
        LD      h,a                                 ;8c15
        CALL    b2_sub_8c24h                        ;8c16
        XOR     a                                   ;8c19
        ADD     hl,hl                               ;8c1a
        ADC     a,a                                 ;8c1b
        ADD     hl,hl                               ;8c1c
        ADC     a,a                                 ;8c1d
        ADD     hl,hl                               ;8c1e
        ADC     a,a                                 ;8c1f
        LD      l,h                                 ;8c20
        LD      h,a                                 ;8c21
        EX      de,hl                               ;8c22
        RET                                         ;8c23
b2_sub_8c24h:
        LD      b,0x8                               ;8c24
        LD      l,0x0                               ;8c26
        LD      d,l                                 ;8c28
b2_l8c29h:
        ADD     hl,hl                               ;8c29
        JR      nc,b2_l8c2dh                        ;8c2a
        ADD     hl,de                               ;8c2c
b2_l8c2dh:
        DJNZ    b2_l8c29h                           ;8c2d
        RET                                         ;8c2f
b2_l8c30h: equ     #8c30
        DEFB    0x20,0x08,0x04,0x03,0x02,0x02,0x01,0x01  ;8c30 ; data:code-gap
        DEFB    0x38,0x20,0x15,0x0f,0x0c,0x09,0x08,0x07  ;8c38
        DEFB    0x3b,0x2b,0x20,0x19,0x14,0x10,0x0e,0x0c  ;8c40
        DEFB    0x3d,0x31,0x27,0x20,0x1a,0x16,0x13,0x11  ;8c48
        DEFB    0x3d,0x34,0x2c,0x25,0x20,0x1c,0x18,0x15  ;8c50
        DEFB    0x3e,0x36,0x2f,0x29,0x24,0x20,0x1c,0x19  ;8c58
        DEFB    0x3e,0x38,0x32,0x2c,0x28,0x23,0x20,0x1d  ;8c60
        DEFB    0x3e,0x39,0x34,0x2f,0x2a,0x26,0x23,0x20  ;8c68
        DEFB    0x00,0x06,0x0c,0x12,0x19,0x1f,0x26,0x2c  ;8c70
        DEFB    0x32,0x38,0x3e,0x44,0x4a,0x50,0x56,0x5c  ;8c78
        DEFB    0x62,0x68,0x6d,0x73,0x79,0x7e,0x84,0x89  ;8c80
        DEFB    0x8e,0x93,0x99,0x9e,0xa2,0xa7,0xac,0xb1  ;8c88
        DEFB    0xb5,0xb9,0xbe,0xc2,0xc6,0xca,0xce,0xd1  ;8c90
        DEFB    0xd5,0xd8,0xdc,0xdf,0xe2,0xe5,0xe7,0xea  ;8c98
        DEFB    0xed,0xef,0xf1,0xf3,0xf5,0xf7,0xf8,0xfa  ;8ca0
        DEFB    0xfb,0xfc,0xfd,0xfe,0xfe,0xff,0xff,0xff  ;8ca8
b2_l8c5dh: equ     #8c5d
b2_l8c71h: equ     #8c71
b2_l8c7bh: equ     #8c7b
b2_l8c85h: equ     #8c85
        LD      ix,0xcc00                           ;8cb0
        LD      b,0x4                               ;8cb4
b2_l8cb6h:
        LD      a,(ix+0x0)                          ;8cb6
        AND     a                                   ;8cb9
        JR      z,b2_l8ccah                         ;8cba
        PUSH    bc                                  ;8cbc
        CALL    b2_sub_8cd2h                        ;8cbd
        CALL    b2_sub_877ah                        ;8cc0
        CALL    b2_sub_87f2h                        ;8cc3
        CALL    b2_sub_87a5h                        ;8cc6
        POP     bc                                  ;8cc9
b2_l8ccah:
        LD      de,0x40                             ;8cca
        ADD     ix,de                               ;8ccd
        DJNZ    b2_l8cb6h                           ;8ccf
        RET                                         ;8cd1
b2_sub_8cd2h:
        LD      a,(ix+0x1)                          ;8cd2
        CP      0x2                                 ;8cd5
        CALL    z,0x7d7e                            ;8cd7
        LD      a,(ix+0x0)                          ;8cda
        DEC     a                                   ;8cdd
        CALL    JumpIndex                           ;8cde
        DEFW    0x8db3,0x8db3,0x8db3,0x8d32         ;8ce1 ; data:jumptable
        DEFW    0x8d7c,0x8e4b,0x8e6f,0x8ec0         ;8ce9
        DEFW    0x8f12,0x8ef4,0x8f25,0x8f43         ;8cf1
        DEFW    0x8f9a,0x8fa6,0x8ed5,0x7edd         ;8cf9
        DEFW    0xb70d                              ;8d01
        RET     z                                   ;8d03
        INC     (ix+0x1)                            ;8d04
        LD      (ix+0x1f),0x1                       ;8d07
        JR      b2_l8d1bh                           ;8d0b
        LD      a,(BlockQueue)                      ;8d0d
        OR      a                                   ;8d10
        RET     nz                                  ;8d11
        INC     (ix+0x1)                            ;8d12
        LD      a,(ix+0x0)                          ;8d15
        CP      0x6                                 ;8d18
        RET     z                                   ;8d1a
b2_l8d1bh: equ     #8d1b
        LD      a,(ix+0x0)                          ;8d1b
        OR      a                                   ;8d1e
        RET     z                                   ;8d1f
        DEC     a                                   ;8d20
        LD      de,b2_l8d2ch                        ;8d21
        CALL    ADD_DE_A                            ;8d24
        LD      a,(de)                              ;8d27
        LD      (ix+0xa),a                          ;8d28
        RET                                         ;8d2b
b2_l8d2ch: equ     #8d2c
        LD      b,a                                 ;8d2c
        LD      c,b                                 ;8d2d
        LD      c,c                                 ;8d2e
        LD      (de),a                              ;8d2f
        LD      (de),a                              ;8d30
        LD      (de),a                              ;8d31
        LD      a,(ix+0x1)                          ;8d32
        CALL    JumpIndex                           ;8d35
        DEFW    0x8cff,0x8d0d,0x8d40,0x8d7c         ;8d38 ; data:jumptable
        CALL    b2_sub_8e99h                        ;8d40
        CALL    b2_sub_8d95h                        ;8d43
        LD      (ix+0xb),0xf0                       ;8d46
        CALL    0x7d7e                              ;8d4a
        LD      e,(ix+0x12)                         ;8d4d
        CALL    0x5929                              ;8d50
        LD      (ix+0xc),0x0                        ;8d53
        INC     (ix+0x1)                            ;8d57
        LD      (ix+0x11),0x1                       ;8d5a
        LD      a,(ix+0x3)                          ;8d5e
        LD      (ix+0x10),a                         ;8d61
        SUB     0x8                                 ;8d64
        LD      (ix+0x3),a                          ;8d66
        LD      a,(ix+0x5)                          ;8d69
        LD      (ix+0x13),a                         ;8d6c
        LD      (ix+0xe),0x0                        ;8d6f
        LD      de,0x0                              ;8d73
        CALL    b2_sub_87e4h                        ;8d76
        JP      b2_l8d8fh                           ;8d79
        CALL    b2_sub_8d89h                        ;8d7c
        LD      a,(ix+0x10)                         ;8d7f
        CP      (ix+0x3)                            ;8d82
        RET     nc                                  ;8d85
        JP      b2_l87b7h                           ;8d86
b2_sub_8d89h: equ     #8d89
        LD      de,0x40                             ;8d89
        JP      0xa13b                              ;8d8c
b2_l8d8fh: equ     #8d8f
        LD      de,0xfc00                           ;8d8f
        JP      b2_l87ebh                           ;8d92
b2_sub_8d95h: equ     #8d95
        LD      hl,0xc4b0                           ;8d95
        LD      b,0x5                               ;8d98
        LD      a,(hl)                              ;8d9a
        BIT     0,a                                 ;8d9b
        JR      z,b2_l8dafh                         ;8d9d
        LD      c,a                                 ;8d9f
        AND     0xf                                 ;8da0
        SRL     c                                   ;8da2
        SRL     c                                   ;8da4
        SRL     c                                   ;8da6
        SRL     c                                   ;8da8
        CP      c                                   ;8daa
        JR      nz,b2_l8dafh                        ;8dab
        LD      b,0x50                              ;8dad
b2_l8dafh: equ     #8daf
        LD      (ix+0x12),b                         ;8daf
        RET                                         ;8db2
        LD      a,(ix+0x1)                          ;8db3
        CALL    JumpIndex                           ;8db6
        DEFW    0x8cff,0x8d0d,0x8dc3,0x8e04         ;8db9 ; data:jumptable
        DEFW    0x8e27                              ;8dc1
        CALL    b2_sub_8e99h                        ;8dc3
        LD      (ix+0xc),0x0                        ;8dc6
        LD      de,0x80                             ;8dca
b2_l8dcdh: equ     #8dcd
        LD      a,(0xc49a)                          ;8dcd
        CP      (ix+0x5)                            ;8dd0
        JR      nc,b2_l8dfah                        ;8dd3
        LD      a,(ix+0x5)                          ;8dd5
        ADD     a,0x8                               ;8dd8
b2_l8ddah: equ     #8dda
        LD      (ix+0x5),a                          ;8dda
        CALL    b2_sub_87e4h                        ;8ddd
        CALL    b2_l8d8fh                           ;8de0
        LD      a,(ix+0x3)                          ;8de3
        SUB     0xc                                 ;8de6
        LD      (ix+0x3),a                          ;8de8
        LD      (ix+0x10),a                         ;8deb
        LD      (ix+0xe),0x0                        ;8dee
        LD      (ix+0x14),0x58                      ;8df2
        INC     (ix+0x1)                            ;8df6
        RET                                         ;8df9
b2_l8dfah: equ     #8dfa
        CALL    b2_sub_8c0ah                        ;8dfa
        LD      a,(ix+0x5)                          ;8dfd
        SUB     0x8                                 ;8e00
        JR      b2_l8ddah                           ;8e02
        LD      de,0x40                             ;8e04
        CALL    0xa13b                              ;8e07
        LD      a,(ix+0x10)                         ;8e0a
        CP      (ix+0x3)                            ;8e0d
        RET     nc                                  ;8e10
        INC     (ix+0x1)                            ;8e11
        LD      (ix+0xc),0x1                        ;8e14
        LD      de,0x66                             ;8e18
        LD      (ix+0x12),d                         ;8e1b
        LD      (ix+0x13),e                         ;8e1e
b2_l8e21h: equ     #8e21
        LD      de,0xfd00                           ;8e21
        JP      b2_l87ebh                           ;8e24
        DEC     (ix+0x14)                           ;8e27
        JP      z,b2_l87b7h                         ;8e2a
        LD      d,(ix+0x12)                         ;8e2d
        LD      a,(ix+0x13)                         ;8e30
        ADD     a,0x3                               ;8e33
        LD      e,a                                 ;8e35
        JR      nc,b2_l8e39h                        ;8e36
        INC     d                                   ;8e38
b2_l8e39h:
        LD      (ix+0x12),d                         ;8e39
        LD      (ix+0x13),e                         ;8e3c
        CALL    0xa13b                              ;8e3f
        LD      a,(ix+0x10)                         ;8e42
        CP      (ix+0x3)                            ;8e45
        RET     nc                                  ;8e48
        JR      b2_l8e21h                           ;8e49
        LD      (ix+0xe),0x1                        ;8e4b
        LD      a,(ix+0x1)                          ;8e4f
        OR      a                                   ;8e52
        CALL    z,b2_sub_8e65h                      ;8e53
        CALL    JumpIndex                           ;8e56
        DEFW    0x8cff,0x8d0d,0x8e70,0x8e6f         ;8e59 ; data:jumptable
        DEFW    0x8e70,0x8e6f,0x783a,0xb7c2         ;8e61
b2_sub_8e65h: equ     #8e65
        RET     z                                   ;8e69
        LD      a,0x4                               ;8e6a
        LD      (ix+0x1),a                          ;8e6c
        RET                                         ;8e6f
        XOR     a                                   ;8e70
        LD      (0xcd2a),a                          ;8e71
        JR      b2_l8ea3h                           ;8e74
b2_sub_8e76h: equ     #8e76
        LD      bc,0xa090                           ;8e76
        LD      a,0xff                              ;8e79
        LD      (0xcd2a),a                          ;8e7b
        CALL    b2_sub_8eb1h                        ;8e7e
        LD      bc,0xb090                           ;8e81
        JR      b2_sub_8eb1h                        ;8e84
b2_sub_8e86h: equ     #8e86
        LD      bc,0xa090                           ;8e86
        XOR     a                                   ;8e89
        LD      (0xcd2a),a                          ;8e8a
        JR      b2_sub_8eb1h                        ;8e8d
b2_sub_8e8fh: equ     #8e8f
        LD      bc,0x7090                           ;8e8f
        LD      a,0x0                               ;8e92
        LD      (0xcd2a),a                          ;8e94
        JR      b2_sub_8eb1h                        ;8e97
b2_sub_8e99h: equ     #8e99
        LD      bc,0x80                             ;8e99
        LD      a,0xff                              ;8e9c
        LD      (0xcd2a),a                          ;8e9e
        JR      b2_sub_8eb1h                        ;8ea1
b2_l8ea3h: equ     #8ea3
        LD      (ix+0xd),0x0                        ;8ea3
        LD      (ix+0xc),0x1                        ;8ea7
        LD      bc,0x4080                           ;8eab
        INC     (ix+0x1)                            ;8eae
b2_sub_8eb1h: equ     #8eb1
        LD      a,(ix+0x3)                          ;8eb1
        SUB     0xf                                 ;8eb4
        LD      e,a                                 ;8eb6
        LD      a,(ix+0x5)                          ;8eb7
        SUB     0x8                                 ;8eba
        LD      d,a                                 ;8ebc
        JP      0x4e8e                              ;8ebd
        LD      a,(ix+0xd)                          ;8ec0
        OR      a                                   ;8ec3
        RET     z                                   ;8ec4
        XOR     a                                   ;8ec5
        LD      de,0x200                            ;8ec6
        CALL    0x592b                              ;8ec9
        CALL    b2_sub_8e8fh                        ;8ecc
        CALL    b2_sub_8f57h                        ;8ecf
        JP      b2_l87b7h                           ;8ed2
        LD      a,(ix+0xd)                          ;8ed5
        OR      a                                   ;8ed8
        RET     z                                   ;8ed9
        CALL    b2_sub_8e8fh                        ;8eda
        CALL    b2_sub_8f57h                        ;8edd
        LD      a,(FrameDivider)                    ;8ee0
        ADD     a,0x4                               ;8ee3
        CP      0x20                                ;8ee5
        JR      c,b2_l8eebh                         ;8ee7
        LD      a,0x20                              ;8ee9
b2_l8eebh:
        LD      (FrameDivider),a                    ;8eeb
        CALL    DrawHudLifeBar                      ;8eee
        JP      b2_l87b7h                           ;8ef1
        LD      a,(ix+0xd)                          ;8ef4
        OR      a                                   ;8ef7
        RET     z                                   ;8ef8
        LD      a,(PlayerStatus)                    ;8ef9
        CP      0x99                                ;8efc
        JR      z,b2_l8f06h                         ;8efe
        ADD     a,0x1                               ;8f00
        DAA                                         ;8f02
        LD      (PlayerStatus),a                    ;8f03
b2_l8f06h:
        CALL    b2_sub_8e8fh                        ;8f06
        CALL    b2_sub_8f57h                        ;8f09
        CALL    DrawGameHud                         ;8f0c
        JP      b2_l87b7h                           ;8f0f
        LD      a,(ix+0xd)                          ;8f12
        OR      a                                   ;8f15
        RET     z                                   ;8f16
        LD      a,0x8                               ;8f17
        CALL    0x5884                              ;8f19
        CALL    b2_sub_8e8fh                        ;8f1c
        CALL    b2_sub_8f57h                        ;8f1f
        JP      b2_l87b7h                           ;8f22
        LD      a,(ix+0xd)                          ;8f25
        OR      a                                   ;8f28
        RET     z                                   ;8f29
        LD      a,(0xc270)                          ;8f2a
        INC     a                                   ;8f2d
        CP      0x4                                 ;8f2e
        JR      nz,b2_l8f34h                        ;8f30
        LD      a,0x3                               ;8f32
