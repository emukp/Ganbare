bD_l6aa8h:
        LD      de,0x110a                           ;6aa8
        SCF                                         ;6aab
        CPL                                         ;6aac
        LD      c,(hl)                              ;6aad
        JR      nc,bD_l6ae7h                        ;6aae
        SCF                                         ;6ab0
        JR      bD_l6aeah                           ;6ab1
        LD      b,l                                 ;6ab3
        LD      sp,0x3239                           ;6ab4
        LD      b,l                                 ;6ab7
bD_l6ab8h:
        LD      b,l                                 ;6ab8
        DEC     hl                                  ;6ab9
        LD      b,l                                 ;6aba
        EX      af,af'                              ;6abb
        DEC     c                                   ;6abc
        SBC     a,d                                 ;6abd
        DJNZ    bD_l6acdh                           ;6abe
        DJNZ    bD_l6acfh                           ;6ac0
        DJNZ    $+15                                ;6ac2
        DJNZ    bD_l6ad3h                           ;6ac4
        INC     de                                  ;6ac6
        LD      (de),a                              ;6ac7
        INC     de                                  ;6ac8
        LD      (de),a                              ;6ac9
        INC     de                                  ;6aca
        LD      (de),a                              ;6acb
        INC     de                                  ;6acc
bD_l6acdh:
        LD      (de),a                              ;6acd
        LD      a,(bc)                              ;6ace
bD_l6acfh:
        LD      de,0x110a                           ;6acf
        LD      a,(bc)                              ;6ad2
bD_l6ad3h:
        LD      de,0x110a                           ;6ad3
        SCF                                         ;6ad6
bD_l6ad7h:
        RLA                                         ;6ad7
        INC     b                                   ;6ad8
        ADD     hl,de                               ;6ad9
        ADC     a,d                                 ;6ada
        JR      $+57                                ;6adb
        LD      b,l                                 ;6add
        INC     l                                   ;6ade
        LD      c,0xf                               ;6adf
        LD      c,0xf                               ;6ae1
        DEC     hl                                  ;6ae3
        LD      b,l                                 ;6ae4
        EX      af,af'                              ;6ae5
        DEC     c                                   ;6ae6
bD_l6ae7h:
        SBC     a,d                                 ;6ae7
        DJNZ    bD_l6af7h                           ;6ae8
bD_l6aeah:
        DJNZ    bD_l6af9h                           ;6aea
        DJNZ    $+15                                ;6aec
        DJNZ    bD_l6afdh                           ;6aee
        INC     de                                  ;6af0
        LD      (de),a                              ;6af1
        INC     de                                  ;6af2
        LD      (de),a                              ;6af3
        INC     de                                  ;6af4
        LD      (de),a                              ;6af5
        INC     de                                  ;6af6
bD_l6af7h:
        LD      (de),a                              ;6af7
        LD      a,(bc)                              ;6af8
bD_l6af9h:
        LD      de,0x110a                           ;6af9
        LD      a,(bc)                              ;6afc
bD_l6afdh:
        LD      de,0x110a                           ;6afd
        SCF                                         ;6b00
        RLA                                         ;6b01
        INC     b                                   ;6b02
bD_l6b03h:
        SCF                                         ;6b03
        ADD     a,h                                 ;6b04
        JR      bD_l6b3eh                           ;6b05
        LD      b,l                                 ;6b07
        INC     l                                   ;6b08
        INC     b                                   ;6b09
        LD      b,l                                 ;6b0a
        ADD     a,d                                 ;6b0b
        DEC     hl                                  ;6b0c
        LD      b,l                                 ;6b0d
        EX      af,af'                              ;6b0e
        DEC     c                                   ;6b0f
        SBC     a,d                                 ;6b10
        DJNZ    bD_l6b20h                           ;6b11
        DJNZ    bD_l6b22h                           ;6b13
        DJNZ    $+15                                ;6b15
        DJNZ    bD_l6b26h                           ;6b17
        INC     de                                  ;6b19
        LD      (de),a                              ;6b1a
        INC     de                                  ;6b1b
        LD      (de),a                              ;6b1c
        INC     de                                  ;6b1d
        LD      (de),a                              ;6b1e
        INC     de                                  ;6b1f
