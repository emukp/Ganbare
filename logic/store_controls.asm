StoreControls_:
        LD      hl,ControlsHold                     ;49e4
StoreControls:
        LD      c,(hl)                              ;49e7
        LD      (hl),a                              ;49e8
        XOR     c                                   ;49e9
        AND     (hl)                                ;49ea
        DEC     hl                                  ;49eb
        LD      (hl),a                              ;49ec
        RET                                         ;49ed

; === ReadControls (0x49ee) ===
ReadControls:
        LD      e,0x8f                              ;49ee
        LD      a,0xf                               ;49f0
        CALL    WRTPSG                              ;49f2
        LD      a,0xe                               ;49f5
        DI                                          ;49f7
        CALL    RDPSG                               ;49f8
        EI                                          ;49fb
        CPL                                         ;49fc
        AND     0x3f                                ;49fd
        PUSH    af                                  ;49ff
        LD      a,0x6                               ;4a00
        CALL    SNSMAT                              ;4a02
        CPL                                         ;4a05
        RLCA                                        ;4a06
        RLCA                                        ;4a07
        RLCA                                        ;4a08
        RLCA                                        ;4a09
        AND     0x20                                ;4a0a
        LD      e,a                                 ;4a0c
        LD      a,0x8                               ;4a0d
        CALL    SNSMAT                              ;4a0f
        CPL                                         ;4a12
        RRCA                                        ;4a13
        RRCA                                        ;4a14
        LD      b,a                                 ;4a15
        AND     0x4                                 ;4a16
        OR      e                                   ;4a18
        LD      c,a                                 ;4a19
        LD      a,b                                 ;4a1a
        RRCA                                        ;4a1b
        RRCA                                        ;4a1c
        LD      b,a                                 ;4a1d
        AND     0x18                                ;4a1e
        OR      c                                   ;4a20
        LD      c,a                                 ;4a21
        LD      a,b                                 ;4a22
        RRCA                                        ;4a23
        AND     0x3                                 ;4a24
        OR      c                                   ;4a26
        LD      e,a                                 ;4a27
        LD      a,0x2                               ;4a28
        CALL    SNSMAT                              ;4a2a
        CPL                                         ;4a2d
        RRCA                                        ;4a2e
        RRCA                                        ;4a2f
        LD      b,a                                 ;4a30
        AND     0x10                                ;4a31
        OR      e                                   ;4a33
        POP     bc                                  ;4a34
        OR      b                                   ;4a35
        RET                                         ;4a36

; === ReadFKeys (0x4a37) ===
ReadFKeys:
        LD      a,0x6                               ;4a37
        CALL    SNSMAT                              ;4a39
        CPL                                         ;4a3c
        RLCA                                        ;4a3d
        RLCA                                        ;4a3e
        RLCA                                        ;4a3f
        AND     0x7                                 ;4a40
        RET                                         ;4a42

; === SetUpKonamiLogo (0x4a43) ===
SetUpKonamiLogo:
        CALL    SetBanks4_5_6                       ;4a43
        LD      hl,0xbc92                           ;4a46
        LD      de,0x800                            ;4a49
        LD      bc,0xd01                            ;4a4c
        CALL    Load1bppTiles                       ;4a4f
        LD      hl,0xbcfa                           ;4a52
        LD      de,0x7000                           ;4a55
        LD      bc,0xd02                            ;4a58
        CALL    Load1bppTiles                       ;4a5b
        LD      hl,0xbd62                           ;4a5e
        LD      de,0xd800                           ;4a61
        LD      bc,0x1a03                           ;4a64
        CALL    Load1bppTiles                       ;4a67
        JP      SetBanks1_2_3                       ;4a6a
