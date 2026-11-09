bF_ladd8h:
        DAA                                         ;add8
        LD      bc,0x9092                           ;add9
        LD      (bc),a                              ;addc
        AND     (hl)                                ;addd
        LD      b,a                                 ;adde
        LD      (bc),a                              ;addf
        LD      (hl),h                              ;ade0
        LD      (hl),c                              ;ade1
        INC     b                                   ;ade2
        LD      (hl),h                              ;ade3
        LD      (hl),c                              ;ade4
        INC     b                                   ;ade5
        LD      h,h                                 ;ade6
        SUB     c                                   ;ade7
        DEC     b                                   ;ade8
        AND     (hl)                                ;ade9
        AND     a                                   ;adea
        LD      b,0x94                              ;adeb
        ADD     a,c                                 ;aded
        LD      b,0x86                              ;adee
        OR      a                                   ;adf0
        RLCA                                        ;adf1
        ADD     a,c                                 ;adf2
        AND     b                                   ;adf3
        EX      af,af'                              ;adf4
        LD      (hl),h                              ;adf5
        LD      sp,0x960c                           ;adf6
        OR      a                                   ;adf9
        DEC     c                                   ;adfa
        SUB     (hl)                                ;adfb
        RST     DCOMPR                              ;adfc
        LD      c,0x81                              ;adfd
        ADD     a,b                                 ;adff
        LD      c,0x56                              ;ae00
        RST     CHRGTR                              ;ae02
        RRCA                                        ;ae03
        AND     h                                   ;ae04
        LD      sp,bF_la40fh                        ;ae05
        LD      d,c                                 ;ae08
        DJNZ    bF_ladb1h                           ;ae09
        SUB     a                                   ;ae0b
        INC     de                                  ;ae0c
        LD      h,(hl)                              ;ae0d
        DAA                                         ;ae0e
        INC     d                                   ;ae0f
        AND     d                                   ;ae10
        LD      b,b                                 ;ae11
        INC     d                                   ;ae12
        OR      h                                   ;ae13
        ADD     a,c                                 ;ae14
        INC     d                                   ;ae15
        AND     h                                   ;ae16
        OR      c                                   ;ae17
        DEC     d                                   ;ae18
        ADD     a,(hl)                              ;ae19
        LD      d,a                                 ;ae1a
        DEC     d                                   ;ae1b
        ADD     a,h                                 ;ae1c
        ADD     a,c                                 ;ae1d
        RST     KEYINT                              ;ae1e
        SCF                                         ;ae1f
        NOP                                         ;ae20
        ADD     a,(hl)                              ;ae21
        LD      d,a                                 ;ae22
        NOP                                         ;ae23
        SUB     b                                   ;ae24
        LD      h,(hl)                              ;ae25
        NOP                                         ;ae26
        ADD     a,c                                 ;ae27
        SUB     b                                   ;ae28
        LD      bc,0x5680                           ;ae29
        LD      bc,bF_la0a2h                        ;ae2c
        LD      (bc),a                              ;ae2f
        LD      (hl),b                              ;ae30
        LD      d,l                                 ;ae31
        LD      (bc),a                              ;ae32
        LD      (hl),h                              ;ae33
        ADD     a,c                                 ;ae34
        LD      (bc),a                              ;ae35
        AND     h                                   ;ae36
        ADD     a,c                                 ;ae37
        LD      (bc),a                              ;ae38
        LD      (hl),b                              ;ae39
        AND     l                                   ;ae3a
        INC     bc                                  ;ae3b
        SUB     (hl)                                ;ae3c
        SCF                                         ;ae3d
        INC     b                                   ;ae3e
        ADD     a,b                                 ;ae3f
        LD      h,0x4                               ;ae40
        SUB     d                                   ;ae42
        LD      d,b                                 ;ae43
        INC     b                                   ;ae44
        AND     b                                   ;ae45
        LD      h,(hl)                              ;ae46
        LD      b,0x80                              ;ae47
        LD      (hl),h                              ;ae49
        LD      b,0x80                              ;ae4a
        OR      l                                   ;ae4c
        RLCA                                        ;ae4d
        AND     (hl)                                ;ae4e
        AND     a                                   ;ae4f
        EX      af,af'                              ;ae50
        LD      h,b                                 ;ae51
        LD      b,l                                 ;ae52
        EX      af,af'                              ;ae53
        ADD     a,b                                 ;ae54
        LD      h,h                                 ;ae55
        ADD     hl,bc                               ;ae56
        ADD     a,b                                 ;ae57
        DEC     (hl)                                ;ae58
        ADD     hl,bc                               ;ae59
        SUB     b                                   ;ae5a
        LD      d,(hl)                              ;ae5b
        INC     c                                   ;ae5c
        LD      h,b                                 ;ae5d
        LD      h,l                                 ;ae5e
        INC     c                                   ;ae5f
        ADD     a,c                                 ;ae60
        SUB     b                                   ;ae61
        INC     c                                   ;ae62
        ADD     a,b                                 ;ae63
        AND     l                                   ;ae64
        DEC     c                                   ;ae65
        LD      h,(hl)                              ;ae66
        DAA                                         ;ae67
        RRCA                                        ;ae68
        LD      h,b                                 ;ae69
        LD      d,l                                 ;ae6a
        RRCA                                        ;ae6b
        LD      h,b                                 ;ae6c
        LD      (hl),l                              ;ae6d
        RRCA                                        ;ae6e
        LD      h,b                                 ;ae6f
        SUB     l                                   ;ae70
        RRCA                                        ;ae71
        AND     d                                   ;ae72
        LD      (hl),b                              ;ae73
        LD      (de),a                              ;ae74
        OR      h                                   ;ae75
        LD      d,c                                 ;ae76
        LD      (de),a                              ;ae77
        SUB     h                                   ;ae78
        LD      h,c                                 ;ae79
        LD      (de),a                              ;ae7a
        LD      (hl),h                              ;ae7b
        LD      (hl),c                              ;ae7c
        LD      (de),a                              ;ae7d
        LD      h,(hl)                              ;ae7e
        RST     CHRGTR                              ;ae7f
        INC     de                                  ;ae80
        LD      (hl),c                              ;ae81
        LD      h,b                                 ;ae82
        INC     de                                  ;ae83
        SUB     b                                   ;ae84
        LD      h,0x13                              ;ae85
        LD      h,b                                 ;ae87
        AND     l                                   ;ae88
        INC     d                                   ;ae89
        LD      h,(hl)                              ;ae8a
        DAA                                         ;ae8b
        LD      d,0x66                              ;ae8c
        RST     CHRGTR                              ;ae8e
        LD      d,0x80                              ;ae8f
