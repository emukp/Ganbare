bF_lba75h:
        JR      nz,bF_lba14h                        ;ba75
        SBC     a,b                                 ;ba77
        SBC     a,b                                 ;ba78
        LD      h,b                                 ;ba79
        LD      (hl),a                              ;ba7a
        CP      h                                   ;ba7b
        LD      e,e                                 ;ba7c
        JR      nz,$+25                             ;ba7d
bF_lba7fh:
        LD      b,b                                 ;ba7f
        LD      e,(hl)                              ;ba80
        LD      b,b                                 ;ba81
        SBC     a,b                                 ;ba82
        LD      c,b                                 ;ba83
        ADC     a,(hl)                              ;ba84
        JR      nc,bF_lba25h                        ;ba85
        JR      nc,bF_lba17h                        ;ba87
        LD      b,b                                 ;ba89
        LD      h,a                                 ;ba8a
        SBC     a,b                                 ;ba8b
bF_lba8ch:
        DAA                                         ;ba8c
        ADD     a,b                                 ;ba8d
        LD      e,l                                 ;ba8e
        RET     c                                   ;ba8f
        LD      a,(de)                              ;ba90
        XOR     b                                   ;ba91
        LD      a,b                                 ;ba92
        DJNZ    bF_lbaech                           ;ba93
        JR      nc,$+80                             ;ba95
        RET     po                                  ;ba97
        SBC     a,a                                 ;ba98
        RET     pe                                  ;ba99
        LD      e,(hl)                              ;ba9a
bF_lba9bh:
        LD      b,b                                 ;ba9b
        LD      h,a                                 ;ba9c
bF_lba9dh:
        LD      b,b                                 ;ba9d
bF_lba9eh:
        LD      c,(hl)                              ;ba9e
bF_lba9fh:
        LD      d,b                                 ;ba9f
bF_lbaa0h:
        LD      e,(hl)                              ;baa0
bF_lbaa1h:
        LD      e,b                                 ;baa1
        ADC     a,c                                 ;baa2
        LD      b,b                                 ;baa3
        LD      d,a                                 ;baa4
        RET     c                                   ;baa5
        LD      e,b                                 ;baa6
        LD      b,b                                 ;baa7
        ADD     a,a                                 ;baa8
        SBC     a,b                                 ;baa9
        LD      l,l                                 ;baaa
        DJNZ    bF_lba34h                           ;baab
        LD      a,b                                 ;baad
        SBC     a,(hl)                              ;baae
        LD      b,b                                 ;baaf
        SBC     a,(hl)                              ;bab0
        LD      d,b                                 ;bab1
        SBC     a,d                                 ;bab2
        RET     nz                                  ;bab3
        SCF                                         ;bab4
        RET     pe                                  ;bab5
        DAA                                         ;bab6
        JR      nc,bF_lbb34h                        ;bab7
        ADC     a,b                                 ;bab9
        ADC     a,l                                 ;baba
        LD      d,b                                 ;babb
bF_lbabch:
        JR      bF_lba4eh                           ;babc
        LD      (hl),a                              ;babe
        CALL    z,0x501c                            ;babf
        ADD     a,a                                 ;bac2
        ADC     a,b                                 ;bac3
        DAA                                         ;bac4
        JR      nz,$+122                            ;bac5
        XOR     b                                   ;bac7
        LD      l,0x50                              ;bac8
        LD      e,0x80                              ;baca
        LD      l,0x80                              ;bacc
        DAA                                         ;bace
        RET     pe                                  ;bacf
        DEC     l                                   ;bad0
        LD      b,b                                 ;bad1
        LD      e,b                                 ;bad2
        SUB     b                                   ;bad3
        SUB     a                                   ;bad4
        RET     z                                   ;bad5
        LD      d,a                                 ;bad6
        LD      b,b                                 ;bad7
        DEC     hl                                  ;bad8
        AND     b                                   ;bad9
        ADC     a,c                                 ;bada
        RET     z                                   ;badb
        LD      l,(hl)                              ;badc
        LD      d,b                                 ;badd
        LD      l,(hl)                              ;bade
        LD      h,b                                 ;badf
        LD      l,(hl)                              ;bae0
        LD      (hl),b                              ;bae1
        SUB     a                                   ;bae2
        CALL    c,0x3077                            ;bae3
        LD      e,0x90                              ;bae6
        LD      l,0x98                              ;bae8
        LD      c,e                                 ;baea
        ADD     a,b                                 ;baeb
