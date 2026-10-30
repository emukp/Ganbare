        DEFB    0xed                                ;bc99
        RET     m                                   ;bc9a
        EX      (sp),hl                             ;bc9b
        RET     m                                   ;bc9c
        EX      (sp),hl                             ;bc9d
        RET     m                                   ;bc9e
        DI                                          ;bc9f
        RET     m                                   ;bca0
        DI                                          ;bca1
        RET     m                                   ;bca2
        POP     af                                  ;bca3
        DI                                          ;bca4
        POP     af                                  ;bca5
        DI                                          ;bca6
        POP     af                                  ;bca7
        INC     bc                                  ;bca8
        POP     af                                  ;bca9
        INC     bc                                  ;bcaa
        POP     af                                  ;bcab
        CP      0xf1                                ;bcac
        CP      0xf1                                ;bcae
        XOR     0xf1                                ;bcb0
        XOR     0xe1                                ;bcb2
        LD      sp,hl                               ;bcb4
        POP     hl                                  ;bcb5
        LD      sp,hl                               ;bcb6
        POP     af                                  ;bcb7
        LD      sp,hl                               ;bcb8
        POP     af                                  ;bcb9
        LD      sp,hl                               ;bcba
        POP     af                                  ;bcbb
        LD      sp,hl                               ;bcbc
        XOR     0xf1                                ;bcbd
        XOR     0xf1                                ;bcbf
        POP     de                                  ;bcc1
        LD      sp,hl                               ;bcc2
        POP     hl                                  ;bcc3
        LD      sp,hl                               ;bcc4
        POP     hl                                  ;bcc5
        LD      sp,hl                               ;bcc6
        POP     af                                  ;bcc7
        LD      sp,hl                               ;bcc8
        POP     af                                  ;bcc9
        LD      sp,hl                               ;bcca
        POP     af                                  ;bccb
        LD      sp,hl                               ;bccc
        XOR     0xe9                                ;bccd
        XOR     0xe9                                ;bccf
        POP     de                                  ;bcd1
        LD      sp,hl                               ;bcd2
        POP     hl                                  ;bcd3
        CP      h                                   ;bcd4
        JP      p,0x10bc                            ;bcd5
        CP      l                                   ;bcd8
        SBC     a,b                                 ;bcd9
        CP      l                                   ;bcda
        LD      l,0xbe                              ;bcdb
        LD      b,h                                 ;bcdd
        CP      (hl)                                ;bcde
        ADD     a,e                                 ;bcdf
        CP      (hl)                                ;bce0
        DJNZ    bC_lbd17h                           ;bce1
        LD      b,(hl)                              ;bce3
        DEC     sp                                  ;bce4
        LD      c,c                                 ;bce5
        NOP                                         ;bce6
        CCF                                         ;bce7
        LD      sp,0x3f3b                           ;bce8
        NOP                                         ;bceb
        LD      d,d                                 ;bcec
        LD      c,b                                 ;bced
        LD      d,l                                 ;bcee
        LD      c,b                                 ;bcef
        LD      (0x1d64),a                          ;bcf0
        INC     (hl)                                ;bcf3
        LD      b,(hl)                              ;bcf4
        DEC     sp                                  ;bcf5
        NOP                                         ;bcf6
        LD      d,l                                 ;bcf7
        SCF                                         ;bcf8
        LD      d,e                                 ;bcf9
        LD      e,(hl)                              ;bcfa
        CCF                                         ;bcfb
        LD      h,h                                 ;bcfc
        CP      0xfe                                ;bcfd
        LD      b,e                                 ;bcff
        LD      d,a                                 ;bd00
        JR      nc,bC_lbd36h                        ;bd01
        INC     a                                   ;bd03
        LD      h,e                                 ;bd04
        LD      c,c                                 ;bd05
        NOP                                         ;bd06
        LD      c,l                                 ;bd07
        LD      d,c                                 ;bd08
        LD      b,d                                 ;bd09
        NOP                                         ;bd0a
        LD      b,c                                 ;bd0b
        DEC     (hl)                                ;bd0c
        LD      e,e                                 ;bd0d
        INC     a                                   ;bd0e
        LD      h,h                                 ;bd0f
        ADD     a,a                                 ;bd10
        ADD     hl,sp                               ;bd11
        LD      e,c                                 ;bd12
        LD      b,d                                 ;bd13
        LD      h,e                                 ;bd14
        NOP                                         ;bd15
        LD      d,l                                 ;bd16