bD_l6b20h:
        LD      (de),a                              ;6b20
        LD      a,(bc)                              ;6b21
bD_l6b22h:
        LD      de,0x110a                           ;6b22
        LD      a,(bc)                              ;6b25
bD_l6b26h:
        LD      de,0x110a                           ;6b26
        SCF                                         ;6b29
        RLA                                         ;6b2a
        INC     b                                   ;6b2b
        JR      nz,bD_l6ab8h                        ;6b2c
        JR      bD_l6b77h                           ;6b2e
        LD      b,l                                 ;6b30
        INC     l                                   ;6b31
        LD      (0x2221),hl                         ;6b32
        LD      hl,0x472b                           ;6b35
        RLCA                                        ;6b38
        DEC     c                                   ;6b39
        SBC     a,h                                 ;6b3a
        LD      b,a                                 ;6b3b
        DJNZ    bD_l6b4bh                           ;6b3c
bD_l6b3eh:
        DJNZ    bD_l6b4dh                           ;6b3e
        DJNZ    $+15                                ;6b40
        DJNZ    bD_l6b8bh                           ;6b42
        INC     de                                  ;6b44
        LD      (de),a                              ;6b45
        INC     de                                  ;6b46
        LD      (de),a                              ;6b47
        INC     de                                  ;6b48
        LD      (de),a                              ;6b49
        INC     de                                  ;6b4a
bD_l6b4bh:
        LD      b,a                                 ;6b4b
        LD      a,(bc)                              ;6b4c
bD_l6b4dh:
        LD      de,0x110a                           ;6b4d
        LD      a,(bc)                              ;6b50
        LD      de,0x470a                           ;6b51
        LD      c,b                                 ;6b54
        INC     d                                   ;6b55
        LD      c,b                                 ;6b56
        INC     b                                   ;6b57
        ADD     hl,de                               ;6b58
        ADC     a,d                                 ;6b59
        LD      b,a                                 ;6b5a
        LD      c,b                                 ;6b5b
        LD      b,(hl)                              ;6b5c
        LD      d,0x24                              ;6b5d
        INC     hl                                  ;6b5f
        INC     h                                   ;6b60
        INC     hl                                  ;6b61
        DEC     d                                   ;6b62
        LD      c,b                                 ;6b63
        RLCA                                        ;6b64
        DEC     c                                   ;6b65
        ADD     a,c                                 ;6b66
        LD      c,b                                 ;6b67
        RLCA                                        ;6b68
        DEC     c                                   ;6b69
        ADD     a,c                                 ;6b6a
        LD      c,b                                 ;6b6b
        RLCA                                        ;6b6c
        DEC     c                                   ;6b6d
        ADC     a,c                                 ;6b6e
        DAA                                         ;6b6f
        LD      c,d                                 ;6b70
        DAA                                         ;6b71
        LD      c,d                                 ;6b72
        DAA                                         ;6b73
        LD      c,d                                 ;6b74
        DAA                                         ;6b75
        LD      c,d                                 ;6b76
bD_l6b77h:
        LD      c,b                                 ;6b77
        LD      b,0x20                              ;6b78
        ADC     a,c                                 ;6b7a
        LD      b,a                                 ;6b7b
        LD      d,0x22                              ;6b7c
        LD      hl,0x2122                           ;6b7e
        LD      (0x1521),hl                         ;6b81
        JR      $+15                                ;6b84
        SBC     a,b                                 ;6b86
        DAA                                         ;6b87
        JR      z,bD_l6b97h                         ;6b88
        ADD     hl,hl                               ;6b8a
bD_l6b8bh:
        DAA                                         ;6b8b
        LD      c,d                                 ;6b8c
        DAA                                         ;6b8d
        LD      c,d                                 ;6b8e
        INC     d                                   ;6b8f
        CPL                                         ;6b90
        LD      c,(hl)                              ;6b91
        JR      nc,bD_l6ba8h                        ;6b92
        INC     d                                   ;6b94
        LD      b,a                                 ;6b95
        INC     d                                   ;6b96
