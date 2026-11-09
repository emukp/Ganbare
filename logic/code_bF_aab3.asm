bF_laab3h:
        AND     b                                   ;aab3
        LD      b,(hl)                              ;aab4
        EX      af,af'                              ;aab5
bF_laab6h:
        ADD     a,b                                 ;aab6
        INC     h                                   ;aab7
        EX      af,af'                              ;aab8
        AND     b                                   ;aab9
        LD      h,h                                 ;aaba
        ADD     hl,bc                               ;aabb
        SUB     (hl)                                ;aabc
        LD      d,a                                 ;aabd
        DEC     bc                                  ;aabe
        AND     (hl)                                ;aabf
        ADD     a,a                                 ;aac0
        INC     c                                   ;aac1
        AND     (hl)                                ;aac2
        SCF                                         ;aac3
        LD      c,0x76                              ;aac4
        DAA                                         ;aac6
        LD      c,0x80                              ;aac7
        DEC     h                                   ;aac9
        LD      c,0x60                              ;aaca
        LD      b,h                                 ;aacc
        LD      c,0x60                              ;aacd
        ADD     a,h                                 ;aacf
        INC     de                                  ;aad0
        ADD     a,b                                 ;aad1
        LD      b,h                                 ;aad2
        INC     de                                  ;aad3
        ADD     a,b                                 ;aad4
        ADD     a,l                                 ;aad5
        DEC     d                                   ;aad6
        HALT                                        ;aad7
        LD      h,a                                 ;aad8
        LD      d,0x86                              ;aad9
        RST     CHRGTR                              ;aadb
        RLA                                         ;aadc
bF_laaddh:
        ADD     a,b                                 ;aadd
        INC     h                                   ;aade
        RLA                                         ;aadf
bF_laae0h:
        LD      h,b                                 ;aae0
        LD      h,h                                 ;aae1
        RLA                                         ;aae2
        AND     b                                   ;aae3
        LD      h,h                                 ;aae4
        RLA                                         ;aae5
        HALT                                        ;aae6
        AND     a                                   ;aae7
        ADD     hl,de                               ;aae8
        AND     (hl)                                ;aae9
        SUB     a                                   ;aaea
        INC     e                                   ;aaeb
        SUB     (hl)                                ;aaec
        RST     0                                   ;aaed
        LD      e,0xa0                              ;aaee
        LD      (hl),0x20                           ;aaf0
        SUB     b                                   ;aaf2
        LD      b,(hl)                              ;aaf3
        JR      nz,bF_laab6h                        ;aaf4
        LD      b,(hl)                              ;aaf6
        INC     hl                                  ;aaf7
        SUB     (hl)                                ;aaf8
        RST     0                                   ;aaf9
        RST     KEYINT                              ;aafa
        DEC     bc                                  ;aafb
        LD      bc,0x9776                           ;aafc
        RLCA                                        ;aaff
        SUB     (hl)                                ;ab00
        RST     CHRGTR                              ;ab01
        DEC     bc                                  ;ab02
        AND     (hl)                                ;ab03
        DAA                                         ;ab04
        INC     hl                                  ;ab05
        HALT                                        ;ab06
        LD      d,a                                 ;ab07
        INC     h                                   ;ab08
        HALT                                        ;ab09
        LD      d,a                                 ;ab0a
        JR      z,bF_laab3h                         ;ab0b
        SCF                                         ;ab0d
        DEC     hl                                  ;ab0e
        HALT                                        ;ab0f
        LD      b,a                                 ;ab10
        INC     l                                   ;ab11
        AND     (hl)                                ;ab12
        SUB     a                                   ;ab13
bF_lab14h:
        LD      a,(0x6072)                          ;ab14
        LD      a,0x61                              ;ab17
        LD      h,b                                 ;ab19
        LD      b,c                                 ;ab1a
        HALT                                        ;ab1b
        AND     a                                   ;ab1c
        RST     KEYINT                              ;ab1d
        JR      nc,bF_lab21h                        ;ab1e
        ADD     a,c                                 ;ab20