bF_lbaech:
        LD      e,(hl)                              ;baec
        ADC     a,b                                 ;baed
        SBC     a,(hl)                              ;baee
        LD      d,b                                 ;baef
        ADC     a,(hl)                              ;baf0
bF_lbaf1h:
        LD      h,b                                 ;baf1
        SBC     a,(hl)                              ;baf2
        LD      h,b                                 ;baf3
        SUB     a                                   ;baf4
        RET     c                                   ;baf5
        INC     a                                   ;baf6
        LD      b,b                                 ;baf7
        SBC     a,b                                 ;baf8
        LD      h,b                                 ;baf9
        DAA                                         ;bafa
        XOR     b                                   ;bafb
        LD      a,b                                 ;bafc
        JR      nc,bF_lbb26h                        ;bafd
        LD      d,b                                 ;baff
        LD      a,(hl)                              ;bb00
        ADC     a,b                                 ;bb01
        LD      a,(hl)                              ;bb02
        JR      nz,bF_lba8ch                        ;bb03
        JR      nz,bF_lbb32h                        ;bb05
        RET     z                                   ;bb07
bF_lbb08h:
        LD      a,(hl)                              ;bb08
        AND     b                                   ;bb09
        LD      a,(hl)                              ;bb0a
        OR      b                                   ;bb0b
        LD      e,(hl)                              ;bb0c
        RET     nz                                  ;bb0d
        LD      a,h                                 ;bb0e
        RET     z                                   ;bb0f
        LD      a,(hl)                              ;bb10
        JR      nz,bF_lbb91h                        ;bb11
        JR      nc,bF_lbb6ch                        ;bb13
        SUB     b                                   ;bb15
        RRA                                         ;bb16
        CALL    c,0x204b                            ;bb17
        ADD     a,a                                 ;bb1a
        LD      a,b                                 ;bb1b
        ADD     a,a                                 ;bb1c
        LD      b,b                                 ;bb1d
        DEC     e                                   ;bb1e
        RET     z                                   ;bb1f
        ADD     a,a                                 ;bb20
        JR      nz,bF_lbba1h                        ;bb21
        ADD     a,b                                 ;bb23
        ADC     a,(hl)                              ;bb24
        ADD     a,b                                 ;bb25
bF_lbb26h:
        LD      a,(hl)                              ;bb26
        SBC     a,b                                 ;bb27
        ADD     hl,de                               ;bb28
        JR      nc,bF_lbb99h                        ;bb29
        OR      b                                   ;bb2b
        LD      l,(hl)                              ;bb2c
        RET     nz                                  ;bb2d
        DAA                                         ;bb2e
        RET     pe                                  ;bb2f
        ADD     a,a                                 ;bb30
        ADD     a,b                                 ;bb31
bF_lbb32h:
        LD      e,(hl)                              ;bb32
        CP      b                                   ;bb33
bF_lbb34h:
        LD      a,0x20                              ;bb34
bF_lbb36h:
        ADC     a,(hl)                              ;bb36
        LD      b,b                                 ;bb37
        INC     e                                   ;bb38
        AND     b                                   ;bb39
        SUB     a                                   ;bb3a
        RET     z                                   ;bb3b
        LD      h,a                                 ;bb3c
        LD      (hl),b                              ;bb3d
bF_lbb3eh:
        JR      c,bF_lbb08h                         ;bb3e
        ADD     a,a                                 ;bb40
        LD      l,b                                 ;bb41
        SUB     a                                   ;bb42
        ADD     a,b                                 ;bb43
        LD      c,h                                 ;bb44
        RET     z                                   ;bb45
        LD      l,(hl)                              ;bb46
        LD      b,b                                 ;bb47
        LD      a,(hl)                              ;bb48
        LD      b,b                                 ;bb49
        ADC     a,(hl)                              ;bb4a
        LD      b,b                                 ;bb4b
        LD      h,a                                 ;bb4c
        ADC     a,h                                 ;bb4d
        SCF                                         ;bb4e
        ADC     a,b                                 ;bb4f
        LD      h,a                                 ;bb50
        JR      nz,bF_lbb7bh                        ;bb51
        OR      b                                   ;bb53
        ADC     a,(hl)                              ;bb54
        RET     nz                                  ;bb55
        SBC     a,(hl)                              ;bb56
        RET     z                                   ;bb57
        SCF                                         ;bb58
        XOR     b                                   ;bb59
        ADD     a,a                                 ;bb5a
        LD      d,b                                 ;bb5b
        LD      e,l                                 ;bb5c
        CP      b                                   ;bb5d
        SCF                                         ;bb5e
        LD      e,b                                 ;bb5f
        RLA                                         ;bb60
        DJNZ    bF_lbaf1h                           ;bb61
        LD      b,b                                 ;bb63
        LD      c,h                                 ;bb64
        SBC     a,b                                 ;bb65