bD_l6b97h:
        LD      b,(hl)                              ;6b97
        LD      sp,0x3239                           ;6b98
        LD      b,(hl)                              ;6b9b
        LD      b,(hl)                              ;6b9c
        DEC     d                                   ;6b9d
        LD      b,(hl)                              ;6b9e
        JR      bD_l6baeh                           ;6b9f
        ADC     a,d                                 ;6ba1
        DAA                                         ;6ba2
        LD      c,d                                 ;6ba3
        DAA                                         ;6ba4
        LD      c,d                                 ;6ba5
        DAA                                         ;6ba6
        LD      c,d                                 ;6ba7
bD_l6ba8h:
        DAA                                         ;6ba8
        LD      c,d                                 ;6ba9
        LD      c,b                                 ;6baa
        LD      c,b                                 ;6bab
bD_l6bach:
        INC     b                                   ;6bac
        ADD     hl,de                               ;6bad
bD_l6baeh:
        LD      (bc),a                              ;6bae
        LD      b,a                                 ;6baf
        LD      (bc),a                              ;6bb0
        LD      d,0x86                              ;6bb1
        INC     h                                   ;6bb3
        INC     hl                                  ;6bb4
        INC     h                                   ;6bb5
        INC     hl                                  ;6bb6
        DEC     d                                   ;6bb7
        DEC     d                                   ;6bb8
        JR      $+15                                ;6bb9
        ADC     a,d                                 ;6bbb
        DAA                                         ;6bbc
        LD      c,d                                 ;6bbd
        DAA                                         ;6bbe
        LD      c,d                                 ;6bbf
        DAA                                         ;6bc0
        LD      c,d                                 ;6bc1
        DAA                                         ;6bc2
        LD      c,d                                 ;6bc3
        INC     d                                   ;6bc4
        LD      c,b                                 ;6bc5
        INC     b                                   ;6bc6
        JR      nz,$-116                            ;6bc7
        LD      b,a                                 ;6bc9
        INC     d                                   ;6bca
        LD      b,(hl)                              ;6bcb
        LD      d,0x22                              ;6bcc
        LD      hl,0x2122                           ;6bce
        DEC     d                                   ;6bd1
        LD      b,(hl)                              ;6bd2
        JR      bD_l6be2h                           ;6bd3
        ADC     a,h                                 ;6bd5
        DAA                                         ;6bd6
        LD      c,d                                 ;6bd7
        DAA                                         ;6bd8
        LD      c,d                                 ;6bd9
        DAA                                         ;6bda
        LD      c,d                                 ;6bdb
        DAA                                         ;6bdc
        LD      c,d                                 ;6bdd
        LD      c,b                                 ;6bde
        INC     d                                   ;6bdf
        INC     d                                   ;6be0
        LD      c,b                                 ;6be1
bD_l6be2h:
        INC     bc                                  ;6be2
        INC     d                                   ;6be3
        ADD     a,l                                 ;6be4
        LD      b,a                                 ;6be5
        LD      d,0x46                              ;6be6
        LD      b,(hl)                              ;6be8
        LD      d,0x3                               ;6be9
        LD      b,(hl)                              ;6beb
        ADD     a,c                                 ;6bec
        DEC     d                                   ;6bed
        JR      bD_l6bfdh                           ;6bee
        ADC     a,c                                 ;6bf0
        DAA                                         ;6bf1
        LD      c,d                                 ;6bf2
        DAA                                         ;6bf3
        LD      c,d                                 ;6bf4
        DAA                                         ;6bf5
        LD      c,d                                 ;6bf6
        DAA                                         ;6bf7
        LD      c,d                                 ;6bf8
        LD      c,b                                 ;6bf9
        INC     b                                   ;6bfa
        ADD     hl,de                               ;6bfb
        ADC     a,e                                 ;6bfc