bF_lab21h:
        ADD     a,b                                 ;ab21
        LD      (bc),a                              ;ab22
        LD      h,b                                 ;ab23
        OR      l                                   ;ab24
        INC     bc                                  ;ab25
        AND     (hl)                                ;ab26
        LD      b,a                                 ;ab27
        INC     bc                                  ;ab28
        SUB     h                                   ;ab29
        AND     c                                   ;ab2a
        INC     bc                                  ;ab2b
        ADD     a,h                                 ;ab2c
        OR      c                                   ;ab2d
        INC     bc                                  ;ab2e
        LD      (hl),h                              ;ab2f
        POP     bc                                  ;ab30
        INC     b                                   ;ab31
        LD      h,b                                 ;ab32
        LD      h,l                                 ;ab33
        DEC     b                                   ;ab34
        HALT                                        ;ab35
        DAA                                         ;ab36
        EX      af,af'                              ;ab37
        ADD     a,d                                 ;ab38
        JR      nc,bF_lab44h                        ;ab39
        HALT                                        ;ab3b
bF_lab3ch:
        OR      a                                   ;ab3c
        INC     c                                   ;ab3d
        HALT                                        ;ab3e
        RST     0                                   ;ab3f
        DEC     c                                   ;ab40
        LD      (hl),c                              ;ab41
        LD      (hl),b                              ;ab42
        DEC     c                                   ;ab43
bF_lab44h:
        ADD     a,b                                 ;ab44
        LD      b,(hl)                              ;ab45
        DEC     c                                   ;ab46
        AND     b                                   ;ab47
        LD      b,(hl)                              ;ab48
        LD      c,0xa0                              ;ab49
        LD      b,h                                 ;ab4b
        LD      c,0x60                              ;ab4c
        ADD     a,l                                 ;ab4e
        RRCA                                        ;ab4f
        LD      (hl),h                              ;ab50
        LD      hl,0x840f                           ;ab51
        LD      sp,0x720f                           ;ab54
        LD      (hl),b                              ;ab57
        RRCA                                        ;ab58
        HALT                                        ;ab59
        RST     DCOMPR                              ;ab5a
        DJNZ    $-94                                ;ab5b
        LD      b,h                                 ;ab5d
        DJNZ    bF_laae0h                           ;ab5e
        ADD     a,h                                 ;ab60
        LD      de,bF_lb776h                        ;ab61
        LD      (de),a                              ;ab64
        LD      (hl),d                              ;ab65
        SUB     b                                   ;ab66
        INC     de                                  ;ab67
        SUB     b                                   ;ab68
        LD      (hl),0x13                           ;ab69
        LD      (hl),b                              ;ab6b
        ADD     a,h                                 ;ab6c
        INC     d                                   ;ab6d
        LD      h,b                                 ;ab6e
        DEC     h                                   ;ab6f
        INC     d                                   ;ab70
        SUB     b                                   ;ab71
        LD      b,(hl)                              ;ab72
        DEC     d                                   ;ab73
        LD      (hl),h                              ;ab74
        LD      b,c                                 ;ab75
        DEC     d                                   ;ab76
        LD      (hl),h                              ;ab77
        LD      d,c                                 ;ab78
        DEC     d                                   ;ab79
        SUB     h                                   ;ab7a
        LD      h,c                                 ;ab7b
        DEC     d                                   ;ab7c
        SUB     h                                   ;ab7d
        LD      (hl),c                              ;ab7e
        LD      d,0x94                              ;ab7f
        ADD     a,c                                 ;ab81
        LD      d,0x84                              ;ab82
        SUB     c                                   ;ab84
        LD      d,0x74                              ;ab85
        AND     c                                   ;ab87
        LD      d,0x76                              ;ab88
        RST     CHRGTR                              ;ab8a
        RLA                                         ;ab8b
        LD      (hl),b                              ;ab8c
        LD      h,0x17                              ;ab8d
        AND     b                                   ;ab8f
        LD      h,(hl)                              ;ab90
        JR      bF_lab14h                           ;ab91
        LD      b,b                                 ;ab93
        JR      bF_lab3ch                           ;ab94
        RST     CHRGTR                              ;ab96
        LD      a,(de)                              ;ab97
        SUB     h                                   ;ab98
        AND     c                                   ;ab99
        DEC     de                                  ;ab9a
        HALT                                        ;ab9b
        RLA                                         ;ab9c
        DEC     de                                  ;ab9d
        AND     b                                   ;ab9e
        LD      (hl),0x1b                           ;ab9f
        LD      h,b                                 ;aba1
        LD      (hl),l                              ;aba2
        INC     e                                   ;aba3
        AND     d                                   ;aba4
        JR      nc,bF_labc3h                        ;aba5
        ADD     a,b                                 ;aba7
        ADD     a,h                                 ;aba8
        DEC     e                                   ;aba9
        ADD     a,(hl)                              ;abaa
        LD      b,a                                 ;abab
        RST     KEYINT                              ;abac