bF_lbb66h:
        SUB     a                                   ;bb66
        JR      nc,$+97                             ;bb67
        RET     z                                   ;bb69
        LD      d,a                                 ;bb6a
        LD      (hl),b                              ;bb6b
bF_lbb6ch:
        JR      z,bF_lbb36h                         ;bb6c
        LD      d,a                                 ;bb6e
        JR      nc,bF_lbbafh                        ;bb6f
        OR      b                                   ;bb71
        LD      c,(hl)                              ;bb72
        OR      b                                   ;bb73
        LD      c,(hl)                              ;bb74
        RET     z                                   ;bb75
        SBC     a,h                                 ;bb76
        DJNZ    bF_lbbc1h                           ;bb77
        JR      nc,$+41                             ;bb79
bF_lbb7bh:
        CALL    z,0x3047                            ;bb7b
        LD      c,(hl)                              ;bb7e
        SBC     a,b                                 ;bb7f
        SUB     a                                   ;bb80
        LD      (hl),b                              ;bb81
        ADD     hl,de                               ;bb82
        RET     z                                   ;bb83
        JR      z,bF_lbbb6h                         ;bb84
bF_lbb86h:
        LD      (hl),a                              ;bb86
        LD      l,b                                 ;bb87
        LD      b,a                                 ;bb88
bF_lbb89h:
        RET     z                                   ;bb89
        LD      d,a                                 ;bb8a
        JR      z,bF_lbbbah                         ;bb8b
        JR      nc,bF_lbb26h                        ;bb8d
        LD      a,b                                 ;bb8f
        LD      d,a                                 ;bb90
bF_lbb91h:
        SBC     a,b                                 ;bb91
        RLA                                         ;bb92
        JR      nz,bF_lbbf1h                        ;bb93
        JR      c,bF_lbbefh                         ;bb95
        JR      nc,bF_lbbf0h                        ;bb97
bF_lbb99h:
        RET     c                                   ;bb99
        JR      z,bF_lbc14h                         ;bb9a
        LD      e,(hl)                              ;bb9c
        LD      b,b                                 ;bb9d
        SBC     a,d                                 ;bb9e
        LD      c,b                                 ;bb9f
        RLA                                         ;bba0
bF_lbba1h:
        JR      nz,bF_lbc0ch                        ;bba1
        CP      b                                   ;bba3
        LD      d,a                                 ;bba4
        JR      z,bF_lbb3eh                         ;bba5
bF_lbba7h:
        LD      h,b                                 ;bba7
        DEC     hl                                  ;bba8
        RET     z                                   ;bba9
        ADD     a,a                                 ;bbaa
        ADC     a,b                                 ;bbab
        ADC     a,c                                 ;bbac
        LD      a,b                                 ;bbad
        ADD     a,a                                 ;bbae
bF_lbbafh:
        LD      e,b                                 ;bbaf
        LD      d,a                                 ;bbb0
        LD      a,b                                 ;bbb1
        ADD     a,a                                 ;bbb2
        LD      d,b                                 ;bbb3
        ADC     a,b                                 ;bbb4
        RET     z                                   ;bbb5
bF_lbbb6h:
        JR      bF_lbbf8h                           ;bbb6
        DAA                                         ;bbb8
        RET     pe                                  ;bbb9
bF_lbbbah:
        SBC     a,l                                 ;bbba
        LD      b,b                                 ;bbbb
        LD      l,b                                 ;bbbc
        ADD     a,b                                 ;bbbd
        JR      z,$-70                              ;bbbe
        LD      h,a                                 ;bbc0