bD_l6bfdh:
        LD      b,a                                 ;6bfd
        INC     d                                   ;6bfe
        LD      b,a                                 ;6bff
        LD      d,0x24                              ;6c00
        INC     hl                                  ;6c02
        INC     h                                   ;6c03
        INC     hl                                  ;6c04
        DEC     d                                   ;6c05
        LD      b,(hl)                              ;6c06
        LD      b,a                                 ;6c07
        RLCA                                        ;6c08
        DEC     c                                   ;6c09
        ADD     a,c                                 ;6c0a
        LD      b,a                                 ;6c0b
        RLCA                                        ;6c0c
        DEC     c                                   ;6c0d
        ADD     a,c                                 ;6c0e
        LD      b,a                                 ;6c0f
        RLCA                                        ;6c10
        DEC     c                                   ;6c11
        ADC     a,e                                 ;6c12
        LD      b,a                                 ;6c13
        DAA                                         ;6c14
        LD      c,d                                 ;6c15
        DAA                                         ;6c16
        LD      c,d                                 ;6c17
        DAA                                         ;6c18
        LD      c,d                                 ;6c19
        DAA                                         ;6c1a
        LD      c,d                                 ;6c1b
bD_l6c1ch:
        LD      c,b                                 ;6c1c
        DEC     h                                   ;6c1d
        INC     b                                   ;6c1e
        JR      nz,bD_l6bach                        ;6c1f
        LD      c,h                                 ;6c21
        LD      hl,(0x4948)                         ;6c22
        INC     sp                                  ;6c25
        INC     (hl)                                ;6c26
        INC     sp                                  ;6c27
        INC     (hl)                                ;6c28
        LD      c,l                                 ;6c29
        LD      c,e                                 ;6c2a
        LD      c,b                                 ;6c2b
        RLCA                                        ;6c2c
        DEC     c                                   ;6c2d
        ADD     a,c                                 ;6c2e
        LD      c,b                                 ;6c2f
        RLCA                                        ;6c30
        DEC     c                                   ;6c31
        ADD     a,c                                 ;6c32
        LD      c,b                                 ;6c33
        RLCA                                        ;6c34
        DEC     c                                   ;6c35
        ADC     a,c                                 ;6c36
        DAA                                         ;6c37
        LD      c,d                                 ;6c38
        DAA                                         ;6c39
        LD      c,d                                 ;6c3a
        DAA                                         ;6c3b
        LD      c,d                                 ;6c3c
        DAA                                         ;6c3d
        LD      c,d                                 ;6c3e
        DEC     h                                   ;6c3f
        LD      b,0x20                              ;6c40
        ADC     a,c                                 ;6c42
        LD      c,h                                 ;6c43
        LD      c,c                                 ;6c44
        LD      (0x2221),hl                         ;6c45
        LD      hl,0x2122                           ;6c48
        LD      c,l                                 ;6c4b
        JR      $+15                                ;6c4c
        SBC     a,b                                 ;6c4e
        DAA                                         ;6c4f
        JR      z,bD_l6c5fh                         ;6c50
        ADD     hl,hl                               ;6c52
        DAA                                         ;6c53
        LD      c,d                                 ;6c54
        DAA                                         ;6c55
        LD      c,d                                 ;6c56
        LD      hl,(0x4e2f)                         ;6c57
        JR      nc,bD_l6c86h                        ;6c5a
        LD      hl,(0x2a4c)                         ;6c5c
bD_l6c5fh:
        LD      c,e                                 ;6c5f
        LD      sp,0x3239                           ;6c60
        LD      c,e                                 ;6c63
        LD      c,e                                 ;6c64
        LD      c,l                                 ;6c65
        LD      c,e                                 ;6c66
        JR      bD_l6c76h                           ;6c67
        SBC     a,b                                 ;6c69
        DAA                                         ;6c6a
        LD      c,d                                 ;6c6b
        DAA                                         ;6c6c
        LD      c,d                                 ;6c6d
        DAA                                         ;6c6e
        LD      c,d                                 ;6c6f
        DAA                                         ;6c70
        LD      c,d                                 ;6c71
        LD      hl,(0x1a25)                         ;6c72
        DEC     de                                  ;6c75