bC_lbd17h:
        LD      c,b                                 ;bd17
        LD      b,h                                 ;bd18
        DEC     (hl)                                ;bd19
        LD      d,d                                 ;bd1a
        NOP                                         ;bd1b
        LD      c,h                                 ;bd1c
        LD      sp,0x435b                           ;bd1d
        LD      b,h                                 ;bd20
        LD      d,a                                 ;bd21
        NOP                                         ;bd22
        DEC     sp                                  ;bd23
        LD      h,c                                 ;bd24
        LD      c,a                                 ;bd25
        LD      e,l                                 ;bd26
        LD      c,b                                 ;bd27
        CP      0xfe                                ;bd28
        SCF                                         ;bd2a
        LD      d,(hl)                              ;bd2b
        DEC     sp                                  ;bd2c
        LD      d,d                                 ;bd2d
        NOP                                         ;bd2e
        LD      d,l                                 ;bd2f
        SCF                                         ;bd30
        LD      b,h                                 ;bd31
        LD      e,b                                 ;bd32
        LD      b,d                                 ;bd33
        LD      h,e                                 ;bd34
        NOP                                         ;bd35
bC_lbd36h:
        JR      nc,bC_lbd92h                        ;bd36
        LD      (0xfe64),a                          ;bd38
        CP      0x3b                                ;bd3b
        DEC     (hl)                                ;bd3d
        DEC     sp                                  ;bd3e
        NOP                                         ;bd3f
        LD      sp,0x4e41                           ;bd40
        CCF                                         ;bd43
        NOP                                         ;bd44
        LD      b,e                                 ;bd45
        LD      h,e                                 ;bd46
        ADD     hl,sp                               ;bd47
        DEC     (hl)                                ;bd48
        LD      b,d                                 ;bd49
        LD      h,e                                 ;bd4a
        NOP                                         ;bd4b
        LD      e,e                                 ;bd4c
        LD      e,b                                 ;bd4d
        LD      sp,0x4300                           ;bd4e
        LD      c,b                                 ;bd51
        LD      a,(0x354e)                          ;bd52
        LD      h,e                                 ;bd55
        CP      0xfe                                ;bd56
        JR      nc,$+88                             ;bd58
        LD      e,e                                 ;bd5a
        LD      e,c                                 ;bd5b
        LD      e,b                                 ;bd5c
        DEC     (hl)                                ;bd5d
        NOP                                         ;bd5e
        LD      e,e                                 ;bd5f
        DEC     (hl)                                ;bd60
        LD      d,a                                 ;bd61
        LD      e,a                                 ;bd62
        DEC     a                                   ;bd63
        LD      e,l                                 ;bd64
        LD      h,h                                 ;bd65
        CP      0xfe                                ;bd66
        LD      a,0x48                              ;bd68
        LD      b,e                                 ;bd6a
        LD      (hl),0x45                           ;bd6b
        LD      c,c                                 ;bd6d
        NOP                                         ;bd6e
        LD      c,e                                 ;bd6f
        CCF                                         ;bd70
        CCF                                         ;bd71
        LD      c,d                                 ;bd72
        LD      h,e                                 ;bd73
        NOP                                         ;bd74
        INC     (hl)                                ;bd75
        LD      b,(hl)                              ;bd76
        DEC     sp                                  ;bd77
        LD      c,b                                 ;bd78
        NOP                                         ;bd79
        DEC     (hl)                                ;bd7a
        LD      b,c                                 ;bd7b
        LD      d,e                                 ;bd7c
        SCF                                         ;bd7d
        LD      b,l                                 ;bd7e
        CP      0xfe                                ;bd7f
        DEC     sp                                  ;bd81
        LD      h,c                                 ;bd82
        LD      c,a                                 ;bd83
        LD      e,l                                 ;bd84
        LD      c,b                                 ;bd85
        NOP                                         ;bd86
        LD      b,a                                 ;bd87
        DEC     (hl)                                ;bd88
        LD      h,e                                 ;bd89
        LD      sp,0x5c                             ;bd8a
        CCF                                         ;bd8d
        SCF                                         ;bd8e
        INC     a                                   ;bd8f
        ADD     hl,sp                               ;bd90
        LD      b,e                                 ;bd91