bF_labadh:
        JR      c,bF_labafh                         ;abad
bF_labafh:
        AND     (hl)                                ;abaf
        LD      h,a                                 ;abb0
        LD      bc,0x3560                           ;abb1
        LD      bc,0x7580                           ;abb4
        LD      bc,0x8071                           ;abb7
        LD      bc,0xc560                           ;abba
        LD      (bc),a                              ;abbd
        SUB     b                                   ;abbe
bF_labbfh:
        LD      b,(hl)                              ;abbf
        LD      (bc),a                              ;abc0
        LD      h,b                                 ;abc1
        PUSH    bc                                  ;abc2
bF_labc3h:
        LD      (bc),a                              ;abc3
        OR      d                                   ;abc4
        LD      h,b                                 ;abc5
        INC     bc                                  ;abc6
        LD      h,b                                 ;abc7
        DEC     h                                   ;abc8
        INC     bc                                  ;abc9
        LD      (hl),d                              ;abca
        RET     nz                                  ;abcb
        INC     b                                   ;abcc
        LD      (hl),b                              ;abcd
        LD      d,h                                 ;abce
        INC     b                                   ;abcf
        LD      (hl),b                              ;abd0
        SUB     l                                   ;abd1
        DEC     b                                   ;abd2
        ADD     a,h                                 ;abd3
        LD      d,c                                 ;abd4
        DEC     b                                   ;abd5
        AND     h                                   ;abd6
        LD      d,c                                 ;abd7
        DEC     b                                   ;abd8
        AND     h                                   ;abd9
        ADD     a,c                                 ;abda
        DEC     b                                   ;abdb
        HALT                                        ;abdc
        AND     a                                   ;abdd
        LD      b,0x60                              ;abde
        DEC     h                                   ;abe0
        LD      b,0x80                              ;abe1
        LD      b,(hl)                              ;abe3
        LD      b,0x71                              ;abe4
        LD      h,b                                 ;abe6
        LD      b,0x74                              ;abe7
        AND     c                                   ;abe9
        LD      b,0x70                              ;abea
        PUSH    bc                                  ;abec
        RLCA                                        ;abed
        AND     (hl)                                ;abee
        AND     a                                   ;abef
        EX      af,af'                              ;abf0
        LD      (hl),b                              ;abf1
        HALT                                        ;abf2
        EX      af,af'                              ;abf3
        ADD     a,d                                 ;abf4
        SUB     b                                   ;abf5
        EX      af,af'                              ;abf6
        AND     b                                   ;abf7
        HALT                                        ;abf8
        ADD     hl,bc                               ;abf9
        AND     (hl)                                ;abfa
        DAA                                         ;abfb
        ADD     hl,bc                               ;abfc
        ADD     a,b                                 ;abfd
        LD      b,(hl)                              ;abfe
        ADD     hl,bc                               ;abff
        AND     c                                   ;ac00
        RET     nc                                  ;ac01
        LD      a,(bc)                              ;ac02
        LD      h,b                                 ;ac03
        DEC     (hl)                                ;ac04
        LD      a,(bc)                              ;ac05
        AND     b                                   ;ac06
        LD      (hl),0xa                            ;ac07
        HALT                                        ;ac09
        AND     a                                   ;ac0a
        INC     c                                   ;ac0b
        AND     (hl)                                ;ac0c
        LD      h,a                                 ;ac0d
        INC     c                                   ;ac0e
        LD      h,b                                 ;ac0f
        AND     l                                   ;ac10
        DEC     c                                   ;ac11
        LD      (hl),c                              ;ac12
        LD      d,b                                 ;ac13
        DEC     c                                   ;ac14
        ADD     a,b                                 ;ac15
        LD      (hl),0xd                            ;ac16
        OR      b                                   ;ac18
        HALT                                        ;ac19
        LD      c,0xa6                              ;ac1a
        AND     a                                   ;ac1c
        RRCA                                        ;ac1d
        LD      h,b                                 ;ac1e
        DEC     h                                   ;ac1f
        RRCA                                        ;ac20
        SUB     b                                   ;ac21
        LD      b,(hl)                              ;ac22
        RRCA                                        ;ac23
        ADD     a,b                                 ;ac24
        PUSH    bc                                  ;ac25
        DJNZ    bF_lac98h                           ;ac26
        LD      d,l                                 ;ac28