bF_lbbc1h:
        SBC     a,b                                 ;bbc1
        ADD     a,a                                 ;bbc2
        RET     pe                                  ;bbc3
        LD      d,a                                 ;bbc4
        RET     z                                   ;bbc5
        LD      c,b                                 ;bbc6
        JR      nc,bF_lbb66h                        ;bbc7
        CP      b                                   ;bbc9
        ADD     a,a                                 ;bbca
        SUB     b                                   ;bbcb
        LD      a,(de)                              ;bbcc
        RET     c                                   ;bbcd
        DAA                                         ;bbce
        LD      c,b                                 ;bbcf
        NOP                                         ;bbd0
        EX      af,af'                              ;bbd1
        DEC     de                                  ;bbd2
        JR      nz,bF_lbb6ch                        ;bbd3
        LD      e,b                                 ;bbd5
        LD      l,(hl)                              ;bbd6
        LD      b,b                                 ;bbd7
        LD      a,(hl)                              ;bbd8
        LD      b,b                                 ;bbd9
        ADC     a,(hl)                              ;bbda
        LD      c,b                                 ;bbdb
        JR      $+34                                ;bbdc
        ADD     hl,hl                               ;bbde
        RET     c                                   ;bbdf
        DAA                                         ;bbe0
        RET     po                                  ;bbe1
        LD      c,(hl)                              ;bbe2
        RET     po                                  ;bbe3
        LD      e,(hl)                              ;bbe4
        RET     po                                  ;bbe5
        LD      l,(hl)                              ;bbe6
        CALL    pe,0x3088                           ;bbe7
        LD      b,a                                 ;bbea
        RET     z                                   ;bbeb
        ADC     a,(hl)                              ;bbec
        LD      h,b                                 ;bbed
        ADC     a,(hl)                              ;bbee
bF_lbbefh:
        LD      (hl),b                              ;bbef
bF_lbbf0h:
        ADC     a,d                                 ;bbf0
bF_lbbf1h:
        ADC     a,b                                 ;bbf1
        SUB     a                                   ;bbf2
        JR      nc,bF_lbc5dh                        ;bbf3
        ADD     a,b                                 ;bbf5
        ADD     hl,de                               ;bbf6
        RET     c                                   ;bbf7
bF_lbbf8h:
        LD      a,(hl)                              ;bbf8
        JR      nz,bF_lbb89h                        ;bbf9
        JR      nz,$+128                            ;bbfb
        JR      nc,bF_lbb86h                        ;bbfd
        CP      b                                   ;bbff
        SCF                                         ;bc00
        JR      nz,bF_lbc32h                        ;bc01
        ADD     a,b                                 ;bc03
        ADC     a,(hl)                              ;bc04
        RET     nz                                  ;bc05
        ADC     a,l                                 ;bc06
        RET     c                                   ;bc07
        LD      e,c                                 ;bc08
        JR      nz,bF_lbc52h                        ;bc09
        XOR     b                                   ;bc0b
bF_lbc0ch:
        DAA                                         ;bc0c
        DJNZ    bF_lbba7h                           ;bc0d
        SBC     a,b                                 ;bc0f
        SBC     a,e                                 ;bc10
        JR      nc,bF_lbc4bh                        ;bc11
        LD      h,b                                 ;bc13
bF_lbc14h:
        SUB     a                                   ;bc14
        CALL    c,bF_sub_bc5ch                      ;bc15
        LD      l,h                                 ;bc18
        CP      h                                   ;bc19
        LD      a,a                                 ;bc1a
        CP      h                                   ;bc1b
        SUB     d                                   ;bc1c
        CP      h                                   ;bc1d
        AND     (hl)                                ;bc1e
        CP      h                                   ;bc1f
        CP      b                                   ;bc20
        CP      h                                   ;bc21
        JP      z,0xdcbc                            ;bc22
        CP      h                                   ;bc25
        XOR     0xbc                                ;bc26
        NOP                                         ;bc28
        CP      l                                   ;bc29
        INC     de                                  ;bc2a
        CP      l                                   ;bc2b
        DEC     h                                   ;bc2c
        CP      l                                   ;bc2d
        LD      (hl),0xbd                           ;bc2e
        LD      c,c                                 ;bc30
        CP      l                                   ;bc31