bC_lbd92h:
        LD      b,l                                 ;bd92
        NOP                                         ;bd93
        LD      b,h                                 ;bd94
        LD      e,d                                 ;bd95
        LD      (0x9564),a                          ;bd96
        DEC     sp                                  ;bd99
        DEC     (hl)                                ;bd9a
        DEC     sp                                  ;bd9b
        NOP                                         ;bd9c
        INC     a                                   ;bd9d
        LD      c,h                                 ;bd9e
        LD      h,e                                 ;bd9f
        LD      b,d                                 ;bda0
        LD      c,b                                 ;bda1
        NOP                                         ;bda2
        SCF                                         ;bda3
        LD      b,l                                 ;bda4
        LD      c,b                                 ;bda5
        NOP                                         ;bda6
        LD      b,e                                 ;bda7
        LD      c,b                                 ;bda8
        LD      a,(0x354e)                          ;bda9
        LD      h,e                                 ;bdac
        NOP                                         ;bdad
        LD      d,l                                 ;bdae
        LD      sp,0xfefe                           ;bdaf
        DEC     a                                   ;bdb2
        LD      sp,0x633b                           ;bdb3
        LD      e,h                                 ;bdb6
        NOP                                         ;bdb7
        LD      d,e                                 ;bdb8
        SCF                                         ;bdb9
        LD      a,0x37                              ;bdba
        NOP                                         ;bdbc
        DEC     sp                                  ;bdbd
        LD      b,d                                 ;bdbe
        SCF                                         ;bdbf
        LD      e,c                                 ;bdc0
        CCF                                         ;bdc1
        NOP                                         ;bdc2
        LD      e,e                                 ;bdc3
        JR      c,bC_lbe08h                         ;bdc4
        LD      h,e                                 ;bdc6
        LD      c,c                                 ;bdc7
        NOP                                         ;bdc8
        LD      b,h                                 ;bdc9
        LD      sp,0xfe64                           ;bdca
        CP      0x39                                ;bdcd
        LD      e,c                                 ;bdcf
        LD      b,d                                 ;bdd0
        LD      h,e                                 ;bdd1
        LD      c,c                                 ;bdd2
        NOP                                         ;bdd3
        INC     a                                   ;bdd4
        LD      c,h                                 ;bdd5
        LD      h,e                                 ;bdd6
        LD      b,d                                 ;bdd7
        LD      c,b                                 ;bdd8
        NOP                                         ;bdd9
        DEC     sp                                  ;bdda
        LD      h,c                                 ;bddb
        LD      c,a                                 ;bddc
        LD      e,l                                 ;bddd
        LD      c,b                                 ;bdde
        NOP                                         ;bddf
        SCF                                         ;bde0
        LD      d,(hl)                              ;bde1
        DEC     sp                                  ;bde2
        DEC     (hl)                                ;bde3
        LD      h,e                                 ;bde4
        NOP                                         ;bde5
        LD      d,l                                 ;bde6
        SCF                                         ;bde7
        CP      0xfe                                ;bde8
        LD      b,h                                 ;bdea
        LD      e,(hl)                              ;bdeb
        CCF                                         ;bdec
        LD      b,e                                 ;bded
        LD      c,c                                 ;bdee
        NOP                                         ;bdef
        LD      sp,0x3531                           ;bdf0
        LD      h,e                                 ;bdf3
        CCF                                         ;bdf4
        LD      sp,0xfe64                           ;bdf5
        CP      0x31                                ;bdf8
        LD      c,(hl)                              ;bdfa
        LD      sp,0x4340                           ;bdfb
        LD      h,e                                 ;bdfe
        NOP                                         ;bdff
        DEC     sp                                  ;be00
        LD      h,c                                 ;be01
        ADD     hl,sp                               ;be02
        SCF                                         ;be03
        LD      b,l                                 ;be04
        NOP                                         ;be05
        LD      d,d                                 ;be06
        LD      b,e                                 ;be07