bF_lac29h:
        DJNZ    bF_labadh                           ;ac29
        ADD     a,b                                 ;ac2b
        DJNZ    bF_labbfh                           ;ac2c
        ADD     a,b                                 ;ac2e
        LD      (de),a                              ;ac2f
        LD      h,h                                 ;ac30
        LD      h,c                                 ;ac31
        LD      (de),a                              ;ac32
        LD      (hl),h                              ;ac33
        ADD     a,c                                 ;ac34
        LD      (de),a                              ;ac35
        ADD     a,b                                 ;ac36
        LD      h,(hl)                              ;ac37
        LD      (de),a                              ;ac38
        SUB     h                                   ;ac39
        AND     c                                   ;ac3a
        INC     de                                  ;ac3b
        LD      h,b                                 ;ac3c
        LD      (hl),l                              ;ac3d
        INC     de                                  ;ac3e
        AND     b                                   ;ac3f
        LD      (hl),0x13                           ;ac40
        HALT                                        ;ac42
        RST     0                                   ;ac43
        DEC     d                                   ;ac44
        ADD     a,b                                 ;ac45
        LD      b,h                                 ;ac46
        DEC     d                                   ;ac47
        OR      d                                   ;ac48
        LD      d,b                                 ;ac49
        DEC     d                                   ;ac4a
        ADD     a,(hl)                              ;ac4b
        OR      a                                   ;ac4c
        LD      d,0x76                              ;ac4d
        RST     0                                   ;ac4f
        RLA                                         ;ac50
        LD      h,b                                 ;ac51
        LD      b,l                                 ;ac52
        RLA                                         ;ac53
        AND     b                                   ;ac54
        LD      h,0xff                              ;ac55
        DEC     d                                   ;ac57
        LD      bc,0x5072                           ;ac58
        LD      bc,bF_lb184h                        ;ac5b
        LD      (bc),a                              ;ac5e
        ADD     a,(hl)                              ;ac5f
        ADD     a,a                                 ;ac60
        LD      (bc),a                              ;ac61
        LD      (hl),h                              ;ac62
        POP     bc                                  ;ac63
        DEC     b                                   ;ac64
        ADD     a,c                                 ;ac65
        JR      nc,bF_lac6dh                        ;ac66
        SUB     (hl)                                ;ac68
        AND     a                                   ;ac69
        RLCA                                        ;ac6a
        LD      (hl),d                              ;ac6b
        LD      d,b                                 ;ac6c