bF_lae91h:
        LD      h,(hl)                              ;ae91
        RLA                                         ;ae92
        ADD     a,b                                 ;ae93
        LD      h,0x17                              ;ae94
        AND     c                                   ;ae96
        AND     b                                   ;ae97
        DEC     de                                  ;ae98
        LD      (hl),c                              ;ae99
        LD      (hl),b                              ;ae9a
        DEC     de                                  ;ae9b
        SUB     b                                   ;ae9c
        LD      d,(hl)                              ;ae9d
        DEC     e                                   ;ae9e
        ADD     a,b                                 ;ae9f
        LD      (hl),0x1d                           ;aea0
        SUB     b                                   ;aea2
        HALT                                        ;aea3
        DEC     e                                   ;aea4
        AND     d                                   ;aea5
        LD      (hl),b                              ;aea6
        LD      e,0x60                              ;aea7
        LD      h,l                                 ;aea9
        LD      e,0xa0                              ;aeaa
        LD      (hl),0x1e                           ;aeac
        ADD     a,d                                 ;aeae
        ADD     a,b                                 ;aeaf
        RRA                                         ;aeb0
        LD      h,b                                 ;aeb1
        LD      b,l                                 ;aeb2
        RRA                                         ;aeb3
bF_laeb4h:
        ADD     a,b                                 ;aeb4
        LD      h,h                                 ;aeb5
        RRA                                         ;aeb6
        ADD     a,b                                 ;aeb7
        AND     l                                   ;aeb8
        RRA                                         ;aeb9
        ADD     a,h                                 ;aeba
        POP     de                                  ;aebb
        RRA                                         ;aebc
        AND     h                                   ;aebd
        POP     de                                  ;aebe
        LD      hl,0x5680                           ;aebf
        LD      hl,0x26a0                           ;aec2
        RST     KEYINT                              ;aec5
        LD      hl,(0x7100)                         ;aec6
        RET     nz                                  ;aec9
        LD      bc,0x6560                           ;aeca
        LD      bc,0x9776                           ;aecd
        LD      (bc),a                              ;aed0
        LD      (hl),b                              ;aed1
        LD      (hl),0x4                            ;aed2
        HALT                                        ;aed4
        ADD     a,a                                 ;aed5
        INC     b                                   ;aed6
        SUB     b                                   ;aed7
        SUB     h                                   ;aed8
        DEC     b                                   ;aed9
        LD      (hl),h                              ;aeda
        LD      sp,0x8405                           ;aedb
        LD      b,c                                 ;aede
        DEC     b                                   ;aedf
        SUB     h                                   ;aee0
        LD      d,c                                 ;aee1
        DEC     b                                   ;aee2
        AND     (hl)                                ;aee3
        ADD     a,a                                 ;aee4
        RLCA                                        ;aee5
        HALT                                        ;aee6
        RST     CHRGTR                              ;aee7
        EX      af,af'                              ;aee8
        LD      (hl),d                              ;aee9
        JR      nc,bF_laef4h                        ;aeea
        HALT                                        ;aeec
        OR      a                                   ;aeed
        LD      a,(bc)                              ;aeee
        ADD     a,b                                 ;aeef
        LD      d,(hl)                              ;aef0
        LD      a,(bc)                              ;aef1
        AND     d                                   ;aef2
        LD      (hl),b                              ;aef3
