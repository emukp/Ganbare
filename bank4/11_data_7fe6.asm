        DEFB    0xdd,0xf0,0x70                      ;7fe6
        RRCA                                        ;7fe9
        DEFB    0xdd,0xff,0x77                      ;7fea
        NOP                                         ;7fed
        DEFB    0xfd,0xff,0xb7                      ;7fee
        LD      (hl),b                              ;7ff1
        RRCA                                        ;7ff2
        RST     KEYINT                              ;7ff3
        CP      d                                   ;7ff4
        OR      a                                   ;7ff5
        NOP                                         ;7ff6
        RST     KEYINT                              ;7ff7
        CP      e                                   ;7ff8
        CP      d                                   ;7ff9
        LD      (hl),b                              ;7ffa
        RRCA                                        ;7ffb
        OR      a                                   ;7ffc
        LD      a,e                                 ;7ffd
        OR      a                                   ;7ffe
        NOP                                         ;7fff
