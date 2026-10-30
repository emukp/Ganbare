txtDialogEmpty02:
        LD      l,b                                 ;ad09
        LD      d,b                                 ;ad0a
        NOP                                         ;ad0b
        NOP                                         ;ad0c
        NOP                                         ;ad0d
        NOP                                         ;ad0e
        NOP                                         ;ad0f
        NOP                                         ;ad10
        NOP                                         ;ad11
        NOP                                         ;ad12
        NOP                                         ;ad13
        NOP                                         ;ad14
        NOP                                         ;ad15
        NOP                                         ;ad16
        NOP                                         ;ad17
        NOP                                         ;ad18
        RST     KEYINT                              ;ad19
        LD      l,b                                 ;ad1a
        JR      c,bC_lad51h                         ;ad1b
        LD      (hl),0x5f                           ;ad1d
        SCF                                         ;ad1f
        LD      a,(0x5d)                            ;ad20
        LD      c,a                                 ;ad23
        DEC     a                                   ;ad24
bC_lad25h:
        LD      c,c                                 ;ad25
        CP      0x68                                ;ad26
        LD      b,b                                 ;ad28
        INC     (hl)                                ;ad29
        LD      e,e                                 ;ad2a
        LD      e,(hl)                              ;ad2b
        CCF                                         ;ad2c
        LD      d,l                                 ;ad2d
        RST     KEYINT                              ;ad2e
txtDialogShop401: equ     #ad2f
        DEFB    0x68,0x38                           ;ad2f ; data:text
        DEFB    0x00                                ;ad31
bC_lad32h:
        NOP                                         ;ad32
        NOP                                         ;ad33
        NOP                                         ;ad34
        NOP                                         ;ad35
        LD      c,b                                 ;ad36
        LD      b,d                                 ;ad37
        DEC     (hl)                                ;ad38
        LD      h,e                                 ;ad39
        LD      c,a                                 ;ad3a
        LD      e,h                                 ;ad3b
        CP      0x68                                ;ad3c
        LD      b,b                                 ;ad3e
        LD      d,d                                 ;ad3f
        LD      e,(hl)                              ;ad40
        LD      b,d                                 ;ad41
        NOP                                         ;ad42
        LD      b,h                                 ;ad43
        LD      sp,0x4153                           ;ad44
        LD      c,c                                 ;ad47
        CP      0x68                                ;ad48
        LD      c,b                                 ;ad4a
        DEC     (hl)                                ;ad4b
        INC     sp                                  ;ad4c
        LD      e,(hl)                              ;ad4d
        LD      b,e                                 ;ad4e
        SCF                                         ;ad4f
        LD      e,c                                 ;ad50