bC_lbe08h:
        LD      h,e                                 ;be08
        LD      d,a                                 ;be09
        NOP                                         ;be0a
        LD      c,e                                 ;be0b
        CCF                                         ;be0c
        CCF                                         ;be0d
        LD      c,d                                 ;be0e
        LD      h,e                                 ;be0f
        CP      0xfe                                ;be10
        LD      d,l                                 ;be12
        LD      b,h                                 ;be13
        INC     (hl)                                ;be14
        DEC     sp                                  ;be15
        LD      e,h                                 ;be16
        NOP                                         ;be17
        LD      d,e                                 ;be18
        LD      e,(hl)                              ;be19
        LD      b,d                                 ;be1a
        SCF                                         ;be1b
        LD      e,c                                 ;be1c
        LD      h,h                                 ;be1d
        CP      0xfe                                ;be1e
        JR      c,bC_lbe7fh                         ;be20
        LD      b,e                                 ;be22
        LD      (0x5c),a                            ;be23
        LD      sp,GS_StartGame                     ;be26
        LD      b,e                                 ;be29
        LD      e,b                                 ;be2a
        LD      a,0x63                              ;be2b
        LD      h,h                                 ;be2d
        DEC     d                                   ;be2e
        ADD     hl,sp                               ;be2f
        LD      h,e                                 ;be30
        SCF                                         ;be31
        LD      e,d                                 ;be32
        LD      (0x6342),a                          ;be33
        JR      nc,$+96                             ;be36
        CCF                                         ;be38
        LD      h,h                                 ;be39
        NOP                                         ;be3a
        JR      nc,bC_lbe9bh                        ;be3b
        LD      c,c                                 ;be3d
        LD      h,d                                 ;be3e
        LD      e,c                                 ;be3f
        DEC     sp                                  ;be40
        LD      h,e                                 ;be41
        LD      e,a                                 ;be42
        LD      h,h                                 ;be43
        LD      a,0x43                              ;be44
        ADD     hl,sp                               ;be46
        LD      e,d                                 ;be47
        LD      b,d                                 ;be48
        LD      h,e                                 ;be49
        NOP                                         ;be4a
        LD      b,c                                 ;be4b
        LD      (hl),0x63                           ;be4c
        LD      b,l                                 ;be4e
        LD      b,d                                 ;be4f
        LD      h,e                                 ;be50
        LD      e,b                                 ;be51
        NOP                                         ;be52
        ADD     hl,sp                               ;be53
        LD      b,h                                 ;be54
        LD      c,a                                 ;be55
        LD      c,b                                 ;be56
        NOP                                         ;be57
        JR      c,bC_lbebdh                         ;be58
        LD      h,(hl)                              ;be5a
        LD      d,b                                 ;be5b
        LD      c,c                                 ;be5c
        CP      0xfe                                ;be5d
        LD      c,d                                 ;be5f
        LD      c,b                                 ;be60
        LD      b,e                                 ;be61
        LD      d,a                                 ;be62
        NOP                                         ;be63
        LD      b,e                                 ;be64
        NOP                                         ;be65
        LD      c,(hl)                              ;be66
        DEC     sp                                  ;be67
        LD      h,e                                 ;be68
        LD      h,c                                 ;be69
        LD      (0x6342),a                          ;be6a
        LD      e,l                                 ;be6d
        DEC     a                                   ;be6e
        LD      b,c                                 ;be6f
        LD      (0x3b00),hl                         ;be70
        LD      h,e                                 ;be73
        LD      e,a                                 ;be74
        LD      h,h                                 ;be75
        CP      0xfe                                ;be76
        LD      d,l                                 ;be78
        LD      e,d                                 ;be79
        DEC     sp                                  ;be7a
        SCF                                         ;be7b
        NOP                                         ;be7c
        CCF                                         ;be7d
        LD      c,b                                 ;be7e
