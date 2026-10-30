bE_l9adeh:
        LD      (de),a                              ;9ade
        LD      bc,0x1014                           ;9adf
        JR      $+3                                 ;9ae2
        LD      bc,0x203                            ;9ae4
        INC     bc                                  ;9ae7
        ADD     a,e                                 ;9ae8
        INC     b                                   ;9ae9
        INC     d                                   ;9aea
        RLCA                                        ;9aeb
        INC     d                                   ;9aec
        RLCA                                        ;9aed
        ADD     a,(hl)                              ;9aee
        EX      af,af'                              ;9aef
bE_l9af0h:
        RLCA                                        ;9af0
        ADD     hl,bc                               ;9af1
        EX      af,af'                              ;9af2
        ADD     hl,bc                               ;9af3
        SUB     e                                   ;9af4
        DEC     c                                   ;9af5
        NOP                                         ;9af6
        DEC     c                                   ;9af7
        ADC     a,(hl)                              ;9af8
        LD      c,0x11                              ;9af9
        INC     d                                   ;9afb
        EX      af,af'                              ;9afc
        INC     d                                   ;9afd
        ADC     a,h                                 ;9afe
        RLA                                         ;9aff
        DEC     b                                   ;9b00
        LD      a,(de)                              ;9b01
        RRCA                                        ;9b02
        DEC     de                                  ;9b03
        INC     d                                   ;9b04
        DEC     de                                  ;9b05
        SUB     b                                   ;9b06
bE_l9b07h:
        DEC     e                                   ;9b07
        INC     c                                   ;9b08
        DEC     e                                   ;9b09
        ADC     a,c                                 ;9b0a
        LD      e,0xe                               ;9b0b
        JR      nz,bE_l9b13h                        ;9b0d
        LD      hl,0x210c                           ;9b0f
        SUB     h                                   ;9b12
bE_l9b13h:
        ADD     hl,bc                               ;9b13
        LD      a,(bc)                              ;9b14
        LD      (de),a                              ;9b15
        INC     c                                   ;9b16
        LD      a,(bc)                              ;9b17
        RRCA                                        ;9b18
        INC     d                                   ;9b19
        DJNZ    bE_l9b25h                           ;9b1a
        LD      de,0x1408                           ;9b1c
        DJNZ    bE_l9b38h                           ;9b1f
        INC     bc                                  ;9b21
        JR      bE_l9b24h                           ;9b22
bE_l9b24h:
        DEC     de                                  ;9b24
bE_l9b25h:
        INC     c                                   ;9b25
        ADD     hl,bc                               ;9b26
        LD      bc,0x201                            ;9b27
        INC     d                                   ;9b2a
        INC     b                                   ;9b2b
        LD      de,0xc06                            ;9b2c
        RLCA                                        ;9b2f
        DJNZ    bE_l9b3fh                           ;9b30
        INC     b                                   ;9b32
        LD      de,0x1208                           ;9b33
        INC     c                                   ;9b36
        LD      (de),a                              ;9b37
bE_l9b38h:
        ADD     a,e                                 ;9b38
        DEC     bc                                  ;9b39
        LD      (bc),a                              ;9b3a
        NOP                                         ;9b3b
        INC     b                                   ;9b3c
        INC     de                                  ;9b3d
        RLCA                                        ;9b3e
bE_l9b3fh:
        EX      af,af'                              ;9b3f
        RLCA                                        ;9b40
        SUB     h                                   ;9b41
        DEC     bc                                  ;9b42
        ADD     hl,bc                               ;9b43
        LD      (de),a                              ;9b44
        RRCA                                        ;9b45
        INC     de                                  ;9b46
        INC     c                                   ;9b47
        INC     de                                  ;9b48
        SUB     h                                   ;9b49
        JR      $+12                                ;9b4a
        JR      bE_l9adeh                           ;9b4c
        INC     e                                   ;9b4e
        DEC     bc                                  ;9b4f
        DEC     bc                                  ;9b50
        LD      (bc),a                              ;9b51
        LD      b,0x5                               ;9b52
        LD      bc,0x507                            ;9b54
        INC     d                                   ;9b57
        INC     d                                   ;9b58
        LD      d,0x10                              ;9b59
        LD      a,(de)                              ;9b5b
        RRCA                                        ;9b5c
        DEC     de                                  ;9b5d