bC_lad51h:
        RST     KEYINT                              ;ad51
        LD      l,b                                 ;ad52
        JR      c,$+52                              ;ad53
        LD      b,b                                 ;ad55
        LD      c,c                                 ;ad56
        NOP                                         ;ad57
        DEC     sp                                  ;ad58
        LD      b,b                                 ;ad59
        LD      d,e                                 ;ad5a
        NOP                                         ;ad5b
        CCF                                         ;ad5c
        LD      h,e                                 ;ad5d
        INC     a                                   ;ad5e
        CP      0x68                                ;ad5f
        LD      b,b                                 ;ad61
        LD      b,h                                 ;ad62
        LD      b,l                                 ;ad63
        DEC     (hl)                                ;ad64
        NOP                                         ;ad65
        LD      (0x4e57),a                          ;ad66
        INC     a                                   ;ad69
        DEC     (hl)                                ;ad6a
        RST     KEYINT                              ;ad6b
        LD      l,b                                 ;ad6c
        JR      c,bC_ladc4h                         ;ad6d
        LD      (0x6335),a                          ;ad6f
        NOP                                         ;ad72
        LD      b,h                                 ;ad73
        LD      sp,0x5644                           ;ad74
        CP      0x68                                ;ad77
        LD      b,b                                 ;ad79
        LD      b,d                                 ;ad7a
        LD      h,e                                 ;ad7b
        LD      b,d                                 ;ad7c
        LD      sp,0x435e                           ;ad7d
        SCF                                         ;ad80
        LD      e,c                                 ;ad81
        RST     KEYINT                              ;ad82
        LD      l,b                                 ;ad83
        JR      c,$+71                              ;ad84
        LD      sp,0x5d3a                           ;ad86
        NOP                                         ;ad89
        LD      c,(hl)                              ;ad8a
        LD      sp,0x6343                           ;ad8b
        CP      0x68                                ;ad8e
        LD      b,b                                 ;ad90
        ADD     hl,sp                               ;ad91
        LD      e,l                                 ;ad92
        DEC     (hl)                                ;ad93
        LD      sp,0x4300                           ;ad94
        SCF                                         ;ad97
        LD      c,h                                 ;ad98
        LD      h,e                                 ;ad99
        LD      b,c                                 ;ad9a
        LD      b,l                                 ;ad9b
        CP      0x68                                ;ad9c
        LD      c,b                                 ;ad9e
        LD      c,(hl)                              ;ad9f
        LD      (hl),0x52                           ;ada0
        LD      c,b                                 ;ada2
        NOP                                         ;ada3
        LD      e,h                                 ;ada4
        NOP                                         ;ada5
        JR      nc,bC_lade0h                        ;ada6
        LD      h,e                                 ;ada8
        LD      d,l                                 ;ada9
        LD      (0x68ff),a                          ;adaa
        JR      c,bC_lade3h                         ;adad
        LD      d,e                                 ;adaf
        LD      c,e                                 ;adb0
        LD      h,e                                 ;adb1
        LD      e,l                                 ;adb2
        RST     KEYINT                              ;adb3
        LD      l,b                                 ;adb4
        JR      c,bC_ladf0h                         ;adb5
        LD      h,e                                 ;adb7
        DEC     (hl)                                ;adb8
        LD      e,d                                 ;adb9
        LD      (bC_la0ffh),a                       ;adba
        LD      b,b                                 ;adbd
        INC     (hl)                                ;adbe
        LD      d,e                                 ;adbf
        LD      c,e                                 ;adc0
        LD      h,e                                 ;adc1
        LD      e,l                                 ;adc2
        RST     KEYINT                              ;adc3
bC_ladc4h:
        AND     b                                   ;adc4
        LD      b,b                                 ;adc5
        ADD     hl,sp                               ;adc6
        LD      h,e                                 ;adc7
        DEC     (hl)                                ;adc8
        LD      e,d                                 ;adc9
        LD      (0x68ff),a                          ;adca
        JR      c,bC_lae13h                         ;adcd
        LD      e,l                                 ;adcf
        DEC     sp                                  ;add0
        LD      h,e                                 ;add1
        NOP                                         ;add2
        DEC     sp                                  ;add3
        LD      h,e                                 ;add4
        DEC     sp                                  ;add5
        LD      e,l                                 ;add6
        LD      e,h                                 ;add7
        DEC     sp                                  ;add8
        LD      e,c                                 ;add9
        LD      h,h                                 ;adda
        RST     KEYINT                              ;addb
        LD      l,b                                 ;addc
        JR      c,bC_lae21h                         ;addd
        LD      b,c                                 ;addf
bC_lade0h:
        DEC     (hl)                                ;ade0
        LD      h,e                                 ;ade1
        SCF                                         ;ade2
bC_lade3h:
        LD      c,c                                 ;ade3
        NOP                                         ;ade4
        LD      a,(0x3b31)                          ;ade5
        LD      h,e                                 ;ade8
        LD      h,c                                 ;ade9
        LD      (0xfe48),a                          ;adea
        LD      l,b                                 ;aded
        LD      b,b                                 ;adee
        INC     (hl)                                ;adef