bF_lac6dh:
        EX      af,af'                              ;ac6d
        LD      (hl),h                              ;ac6e
        LD      d,c                                 ;ac6f
        EX      af,af'                              ;ac70
        ADD     a,h                                 ;ac71
        LD      h,c                                 ;ac72
        EX      af,af'                              ;ac73
        SUB     h                                   ;ac74
        LD      (hl),c                              ;ac75
        ADD     hl,bc                               ;ac76
        LD      (hl),h                              ;ac77
        LD      sp,0x8409                           ;ac78
        LD      b,c                                 ;ac7b
        ADD     hl,bc                               ;ac7c
        SUB     h                                   ;ac7d
        LD      d,c                                 ;ac7e
        LD      a,(bc)                              ;ac7f
        SUB     (hl)                                ;ac80
        RST     CHRGTR                              ;ac81
        INC     c                                   ;ac82
        ADD     a,c                                 ;ac83
        LD      (hl),b                              ;ac84
        DEC     c                                   ;ac85
        HALT                                        ;ac86
        DAA                                         ;ac87
        LD      c,0x74                              ;ac88
        LD      h,c                                 ;ac8a
        RRCA                                        ;ac8b
        ADD     a,(hl)                              ;ac8c
        DAA                                         ;ac8d
        DJNZ    bF_lad02h                           ;ac8e
        SUB     b                                   ;ac90
        DJNZ    bF_lac29h                           ;ac91
        RST     CHRGTR                              ;ac93
        INC     d                                   ;ac94
        LD      (hl),h                              ;ac95
        LD      h,c                                 ;ac96
        RST     KEYINT                              ;ac97
bF_lac98h:
        DEC     c                                   ;ac98
        LD      bc,0x5092                           ;ac99
        LD      (bc),a                              ;ac9c
        HALT                                        ;ac9d
bF_lac9eh:
        OR      a                                   ;ac9e
        INC     bc                                  ;ac9f
        AND     c                                   ;aca0
        LD      h,b                                 ;aca1
        INC     bc                                  ;aca2
        AND     h                                   ;aca3
        SUB     c                                   ;aca4
        INC     bc                                  ;aca5
        AND     h                                   ;aca6
        OR      c                                   ;aca7
        DEC     b                                   ;aca8
        SUB     (hl)                                ;aca9
        ADD     a,a                                 ;acaa
        LD      b,0x74                              ;acab
        POP     bc                                  ;acad
        RLCA                                        ;acae
        LD      h,c                                 ;acaf
        LD      d,b                                 ;acb0
        RLCA                                        ;acb1
        ADD     a,(hl)                              ;acb2
        LD      d,a                                 ;acb3
        EX      af,af'                              ;acb4
        AND     (hl)                                ;acb5
        LD      b,a                                 ;acb6
        LD      a,(bc)                              ;acb7
        SUB     (hl)                                ;acb8
        LD      h,a                                 ;acb9
        DEC     bc                                  ;acba
        SUB     h                                   ;acbb
        LD      hl,0x560c                           ;acbc
        RST     0                                   ;acbf
        RST     KEYINT                              ;acc0
        JR      nz,bF_lacc4h                        ;acc1
        HALT                                        ;acc3
bF_lacc4h:
        ADD     a,a                                 ;acc4
        LD      bc,0x6184                           ;acc5
        LD      bc,0x56a0                           ;acc8
        LD      (bc),a                              ;accb
        LD      (hl),d                              ;accc
        LD      (hl),b                              ;accd
        LD      (bc),a                              ;acce
        ADD     a,b                                 ;accf
        LD      b,(hl)                              ;acd0
        INC     bc                                  ;acd1
        AND     (hl)                                ;acd2
        LD      b,a                                 ;acd3
        INC     bc                                  ;acd4
        LD      (hl),b                              ;acd5
        LD      h,(hl)                              ;acd6
        INC     bc                                  ;acd7
        AND     b                                   ;acd8
        LD      h,(hl)                              ;acd9
        INC     bc                                  ;acda
        SUB     c                                   ;acdb
        ADD     a,b                                 ;acdc
bF_lacddh:
        INC     b                                   ;acdd
        ADD     a,b                                 ;acde
        LD      b,(hl)                              ;acdf
        LD      b,0xa6                              ;ace0
        LD      d,a                                 ;ace2
        RLCA                                        ;ace3
        AND     (hl)                                ;ace4
        RST     CHRGTR                              ;ace5
        EX      af,af'                              ;ace6
        ADD     a,b                                 ;ace7
        LD      (hl),0x8                            ;ace8