bD_l6c76h:
        DEC     de                                  ;6c76
        INC     e                                   ;6c77
        LD      c,h                                 ;6c78
        LD      hl,(0x494b)                         ;6c79
        DEC     e                                   ;6c7c
        LD      e,0x1e                              ;6c7d
bD_l6c7fh:
        RRA                                         ;6c7f
        LD      c,l                                 ;6c80
        LD      c,e                                 ;6c81
        JR      $+15                                ;6c82
        ADC     a,d                                 ;6c84
        DAA                                         ;6c85
bD_l6c86h:
        LD      c,d                                 ;6c86
        DAA                                         ;6c87
        LD      c,d                                 ;6c88
        DAA                                         ;6c89
        LD      c,d                                 ;6c8a
        DAA                                         ;6c8b
        LD      c,d                                 ;6c8c
        LD      hl,(0x425)                          ;6c8d
        JR      nz,bD_l6c1ch                        ;6c90
        LD      c,h                                 ;6c92
        LD      b,a                                 ;6c93
bD_l6c94h:
        LD      c,e                                 ;6c94
        LD      c,c                                 ;6c95
        INC     sp                                  ;6c96
        INC     (hl)                                ;6c97
        INC     sp                                  ;6c98
        INC     (hl)                                ;6c99
        LD      c,l                                 ;6c9a
        LD      b,a                                 ;6c9b
        RLCA                                        ;6c9c
        DEC     c                                   ;6c9d
        ADD     a,c                                 ;6c9e
        LD      b,a                                 ;6c9f
        RLCA                                        ;6ca0
        DEC     c                                   ;6ca1
        ADD     a,c                                 ;6ca2
        LD      b,a                                 ;6ca3
        RLCA                                        ;6ca4
        DEC     c                                   ;6ca5
        SBC     a,d                                 ;6ca6
        LD      b,a                                 ;6ca7
        DAA                                         ;6ca8
        LD      c,d                                 ;6ca9
        DAA                                         ;6caa
        LD      c,d                                 ;6cab
bD_l6cach:
        DAA                                         ;6cac
        LD      c,d                                 ;6cad
        DAA                                         ;6cae
        LD      c,d                                 ;6caf
        LD      c,b                                 ;6cb0
        JR      c,bD_l6cebh                         ;6cb1
        DEC     l                                   ;6cb3
        JR      c,bD_l6ceeh                         ;6cb4
        DEC     l                                   ;6cb6
        JR      c,bD_l6d01h                         ;6cb7
        LD      b,(hl)                              ;6cb9
        LD      b,(hl)                              ;6cba
        DEC     d                                   ;6cbb
        LD      b,(hl)                              ;6cbc
        LD      b,(hl)                              ;6cbd
        DEC     d                                   ;6cbe
        LD      b,(hl)                              ;6cbf
        LD      c,b                                 ;6cc0
        RLCA                                        ;6cc1
        DEC     c                                   ;6cc2
        ADD     a,c                                 ;6cc3
        LD      c,b                                 ;6cc4
        RLCA                                        ;6cc5
        DEC     c                                   ;6cc6
        ADD     a,c                                 ;6cc7
        LD      c,b                                 ;6cc8
        RLCA                                        ;6cc9
        DEC     c                                   ;6cca
        SBC     a,b                                 ;6ccb
        DAA                                         ;6ccc
        LD      c,d                                 ;6ccd
        DAA                                         ;6cce
        LD      c,d                                 ;6ccf
        DAA                                         ;6cd0
        LD      c,d                                 ;6cd1
        DAA                                         ;6cd2
        LD      c,d                                 ;6cd3
        JR      c,bD_l6d03h                         ;6cd4
        JR      c,$+58                              ;6cd6
        DEC     l                                   ;6cd8
        JR      c,bD_l6d13h                         ;6cd9
        DEC     l                                   ;6cdb
        LD      b,(hl)                              ;6cdc
        DEC     d                                   ;6cdd
        LD      b,(hl)                              ;6cde
        LD      b,(hl)                              ;6cdf
        DEC     d                                   ;6ce0
        LD      b,(hl)                              ;6ce1
        LD      b,(hl)                              ;6ce2
        DEC     d                                   ;6ce3
        JR      $+15                                ;6ce4
        ADC     a,h                                 ;6ce6
        DAA                                         ;6ce7
        JR      z,bD_l6cf7h                         ;6ce8
        ADD     hl,hl                               ;6cea