bC_ladf0h:
        LD      e,l                                 ;adf0
        DEC     (hl)                                ;adf1
        LD      h,e                                 ;adf2
        SCF                                         ;adf3
        LD      b,h                                 ;adf4
        LD      d,a                                 ;adf5
        LD      h,h                                 ;adf6
        RST     KEYINT                              ;adf7
        LD      l,b                                 ;adf8
        JR      c,$+56                              ;adf9
        LD      c,l                                 ;adfb
        LD      h,e                                 ;adfc
        LD      (0x4943),a                          ;adfd
        NOP                                         ;ae00
        LD      d,c                                 ;ae01
        LD      a,(0x5163)                          ;ae02
        LD      b,d                                 ;ae05
        LD      sp,HNOFO                            ;ae06
        LD      l,b                                 ;ae09
        LD      b,b                                 ;ae0a
        LD      d,h                                 ;ae0b
        LD      d,c                                 ;ae0c
        NOP                                         ;ae0d
        LD      b,h                                 ;ae0e
        LD      d,a                                 ;ae0f
        LD      h,h                                 ;ae10
        RST     KEYINT                              ;ae11
        LD      l,b                                 ;ae12
bC_lae13h:
        JR      c,bC_lae70h                         ;ae13
        CCF                                         ;ae15
        DEC     sp                                  ;ae16
        LD      c,c                                 ;ae17
        NOP                                         ;ae18
        DEC     sp                                  ;ae19
        LD      h,c                                 ;ae1a
        LD      (0x5c57),a                          ;ae1b
        CP      0x68                                ;ae1e
        LD      b,b                                 ;ae20
bC_lae21h:
        LD      b,(hl)                              ;ae21
        INC     a                                   ;ae22
        LD      c,(hl)                              ;ae23
        LD      b,h                                 ;ae24
        LD      sp,0xff64                           ;ae25
        LD      l,b                                 ;ae28
        JR      c,bC_lae66h                         ;ae29
        LD      e,l                                 ;ae2b
        LD      c,b                                 ;ae2c
        NOP                                         ;ae2d
        LD      d,l                                 ;ae2e
        LD      e,(hl)                              ;ae2f
        LD      (hl),0x60                           ;ae30
        LD      (0x4400),a                          ;ae32
        SCF                                         ;ae35
        DEC     sp                                  ;ae36
        LD      b,d                                 ;ae37
        CP      0x68                                ;ae38
        LD      b,b                                 ;ae3a
        DEC     sp                                  ;ae3b
        LD      e,l                                 ;ae3c
        LD      c,b                                 ;ae3d
        NOP                                         ;ae3e
        LD      c,(hl)                              ;ae3f
        LD      e,l                                 ;ae40
        LD      a,0x63                              ;ae41
        SCF                                         ;ae43
        LD      c,c                                 ;ae44
        NOP                                         ;ae45
        LD      b,h                                 ;ae46
        LD      sp,0xff64                           ;ae47
        LD      l,b                                 ;ae4a
        JR      c,bC_lae7eh                         ;ae4b
        DEC     (hl)                                ;ae4d
        LD      d,a                                 ;ae4e
        LD      c,c                                 ;ae4f
        NOP                                         ;ae50
        LD      sp,0x435e                           ;ae51
        LD      (hl),0x48                           ;ae54
        CP      0x68                                ;ae56
        LD      b,b                                 ;ae58
        LD      (hl),0x61                           ;ae59
        LD      (0x36),a                            ;ae5b
        LD      b,h                                 ;ae5e
        LD      d,a                                 ;ae5f
        LD      h,h                                 ;ae60
        RST     KEYINT                              ;ae61
        LD      l,b                                 ;ae62
        JR      c,$+70                              ;ae63
        LD      e,l                                 ;ae65
bC_lae66h:
        DEC     sp                                  ;ae66
        LD      h,e                                 ;ae67
        NOP                                         ;ae68
        LD      c,b                                 ;ae69
        NOP                                         ;ae6a
        LD      (hl),0x61                           ;ae6b
        LD      (HCVD),a                            ;ae6d
bC_lae70h:
        LD      l,b                                 ;ae70
        LD      b,b                                 ;ae71
        INC     sp                                  ;ae72
        LD      sp,0x5d33                           ;ae73
        NOP                                         ;ae76
        LD      b,h                                 ;ae77
        LD      d,a                                 ;ae78
        LD      h,h                                 ;ae79
        RST     KEYINT                              ;ae7a
        LD      l,b                                 ;ae7b
        JR      c,bC_laec2h                         ;ae7c