bC_lbe7fh:
        LD      d,b                                 ;be7f
        LD      a,0x63                              ;be80
        LD      h,h                                 ;be82
        INC     a                                   ;be83
        LD      b,e                                 ;be84
        ADD     hl,sp                               ;be85
        LD      e,d                                 ;be86
        LD      b,d                                 ;be87
        LD      h,e                                 ;be88
        NOP                                         ;be89
        ADD     hl,sp                               ;be8a
        LD      c,b                                 ;be8b
        LD      b,c                                 ;be8c
        LD      (hl),0x63                           ;be8d
        LD      c,c                                 ;be8f
        NOP                                         ;be90
        LD      hl,0x4920                           ;be91
        LD      h,e                                 ;be94
        LD      sp,0x483f                           ;be95
        DEC     sp                                  ;be98
        LD      d,b                                 ;be99
        NOP                                         ;be9a
bC_lbe9bh:
        DEC     (hl)                                ;be9b
        LD      h,(hl)                              ;be9c
        LD      b,e                                 ;be9d
        CP      0xfe                                ;be9e
        LD      d,a                                 ;bea0
        LD      e,(hl)                              ;bea1
        DEC     sp                                  ;bea2
        LD      h,e                                 ;bea3
        LD      e,h                                 ;bea4
        LD      b,c                                 ;bea5
        DEC     (hl)                                ;bea6
        LD      e,e                                 ;bea7
        INC     a                                   ;bea8
        LD      h,e                                 ;bea9
        LD      b,l                                 ;beaa
        NOP                                         ;beab
        LD      d,l                                 ;beac
        LD      b,h                                 ;bead
        INC     (hl)                                ;beae
        DEC     sp                                  ;beaf
        LD      e,h                                 ;beb0
        NOP                                         ;beb1
        LD      d,e                                 ;beb2
        LD      e,(hl)                              ;beb3
        LD      b,d                                 ;beb4
        LD      c,l                                 ;beb5
        DEC     sp                                  ;beb6
        LD      sp,0xfefe                           ;beb7
        LD      d,d                                 ;beba
        LD      c,b                                 ;bebb
        LD      d,l                                 ;bebc