bF_laef4h:
        DEC     bc                                  ;aef4
        ADD     a,b                                 ;aef5
        LD      d,(hl)                              ;aef6
        INC     c                                   ;aef7
        LD      (hl),h                              ;aef8
        OR      c                                   ;aef9
        INC     c                                   ;aefa
        ADD     a,h                                 ;aefb
        POP     bc                                  ;aefc
        INC     c                                   ;aefd
        SUB     h                                   ;aefe
        POP     de                                  ;aeff
        DEC     c                                   ;af00
        HALT                                        ;af01
        RST     0                                   ;af02
        LD      c,0x71                              ;af03
        LD      d,b                                 ;af05
        LD      c,0x90                              ;af06
        ADD     a,h                                 ;af08
        RRCA                                        ;af09
        ADD     a,(hl)                              ;af0a
        OR      a                                   ;af0b
        DJNZ    bF_laeb4h                           ;af0c
        DAA                                         ;af0e
        DJNZ    bF_lae91h                           ;af0f
        LD      h,(hl)                              ;af11
        LD      de,bF_lb082h                        ;af12
        LD      (de),a                              ;af15
        LD      h,b                                 ;af16
        LD      b,h                                 ;af17
        LD      (de),a                              ;af18
        ADD     a,b                                 ;af19
        LD      b,h                                 ;af1a
        INC     de                                  ;af1b
        AND     (hl)                                ;af1c
        DAA                                         ;af1d
        INC     de                                  ;af1e
        ADD     a,c                                 ;af1f
        ADD     a,b                                 ;af20
        INC     d                                   ;af21
        SUB     b                                   ;af22
        LD      b,h                                 ;af23
        LD      d,0xa6                              ;af24
        LD      d,a                                 ;af26
        RLA                                         ;af27
        ADD     a,c                                 ;af28
        LD      b,b                                 ;af29
        JR      $-94                                ;af2a
        INC     (hl)                                ;af2c
        JR      bF_laf8fh                           ;af2d
        LD      (hl),l                              ;af2f
        ADD     hl,de                               ;af30
        ADD     a,h                                 ;af31
        LD      b,c                                 ;af32
        ADD     hl,de                               ;af33
        SUB     h                                   ;af34
        LD      h,c                                 ;af35
        LD      a,(de)                              ;af36
        AND     h                                   ;af37
        ADD     a,c                                 ;af38
        LD      a,(de)                              ;af39
        SUB     h                                   ;af3a
        SUB     c                                   ;af3b
        LD      a,(de)                              ;af3c
        ADD     a,h                                 ;af3d
        AND     c                                   ;af3e
        DEC     de                                  ;af3f
        HALT                                        ;af40
        RST     0                                   ;af41
        INC     e                                   ;af42
        SUB     b                                   ;af43
        LD      h,(hl)                              ;af44
        RST     KEYINT                              ;af45
        DJNZ    bF_laf48h                           ;af46