bC_lae7eh:
        SCF                                         ;ae7e
        ADD     hl,sp                               ;ae7f
        LD      b,e                                 ;ae80
        LD      d,d                                 ;ae81
        NOP                                         ;ae82
        LD      sp,0x3b5e                           ;ae83
        LD      h,b                                 ;ae86
        LD      c,b                                 ;ae87
        CP      0x68                                ;ae88
        LD      b,b                                 ;ae8a
        DEC     (hl)                                ;ae8b
        LD      sp,0x3756                           ;ae8c
        NOP                                         ;ae8f
        LD      b,h                                 ;ae90
        LD      d,a                                 ;ae91
        LD      h,h                                 ;ae92
        RST     KEYINT                              ;ae93
        LD      l,b                                 ;ae94
        JR      c,$+71                              ;ae95
        LD      e,l                                 ;ae97
        JR      c,bC_laefdh                         ;ae98
        LD      e,l                                 ;ae9a
        LD      c,c                                 ;ae9b
        CP      0x68                                ;ae9c
        LD      b,b                                 ;ae9e
        DEC     (hl)                                ;ae9f
        LD      e,l                                 ;aea0
        DEC     (hl)                                ;aea1
        LD      h,e                                 ;aea2
        INC     sp                                  ;aea3
        LD      e,b                                 ;aea4
        NOP                                         ;aea5
        JR      nc,bC_laee3h                        ;aea6
        CP      0x68                                ;aea8
        LD      c,b                                 ;aeaa
        LD      b,d                                 ;aeab
        LD      h,e                                 ;aeac
        JR      nc,bC_laf07h                        ;aead
        LD      h,h                                 ;aeaf
        RST     KEYINT                              ;aeb0
        LD      l,b                                 ;aeb1
        JR      c,bC_laef6h                         ;aeb2
        LD      e,l                                 ;aeb4
        LD      a,(0x4331)                          ;aeb5
        LD      c,c                                 ;aeb8
        CP      0x68                                ;aeb9
        LD      b,b                                 ;aebb
        LD      b,l                                 ;aebc
        LD      e,l                                 ;aebd
        CCF                                         ;aebe
        LD      sp,0x6342                           ;aebf
bC_laec2h:
        JR      nc,bC_laf1ch                        ;aec2
        LD      h,h                                 ;aec4
        RST     KEYINT                              ;aec5
        LD      l,b                                 ;aec6
        JR      c,bC_laf02h                         ;aec7
        ADD     hl,sp                               ;aec9
        LD      e,d                                 ;aeca
        LD      c,c                                 ;aecb
        NOP                                         ;aecc
        LD      sp,0x3b5e                           ;aecd
        LD      h,b                                 ;aed0
        LD      c,b                                 ;aed1
        CP      0x68                                ;aed2
        LD      b,b                                 ;aed4
        JR      c,bC_laf3ah                         ;aed5
        LD      (hl),0x3b                           ;aed7
        LD      h,e                                 ;aed9
        LD      h,c                                 ;aeda
        LD      (0x633f),a                          ;aedb
        LD      h,h                                 ;aede
        RST     KEYINT                              ;aedf
        LD      l,b                                 ;aee0
        JR      c,bC_laf25h                         ;aee1
bC_laee3h:
        LD      b,c                                 ;aee3
        DEC     (hl)                                ;aee4
        LD      h,e                                 ;aee5
        SCF                                         ;aee6
        LD      c,b                                 ;aee7
        CP      0x68                                ;aee8
        LD      b,b                                 ;aeea
        CCF                                         ;aeeb
        LD      h,e                                 ;aeec
        LD      sp,0x5e31                           ;aeed
        LD      c,l                                 ;aef0
        LD      h,d                                 ;aef1
        LD      c,c                                 ;aef2
        CP      0x68                                ;aef3
        LD      c,b                                 ;aef5