bE_l9b5eh:
        LD      de,0x21e                            ;9b5e
        INC     l                                   ;9b61
        INC     d                                   ;9b62
        JR      nc,$+5                              ;9b63
        ADD     hl,sp                               ;9b65
        LD      de,0x407                            ;9b66
        LD      bc,0x207                            ;9b69
        RLCA                                        ;9b6c
        ADD     a,b                                 ;9b6d
        DEC     c                                   ;9b6e
        DJNZ    $+16                                ;9b6f
        INC     d                                   ;9b71
        LD      c,0x88                              ;9b72
        INC     de                                  ;9b74
        INC     bc                                  ;9b75
        DEC     bc                                  ;9b76
        NOP                                         ;9b77
        INC     c                                   ;9b78
        NOP                                         ;9b79
        SUB     c                                   ;9b7a
        LD      (bc),a                              ;9b7b
        INC     d                                   ;9b7c
        DEC     b                                   ;9b7d
        LD      de,bE_l8f05h                        ;9b7e
        LD      b,0x14                              ;9b81
        ADD     hl,bc                               ;9b83
        NOP                                         ;9b84
        ADD     hl,bc                               ;9b85
        SUB     c                                   ;9b86
        LD      a,(bc)                              ;9b87
        DJNZ    bE_l9b99h                           ;9b88
        LD      de,bE_l930fh                        ;9b8a
        ADD     hl,bc                               ;9b8d
        LD      bc,0x300                            ;9b8e
        INC     de                                  ;9b91
        LD      b,0x5                               ;9b92
        RLCA                                        ;9b94
        EX      af,af'                              ;9b95
        ADD     hl,bc                               ;9b96
        DEC     bc                                  ;9b97
        DEC     bc                                  ;9b98
bE_l9b99h:
        LD      b,0xc                               ;9b99
        RRCA                                        ;9b9b
        INC     c                                   ;9b9c
        ADC     a,h                                 ;9b9d
        LD      c,0x10                              ;9b9e
        EX      af,af'                              ;9ba0
        INC     bc                                  ;9ba1
        INC     bc                                  ;9ba2
        LD      b,0x8                               ;9ba3
        EX      af,af'                              ;9ba5
        LD      de,0x50c                            ;9ba6
        DEC     d                                   ;9ba9
        DJNZ    bE_l9bc4h                           ;9baa
        INC     d                                   ;9bac
bE_l9badh:
        ADD     hl,de                               ;9bad
        LD      (de),a                              ;9bae
        LD      e,0x0                               ;9baf
        LD      de,0x1402                           ;9bb1
        LD      (bc),a                              ;9bb4
        SUB     c                                   ;9bb5
        RLCA                                        ;9bb6
        RRCA                                        ;9bb7
        EX      af,af'                              ;9bb8
        INC     bc                                  ;9bb9
        EX      af,af'                              ;9bba
        ADC     a,(hl)                              ;9bbb
        LD      a,(bc)                              ;9bbc
        INC     de                                  ;9bbd
        LD      c,0x14                              ;9bbe
        LD      c,0x8e                              ;9bc0
        DJNZ    bE_l9bc5h                           ;9bc2
bE_l9bc4h:
        INC     de                                  ;9bc4
bE_l9bc5h:
        INC     d                                   ;9bc5
        INC     de                                  ;9bc6
        ADC     a,b                                 ;9bc7
        RLA                                         ;9bc8
        EX      af,af'                              ;9bc9
bE_l9bcah:
        JR      bE_l9bd0h                           ;9bca
        JR      bE_l9b5eh                           ;9bcc
        LD      a,(de)                              ;9bce
        LD      (bc),a                              ;9bcf
bE_l9bd0h:
        DEC     de                                  ;9bd0
        INC     c                                   ;9bd1
        DEC     de                                  ;9bd2
        SUB     h                                   ;9bd3
        NOP                                         ;9bd4
        DEC     c                                   ;9bd5
        NOP                                         ;9bd6
        DJNZ    bE_l9bdch                           ;9bd7
        INC     d                                   ;9bd9
        ADD     hl,bc                               ;9bda
        ADD     hl,bc                               ;9bdb
bE_l9bdch:
        DJNZ    bE_l9be0h                           ;9bdc
        INC     de                                  ;9bde
        INC     d                                   ;9bdf
bE_l9be0h:
        LD      hl,(0x2f04)                         ;9be0
        LD      (de),a                              ;9be3
        LD      (0x340a),a                          ;9be4
        DEC     bc                                  ;9be7
        ADD     hl,sp                               ;9be8
        LD      b,0x41                              ;9be9