bF_laf48h:
        AND     d                                   ;af48
        OR      b                                   ;af49
        LD      bc,0x57b6                           ;af4a
        LD      (bc),a                              ;af4d
        AND     c                                   ;af4e
        LD      h,b                                 ;af4f
        LD      (bc),a                              ;af50
        SUB     (hl)                                ;af51
        RST     0                                   ;af52
        INC     b                                   ;af53
        OR      h                                   ;af54
        LD      b,c                                 ;af55
        INC     b                                   ;af56
        AND     h                                   ;af57
        LD      h,c                                 ;af58
        LD      b,0xb6                              ;af59
        LD      d,a                                 ;af5b
        EX      af,af'                              ;af5c
        SUB     (hl)                                ;af5d
        ADD     a,a                                 ;af5e
        ADD     hl,bc                               ;af5f
        LD      (hl),h                              ;af60
        SUB     c                                   ;af61
        ADD     hl,bc                               ;af62
        LD      h,h                                 ;af63
        AND     c                                   ;af64
        ADD     hl,bc                               ;af65
        HALT                                        ;af66
        RST     CHRGTR                              ;af67
        INC     c                                   ;af68
        HALT                                        ;af69
bF_laf6ah:
        LD      h,a                                 ;af6a
        INC     c                                   ;af6b
        LD      h,d                                 ;af6c
        ADD     a,b                                 ;af6d
        LD      c,0x86                              ;af6e
        OR      a                                   ;af70
        RRCA                                        ;af71
        LD      (hl),h                              ;af72
        OR      c                                   ;af73
        DJNZ    $+88                                ;af74
        RST     CHRGTR                              ;af76
bF_laf77h:
        RST     KEYINT                              ;af77
        LD      sp,0xa600                           ;af78
        LD      b,a                                 ;af7b
        NOP                                         ;af7c
        ADD     a,h                                 ;af7d
        AND     c                                   ;af7e
        NOP                                         ;af7f
        LD      (hl),h                              ;af80
        POP     bc                                  ;af81
        NOP                                         ;af82
        AND     h                                   ;af83
        POP     bc                                  ;af84
        LD      bc,0x3480                           ;af85
        LD      bc,0x7480                           ;af88
        LD      bc,0x40a2                           ;af8b
        INC     bc                                  ;af8e