bC_laef6h:
        LD      c,e                                 ;aef6
        DEC     sp                                  ;aef7
        LD      e,l                                 ;aef8
        NOP                                         ;aef9
        LD      b,l                                 ;aefa
        JR      nc,$+90                             ;aefb
bC_laefdh:
        LD      h,h                                 ;aefd
        RST     KEYINT                              ;aefe
        LD      l,b                                 ;aeff
        JR      c,bC_laf5dh                         ;af00
bC_laf02h:
        CCF                                         ;af02
        DEC     sp                                  ;af03
        LD      c,b                                 ;af04
        NOP                                         ;af05
        INC     sp                                  ;af06
bC_laf07h:
        LD      e,l                                 ;af07
        LD      e,h                                 ;af08
        CP      0x68                                ;af09
        LD      b,b                                 ;af0b
        LD      c,a                                 ;af0c
        CCF                                         ;af0d
        LD      h,e                                 ;af0e
        LD      a,(0x3144)                          ;af0f
        LD      b,d                                 ;af12
        LD      h,e                                 ;af13
        NOP                                         ;af14
        SCF                                         ;af15
        CCF                                         ;af16
        LD      h,e                                 ;af17
        LD      a,(0x6431)                          ;af18
        RST     KEYINT                              ;af1b
bC_laf1ch:
        LD      l,b                                 ;af1c
        JR      c,bC_laf5ah                         ;af1d
        LD      b,l                                 ;af1f
        LD      e,l                                 ;af20
        NOP                                         ;af21
        LD      b,l                                 ;af22
        NOP                                         ;af23
        SCF                                         ;af24
bC_laf25h:
        LD      h,e                                 ;af25
        LD      b,b                                 ;af26
        LD      b,h                                 ;af27
        DEC     sp                                  ;af28
        LD      h,h                                 ;af29
        RST     KEYINT                              ;af2a
        LD      l,b                                 ;af2b
        JR      c,bC_laf69h                         ;af2c
        LD      d,(hl)                              ;af2e
        LD      b,(hl)                              ;af2f
        DEC     (hl)                                ;af30
        LD      h,e                                 ;af31
        NOP                                         ;af32
        LD      b,e                                 ;af33
        LD      c,l                                 ;af34
        LD      h,e                                 ;af35
        JR      c,bC_laf9ch                         ;af36
        RST     KEYINT                              ;af38
        LD      l,b                                 ;af39
bC_laf3ah:
        JR      c,bC_laf7eh                         ;af3a
        LD      d,d                                 ;af3c
        LD      b,b                                 ;af3d
        NOP                                         ;af3e
        LD      c,e                                 ;af3f
        LD      h,e                                 ;af40
        CCF                                         ;af41
        LD      a,(0x645d)                          ;af42
        RST     KEYINT                              ;af45
        LD      l,b                                 ;af46
        JR      c,$+59                              ;af47
        LD      d,c                                 ;af49
        CCF                                         ;af4a
        LD      h,e                                 ;af4b
        LD      e,e                                 ;af4c
        LD      d,(hl)                              ;af4d
        NOP                                         ;af4e
        ADD     hl,sp                               ;af4f
        LD      (0x5a3f),a                          ;af50
        LD      (0xff64),a                          ;af53
        LD      l,b                                 ;af56
        JR      c,bC_laf89h                         ;af57
        LD      d,a                                 ;af59
bC_laf5ah:
        LD      a,0x42                              ;af5a
        LD      h,e                                 ;af5c
bC_laf5dh:
        NOP                                         ;af5d
        LD      (0x4b5e),a                          ;af5e
        LD      e,l                                 ;af61
        CP      0x68                                ;af62
        LD      b,b                                 ;af64
        LD      b,h                                 ;af65
        DEC     (hl)                                ;af66
        LD      a,0x47                              ;af67