bF_lbc32h:
        LD      e,h                                 ;bc32
        CP      l                                   ;bc33
        LD      l,a                                 ;bc34
        CP      l                                   ;bc35
        ADD     a,e                                 ;bc36
        CP      l                                   ;bc37
        SUB     a                                   ;bc38
        CP      l                                   ;bc39
        XOR     b                                   ;bc3a
        CP      l                                   ;bc3b
        CP      d                                   ;bc3c
        CP      l                                   ;bc3d
        CALL    0xe0bd                              ;bc3e
        CP      l                                   ;bc41
        RET     p                                   ;bc42
        CP      l                                   ;bc43
        LD      (bc),a                              ;bc44
        CP      (hl)                                ;bc45
        LD      d,0xbe                              ;bc46
        ADD     hl,hl                               ;bc48
        CP      (hl)                                ;bc49
        DEC     a                                   ;bc4a
bF_lbc4bh:
        CP      (hl)                                ;bc4b
        LD      c,a                                 ;bc4c
        CP      (hl)                                ;bc4d
        LD      h,e                                 ;bc4e
        CP      (hl)                                ;bc4f
        LD      a,d                                 ;bc50
        CP      (hl)                                ;bc51
bF_lbc52h:
        ADC     a,l                                 ;bc52
        CP      (hl)                                ;bc53
        AND     h                                   ;bc54
        CP      (hl)                                ;bc55
        CP      c                                   ;bc56
        CP      (hl)                                ;bc57
        CALL    z,0xe0be                            ;bc58
        CP      (hl)                                ;bc5b
bF_sub_bc5ch:
        LD      c,(hl)                              ;bc5c
bF_lbc5dh:
        INC     a                                   ;bc5d
        LD      h,e                                 ;bc5e
        LD      c,c                                 ;bc5f
        NOP                                         ;bc60
        LD      c,l                                 ;bc61
        LD      e,l                                 ;bc62
        LD      c,b                                 ;bc63
        NOP                                         ;bc64
        ADD     hl,sp                               ;bc65
        LD      b,d                                 ;bc66
        DEC     sp                                  ;bc67
        LD      d,(hl)                              ;bc68
        LD      c,h                                 ;bc69
        LD      h,e                                 ;bc6a
        RST     KEYINT                              ;bc6b
        LD      b,c                                 ;bc6c
        DEC     (hl)                                ;bc6d
        LD      e,(hl)                              ;bc6e
        LD      b,d                                 ;bc6f
        NOP                                         ;bc70
        LD      c,h                                 ;bc71
        LD      h,e                                 ;bc72
        LD      e,l                                 ;bc73
        LD      d,a                                 ;bc74
        LD      b,h                                 ;bc75
        NOP                                         ;bc76
        DEC     sp                                  ;bc77
        LD      h,e                                 ;bc78
        LD      h,c                                 ;bc79
        LD      (0x324d),a                          ;bc7a
        LD      d,e                                 ;bc7d
        RST     KEYINT                              ;bc7e
        INC     (hl)                                ;bc7f
        LD      c,(hl)                              ;bc80
        LD      d,d                                 ;bc81
        LD      d,a                                 ;bc82
        JR      nc,bF_lbcddh                        ;bc83
        LD      b,e                                 ;bc85
        NOP                                         ;bc86
        DEC     sp                                  ;bc87
        LD      h,e                                 ;bc88
        LD      h,c                                 ;bc89
        LD      (0x324d),a                          ;bc8a
        NOP                                         ;bc8d
        LD      c,e                                 ;bc8e
        INC     sp                                  ;bc8f
        LD      e,b                                 ;bc90
        RST     KEYINT                              ;bc91
        LD      b,a                                 ;bc92
        ADD     hl,sp                               ;bc93
        LD      b,l                                 ;bc94
        NOP                                         ;bc95
        ADD     hl,sp                               ;bc96
        LD      c,c                                 ;bc97
        LD      h,e                                 ;bc98
        LD      e,l                                 ;bc99
        NOP                                         ;bc9a
        LD      c,e                                 ;bc9b
        LD      h,e                                 ;bc9c
        CCF                                         ;bc9d
        LD      b,l                                 ;bc9e
        NOP                                         ;bc9f
        DEC     sp                                  ;bca0
        LD      e,l                                 ;bca1
        DEC     sp                                  ;bca2
        LD      h,e                                 ;bca3
        LD      h,b                                 ;bca4
        RST     KEYINT                              ;bca5
        LD      b,c                                 ;bca6
        LD      (hl),0x63                           ;bca7
        LD      c,c                                 ;bca9
        NOP                                         ;bcaa
        INC     a                                   ;bcab
        LD      b,d                                 ;bcac
        LD      h,(hl)                              ;bcad
        DEC     sp                                  ;bcae
        LD      h,e                                 ;bcaf
        LD      h,0x3f                              ;bcb0
        LD      h,e                                 ;bcb2
        NOP                                         ;bcb3
        LD      d,h                                 ;bcb4
        JR      c,bF_lbd15h                         ;bcb5
        RST     KEYINT                              ;bcb7
        CCF                                         ;bcb8
        LD      e,l                                 ;bcb9
        LD      c,c                                 ;bcba
        LD      h,e                                 ;bcbb
        LD      a,(0x533a)                          ;bcbc
        LD      c,(hl)                              ;bcbf
        NOP                                         ;bcc0
        LD      sp,0x3b48                           ;bcc1
        DEC     sp                                  ;bcc4
        NOP                                         ;bcc5
        LD      (0x314e),a                          ;bcc6
        RST     KEYINT                              ;bcc9
        DEC     (hl)                                ;bcca
        LD      sp,0x6349                           ;bccb
        LD      d,(hl)                              ;bcce
        ADD     hl,sp                               ;bccf
        LD      (0x3239),a                          ;bcd0
        NOP                                         ;bcd3
        LD      e,e                                 ;bcd4
        DEC     (hl)                                ;bcd5
        LD      h,e                                 ;bcd6
        LD      c,l                                 ;bcd7
        LD      h,e                                 ;bcd8
        ADD     hl,sp                               ;bcd9
        LD      (0x44ff),a                          ;bcda