bE_l9bebh:
        INC     c                                   ;9beb
        LD      b,h                                 ;9bec
        INC     d                                   ;9bed
        LD      b,(hl)                              ;9bee
        LD      bc,bE_l9c52h                        ;9bef
        LD      e,(hl)                              ;9bf2
        SBC     a,h                                 ;9bf3
        LD      h,l                                 ;9bf4
        SBC     a,h                                 ;9bf5
        LD      l,l                                 ;9bf6
        SBC     a,h                                 ;9bf7
        LD      (hl),a                              ;9bf8
        SBC     a,h                                 ;9bf9
        ADD     a,h                                 ;9bfa
        SBC     a,h                                 ;9bfb
        SUB     a                                   ;9bfc
        SBC     a,h                                 ;9bfd
        CP      b                                   ;9bfe
        SBC     a,h                                 ;9bff
        RET     nz                                  ;9c00
        SBC     a,h                                 ;9c01
        JP      z,0xd69c                            ;9c02
        SBC     a,h                                 ;9c05
        RST     OUTDO                               ;9c06
        SBC     a,h                                 ;9c07
        JP      (hl)                                ;9c08
        SBC     a,h                                 ;9c09
        CALL    m,0x1f9c                            ;9c0a
        SBC     a,l                                 ;9c0d
        JR      nc,bE_l9badh                        ;9c0e
        ADD     hl,sp                               ;9c10
        SBC     a,l                                 ;9c11
        LD      b,d                                 ;9c12
        SBC     a,l                                 ;9c13
        LD      c,e                                 ;9c14
        SBC     a,l                                 ;9c15
        LD      d,a                                 ;9c16
        SBC     a,l                                 ;9c17
        LD      l,l                                 ;9c18
        SBC     a,l                                 ;9c19
        SUB     l                                   ;9c1a
        SBC     a,l                                 ;9c1b
        AND     e                                   ;9c1c
        SBC     a,l                                 ;9c1d
        XOR     h                                   ;9c1e
        SBC     a,l                                 ;9c1f
        OR      a                                   ;9c20
        SBC     a,l                                 ;9c21
        ADD     a,0x9d                              ;9c22
        PUSH    de                                  ;9c24
        SBC     a,l                                 ;9c25
        RET     pe                                  ;9c26
        SBC     a,l                                 ;9c27
        ADD     hl,bc                               ;9c28
        SBC     a,(hl)                              ;9c29
bE_l9c2ah:
        JR      bE_l9bcah                           ;9c2a
        INC     h                                   ;9c2c
        SBC     a,(hl)                              ;9c2d
        CPL                                         ;9c2e
        SBC     a,(hl)                              ;9c2f
        SCF                                         ;9c30
        SBC     a,(hl)                              ;9c31
        LD      b,b                                 ;9c32
        SBC     a,(hl)                              ;9c33
        LD      d,e                                 ;9c34
        SBC     a,(hl)                              ;9c35
        HALT                                        ;9c36
        SBC     a,(hl)                              ;9c37
        ADD     a,c                                 ;9c38
        SBC     a,(hl)                              ;9c39
        SUB     d                                   ;9c3a
        SBC     a,(hl)                              ;9c3b
        AND     c                                   ;9c3c
        SBC     a,(hl)                              ;9c3d
        XOR     e                                   ;9c3e
        SBC     a,(hl)                              ;9c3f
        CP      d                                   ;9c40
        SBC     a,(hl)                              ;9c41
        RET     nc                                  ;9c42
        SBC     a,(hl)                              ;9c43
        POP     af                                  ;9c44
        SBC     a,(hl)                              ;9c45
        SBC     a,(iy+0x5)                          ;9c46
        SBC     a,a                                 ;9c49
bE_l9c4ah:
        DJNZ    bE_l9bebh                           ;9c4a
        LD      hl,0x319f                           ;9c4c
        SBC     a,a                                 ;9c4f
        LD      c,(hl)                              ;9c50
        SBC     a,a                                 ;9c51