bC_laf69h:
        NOP                                         ;af69
        JR      nc,$+96                             ;af6a
        LD      c,c                                 ;af6c
        LD      e,l                                 ;af6d
        LD      h,h                                 ;af6e
        RST     KEYINT                              ;af6f
        LD      l,b                                 ;af70
        JR      c,$+79                              ;af71
        LD      h,e                                 ;af73
        SCF                                         ;af74
        LD      d,(hl)                              ;af75
        LD      c,c                                 ;af76
        LD      c,a                                 ;af77
        LD      e,l                                 ;af78
        LD      b,h                                 ;af79
        CP      0x68                                ;af7a
        LD      b,b                                 ;af7c
        INC     (hl)                                ;af7d
bC_laf7eh:
        LD      (hl),0x42                           ;af7e
        LD      sp,0x6458                           ;af80
        CP      0x68                                ;af83
        LD      c,b                                 ;af85
        INC     (hl)                                ;af86
        LD      (hl),0x42                           ;af87
bC_laf89h:
        LD      sp,0x3558                           ;af89
        LD      d,(hl)                              ;af8c
        CP      0x68                                ;af8d
        LD      d,b                                 ;af8f
        LD      b,a                                 ;af90
        LD      d,b                                 ;af91
        LD      sp,0x3f5d                           ;af92
        LD      h,e                                 ;af95
        LD      h,h                                 ;af96
        RST     KEYINT                              ;af97
        LD      l,b                                 ;af98
        JR      c,bC_lafdah                         ;af99
        LD      c,b                                 ;af9b
bC_laf9ch:
        DEC     sp                                  ;af9c
        LD      (hl),0x43                           ;af9d
        NOP                                         ;af9f
        INC     (hl)                                ;afa0
        LD      d,d                                 ;afa1
        LD      (0x6335),a                          ;afa2
        CP      0x68                                ;afa5
        LD      b,b                                 ;afa7
        CCF                                         ;afa8
        LD      c,b                                 ;afa9
        DEC     sp                                  ;afaa
        LD      (hl),0x0                            ;afab
        DEC     sp                                  ;afad
        LD      e,l                                 ;afae
        INC     a                                   ;afaf
        LD      h,e                                 ;afb0
        LD      sp,0x5744                           ;afb1
        LD      h,h                                 ;afb4
        RST     KEYINT                              ;afb5
        LD      l,b                                 ;afb6
        JR      c,bC_laff1h                         ;afb7
        LD      h,e                                 ;afb9
        LD      h,(hl)                              ;afba
        LD      d,b                                 ;afbb
        LD      b,e                                 ;afbc
        LD      c,c                                 ;afbd
        NOP                                         ;afbe
        LD      sp,0x3f36                           ;afbf
        CP      0x68                                ;afc2
        LD      b,b                                 ;afc4
        LD      a,0x32                              ;afc5
        ADD     hl,sp                               ;afc7
        LD      h,e                                 ;afc8
        LD      (0x6342),a                          ;afc9
        JR      nc,bC_lb025h                        ;afcc
        CP      0x68                                ;afce
        LD      c,b                                 ;afd0
        LD      sp,0x633f                           ;afd1
        LD      sp,0x44                             ;afd4
        CCF                                         ;afd7
        LD      e,l                                 ;afd8
        DEC     sp                                  ;afd9
bC_lafdah:
        LD      h,e                                 ;afda
        LD      h,b                                 ;afdb
        LD      e,l                                 ;afdc
        RST     KEYINT                              ;afdd
        LD      l,b                                 ;afde
        LD      d,b                                 ;afdf
        LD      b,d                                 ;afe0
        LD      h,e                                 ;afe1
        JR      nc,bC_lb03ch                        ;afe2
        LD      h,h                                 ;afe4
        RST     KEYINT                              ;afe5
        LD      l,b                                 ;afe6
        JR      c,bC_lb044h                         ;afe7
        LD      (hl),0x30                           ;afe9
        DEC     (hl)                                ;afeb
        LD      h,e                                 ;afec
        LD      e,b                                 ;afed
        NOP                                         ;afee
        DEC     (hl)                                ;afef
        LD      e,l                                 ;aff0