bD_l6cebh:
        DAA                                         ;6ceb
        LD      c,d                                 ;6cec
        DAA                                         ;6ced
bD_l6ceeh:
        LD      c,d                                 ;6cee
        JR      c,bD_l6d20h                         ;6cef
        LD      c,(hl)                              ;6cf1
        JR      nc,bD_l6cf7h                        ;6cf2
        JR      nz,bD_l6c7fh                        ;6cf4
        DEC     l                                   ;6cf6
bD_l6cf7h:
        LD      b,(hl)                              ;6cf7
        LD      sp,0x3239                           ;6cf8
        LD      hl,0x2122                           ;6cfb
        DEC     d                                   ;6cfe
        JR      bD_l6d0eh                           ;6cff
bD_l6d01h:
        ADC     a,c                                 ;6d01
        DAA                                         ;6d02
bD_l6d03h:
        LD      c,d                                 ;6d03
        DAA                                         ;6d04
        LD      c,d                                 ;6d05
        DAA                                         ;6d06
        LD      c,d                                 ;6d07
        DAA                                         ;6d08
        LD      c,d                                 ;6d09
        LD      l,0x6                               ;6d0a
        ADD     hl,de                               ;6d0c
        ADC     a,c                                 ;6d0d
bD_l6d0eh:
        DEC     l                                   ;6d0e
        LD      d,0x24                              ;6d0f
        INC     hl                                  ;6d11
        INC     h                                   ;6d12
bD_l6d13h:
        INC     hl                                  ;6d13
        INC     h                                   ;6d14
        INC     hl                                  ;6d15
        DEC     d                                   ;6d16
        JR      $+15                                ;6d17
        ADC     a,d                                 ;6d19
        DAA                                         ;6d1a
        LD      c,d                                 ;6d1b
        DAA                                         ;6d1c
        LD      c,d                                 ;6d1d
        DAA                                         ;6d1e
        LD      c,d                                 ;6d1f
bD_l6d20h:
        DAA                                         ;6d20
        LD      c,d                                 ;6d21
        JR      c,bD_l6d51h                         ;6d22
        INC     bc                                  ;6d24
        JR      c,bD_l6cach                         ;6d25
        DEC     l                                   ;6d27
        JR      c,bD_l6d71h                         ;6d28
        LD      b,(hl)                              ;6d2a
        DEC     d                                   ;6d2b
        INC     bc                                  ;6d2c
        LD      b,(hl)                              ;6d2d
        ADD     a,e                                 ;6d2e
        DEC     d                                   ;6d2f
        LD      b,(hl)                              ;6d30
        LD      b,a                                 ;6d31
        RLCA                                        ;6d32
        DEC     c                                   ;6d33
        ADD     a,c                                 ;6d34
        LD      b,a                                 ;6d35
        RLCA                                        ;6d36
        DEC     c                                   ;6d37
        ADD     a,c                                 ;6d38
        LD      b,a                                 ;6d39
        RLCA                                        ;6d3a
        DEC     c                                   ;6d3b
        ADC     a,e                                 ;6d3c
        LD      b,a                                 ;6d3d
        DAA                                         ;6d3e
        LD      c,d                                 ;6d3f
        DAA                                         ;6d40
        LD      c,d                                 ;6d41
        DAA                                         ;6d42
        LD      c,d                                 ;6d43
        DAA                                         ;6d44
        LD      c,d                                 ;6d45
        LD      c,b                                 ;6d46
        RLA                                         ;6d47
        INC     bc                                  ;6d48
        SCF                                         ;6d49
        ADD     a,l                                 ;6d4a
        RLA                                         ;6d4b
        SCF                                         ;6d4c
        SCF                                         ;6d4d
        LD      c,b                                 ;6d4e
        INC     l                                   ;6d4f
        INC     bc                                  ;6d50