bF_laf8fh:
        LD      h,b                                 ;af8f
        LD      b,l                                 ;af90
        INC     bc                                  ;af91
        ADD     a,b                                 ;af92
        LD      h,l                                 ;af93
        INC     bc                                  ;af94
        LD      (hl),c                              ;af95
        ADD     a,b                                 ;af96
        INC     b                                   ;af97
        ADD     a,b                                 ;af98
        LD      b,(hl)                              ;af99
        INC     b                                   ;af9a
        AND     (hl)                                ;af9b
        SUB     a                                   ;af9c
        DEC     b                                   ;af9d
        LD      h,(hl)                              ;af9e
        AND     a                                   ;af9f
        LD      b,0xa6                              ;afa0
        RST     CHRGTR                              ;afa2
        RLCA                                        ;afa3
        SUB     b                                   ;afa4
        LD      (hl),0x8                            ;afa5
        LD      h,b                                 ;afa7
        DEC     (hl)                                ;afa8
        EX      af,af'                              ;afa9
        SUB     b                                   ;afaa
        LD      d,(hl)                              ;afab
        LD      a,(bc)                              ;afac
        AND     (hl)                                ;afad
        LD      b,a                                 ;afae
        DEC     bc                                  ;afaf
        LD      h,b                                 ;afb0
        DEC     (hl)                                ;afb1
        DEC     bc                                  ;afb2
        ADD     a,b                                 ;afb3
        LD      d,(hl)                              ;afb4
        DEC     bc                                  ;afb5
        SUB     d                                   ;afb6
        LD      (hl),b                              ;afb7
        DEC     c                                   ;afb8
        LD      (hl),b                              ;afb9
        LD      b,l                                 ;afba
        DEC     c                                   ;afbb
        ADD     a,b                                 ;afbc
        LD      h,h                                 ;afbd
        LD      c,0x80                              ;afbe
        LD      d,(hl)                              ;afc0
        LD      c,0xa1                              ;afc1
        ADD     a,b                                 ;afc3
        DJNZ    bF_lb02ch                           ;afc4
        RST     0                                   ;afc6
        LD      de,0x3570                           ;afc7
        LD      de,bF_lb570h                        ;afca
        LD      (de),a                              ;afcd
        ADD     a,b                                 ;afce
        LD      (hl),0x13                           ;afcf
        ADD     a,b                                 ;afd1
        DEC     h                                   ;afd2
        INC     de                                  ;afd3
        ADD     a,b                                 ;afd4
        LD      b,(hl)                              ;afd5
        INC     de                                  ;afd6
        AND     d                                   ;afd7
        LD      h,b                                 ;afd8
        DEC     d                                   ;afd9
        ADD     a,b                                 ;afda
        LD      h,0x15                              ;afdb
        AND     h                                   ;afdd
        LD      b,c                                 ;afde
        RLA                                         ;afdf
        ADD     a,b                                 ;afe0
        LD      d,h                                 ;afe1
        RLA                                         ;afe2
        LD      h,b                                 ;afe3
        SUB     l                                   ;afe4
        JR      bF_laf77h                           ;afe5
        INC     (hl)                                ;afe7
        JR      bF_laf6ah                           ;afe8
        LD      (hl),l                              ;afea
        JR      bF_lb05fh                           ;afeb
        LD      h,b                                 ;afed
        ADD     hl,de                               ;afee
        ADD     a,b                                 ;afef
        LD      h,0x19                              ;aff0
        AND     (hl)                                ;aff2
        OR      a                                   ;aff3
        LD      a,(de)                              ;aff4
        LD      h,(hl)                              ;aff5
        RST     0                                   ;aff6
        DEC     de                                  ;aff7
        LD      h,b                                 ;aff8
        LD      h,l                                 ;aff9
        DEC     de                                  ;affa
        ADD     a,b                                 ;affb
        ADD     a,h                                 ;affc
        DEC     e                                   ;affd
        LD      h,b                                 ;affe
        DEC     (hl)                                ;afff
        DEC     e                                   ;b000
        ADD     a,b                                 ;b001
        LD      d,l                                 ;b002
        DEC     e                                   ;b003
        LD      (hl),h                              ;b004
        ADD     a,c                                 ;b005
        DEC     e                                   ;b006
        ADD     a,h                                 ;b007
        SUB     c                                   ;b008
        DEC     e                                   ;b009
        SUB     h                                   ;b00a
        AND     c                                   ;b00b
        RST     KEYINT                              ;b00c
        DEC     e                                   ;b00d
        INC     bc                                  ;b00e
        SUB     (hl)                                ;b00f
        LD      d,a                                 ;b010
        RLCA                                        ;b011
        AND     c                                   ;b012
        LD      d,b                                 ;b013
        INC     c                                   ;b014
        HALT                                        ;b015
        RST     0                                   ;b016
        LD      c,0x81                              ;b017
        SUB     b                                   ;b019
        DEC     d                                   ;b01a
        HALT                                        ;b01b
        RLA                                         ;b01c
        DEC     d                                   ;b01d
        ADD     a,d                                 ;b01e
        AND     b                                   ;b01f
        LD      d,0x90                              ;b020
        SUB     h                                   ;b022
        LD      a,(de)                              ;b023
        SUB     b                                   ;b024
        LD      d,h                                 ;b025
        LD      a,(de)                              ;b026
        SUB     b                                   ;b027
        SUB     h                                   ;b028
        DEC     de                                  ;b029
        ADD     a,h                                 ;b02a
        LD      h,c                                 ;b02b
