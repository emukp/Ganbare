bF_lbd95h:
        JR      nc,$+1                              ;bd95
        LD      b,h                                 ;bd97
        LD      e,l                                 ;bd98
        CCF                                         ;bd99
        LD      h,e                                 ;bd9a
        NOP                                         ;bd9b
        LD      b,h                                 ;bd9c
        LD      e,l                                 ;bd9d
        CCF                                         ;bd9e
        LD      h,e                                 ;bd9f
        NOP                                         ;bda0
        LD      b,h                                 ;bda1
        LD      e,l                                 ;bda2
        LD      b,h                                 ;bda3
        LD      e,l                                 ;bda4
        CCF                                         ;bda5
        LD      h,e                                 ;bda6
        RST     KEYINT                              ;bda7
        LD      (hl),0x30                           ;bda8
        LD      sp,0x5c                             ;bdaa
        LD      sp,0x4259                           ;bdad
        NOP                                         ;bdb0
        LD      a,0x59                              ;bdb1
        LD      a,0x59                              ;bdb3
        LD      a,0x59                              ;bdb5
bF_lbdb7h:
        LD      a,0x59                              ;bdb7
        RST     KEYINT                              ;bdb9
        LD      b,c                                 ;bdba
        LD      (hl),0x63                           ;bdbb
        LD      c,c                                 ;bdbd
        NOP                                         ;bdbe
        INC     a                                   ;bdbf
        LD      b,d                                 ;bdc0
        LD      h,(hl)                              ;bdc1
        DEC     sp                                  ;bdc2
        LD      h,e                                 ;bdc3
        LD      (0x3f27),hl                         ;bdc4
        LD      h,e                                 ;bdc7
        NOP                                         ;bdc8
        LD      d,e                                 ;bdc9
        JR      nc,bF_lbe2ah                        ;bdca
        RST     KEYINT                              ;bdcc
        LD      b,h                                 ;bdcd
        LD      a,0x63                              ;bdce
        LD      d,c                                 ;bdd0
        SCF                                         ;bdd1
        NOP                                         ;bdd2
        DEC     sp                                  ;bdd3
        DEC     (hl)                                ;bdd4
        JR      c,bF_lbe1ch                         ;bdd5
        NOP                                         ;bdd7
        LD      b,b                                 ;bdd8
        DEC     (hl)                                ;bdd9
        LD      h,e                                 ;bdda
        LD      a,(0x375b)                          ;bddb
        LD      h,e                                 ;bdde
        RST     KEYINT                              ;bddf
        ADD     hl,sp                               ;bde0
        ADD     hl,sp                               ;bde1
        LD      d,(hl)                              ;bde2
        LD      b,d                                 ;bde3
        LD      h,e                                 ;bde4
        NOP                                         ;bde5
        INC     a                                   ;bde6
        ADD     hl,sp                               ;bde7
        DEC     sp                                  ;bde8
        NOP                                         ;bde9
        LD      d,e                                 ;bdea
        INC     a                                   ;bdeb
        LD      c,(hl)                              ;bdec
        LD      e,l                                 ;bded
        DEC     (hl)                                ;bdee
        RST     KEYINT                              ;bdef
        INC     a                                   ;bdf0
        LD      b,d                                 ;bdf1
        LD      h,(hl)                              ;bdf2
        DEC     sp                                  ;bdf3
        LD      h,e                                 ;bdf4
        SCF                                         ;bdf5
        LD      d,a                                 ;bdf6
        JR      nc,bF_lbe38h                        ;bdf7
        LD      h,e                                 ;bdf9
        NOP                                         ;bdfa
        LD      c,l                                 ;bdfb
        LD      c,l                                 ;bdfc
        LD      sp,LoadTitlePalette                 ;bdfd
        LD      sp,0x41ff                           ;be00
        DEC     (hl)                                ;be03
        LD      e,(hl)                              ;be04
        LD      b,d                                 ;be05
        NOP                                         ;be06
        LD      c,h                                 ;be07
        LD      h,e                                 ;be08
        LD      e,l                                 ;be09
        LD      d,a                                 ;be0a
        LD      b,h                                 ;be0b
        NOP                                         ;be0c
        DEC     (hl)                                ;be0d
        SCF                                         ;be0e
        DEC     sp                                  ;be0f
        ADD     hl,sp                               ;be10
        LD      c,(hl)                              ;be11
        LD      e,l                                 ;be12
        LD      b,e                                 ;be13
        LD      h,e                                 ;be14
        RST     KEYINT                              ;be15
        LD      b,c                                 ;be16
        LD      (hl),0x63                           ;be17
        LD      c,c                                 ;be19
        NOP                                         ;be1a
        INC     a                                   ;be1b
