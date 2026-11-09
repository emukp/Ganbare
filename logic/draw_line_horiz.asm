; === DrawLineHoriz (0x469d) ===
DrawLineHoriz:
        CALL    WaitVdpCmd                          ;469d
        PUSH    bc                                  ;46a0
        LD      a,(0x7)                             ;46a1
        INC     a                                   ;46a4
        LD      c,a                                 ;46a5
        LD      a,0x24                              ;46a6
        DI                                          ;46a8
        OUT     (c),a                               ;46a9
        LD      a,0x91                              ;46ab
        OUT     (c),a                               ;46ad
        INC     c                                   ;46af
        INC     c                                   ;46b0
        OUT     (c),h                               ;46b1
        XOR     a                                   ;46b3
        OUT     (c),a                               ;46b4
        OUT     (c),l                               ;46b6
        OUT     (c),a                               ;46b8
        POP     hl                                  ;46ba
        DEC     h                                   ;46bb
        OUT     (c),h                               ;46bc
        XOR     a                                   ;46be
        OUT     (c),a                               ;46bf
        XOR     a                                   ;46c1
        OUT     (c),a                               ;46c2
        OUT     (c),a                               ;46c4
        OUT     (c),l                               ;46c6
        OUT     (c),a                               ;46c8
        LD      a,0x70                              ;46ca
        OUT     (c),a                               ;46cc
        EI                                          ;46ce
        RET                                         ;46cf

; === DrawLineVert (0x46d0) ===
DrawLineVert:
        CALL    WaitVdpCmd                          ;46d0
        PUSH    bc                                  ;46d3
        LD      a,(0x7)                             ;46d4
        INC     a                                   ;46d7
        LD      c,a                                 ;46d8
        LD      a,0x24                              ;46d9
        DI                                          ;46db
        OUT     (c),a                               ;46dc
        LD      a,0x91                              ;46de
        OUT     (c),a                               ;46e0
        INC     c                                   ;46e2
        INC     c                                   ;46e3
        OUT     (c),h                               ;46e4
        XOR     a                                   ;46e6
        OUT     (c),a                               ;46e7
        OUT     (c),l                               ;46e9
        OUT     (c),a                               ;46eb
        POP     hl                                  ;46ed
        DEC     h                                   ;46ee
        OUT     (c),h                               ;46ef
        XOR     a                                   ;46f1
        OUT     (c),a                               ;46f2
        XOR     a                                   ;46f4
        OUT     (c),a                               ;46f5
        OUT     (c),a                               ;46f7
        OUT     (c),l                               ;46f9
        INC     a                                   ;46fb
        OUT     (c),a                               ;46fc
        LD      a,0x70                              ;46fe
        OUT     (c),a                               ;4700
        EI                                          ;4702
        RET                                         ;4703

; === DrawRect (0x4704) ===
DrawRect:
        LD      b,e                                 ;4704
        CALL    DrawLineVer_                        ;4705
        LD      b,d                                 ;4708
        CALL    DrawLineHoriz_                      ;4709
        PUSH    hl                                  ;470c
        LD      a,l                                 ;470d
        DEC     a                                   ;470e
        ADD     a,e                                 ;470f
        LD      l,a                                 ;4710
        LD      b,d                                 ;4711
        CALL    DrawLineHoriz_                      ;4712
        POP     hl                                  ;4715
        LD      a,h                                 ;4716
        DEC     a                                   ;4717
        ADD     a,d                                 ;4718
        LD      h,a                                 ;4719
        LD      b,e                                 ;471a
        JP      DrawLineVer_                        ;471b
DrawLineVer_:
        PUSH    hl                                  ;471e
        PUSH    de                                  ;471f
        PUSH    bc                                  ;4720
        CALL    DrawLineVert                        ;4721
        POP     bc                                  ;4724
        POP     de                                  ;4725
        POP     hl                                  ;4726
        RET                                         ;4727

; === DrawLineHoriz_ (0x4728) ===
DrawLineHoriz_:
        PUSH    hl                                  ;4728
        PUSH    de                                  ;4729
        PUSH    bc                                  ;472a
        CALL    DrawLineHoriz                       ;472b
        POP     bc                                  ;472e
        POP     de                                  ;472f
        POP     hl                                  ;4730
        RET                                         ;4731

; === FillRect (0x4732) ===
FillRect:
        EX      af,af'                              ;4732
        CALL    WaitVdpCmd                          ;4733
        PUSH    bc                                  ;4736
        LD      a,(0x7)                             ;4737
        INC     a                                   ;473a
        LD      c,a                                 ;473b
        LD      a,0x24                              ;473c
        DI                                          ;473e
        OUT     (c),a                               ;473f
        LD      a,0x91                              ;4741
        OUT     (c),a                               ;4743
        INC     c                                   ;4745
        INC     c                                   ;4746
        OUT     (c),h                               ;4747
        XOR     a                                   ;4749
        OUT     (c),a                               ;474a
        OUT     (c),l                               ;474c
        OUT     (c),d                               ;474e
        POP     hl                                  ;4750
        OUT     (c),h                               ;4751
        CP      h                                   ;4753
        JR      nz,FillRect2                        ;4754
        INC     a                                   ;4756
FillRect2:
        OUT     (c),a                               ;4757
        XOR     a                                   ;4759
        OUT     (c),l                               ;475a
        CP      l                                   ;475c
        JR      nz,FillRect3                        ;475d
        INC     a                                   ;475f
FillRect3:
        OUT     (c),a                               ;4760
        EX      af,af'                              ;4762
        OUT     (c),a                               ;4763
        XOR     a                                   ;4765
        OUT     (c),a                               ;4766
        LD      a,0xc0                              ;4768
        OUT     (c),a                               ;476a
        EI                                          ;476c
        RET                                         ;476d