bF_lb02ch:
        DEC     de                                  ;b02c
        ADD     a,h                                 ;b02d
        ADD     a,c                                 ;b02e
        DEC     de                                  ;b02f
        ADD     a,h                                 ;b030
        AND     c                                   ;b031
        INC     e                                   ;b032
        ADD     a,d                                 ;b033
        LD      (hl),b                              ;b034
        DEC     e                                   ;b035
        ADD     a,b                                 ;b036
        LD      h,0x1d                              ;b037
        SUB     b                                   ;b039
        ADD     a,h                                 ;b03a
        RRA                                         ;b03b
        HALT                                        ;b03c
        ADD     a,a                                 ;b03d
        LD      hl,0x36a0                           ;b03e
        LD      (0xd796),hl                         ;b041
        INC     h                                   ;b044
        OR      h                                   ;b045
        AND     c                                   ;b046
        INC     h                                   ;b047
        SUB     h                                   ;b048
        OR      c                                   ;b049
        DEC     h                                   ;b04a
        SUB     (hl)                                ;b04b
        RLA                                         ;b04c
        DEC     h                                   ;b04d
        OR      b                                   ;b04e
        LD      d,(hl)                              ;b04f
        DAA                                         ;b050
        AND     b                                   ;b051
        LD      h,0x27                              ;b052
        ADD     a,b                                 ;b054
        AND     l                                   ;b055
        DAA                                         ;b056
        OR      (hl)                                ;b057
        RST     CHRGTR                              ;b058
        JR      z,$-104                             ;b059
        RLA                                         ;b05b
        ADD     hl,hl                               ;b05c
        ADD     a,b                                 ;b05d
        LD      h,l                                 ;b05e
bF_lb05fh:
        ADD     hl,hl                               ;b05f
        AND     b                                   ;b060
        ADD     a,h                                 ;b061
        DEC     hl                                  ;b062
        SUB     (hl)                                ;b063
        LD      h,a                                 ;b064
        RST     KEYINT                              ;b065
        DEC     c                                   ;b066
        INC     b                                   ;b067
        HALT                                        ;b068
        DAA                                         ;b069
        RLCA                                        ;b06a
        HALT                                        ;b06b
        DAA                                         ;b06c
        LD      a,(bc)                              ;b06d
        AND     (hl)                                ;b06e
        RST     CHRGTR                              ;b06f
        LD      c,0x86                              ;b070
        RST     0                                   ;b072
        LD      de,0x1776                           ;b073
        DEC     de                                  ;b076
        HALT                                        ;b077
        RST     CHRGTR                              ;b078
        LD      hl,bF_la786h                        ;b079
        INC     hl                                  ;b07c
        HALT                                        ;b07d
        ADD     a,a                                 ;b07e
        INC     h                                   ;b07f
        SUB     (hl)                                ;b080
        RST     CHRGTR                              ;b081