bF_lbe1ch:
        LD      b,d                                 ;be1c
        LD      h,(hl)                              ;be1d
        DEC     sp                                  ;be1e
        LD      h,e                                 ;be1f
        INC     hl                                  ;be20
        INC     h                                   ;be21
        CCF                                         ;be22
        LD      h,e                                 ;be23
        NOP                                         ;be24
        LD      c,l                                 ;be25
        LD      d,a                                 ;be26
        LD      e,a                                 ;be27
        RST     KEYINT                              ;be28
        LD      e,e                                 ;be29
bF_lbe2ah:
        LD      c,c                                 ;be2a
        LD      c,c                                 ;be2b
        LD      c,c                                 ;be2c
        LD      c,c                                 ;be2d
        NOP                                         ;be2e
        LD      sp,0x4d5e                           ;be2f
        LD      h,d                                 ;be32
        LD      e,l                                 ;be33
        NOP                                         ;be34
        LD      b,e                                 ;be35
        LD      d,(hl)                              ;be36
        LD      e,c                                 ;be37
bF_lbe38h:
        LD      c,(hl)                              ;be38
        DEC     sp                                  ;be39
        CCF                                         ;be3a
        LD      b,h                                 ;be3b
        RST     KEYINT                              ;be3c
        DEC     (hl)                                ;be3d
        SCF                                         ;be3e
        DEC     sp                                  ;be3f
        ADD     hl,sp                               ;be40
        LD      c,(hl)                              ;be41
        LD      e,l                                 ;be42
        LD      b,e                                 ;be43
        LD      h,e                                 ;be44
        LD      c,c                                 ;be45
        NOP                                         ;be46
        LD      c,a                                 ;be47
        LD      b,c                                 ;be48
        DEC     (hl)                                ;be49
        LD      e,(hl)                              ;be4a
        CCF                                         ;be4b
        DEC     (hl)                                ;be4c
        LD      b,h                                 ;be4d
        RST     KEYINT                              ;be4e
        LD      (hl),0x61                           ;be4f
        CCF                                         ;be51
        LD      h,e                                 ;be52
        LD      sp,0x44                             ;be53
        LD      (0x4d51),a                          ;be56
        LD      h,e                                 ;be59
        DEC     sp                                  ;be5a
        NOP                                         ;be5b
        LD      c,(hl)                              ;be5c
        LD      e,b                                 ;be5d
        DEC     (hl)                                ;be5e
        DEC     sp                                  ;be5f
        LD      h,e                                 ;be60
        LD      d,a                                 ;be61
        RST     KEYINT                              ;be62
        CCF                                         ;be63
        LD      c,d                                 ;be64
        LD      h,e                                 ;be65
        LD      d,h                                 ;be66
        DEC     (hl)                                ;be67
        LD      c,c                                 ;be68
        LD      h,e                                 ;be69
        NOP                                         ;be6a
        LD      sp,0x3541                           ;be6b
        LD      c,c                                 ;be6e
        JR      nc,bF_lbeb0h                        ;be6f
        LD      e,b                                 ;be71
        NOP                                         ;be72
        INC     sp                                  ;be73
        LD      b,e                                 ;be74
        LD      h,e                                 ;be75
        LD      c,b                                 ;be76
        LD      c,(hl)                              ;be77
        LD      b,b                                 ;be78
        RST     KEYINT                              ;be79
        LD      b,c                                 ;be7a
        LD      (hl),0x63                           ;be7b
        LD      c,c                                 ;be7d
        NOP                                         ;be7e
        INC     a                                   ;be7f
        LD      b,d                                 ;be80
        LD      h,(hl)                              ;be81
        DEC     sp                                  ;be82
        LD      h,e                                 ;be83
        INC     h                                   ;be84
        LD      hl,0x633f                           ;be85
        NOP                                         ;be88
        CCF                                         ;be89
        JR      nc,bF_lbeeah                        ;be8a
        RST     KEYINT                              ;be8c
        INC     sp                                  ;be8d
        LD      b,e                                 ;be8e
        LD      h,e                                 ;be8f
        LD      c,b                                 ;be90
        LD      c,(hl)                              ;be91
        LD      b,b                                 ;be92
        NOP                                         ;be93
        LD      sp,0x365e                           ;be94
        LD      sp,0x365e                           ;be97
        LD      b,d                                 ;be9a
        LD      h,e                                 ;be9b
        NOP                                         ;be9c
        LD      b,e                                 ;be9d
        LD      e,(hl)                              ;be9e
        DEC     sp                                  ;be9f
        LD      e,l                                 ;bea0
        CCF                                         ;bea1
        LD      h,e                                 ;bea2
        RST     KEYINT                              ;bea3
        ADD     hl,sp                               ;bea4
        ADD     hl,sp                               ;bea5
        LD      c,(hl)                              ;bea6
        LD      b,d                                 ;bea7
        LD      h,e                                 ;bea8
        SCF                                         ;bea9
        LD      e,c                                 ;beaa
        LD      c,c                                 ;beab
        LD      h,e                                 ;beac
        NOP                                         ;bead
        JR      nc,$+69                             ;beae
