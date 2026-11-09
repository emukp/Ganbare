b2_l9a77h:
        LD      hl,AbSprAttrTable                   ;9a77
        LD      b,0x10                              ;9a7a
b2_l9a7ch:
        LD      a,(de)                              ;9a7c
        INC     de                                  ;9a7d
        LD      (hl),a                              ;9a7e
        INC     hl                                  ;9a7f
        DJNZ    b2_l9a7ch                           ;9a80
        LD      hl,0xc0                             ;9a82
        LD      de,0x6070                           ;9a85
        LD      bc,0xc10                            ;9a88
        CALL    b2_sub_9aabh                        ;9a8b
        LD      hl,0x10c0                           ;9a8e
        LD      de,b2_l9070h                        ;9a91
        LD      bc,0x810                            ;9a94
        CALL    b2_sub_9aabh                        ;9a97
        LD      hl,0x18c0                           ;9a9a
        LD      de,0x7070                           ;9a9d
        LD      bc,0x2010                           ;9aa0
        CALL    b2_sub_9aabh                        ;9aa3
        LD      a,0x12                              ;9aa6
        JP      DrawShopDialog                      ;9aa8
b2_sub_9aabh:
        LD      a,0x48                              ;9aab
        JP      VDP_Copy_Dot                        ;9aad
b2_l9ab0h:
        LD      hl,0xee20                           ;9ab0
        LD      de,b2_l9af4h                        ;9ab3
        LD      b,0x20                              ;9ab6
b2_l9ab8h:
        LD      a,(de)                              ;9ab8
        INC     de                                  ;9ab9
        LD      (hl),a                              ;9aba
        INC     hl                                  ;9abb
        DJNZ    b2_l9ab8h                           ;9abc
        RET                                         ;9abe
b2_sub_9abfh:
        LD      hl,0xee10                           ;9abf
        LD      de,b2_l9b04h                        ;9ac2
        LD      b,0x10                              ;9ac5
        JR      b2_l9ab8h                           ;9ac7
b2_sub_9ac9h:
        LD      hl,0xec80                           ;9ac9
        LD      b,0x40                              ;9acc
b2_l9aceh:
        LD      de,0xd0e                            ;9ace
b2_l9ad1h:
        LD      (hl),d                              ;9ad1
        INC     hl                                  ;9ad2
        LD      (hl),e                              ;9ad3
        INC     hl                                  ;9ad4
        DJNZ    b2_l9ad1h                           ;9ad5
b2_l9ad7h:
        RET                                         ;9ad7
b2_sub_9ad8h:
        LD      hl,0xec40                           ;9ad8
b2_l9adbh:
        LD      b,0x20                              ;9adb
        JR      b2_l9aceh                           ;9add
b2_l9adfh:
        LD      hl,0xee20                           ;9adf
        LD      b,0x8                               ;9ae2
b2_l9ae4h:
        LD      (hl),0xe0                           ;9ae4
        INC     hl                                  ;9ae6
        INC     hl                                  ;9ae7
        INC     hl                                  ;9ae8
        INC     hl                                  ;9ae9
        DJNZ    b2_l9ae4h                           ;9aea
        RET                                         ;9aec
b2_sub_9aedh:
        LD      hl,0xee10                           ;9aed
        LD      b,0x4                               ;9af0
        JR      b2_l9ae4h                           ;9af2
b2_l9af4h: equ     #9af4