bF_lb082h:
        LD      h,0x66                              ;b082
        AND     a                                   ;b084
        INC     a                                   ;b085
        HALT                                        ;b086
        OR      a                                   ;b087
        LD      a,0x61                              ;b088
        LD      h,b                                 ;b08a
        LD      b,b                                 ;b08b
        LD      h,d                                 ;b08c
        AND     b                                   ;b08d
        RST     KEYINT                              ;b08e
        INC     e                                   ;b08f
        NOP                                         ;b090
        ADD     a,d                                 ;b091
        OR      b                                   ;b092
        LD      bc,bF_la080h+1                      ;b093
        INC     b                                   ;b096
        SUB     d                                   ;b097
        AND     b                                   ;b098
        LD      b,0x74                              ;b099
        SUB     c                                   ;b09b
        LD      b,0x84                              ;b09c
        OR      c                                   ;b09e
        RLCA                                        ;b09f
        ADD     a,(hl)                              ;b0a0
        LD      b,a                                 ;b0a1
        EX      af,af'                              ;b0a2
        ADD     a,d                                 ;b0a3
        LD      d,b                                 ;b0a4
        ADD     hl,bc                               ;b0a5
        HALT                                        ;b0a6
        DAA                                         ;b0a7
        LD      a,(bc)                              ;b0a8
        LD      (hl),h                              ;b0a9
        LD      d,c                                 ;b0aa
        LD      a,(bc)                              ;b0ab
        SUB     h                                   ;b0ac
        LD      h,c                                 ;b0ad
        LD      a,(bc)                              ;b0ae
        OR      h                                   ;b0af
        LD      (hl),c                              ;b0b0
        INC     c                                   ;b0b1
        AND     h                                   ;b0b2
        ADD     a,c                                 ;b0b3
        INC     c                                   ;b0b4
        ADD     a,h                                 ;b0b5
        SUB     c                                   ;b0b6
        INC     c                                   ;b0b7
        SUB     h                                   ;b0b8
        OR      c                                   ;b0b9
        INC     c                                   ;b0ba
        LD      (hl),h                              ;b0bb
        POP     bc                                  ;b0bc
        DEC     c                                   ;b0bd
        ADD     a,c                                 ;b0be
        LD      h,b                                 ;b0bf
        RRCA                                        ;b0c0
        ADD     a,h                                 ;b0c1
        LD      h,c                                 ;b0c2
        DJNZ    bF_lb13bh                           ;b0c3
        ADD     a,a                                 ;b0c5
        LD      de,0x3174                           ;b0c6
        LD      de,0x7796                           ;b0c9
        INC     de                                  ;b0cc
        ADD     a,h                                 ;b0cd
        LD      sp,0x9413                           ;b0ce
        LD      h,c                                 ;b0d1
        INC     de                                  ;b0d2
        ADD     a,h                                 ;b0d3
        ADD     a,c                                 ;b0d4
        INC     d                                   ;b0d5
        HALT                                        ;b0d6
        RST     DCOMPR                              ;b0d7
        DEC     d                                   ;b0d8
        ADD     a,d                                 ;b0d9
        LD      b,b                                 ;b0da
        LD      d,0x81                              ;b0db
        SUB     b                                   ;b0dd
        RLA                                         ;b0de
        ADD     a,(hl)                              ;b0df
        DAA                                         ;b0e0
        RLA                                         ;b0e1
        ADD     a,h                                 ;b0e2
        LD      d,c                                 ;b0e3
        RST     KEYINT                              ;b0e4
        ADD     hl,de                               ;b0e5
        NOP                                         ;b0e6
        LD      (hl),c                              ;b0e7
        LD      (hl),b                              ;b0e8
        NOP                                         ;b0e9
        ADD     a,b                                 ;b0ea
        LD      h,h                                 ;b0eb
        LD      bc,0x3690                           ;b0ec
        LD      bc,0x7072                           ;b0ef
        LD      bc,0x70a1                           ;b0f2
        LD      (bc),a                              ;b0f5
        AND     (hl)                                ;b0f6
        SCF                                         ;b0f7
        LD      (bc),a                              ;b0f8
        ADD     a,b                                 ;b0f9
        OR      l                                   ;b0fa
        INC     bc                                  ;b0fb
        ADD     a,d                                 ;b0fc
        OR      b                                   ;b0fd
        INC     b                                   ;b0fe
        AND     (hl)                                ;b0ff
        DAA                                         ;b100
        INC     b                                   ;b101
        LD      h,b                                 ;b102
        AND     l                                   ;b103
        INC     b                                   ;b104
        ADD     a,b                                 ;b105
        PUSH    bc                                  ;b106
        LD      b,0x60                              ;b107
        DEC     d                                   ;b109
        LD      b,0x91                              ;b10a
        LD      d,b                                 ;b10c
        LD      b,0xa6                              ;b10d
        RST     CHRGTR                              ;b10f
        RLCA                                        ;b110
        ADD     a,d                                 ;b111
        JR      nc,bF_lb11ch                        ;b112
        LD      h,(hl)                              ;b114
        LD      h,a                                 ;b115
        ADD     hl,bc                               ;b116
        AND     (hl)                                ;b117
        DAA                                         ;b118
        INC     c                                   ;b119
        LD      h,b                                 ;b11a
        LD      h,l                                 ;b11b