bC_laff1h:
        LD      b,e                                 ;aff1
        LD      h,e                                 ;aff2
        LD      (0x4943),a                          ;aff3
        CP      0x68                                ;aff6
        LD      b,b                                 ;aff8
        ADD     hl,sp                               ;aff9
        ADD     hl,sp                               ;affa
        LD      e,d                                 ;affb
        LD      b,e                                 ;affc
        NOP                                         ;affd
        DEC     (hl)                                ;affe
        LD      e,l                                 ;afff
        DEC     (hl)                                ;b000
        SCF                                         ;b001
        LD      c,b                                 ;b002
        NOP                                         ;b003
        LD      sp,0x405e                           ;b004
        CP      0x68                                ;b007
        LD      c,b                                 ;b009
        LD      b,d                                 ;b00a
        LD      h,e                                 ;b00b
        JR      nc,bC_lb066h                        ;b00c
        LD      h,h                                 ;b00e
        RST     KEYINT                              ;b00f
        LD      l,b                                 ;b010
        JR      c,$+63                              ;b011
        LD      sp,0x5d3b                           ;b013
        LD      b,d                                 ;b016
        LD      (hl),0x0                            ;b017
        LD      b,l                                 ;b019
        LD      c,c                                 ;b01a
        CP      0x68                                ;b01b
        LD      b,b                                 ;b01d
        JR      nc,$+80                             ;b01e
        LD      b,b                                 ;b020
        LD      h,b                                 ;b021
        JR      nc,bC_lb024h                        ;b022
bC_lb024h:
        LD      b,d                                 ;b024
bC_lb025h:
        LD      h,e                                 ;b025
        CP      0x68                                ;b026
        LD      c,b                                 ;b028
        LD      (hl),0x63                           ;b029
        DEC     sp                                  ;b02b
        LD      h,e                                 ;b02c
        LD      h,b                                 ;b02d
        LD      b,c                                 ;b02e
        LD      b,d                                 ;b02f
        LD      (hl),0x0                            ;b030
        LD      b,l                                 ;b032
        LD      c,c                                 ;b033
        CP      0x68                                ;b034
        LD      d,b                                 ;b036
        LD      c,e                                 ;b037
        LD      h,d                                 ;b038
        LD      e,d                                 ;b039
        LD      b,d                                 ;b03a
        LD      h,e                                 ;b03b
bC_lb03ch:
        JR      nc,bC_lb097h                        ;b03c
        LD      h,h                                 ;b03e
        RST     KEYINT                              ;b03f
        LD      l,b                                 ;b040
        JR      c,bC_lb075h                         ;b041
        LD      c,a                                 ;b043
bC_lb044h:
        LD      c,b                                 ;b044
        LD      c,c                                 ;b045
        DEC     sp                                  ;b046
        CP      0x68                                ;b047
        LD      b,b                                 ;b049
        LD      b,e                                 ;b04a
        LD      c,h                                 ;b04b
        LD      h,e                                 ;b04c
        LD      c,c                                 ;b04d
        LD      h,e                                 ;b04e
        CP      0x68                                ;b04f
        LD      c,b                                 ;b051
        LD      c,d                                 ;b052
        LD      d,l                                 ;b053
        LD      d,a                                 ;b054
        JR      nc,bC_lb0aeh                        ;b055
        RST     KEYINT                              ;b057
        LD      l,b                                 ;b058
        JR      c,bC_lb09eh                         ;b059
        LD      h,e                                 ;b05b
        LD      (0x6040),a                          ;b05c
        LD      (0xfe48),a                          ;b05f
        LD      l,b                                 ;b062
        LD      b,b                                 ;b063
        JR      c,bC_lb0c9h                         ;b064
bC_lb066h:
        LD      e,l                                 ;b066
        LD      (hl),0x4f                           ;b067
        LD      b,h                                 ;b069
        LD      (hl),0x63                           ;b06a
        LD      e,b                                 ;b06c
        CP      0x68                                ;b06d
        LD      c,b                                 ;b06f
        LD      d,e                                 ;b070
        LD      b,e                                 ;b071
        LD      h,e                                 ;b072
        LD      d,e                                 ;b073
        DEC     (hl)                                ;b074
