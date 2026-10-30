LoadLandStartPos:
        LD      a,(0xc268)                          ;6756
        AND     a                                   ;6759
        RET     z                                   ;675a
        DI                                          ;675b
        LD      a,0x9                               ;675c
        LD      (0xa000),a                          ;675e
        LD      (BanksInA0),a                       ;6761
        EI                                          ;6764
        LD      a,0x3                               ;6765
        LD      (0xc4a2),a                          ;6767
        LD      b,0x6                               ;676a
b1_l676ch:
        LD      hl,0xb8e0                           ;676c
        LD      a,b                                 ;676f
        DEC     a                                   ;6770
        ADD     a,a                                 ;6771
        CALL    ADD_HL_A                            ;6772
        LD      e,(hl)                              ;6775
        INC     hl                                  ;6776
        LD      d,(hl)                              ;6777
        PUSH    bc                                  ;6778
        PUSH    de                                  ;6779
        CALL    b1_sub_781fh                        ;677a
        POP     de                                  ;677d
        POP     bc                                  ;677e
        JR      nc,b1_l6783h                        ;677f
        DJNZ    b1_l676ch                           ;6781
b1_l6783h:
        LD      a,e                                 ;6783
        LD      (0xc498),a                          ;6784
        LD      (0xc494),a                          ;6787
        LD      a,d                                 ;678a
        LD      (0xc49a),a                          ;678b
        LD      (0xc496),a                          ;678e
        XOR     a                                   ;6791
        LD      (0xc268),a                          ;6792
        JP      SetBanks1_2_3                       ;6795
b1_sub_6798h:
        LD      a,(SceneType)                       ;6798
        CP      0x6                                 ;679b
        JR      z,b1_l67b0h                         ;679d
        LD      a,0xb0                              ;679f
        LD      (0xc498),a                          ;67a1
        LD      (0xc494),a                          ;67a4
        LD      a,0x80                              ;67a7
        LD      (0xc49a),a                          ;67a9
        LD      (0xc496),a                          ;67ac
        RET                                         ;67af
b1_l67b0h:
        JP      PlayGameSndCmd                      ;67b0
ClearFieldRecordHeaders:
        LD      hl,0xc600                           ;67b3
        LD      de,0x80                             ;67b6
        LD      b,0x8                               ;67b9
        CALL    ClearMemStride                      ;67bb
        LD      hl,0xca00                           ;67be
        LD      b,0x8                               ;67c1
        LD      de,0x40                             ;67c3
