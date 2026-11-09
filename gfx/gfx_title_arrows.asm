gfxTitleArrows:
        JR      bE_l9763h                           ;9725
        LD      a,(hl)                              ;9727
        RST     KEYINT                              ;9728
        INC     a                                   ;9729
        INC     a                                   ;972a
        INC     a                                   ;972b
        INC     a                                   ;972c
        INC     a                                   ;972d
        INC     a                                   ;972e
        INC     a                                   ;972f
        INC     a                                   ;9730
bE_l9731h:
        RST     KEYINT                              ;9731
        LD      a,(hl)                              ;9732
        INC     a                                   ;9733
        JR      bE_l9746h                           ;9734
        JR      nc,bE_l97b7h                        ;9736
        RST     KEYINT                              ;9738
        RST     KEYINT                              ;9739
        LD      a,a                                 ;973a
        JR      nc,bE_l974dh                        ;973b
        EX      af,af'                              ;973d
        INC     c                                   ;973e
        CP      0xff                                ;973f
        RST     KEYINT                              ;9741
        CP      0xc                                 ;9742
        EX      af,af'                              ;9744
        NOP                                         ;9745
bE_l9746h:
        NOP                                         ;9746
        RST     KEYINT                              ;9747
        RST     KEYINT                              ;9748
        RST     KEYINT                              ;9749
        RST     KEYINT                              ;974a
        NOP                                         ;974b
        NOP                                         ;974c
bE_l974dh:
        INC     a                                   ;974d
        INC     a                                   ;974e
        INC     a                                   ;974f
        INC     a                                   ;9750
        INC     a                                   ;9751
        INC     a                                   ;9752
        INC     a                                   ;9753
        INC     a                                   ;9754
        NOP                                         ;9755
        NOP                                         ;9756
        RRA                                         ;9757
        CCF                                         ;9758
        CCF                                         ;9759
        CCF                                         ;975a
        INC     a                                   ;975b
        INC     a                                   ;975c
        NOP                                         ;975d
        NOP                                         ;975e
        RET     m                                   ;975f
        CALL    m,0xfcfc                            ;9760
bE_l9763h:
        INC     a                                   ;9763
        INC     a                                   ;9764
        INC     a                                   ;9765
        INC     a                                   ;9766
        CCF                                         ;9767
        CCF                                         ;9768
        CCF                                         ;9769
        RRA                                         ;976a
        NOP                                         ;976b
        NOP                                         ;976c
        INC     a                                   ;976d
        INC     a                                   ;976e
        CALL    m,0xfcfc                            ;976f
        RET     m                                   ;9772
        NOP                                         ;9773
        NOP                                         ;9774
gfxTitleCursor: equ     #9775