bC_lbebdh:
        LD      c,b                                 ;bebd
        LD      (0xff64),a                          ;bebe
        RST     KEYINT                              ;bec1
        RST     KEYINT                              ;bec2
        RST     KEYINT                              ;bec3
        RST     KEYINT                              ;bec4
        RST     KEYINT                              ;bec5
        RST     KEYINT                              ;bec6
        RST     KEYINT                              ;bec7
        RST     KEYINT                              ;bec8
        RST     KEYINT                              ;bec9
        RST     KEYINT                              ;beca
        RST     KEYINT                              ;becb
        RST     KEYINT                              ;becc
        RST     KEYINT                              ;becd
        RST     KEYINT                              ;bece
        RST     KEYINT                              ;becf
        RST     KEYINT                              ;bed0
        RST     KEYINT                              ;bed1
        RST     KEYINT                              ;bed2
        RST     KEYINT                              ;bed3
        RST     KEYINT                              ;bed4
        RST     KEYINT                              ;bed5
        RST     KEYINT                              ;bed6
        RST     KEYINT                              ;bed7
        RST     KEYINT                              ;bed8
        RST     KEYINT                              ;bed9
        RST     KEYINT                              ;beda
        RST     KEYINT                              ;bedb
        RST     KEYINT                              ;bedc
        RST     KEYINT                              ;bedd
        RST     KEYINT                              ;bede
        RST     KEYINT                              ;bedf
        RST     KEYINT                              ;bee0
        RST     KEYINT                              ;bee1
        RST     KEYINT                              ;bee2
        RST     KEYINT                              ;bee3
        RST     KEYINT                              ;bee4
        RST     KEYINT                              ;bee5
        RST     KEYINT                              ;bee6
        RST     KEYINT                              ;bee7
        RST     KEYINT                              ;bee8
        RST     KEYINT                              ;bee9
        RST     KEYINT                              ;beea
        RST     KEYINT                              ;beeb
        RST     KEYINT                              ;beec
        RST     KEYINT                              ;beed
        RST     KEYINT                              ;beee
        RST     KEYINT                              ;beef
        RST     KEYINT                              ;bef0
        RST     KEYINT                              ;bef1
        RST     KEYINT                              ;bef2
        RST     KEYINT                              ;bef3
        RST     KEYINT                              ;bef4
        RST     KEYINT                              ;bef5
        RST     KEYINT                              ;bef6
        RST     KEYINT                              ;bef7
        RST     KEYINT                              ;bef8
        RST     KEYINT                              ;bef9
        RST     KEYINT                              ;befa
        RST     KEYINT                              ;befb
        RST     KEYINT                              ;befc
        RST     KEYINT                              ;befd
        RST     KEYINT                              ;befe
        RST     KEYINT                              ;beff
        RST     KEYINT                              ;bf00
        RST     KEYINT                              ;bf01
        RST     KEYINT                              ;bf02
        RST     KEYINT                              ;bf03
        RST     KEYINT                              ;bf04
        RST     KEYINT                              ;bf05
        RST     KEYINT                              ;bf06
        RST     KEYINT                              ;bf07
        RST     KEYINT                              ;bf08
        RST     KEYINT                              ;bf09
        RST     KEYINT                              ;bf0a
        RST     KEYINT                              ;bf0b
        RST     KEYINT                              ;bf0c
        RST     KEYINT                              ;bf0d
        RST     KEYINT                              ;bf0e
        RST     KEYINT                              ;bf0f
        RST     KEYINT                              ;bf10
        RST     KEYINT                              ;bf11
        RST     KEYINT                              ;bf12
        RST     KEYINT                              ;bf13
        RST     KEYINT                              ;bf14
        RST     KEYINT                              ;bf15
        RST     KEYINT                              ;bf16
        RST     KEYINT                              ;bf17
        RST     KEYINT                              ;bf18
        RST     KEYINT                              ;bf19
        RST     KEYINT                              ;bf1a
        RST     KEYINT                              ;bf1b
        RST     KEYINT                              ;bf1c
        RST     KEYINT                              ;bf1d
        RST     KEYINT                              ;bf1e
        RST     KEYINT                              ;bf1f
        RST     KEYINT                              ;bf20
        RST     KEYINT                              ;bf21
        RST     KEYINT                              ;bf22
        RST     KEYINT                              ;bf23
        RST     KEYINT                              ;bf24
        RST     KEYINT                              ;bf25
        RST     KEYINT                              ;bf26
        RST     KEYINT                              ;bf27
        RST     KEYINT                              ;bf28
        RST     KEYINT                              ;bf29
        RST     KEYINT                              ;bf2a
        RST     KEYINT                              ;bf2b
        RST     KEYINT                              ;bf2c
        RST     KEYINT                              ;bf2d
        RST     KEYINT                              ;bf2e
        RST     KEYINT                              ;bf2f
        RST     KEYINT                              ;bf30
        RST     KEYINT                              ;bf31
        RST     KEYINT                              ;bf32
        RST     KEYINT                              ;bf33
        RST     KEYINT                              ;bf34
        RST     KEYINT                              ;bf35
        RST     KEYINT                              ;bf36
        RST     KEYINT                              ;bf37
        RST     KEYINT                              ;bf38
        RST     KEYINT                              ;bf39
        RST     KEYINT                              ;bf3a
        RST     KEYINT                              ;bf3b
        RST     KEYINT                              ;bf3c
        RST     KEYINT                              ;bf3d
        RST     KEYINT                              ;bf3e
        RST     KEYINT                              ;bf3f
        RST     KEYINT                              ;bf40
        RST     KEYINT                              ;bf41
        RST     KEYINT                              ;bf42
        RST     KEYINT                              ;bf43
        RST     KEYINT                              ;bf44
        RST     KEYINT                              ;bf45
        RST     KEYINT                              ;bf46
        RST     KEYINT                              ;bf47
        RST     KEYINT                              ;bf48
        RST     KEYINT                              ;bf49
        RST     KEYINT                              ;bf4a
        RST     KEYINT                              ;bf4b
        RST     KEYINT                              ;bf4c
        RST     KEYINT                              ;bf4d
        RST     KEYINT                              ;bf4e
        RST     KEYINT                              ;bf4f
        RST     KEYINT                              ;bf50
        RST     KEYINT                              ;bf51
        RST     KEYINT                              ;bf52
        RST     KEYINT                              ;bf53
        RST     KEYINT                              ;bf54
        RST     KEYINT                              ;bf55
        RST     KEYINT                              ;bf56
        RST     KEYINT                              ;bf57
        RST     KEYINT                              ;bf58
        RST     KEYINT                              ;bf59
        RST     KEYINT                              ;bf5a
        RST     KEYINT                              ;bf5b
        RST     KEYINT                              ;bf5c
        RST     KEYINT                              ;bf5d
        RST     KEYINT                              ;bf5e
        RST     KEYINT                              ;bf5f
        RST     KEYINT                              ;bf60
        RST     KEYINT                              ;bf61
        RST     KEYINT                              ;bf62
        RST     KEYINT                              ;bf63
        RST     KEYINT                              ;bf64
        RST     KEYINT                              ;bf65
        RST     KEYINT                              ;bf66
        RST     KEYINT                              ;bf67
        RST     KEYINT                              ;bf68
        RST     KEYINT                              ;bf69
        RST     KEYINT                              ;bf6a
        RST     KEYINT                              ;bf6b
        RST     KEYINT                              ;bf6c
        RST     KEYINT                              ;bf6d
        RST     KEYINT                              ;bf6e
        RST     KEYINT                              ;bf6f
        RST     KEYINT                              ;bf70
        RST     KEYINT                              ;bf71
        RST     KEYINT                              ;bf72
        RST     KEYINT                              ;bf73
        RST     KEYINT                              ;bf74
        RST     KEYINT                              ;bf75
        RST     KEYINT                              ;bf76
        RST     KEYINT                              ;bf77
        RST     KEYINT                              ;bf78
        RST     KEYINT                              ;bf79
        RST     KEYINT                              ;bf7a
        RST     KEYINT                              ;bf7b
        RST     KEYINT                              ;bf7c
        RST     KEYINT                              ;bf7d
        RST     KEYINT                              ;bf7e
        RST     KEYINT                              ;bf7f
        RST     KEYINT                              ;bf80
        RST     KEYINT                              ;bf81
        RST     KEYINT                              ;bf82
        RST     KEYINT                              ;bf83
        RST     KEYINT                              ;bf84
        RST     KEYINT                              ;bf85
        RST     KEYINT                              ;bf86
        RST     KEYINT                              ;bf87
        RST     KEYINT                              ;bf88
        RST     KEYINT                              ;bf89
        RST     KEYINT                              ;bf8a
        RST     KEYINT                              ;bf8b
        RST     KEYINT                              ;bf8c
        RST     KEYINT                              ;bf8d
        RST     KEYINT                              ;bf8e
        RST     KEYINT                              ;bf8f
        RST     KEYINT                              ;bf90
        RST     KEYINT                              ;bf91
        RST     KEYINT                              ;bf92
        RST     KEYINT                              ;bf93
        RST     KEYINT                              ;bf94
        RST     KEYINT                              ;bf95
        RST     KEYINT                              ;bf96
        RST     KEYINT                              ;bf97
        RST     KEYINT                              ;bf98
        RST     KEYINT                              ;bf99
        RST     KEYINT                              ;bf9a
        RST     KEYINT                              ;bf9b
        RST     KEYINT                              ;bf9c
        RST     KEYINT                              ;bf9d
        RST     KEYINT                              ;bf9e
        RST     KEYINT                              ;bf9f
        RST     KEYINT                              ;bfa0
        RST     KEYINT                              ;bfa1
        RST     KEYINT                              ;bfa2
        RST     KEYINT                              ;bfa3
        RST     KEYINT                              ;bfa4
        RST     KEYINT                              ;bfa5
        RST     KEYINT                              ;bfa6
        RST     KEYINT                              ;bfa7
        RST     KEYINT                              ;bfa8
        RST     KEYINT                              ;bfa9
        RST     KEYINT                              ;bfaa
        RST     KEYINT                              ;bfab
        RST     KEYINT                              ;bfac
        RST     KEYINT                              ;bfad
        RST     KEYINT                              ;bfae
        RST     KEYINT                              ;bfaf
        RST     KEYINT                              ;bfb0
        RST     KEYINT                              ;bfb1
        RST     KEYINT                              ;bfb2
        RST     KEYINT                              ;bfb3
        RST     KEYINT                              ;bfb4
        RST     KEYINT                              ;bfb5
        RST     KEYINT                              ;bfb6
        RST     KEYINT                              ;bfb7
        RST     KEYINT                              ;bfb8
        RST     KEYINT                              ;bfb9
        RST     KEYINT                              ;bfba
        RST     KEYINT                              ;bfbb
        RST     KEYINT                              ;bfbc
        RST     KEYINT                              ;bfbd
        RST     KEYINT                              ;bfbe
        RST     KEYINT                              ;bfbf
        RST     KEYINT                              ;bfc0
        RST     KEYINT                              ;bfc1
        RST     KEYINT                              ;bfc2
        RST     KEYINT                              ;bfc3
        RST     KEYINT                              ;bfc4
        RST     KEYINT                              ;bfc5
        RST     KEYINT                              ;bfc6
        RST     KEYINT                              ;bfc7
        RST     KEYINT                              ;bfc8
        RST     KEYINT                              ;bfc9
        RST     KEYINT                              ;bfca
        RST     KEYINT                              ;bfcb
        RST     KEYINT                              ;bfcc
        RST     KEYINT                              ;bfcd
        RST     KEYINT                              ;bfce
        RST     KEYINT                              ;bfcf
        RST     KEYINT                              ;bfd0
        RST     KEYINT                              ;bfd1
        RST     KEYINT                              ;bfd2
        RST     KEYINT                              ;bfd3
        RST     KEYINT                              ;bfd4
        RST     KEYINT                              ;bfd5
        RST     KEYINT                              ;bfd6
        RST     KEYINT                              ;bfd7
        RST     KEYINT                              ;bfd8
        RST     KEYINT                              ;bfd9
        RST     KEYINT                              ;bfda
        RST     KEYINT                              ;bfdb
        RST     KEYINT                              ;bfdc
        RST     KEYINT                              ;bfdd
        RST     KEYINT                              ;bfde
        RST     KEYINT                              ;bfdf
        RST     KEYINT                              ;bfe0
        RST     KEYINT                              ;bfe1
        RST     KEYINT                              ;bfe2
        RST     KEYINT                              ;bfe3
        RST     KEYINT                              ;bfe4
        RST     KEYINT                              ;bfe5
        RST     KEYINT                              ;bfe6
        RST     KEYINT                              ;bfe7
        RST     KEYINT                              ;bfe8
        RST     KEYINT                              ;bfe9
        RST     KEYINT                              ;bfea
        RST     KEYINT                              ;bfeb
        RST     KEYINT                              ;bfec
        RST     KEYINT                              ;bfed
        RST     KEYINT                              ;bfee
        RST     KEYINT                              ;bfef
        RST     KEYINT                              ;bff0
        RST     KEYINT                              ;bff1
        RST     KEYINT                              ;bff2
        RST     KEYINT                              ;bff3
        RST     KEYINT                              ;bff4
        RST     KEYINT                              ;bff5
        RST     KEYINT                              ;bff6
        RST     KEYINT                              ;bff7
        RST     KEYINT                              ;bff8
        RST     KEYINT                              ;bff9
        RST     KEYINT                              ;bffa
        RST     KEYINT                              ;bffb
        RST     KEYINT                              ;bffc
        RST     KEYINT                              ;bffd
        RST     KEYINT                              ;bffe
        RST     KEYINT                              ;bfff