bF_laceah:
        AND     d                                   ;acea
        LD      d,b                                 ;aceb
        EX      af,af'                              ;acec
        ADD     a,b                                 ;aced
        OR      l                                   ;acee
        ADD     hl,bc                               ;acef
bF_lacf0h:
        AND     (hl)                                ;acf0
        SCF                                         ;acf1
        LD      a,(bc)                              ;acf2
        ADD     a,h                                 ;acf3
        LD      d,c                                 ;acf4
        LD      a,(bc)                              ;acf5
        AND     h                                   ;acf6
        LD      b,c                                 ;acf7
        LD      a,(bc)                              ;acf8
        LD      (hl),b                              ;acf9
        LD      h,(hl)                              ;acfa
        LD      a,(bc)                              ;acfb
        ADD     a,b                                 ;acfc
        LD      h,l                                 ;acfd
        LD      a,(bc)                              ;acfe
        SUB     d                                   ;acff
        AND     b                                   ;ad00
        DEC     bc                                  ;ad01
bF_lad02h:
        HALT                                        ;ad02
        ADD     a,a                                 ;ad03
        INC     c                                   ;ad04
        ADD     a,b                                 ;ad05
        LD      b,(hl)                              ;ad06
        INC     c                                   ;ad07
        AND     c                                   ;ad08
        LD      d,b                                 ;ad09
        INC     c                                   ;ad0a
        AND     (hl)                                ;ad0b
        RST     CHRGTR                              ;ad0c
        LD      c,0x80                              ;ad0d
        DEC     (hl)                                ;ad0f
        LD      c,0x76                              ;ad10
        LD      b,a                                 ;ad12
        LD      c,0x90                              ;ad13
        LD      d,(hl)                              ;ad15
        DJNZ    bF_lac98h                           ;ad16
        LD      (hl),0x10                           ;ad18
        AND     c                                   ;ad1a
        LD      d,b                                 ;ad1b
        DJNZ    bF_lac9eh                           ;ad1c
        OR      l                                   ;ad1e
        LD      de,0x3480                           ;ad1f
        RST     KEYINT                              ;ad22
        LD      h,0x2                               ;ad23
        AND     h                                   ;ad25
        ADD     a,c                                 ;ad26
        LD      (bc),a                              ;ad27
        AND     h                                   ;ad28
        AND     c                                   ;ad29
        INC     bc                                  ;ad2a
        ADD     a,b                                 ;ad2b
        LD      b,h                                 ;ad2c
        RLCA                                        ;ad2d
        SUB     (hl)                                ;ad2e
        LD      (hl),a                              ;ad2f
        EX      af,af'                              ;ad30
        AND     (hl)                                ;ad31
        SCF                                         ;ad32
        LD      a,(bc)                              ;ad33
        LD      h,b                                 ;ad34
        DEC     (hl)                                ;ad35
        LD      a,(bc)                              ;ad36
        SUB     b                                   ;ad37
        LD      d,(hl)                              ;ad38
        DEC     c                                   ;ad39
        ADD     a,b                                 ;ad3a
        LD      h,h                                 ;ad3b
        LD      c,0x90                              ;ad3c
        LD      d,(hl)                              ;ad3e
        LD      de,0x3670                           ;ad3f
        LD      (de),a                              ;ad42
        SUB     b                                   ;ad43
        ADD     a,h                                 ;ad44
        INC     de                                  ;ad45
        ADD     a,b                                 ;ad46
        INC     (hl)                                ;ad47
        INC     de                                  ;ad48
        AND     h                                   ;ad49
        LD      b,c                                 ;ad4a
        INC     de                                  ;ad4b
        AND     h                                   ;ad4c
        LD      h,c                                 ;ad4d
        DEC     d                                   ;ad4e
        ADD     a,(hl)                              ;ad4f
        RST     0                                   ;ad50
        RLA                                         ;ad51
        SUB     b                                   ;ad52
        LD      b,(hl)                              ;ad53
        JR      bF_laceah                           ;ad54
        LD      b,c                                 ;ad56
        JR      bF_lacddh                           ;ad57
        LD      h,c                                 ;ad59
        JR      bF_lacf0h                           ;ad5a
        AND     c                                   ;ad5c
        ADD     hl,de                               ;ad5d
        SUB     h                                   ;ad5e
        LD      b,c                                 ;ad5f
        DEC     de                                  ;ad60
        AND     (hl)                                ;ad61
        AND     a                                   ;ad62
        DEC     e                                   ;ad63
        AND     (hl)                                ;ad64
        RST     0                                   ;ad65
        LD      e,0x80                              ;ad66
        LD      (hl),0x1e                           ;ad68
        SUB     b                                   ;ad6a
        LD      b,l                                 ;ad6b
        LD      e,0x90                              ;ad6c
        LD      h,l                                 ;ad6e
        LD      e,0xb6                              ;ad6f
        AND     a                                   ;ad71
        LD      hl,0x46a0                           ;ad72
        LD      (0x6580),hl                         ;ad75
        LD      (0x8580),hl                         ;ad78
        LD      (bF_la4b0h),hl                      ;ad7b
        LD      (0xc796),hl                         ;ad7e
        INC     hl                                  ;ad81
        AND     b                                   ;ad82
        LD      d,(hl)                              ;ad83
        INC     h                                   ;ad84
        ADD     a,b                                 ;ad85
        LD      b,h                                 ;ad86
        INC     h                                   ;ad87
        SUB     h                                   ;ad88
        SUB     c                                   ;ad89
        INC     h                                   ;ad8a
        AND     h                                   ;ad8b
        OR      c                                   ;ad8c
        INC     h                                   ;ad8d
        OR      (hl)                                ;ad8e
        RST     DCOMPR                              ;ad8f
        INC     h                                   ;ad90
        OR      b                                   ;ad91
        SUB     h                                   ;ad92
        DEC     h                                   ;ad93
        SUB     (hl)                                ;ad94
        ADD     a,a                                 ;ad95
        RST     KEYINT                              ;ad96
        INC     d                                   ;ad97
        NOP                                         ;ad98
        HALT                                        ;ad99
        AND     a                                   ;ad9a
        LD      (bc),a                              ;ad9b
        AND     (hl)                                ;ad9c
        LD      b,a                                 ;ad9d
        LD      b,0x76                              ;ad9e
        SUB     a                                   ;ada0
        LD      e,0x76                              ;ada1
        LD      d,a                                 ;ada3
        RRA                                         ;ada4
        AND     (hl)                                ;ada5
        OR      a                                   ;ada6
        LD      hl,0xc776                           ;ada7
        INC     hl                                  ;adaa
        HALT                                        ;adab
        RST     0                                   ;adac
        ADD     hl,hl                               ;adad
        HALT                                        ;adae
        RST     0                                   ;adaf
        INC     l                                   ;adb0
