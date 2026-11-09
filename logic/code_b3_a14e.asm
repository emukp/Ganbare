; === thunk_FUN_ram_8334 (0xa14e) ===
thunk_FUN_ram_8334:
        JP      0x8334                              ;a14e
        LD      a,0x4e                              ;a151
        LD      (ix+0xa),a                          ;a153
        LD      a,(0xc496)                          ;a156
        CP      0x28                                ;a159
        LD      b,0x28                              ;a15b
        JR      c,b3_la166h                         ;a15d
        CP      0x98                                ;a15f
        LD      b,0x98                              ;a161
        JR      nc,b3_la166h                        ;a163
        LD      b,a                                 ;a165
b3_la166h:
        LD      (ix+0x7c),b                         ;a166
        LD      a,b                                 ;a169
        ADD     a,0x40                              ;a16a
        LD      (ix+0x7b),a                         ;a16c
        DEC     b                                   ;a16f
        LD      (ix+0x5),b                          ;a170
        LD      (ix+0x3),0x10                       ;a173
        LD      de,0x200                            ;a177
        CALL    0x87eb                              ;a17a
        LD      de,0x0                              ;a17d
        CALL    0x87e4                              ;a180
        RET                                         ;a183
        LD      a,(ix+0x9)                          ;a184
        AND     0x50                                ;a187
        LD      b,0x0                               ;a189
        JR      nz,b3_la18fh                        ;a18b
        LD      b,0x2                               ;a18d
b3_la18fh:
        LD      a,(0xc00d)                          ;a18f
        AND     0xf                                 ;a192
        JR      nz,b3_la1a5h                        ;a194
        LD      a,(0xc00d)                          ;a196
        AND     0x10                                ;a199
        RRA                                         ;a19b
        RRA                                         ;a19c
        RRA                                         ;a19d
        RRA                                         ;a19e
        ADD     a,b                                 ;a19f
        ADD     a,0x4e                              ;a1a0
        LD      (ix+0xa),a                          ;a1a2
b3_la1a5h:
        CALL    b3_sub_a27ah                        ;a1a5
        LD      a,(ix+0x1)                          ;a1a8
        CALL    JumpIndex                           ;a1ab