bF_lbcddh:
        LD      e,l                                 ;bcdd
        LD      b,d                                 ;bcde
        LD      e,(hl)                              ;bcdf
        CCF                                         ;bce0
        LD      e,(hl)                              ;bce1
        LD      b,d                                 ;bce2
        NOP                                         ;bce3
        JR      nc,bF_lbd17h                        ;bce4
        LD      b,e                                 ;bce6
        LD      h,e                                 ;bce7
        LD      e,b                                 ;bce8
        NOP                                         ;bce9
        CCF                                         ;bcea
        LD      h,e                                 ;bceb
        LD      sp,0x54ff                           ;bcec
        JR      c,$+75                              ;bcef
        LD      h,e                                 ;bcf1
        NOP                                         ;bcf2
        LD      d,h                                 ;bcf3
        SCF                                         ;bcf4
        LD      c,l                                 ;bcf5
        LD      b,e                                 ;bcf6
        LD      h,e                                 ;bcf7
        NOP                                         ;bcf8
        INC     (hl)                                ;bcf9
        SCF                                         ;bcfa
        DEC     (hl)                                ;bcfb
        LD      h,e                                 ;bcfc
        JR      nc,$+90                             ;bcfd
        RST     KEYINT                              ;bcff
        LD      b,c                                 ;bd00
        LD      (hl),0x63                           ;bd01
        LD      c,c                                 ;bd03
        NOP                                         ;bd04
        INC     a                                   ;bd05
        LD      b,d                                 ;bd06
        LD      h,(hl)                              ;bd07
        DEC     sp                                  ;bd08
        LD      h,e                                 ;bd09
        LD      hl,0x3f23                           ;bd0a
        LD      h,e                                 ;bd0d
        NOP                                         ;bd0e
        LD      a,0x59                              ;bd0f
        LD      e,(hl)                              ;bd11
        RST     KEYINT                              ;bd12
        CCF                                         ;bd13
        LD      c,d                                 ;bd14
bF_lbd15h:
        LD      h,e                                 ;bd15
        LD      c,c                                 ;bd16