bF_ladb1h:
        HALT                                        ;adb1
        RST     CHRGTR                              ;adb2
        LD      l,0x94                              ;adb3
        LD      b,c                                 ;adb5
        CPL                                         ;adb6
        ADD     a,h                                 ;adb7
        LD      hl,bF_la42fh                        ;adb8
        LD      b,c                                 ;adbb
        CPL                                         ;adbc
        AND     h                                   ;adbd
        LD      (hl),c                              ;adbe
        LD      a,0x60                              ;adbf
        LD      d,l                                 ;adc1
        CCF                                         ;adc2
        AND     (hl)                                ;adc3
        RST     0                                   ;adc4
        LD      b,b                                 ;adc5
        LD      h,b                                 ;adc6
        AND     l                                   ;adc7
        LD      b,c                                 ;adc8
        LD      (hl),h                              ;adc9
        SUB     c                                   ;adca
        LD      b,c                                 ;adcb
        ADD     a,h                                 ;adcc
        AND     c                                   ;adcd
        LD      b,c                                 ;adce
        SUB     h                                   ;adcf
        OR      c                                   ;add0
        LD      b,h                                 ;add1
        LD      (hl),d                              ;add2
        ADD     a,b                                 ;add3
        RST     KEYINT                              ;add4
        JR      bF_ladd8h                           ;add5
        SUB     (hl)                                ;add7