bF_lbeb0h:
        LD      c,c                                 ;beb0
        NOP                                         ;beb1
        ADD     hl,sp                               ;beb2
        LD      e,l                                 ;beb3
        DEC     sp                                  ;beb4
        LD      h,e                                 ;beb5
        LD      h,c                                 ;beb6
        LD      (0x35ff),a                          ;beb7
        SCF                                         ;beba
        DEC     sp                                  ;bebb
        ADD     hl,sp                               ;bebc
        LD      c,(hl)                              ;bebd
        LD      e,l                                 ;bebe
        LD      b,e                                 ;bebf
        LD      h,e                                 ;bec0
        NOP                                         ;bec1
        LD      (hl),0x4f                           ;bec2
        LD      b,b                                 ;bec4
        LD      e,a                                 ;bec5
        LD      e,l                                 ;bec6
        JR      c,bF_lbf2ch                         ;bec7
        LD      e,l                                 ;bec9
        LD      (hl),0xff                           ;beca
        ADD     hl,sp                               ;becc
        ADD     hl,sp                               ;becd
        LD      c,(hl)                              ;bece
        LD      b,d                                 ;becf
        LD      h,e                                 ;bed0
        SCF                                         ;bed1
        LD      e,c                                 ;bed2
        LD      c,c                                 ;bed3
        LD      h,e                                 ;bed4
        NOP                                         ;bed5
        JR      nc,bF_lbf35h                        ;bed6
        CCF                                         ;bed8
        LD      c,c                                 ;bed9
        NOP                                         ;beda
        LD      c,e                                 ;bedb
        LD      h,d                                 ;bedc
        LD      e,d                                 ;bedd
        LD      d,l                                 ;bede
        RST     KEYINT                              ;bedf
        LD      b,c                                 ;bee0
        LD      (hl),0x63                           ;bee1
        LD      c,c                                 ;bee3
        NOP                                         ;bee4
        INC     sp                                  ;bee5
        LD      b,e                                 ;bee6
        LD      h,e                                 ;bee7
        DEC     sp                                  ;bee8
        LD      h,e                                 ;bee9
bF_lbeeah:
        LD      h,c                                 ;beea
        LD      (0x4300),a                          ;beeb
        LD      b,c                                 ;beee
        LD      b,l                                 ;beef
        LD      h,b                                 ;bef0
        LD      (0x633f),a                          ;bef1
        NOP                                         ;bef4
        LD      e,e                                 ;bef5
        INC     (hl)                                ;bef6
        LD      e,(hl)                              ;bef7