bF_lbd17h:
        NOP                                         ;bd17
        LD      c,a                                 ;bd18
        LD      b,b                                 ;bd19
        INC     a                                   ;bd1a
        LD      h,e                                 ;bd1b
        LD      e,c                                 ;bd1c
        NOP                                         ;bd1d
        LD      d,l                                 ;bd1e
        LD      c,c                                 ;bd1f
        NOP                                         ;bd20
        LD      b,h                                 ;bd21
        LD      a,(0xff38)                          ;bd22
        LD      c,b                                 ;bd25
        LD      e,(hl)                              ;bd26
        LD      b,d                                 ;bd27
        LD      (hl),0x3f                           ;bd28
        LD      (hl),0x3f                           ;bd2a
        NOP                                         ;bd2c
        JR      nc,bF_lbd95h                        ;bd2d
        ADD     hl,sp                               ;bd2f
        LD      d,a                                 ;bd30
        LD      e,a                                 ;bd31
        ADD     hl,sp                               ;bd32
        LD      d,a                                 ;bd33
        LD      e,a                                 ;bd34
        RST     KEYINT                              ;bd35
        LD      b,e                                 ;bd36
        LD      (hl),0x51                           ;bd37
        LD      (hl),0x48                           ;bd39
        NOP                                         ;bd3b
        INC     a                                   ;bd3c
        LD      b,d                                 ;bd3d
        LD      h,(hl)                              ;bd3e
        DEC     sp                                  ;bd3f
        LD      h,e                                 ;bd40
        SCF                                         ;bd41
        LD      d,a                                 ;bd42
        JR      nc,bF_lbd45h                        ;bd43
bF_lbd45h:
        DEC     sp                                  ;bd45
        LD      h,e                                 ;bd46
        LD      e,a                                 ;bd47
        RST     KEYINT                              ;bd48
        LD      a,(0x3d35)                          ;bd49
        LD      b,d                                 ;bd4c
        NOP                                         ;bd4d
        LD      a,(0x3d35)                          ;bd4e
        LD      b,d                                 ;bd51
        NOP                                         ;bd52
        LD      d,d                                 ;bd53
        LD      d,d                                 ;bd54
        LD      sp,0x5a                             ;bd55
        INC     a                                   ;bd58
        LD      e,b                                 ;bd59
        LD      d,c                                 ;bd5a
        RST     KEYINT                              ;bd5b
        LD      b,c                                 ;bd5c
        LD      (hl),0x63                           ;bd5d
        LD      c,c                                 ;bd5f
        NOP                                         ;bd60
        INC     a                                   ;bd61
        LD      b,d                                 ;bd62
        LD      h,(hl)                              ;bd63
        DEC     sp                                  ;bd64
        LD      h,e                                 ;bd65
        LD      (0x3f20),hl                         ;bd66
        LD      h,e                                 ;bd69
        NOP                                         ;bd6a
        LD      b,e                                 ;bd6b
        INC     (hl)                                ;bd6c
        LD      e,(hl)                              ;bd6d
        RST     KEYINT                              ;bd6e
        LD      d,e                                 ;bd6f
        LD      e,c                                 ;bd70
        LD      c,c                                 ;bd71
        LD      h,e                                 ;bd72
        NOP                                         ;bd73
        LD      d,e                                 ;bd74
        LD      e,b                                 ;bd75
        LD      c,l                                 ;bd76
        LD      b,e                                 ;bd77
        LD      h,e                                 ;bd78
        NOP                                         ;bd79
        JR      nc,bF_lbdb7h                        ;bd7a
        LD      h,e                                 ;bd7c
        DEC     (hl)                                ;bd7d
        LD      h,e                                 ;bd7e
        LD      b,d                                 ;bd7f
        LD      h,e                                 ;bd80
        LD      e,b                                 ;bd81
        RST     KEYINT                              ;bd82
        ADD     hl,sp                               ;bd83
        LD      b,h                                 ;bd84
        LD      c,a                                 ;bd85
        LD      c,b                                 ;bd86
        NOP                                         ;bd87
        LD      e,e                                 ;bd88
        LD      h,(hl)                              ;bd89
        LD      c,e                                 ;bd8a
        LD      h,d                                 ;bd8b
        LD      e,d                                 ;bd8c
        NOP                                         ;bd8d
        DEC     a                                   ;bd8e
        LD      h,e                                 ;bd8f
        LD      e,l                                 ;bd90
        LD      d,c                                 ;bd91
        LD      e,l                                 ;bd92
        SCF                                         ;bd93
        LD      d,a                                 ;bd94