bD_l6d51h:
        LD      b,l                                 ;6d51
        ADD     a,h                                 ;6d52
        INC     l                                   ;6d53
        LD      b,l                                 ;6d54
        LD      b,l                                 ;6d55
        LD      c,b                                 ;6d56
        RLCA                                        ;6d57
        DEC     c                                   ;6d58
        ADD     a,c                                 ;6d59
        LD      c,b                                 ;6d5a
        RLCA                                        ;6d5b
        DEC     c                                   ;6d5c
        ADD     a,c                                 ;6d5d
        LD      c,b                                 ;6d5e
        RLCA                                        ;6d5f
        DEC     c                                   ;6d60
        ADC     a,d                                 ;6d61
        DAA                                         ;6d62
        LD      c,d                                 ;6d63
        DAA                                         ;6d64
        LD      c,d                                 ;6d65
        DAA                                         ;6d66
        LD      c,d                                 ;6d67
        DAA                                         ;6d68
        LD      c,d                                 ;6d69
        SCF                                         ;6d6a
        RLA                                         ;6d6b
        INC     b                                   ;6d6c
        ADD     hl,de                               ;6d6d
        ADC     a,d                                 ;6d6e
        JR      bD_l6da8h                           ;6d6f
bD_l6d71h:
        LD      b,l                                 ;6d71
        INC     l                                   ;6d72
        LD      c,0xf                               ;6d73
        LD      c,0xf                               ;6d75
        DEC     hl                                  ;6d77
        LD      b,l                                 ;6d78
        JR      bD_l6d88h                           ;6d79
        SBC     a,b                                 ;6d7b
        DAA                                         ;6d7c
        LD      c,d                                 ;6d7d
        DAA                                         ;6d7e
        LD      c,d                                 ;6d7f
        DAA                                         ;6d80
        LD      c,d                                 ;6d81
        DAA                                         ;6d82
        LD      c,d                                 ;6d83
        SCF                                         ;6d84
        RLA                                         ;6d85
        SCF                                         ;6d86
        RLA                                         ;6d87
bD_l6d88h:
        LD      a,(de)                              ;6d88
        DEC     de                                  ;6d89
        JR      bD_l6dc3h                           ;6d8a
        LD      b,l                                 ;6d8c
        INC     l                                   ;6d8d
        LD      b,l                                 ;6d8e
        INC     l                                   ;6d8f
        DEC     e                                   ;6d90
        LD      e,0x2b                              ;6d91
        LD      b,l                                 ;6d93
        JR      $+15                                ;6d94
        SBC     a,b                                 ;6d96
        DAA                                         ;6d97
        JR      z,bD_l6da7h                         ;6d98
        ADD     hl,hl                               ;6d9a
        DAA                                         ;6d9b
        LD      c,d                                 ;6d9c
        DAA                                         ;6d9d
        LD      c,d                                 ;6d9e
        SCF                                         ;6d9f
        CPL                                         ;6da0
        LD      c,(hl)                              ;6da1
        JR      nc,bD_l6ddbh                        ;6da2
        SCF                                         ;6da4
        JR      bD_l6ddeh                           ;6da5
bD_l6da7h:
        LD      b,l                                 ;6da7
bD_l6da8h:
        LD      sp,0x3239                           ;6da8
        LD      b,l                                 ;6dab
        LD      b,l                                 ;6dac
        DEC     hl                                  ;6dad
        LD      b,l                                 ;6dae
        JR      bD_l6dbeh                           ;6daf
        ADC     a,c                                 ;6db1
        DAA                                         ;6db2
        LD      c,d                                 ;6db3
        DAA                                         ;6db4
        LD      c,d                                 ;6db5
        DAA                                         ;6db6
        LD      c,d                                 ;6db7
        DAA                                         ;6db8
        LD      c,d                                 ;6db9
        RLA                                         ;6dba
        LD      b,0x20                              ;6dbb
        ADC     a,c                                 ;6dbd