bE_l9c52h:
        INC     h                                   ;9c52
        LD      h,c                                 ;9c53
        DEC     (hl)                                ;9c54
        HALT                                        ;9c55
        AND     e                                   ;9c56
        RET     nz                                  ;9c57
        ADD     hl,bc                               ;9c58
        LD      h,l                                 ;9c59
        SUB     d                                   ;9c5a
        LD      a,(de)                              ;9c5b
        CP      h                                   ;9c5c
        RST     CHRGTR                              ;9c5d
        LD      bc,bE_l8933h+1                      ;9c5e
        SUB     h                                   ;9c61
        DAA                                         ;9c62
        LD      bc,0x4500                           ;9c63
        LD      l,c                                 ;9c66
        LD      (bc),a                              ;9c67
        LD      b,0x2                               ;9c68
        LD      d,(hl)                              ;9c6a
        XOR     e                                   ;9c6b
        DEC     de                                  ;9c6c
        SCF                                         ;9c6d
        SCF                                         ;9c6e
        CP      h                                   ;9c6f
        RES     4,a                                 ;9c70
        INC     (hl)                                ;9c72
        OR      e                                   ;9c73
        LD      (hl),e                              ;9c74
        SUB     h                                   ;9c75
        AND     h                                   ;9c76
        INC     bc                                  ;9c77
        SUB     (hl)                                ;9c78
        NOP                                         ;9c79
        LD      b,c                                 ;9c7a
        LD      bc,0xa448                           ;9c7b
        INC     b                                   ;9c7e
        ADC     a,c                                 ;9c7f
        LD      d,h                                 ;9c80
        LD      l,d                                 ;9c81
        XOR     d                                   ;9c82
        DEC     bc                                  ;9c83
        AND     d                                   ;9c84
        LD      (bc),a                              ;9c85
        SBC     a,b                                 ;9c86
        DEC     bc                                  ;9c87
        LD      hl,0xa2a4                           ;9c88
        SUB     b                                   ;9c8b
        LD      hl,0x203a                           ;9c8c
        INC     de                                  ;9c8f
        LD      c,e                                 ;9c90
        XOR     e                                   ;9c91
        LD      bc,0x84                             ;9c92
        LD      b,c                                 ;9c95
        ADD     a,h                                 ;9c96
        XOR     e                                   ;9c97
        SUB     b                                   ;9c98
        LD      l,b                                 ;9c99
        LD      l,c                                 ;9c9a
        LD      d,(hl)                              ;9c9b
        LD      b,d                                 ;9c9c
        LD      (0x32),a                            ;9c9d
        JR      nc,bE_l9c4ah                        ;9ca0
        SBC     a,d                                 ;9ca2
        XOR     d                                   ;9ca3
        LD      h,a                                 ;9ca4
        INC     hl                                  ;9ca5
        LD      (0xb223),hl                         ;9ca6
        XOR     e                                   ;9ca9
        XOR     h                                   ;9caa
        LD      d,(hl)                              ;9cab
        HALT                                        ;9cac
        LD      b,l                                 ;9cad
        LD      b,b                                 ;9cae
        DJNZ    bE_l9cc2h                           ;9caf
        OR      b                                   ;9cb1
        NOP                                         ;9cb2
        DJNZ    bE_l9cb6h                           ;9cb3
        ADC     a,c                                 ;9cb5
bE_l9cb6h:
        SBC     a,b                                 ;9cb6
        LD      l,b                                 ;9cb7
        RST     GETYPR                              ;9cb8
bE_l9cb9h:
        LD      bc,0x582e                           ;9cb9
        LD      sp,hl                               ;9cbc
        JP      m,0xdebe                            ;9cbd
        LD      b,a                                 ;9cc0
        LD      b,l                                 ;9cc1
bE_l9cc2h:
        LD      b,0x40                              ;9cc2
        NOP                                         ;9cc4
        LD      b,d                                 ;9cc5
        JR      nc,bE_l9ccah                        ;9cc6
        LD      c,b                                 ;9cc8
        INC     d                                   ;9cc9
bE_l9ccah:
        PUSH    de                                  ;9cca
        DEC     c                                   ;9ccb
        LD      e,(hl)                              ;9ccc
        LD      l,(hl)                              ;9ccd
        LD      e,l                                 ;9cce
        LD      bc,0xd6e5                           ;9ccf
        CP      (hl)                                ;9cd2
        PUSH    de                                  ;9cd3
        AND     0xec                                ;9cd4
        JR      c,bE_l9cddh                         ;9cd6
        INC     (hl)                                ;9cd8
        LD      d,e                                 ;9cd9
        LD      b,(hl)                              ;9cda
        LD      d,d                                 ;9cdb
        INC     b                                   ;9cdc
bE_l9cddh:
        LD      b,0x63                              ;9cdd
        XOR     h                                   ;9cdf
        CALL    po,0xf230                           ;9ce0
        LD      l,(hl)                              ;9ce3
        LD      e,0x4e                              ;9ce4
        LD      l,a                                 ;9ce6
        RST     0                                   ;9ce7
        LD      sp,hl                               ;9ce8
        LD      bc,0x342c                           ;9ce9
        PUSH    bc                                  ;9cec
        SBC     a,h                                 ;9ced
        OR      a                                   ;9cee
        PUSH    bc                                  ;9cef
        CALL    nz,0xcba8                           ;9cf0
        ADC     a,c                                 ;9cf3
        RET                                         ;9cf4
        LD      a,h                                 ;9cf5
        CALL    z,bE_sub_998ch                      ;9cf6
        RET     z                                   ;9cf9
bE_l9cfah:
        XOR     h                                   ;9cfa
        CP      d                                   ;9cfb
        INC     hl                                  ;9cfc
        DJNZ    $+105                               ;9cfd
        RET     po                                  ;9cff
        RLA                                         ;9d00
