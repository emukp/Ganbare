; === VDP_Copy_Byte (0x476e) ===
VDP_Copy_Byte:
        EX      af,af'                              ;476e
        CALL    WaitVdpCmd                          ;476f
        PUSH    bc                                  ;4772
        LD      a,(0x7)                             ;4773
        INC     a                                   ;4776
        LD      c,a                                 ;4777
        LD      a,0x20                              ;4778
        DI                                          ;477a
        OUT     (c),a                               ;477b
        LD      a,0x91                              ;477d
        OUT     (c),a                               ;477f
        INC     c                                   ;4781
        INC     c                                   ;4782
        OUT     (c),h                               ;4783
        XOR     a                                   ;4785
        OUT     (c),a                               ;4786
        OUT     (c),l                               ;4788
        EX      af,af'                              ;478a
        LD      l,a                                 ;478b
        AND     0x3                                 ;478c
        OUT     (c),a                               ;478e
        OUT     (c),d                               ;4790
        XOR     a                                   ;4792
        OUT     (c),a                               ;4793
        OUT     (c),e                               ;4795
        LD      a,l                                 ;4797
        RRA                                         ;4798
        RRA                                         ;4799
        AND     0x3                                 ;479a
        OUT     (c),a                               ;479c
        POP     hl                                  ;479e
        OUT     (c),h                               ;479f
        XOR     a                                   ;47a1
        OUT     (c),a                               ;47a2
        OUT     (c),l                               ;47a4
        OUT     (c),a                               ;47a6
        OUT     (c),a                               ;47a8
        OUT     (c),a                               ;47aa
        LD      a,0xd0                              ;47ac
        OUT     (c),a                               ;47ae
        EI                                          ;47b0
        RET                                         ;47b1

; === TileBlockPlacer (0x47b2) ===
TileBlockPlacer:
        EX      af,af'                              ;47b2
        CALL    WaitVdpCmd                          ;47b3
        PUSH    bc                                  ;47b6
        LD      a,(0x7)                             ;47b7
        INC     a                                   ;47ba
        LD      c,a                                 ;47bb
        LD      a,0x24                              ;47bc
        DI                                          ;47be
        OUT     (c),a                               ;47bf
        LD      a,0x91                              ;47c1
        OUT     (c),a                               ;47c3
        INC     c                                   ;47c5
        INC     c                                   ;47c6
        OUT     (c),d                               ;47c7
        XOR     a                                   ;47c9
        OUT     (c),a                               ;47ca
        OUT     (c),e                               ;47cc
        EX      af,af'                              ;47ce
        OUT     (c),a                               ;47cf
        POP     de                                  ;47d1
        OUT     (c),d                               ;47d2
        XOR     a                                   ;47d4
        OUT     (c),a                               ;47d5
        OUT     (c),e                               ;47d7
        OUT     (c),a                               ;47d9
        LD      a,(hl)                              ;47db
        INC     hl                                  ;47dc
        OUT     (c),a                               ;47dd
        XOR     a                                   ;47df
        OUT     (c),a                               ;47e0
        LD      a,0xf0                              ;47e2
        OUT     (c),a                               ;47e4
        DEC     c                                   ;47e6
        DEC     c                                   ;47e7
        LD      a,0xac                              ;47e8
        OUT     (c),a                               ;47ea
        LD      a,0x91                              ;47ec
        OUT     (c),a                               ;47ee
        INC     c                                   ;47f0
        INC     c                                   ;47f1
b0_l47f2h:
        LD      a,0x2                               ;47f2
        CALL    ReadStatusReg                       ;47f4
        RRA                                         ;47f7
        RET     nc                                  ;47f8
        ADD     a,a                                 ;47f9
        ADD     a,a                                 ;47fa
        JR      nc,b0_l47f2h                        ;47fb
        LD      a,(hl)                              ;47fd
        INC     hl                                  ;47fe
        OUT     (c),a                               ;47ff
        JR      b0_l47f2h                           ;4801
VDP_Copy_Dot:
        EX      af,af'                              ;4803
        CALL    WaitVdpCmd                          ;4804
        PUSH    bc                                  ;4807
b0_l4808h:
        LD      a,(0x7)                             ;4808
        INC     a                                   ;480b
        LD      c,a                                 ;480c
        LD      a,0x20                              ;480d
        DI                                          ;480f
        OUT     (c),a                               ;4810
        LD      a,0x91                              ;4812
        OUT     (c),a                               ;4814
        INC     c                                   ;4816
        INC     c                                   ;4817
        OUT     (c),h                               ;4818
        XOR     a                                   ;481a
        OUT     (c),a                               ;481b
        OUT     (c),l                               ;481d
        EX      af,af'                              ;481f
        RLCA                                        ;4820
        RLCA                                        ;4821
        LD      l,a                                 ;4822
        AND     0x3                                 ;4823
        OUT     (c),a                               ;4825
        OUT     (c),d                               ;4827
        XOR     a                                   ;4829
        OUT     (c),a                               ;482a
        OUT     (c),e                               ;482c
        LD      a,l                                 ;482e
        LD      e,a                                 ;482f
        RLCA                                        ;4830
        RLCA                                        ;4831
        AND     0x3                                 ;4832
        OUT     (c),a                               ;4834
        POP     hl                                  ;4836
        OUT     (c),h                               ;4837
        XOR     a                                   ;4839
        OUT     (c),a                               ;483a
        OUT     (c),l                               ;483c
        OUT     (c),a                               ;483e
        OUT     (c),a                               ;4840
        OUT     (c),a                               ;4842
        LD      a,e                                 ;4844
        RRA                                         ;4845
        RRA                                         ;4846
        AND     0xf                                 ;4847
        OR      0x90                                ;4849
        OUT     (c),a                               ;484b
        EI                                          ;484d
        RET                                         ;484e

; === Load1bppTiles (0x484f) ===
Load1bppTiles:
        CALL    Load1bppTile                        ;484f
        CALL    CalcNextCharPos                     ;4852
        DJNZ    Load1bppTiles                       ;4855
        RET                                         ;4857

; === Load1bppTile (0x4858) ===
Load1bppTile:
        PUSH    bc                                  ;4858
        PUSH    de                                  ;4859
        PUSH    hl                                  ;485a
        PUSH    de                                  ;485b
        CALL    Decode1bppTile                      ;485c
        POP     de                                  ;485f
        LD      b,d                                 ;4860
        LD      d,e                                 ;4861
        LD      e,b                                 ;4862
        SRL     d                                   ;4863
        RR      e                                   ;4865
        LD      a,d                                 ;4867
        ADD     a,0x80                              ;4868
        LD      d,a                                 ;486a
        LD      hl,DecodeTileBuf                    ;486b
        CALL    LoadTileGfx                         ;486e
        POP     hl                                  ;4871
        LD      bc,0x8                              ;4872
        ADD     hl,bc                               ;4875
        POP     de                                  ;4876
        POP     bc                                  ;4877
        RET                                         ;4878

; === LoadTileGfx (0x4879) ===
LoadTileGfx:
        PUSH    de                                  ;4879
        LD      b,0x8                               ;487a
LoadTileGfx2:
        PUSH    bc                                  ;487c
        LD      bc,0x4                              ;487d
        CALL    RAMtoVRAM                           ;4880
        EX      de,hl                               ;4883
        LD      bc,0x80                             ;4884
        ADD     hl,bc                               ;4887
        EX      de,hl                               ;4888
        POP     bc                                  ;4889
        DJNZ    LoadTileGfx2                        ;488a
        POP     de                                  ;488c
        RET                                         ;488d

; === LoadTilesGfx (0x488e) ===
LoadTilesGfx:
        PUSH    bc                                  ;488e
        CALL    LoadTileGfx                         ;488f
        LD      a,0x4                               ;4892
        ADD     a,e                                 ;4894
        CP      0x80                                ;4895
        JR      nz,LoadTilesGfx2                    ;4897
        LD      a,0x4                               ;4899
        ADD     a,d                                 ;489b
        LD      d,a                                 ;489c
        XOR     a                                   ;489d
LoadTilesGfx2:
        LD      e,a                                 ;489e
        POP     bc                                  ;489f
        DJNZ    LoadTilesGfx                        ;48a0
        RET                                         ;48a2
LoadTileGfx_2:
        PUSH    de                                  ;48a3
        LD      b,0x10                              ;48a4
LoadTileGfx2_2:
        PUSH    bc                                  ;48a6
        LD      bc,0x8                              ;48a7
        CALL    RAMtoVRAM                           ;48aa
        EX      de,hl                               ;48ad
        LD      bc,0x80                             ;48ae
        ADD     hl,bc                               ;48b1
        EX      de,hl                               ;48b2
        POP     bc                                  ;48b3
        DJNZ    LoadTileGfx2_2                      ;48b4
        POP     de                                  ;48b6
        RET                                         ;48b7

; === LoadTilesGfx16 (0x48b8) ===
LoadTilesGfx16:
        PUSH    bc                                  ;48b8
        CALL    LoadTileGfx_2                       ;48b9
        LD      a,0x8                               ;48bc
        ADD     a,e                                 ;48be
        CP      0x80                                ;48bf
        JR      nz,LoadTilesGfx16_2                 ;48c1
        LD      a,0x8                               ;48c3
        ADD     a,d                                 ;48c5
        LD      d,a                                 ;48c6
        XOR     a                                   ;48c7
LoadTilesGfx16_2:
        LD      e,a                                 ;48c8
        POP     bc                                  ;48c9
        DJNZ    LoadTilesGfx16                      ;48ca
        RET                                         ;48cc

; === Decode1bppTile (0x48cd) ===
Decode1bppTile:
        LD      b,0x8                               ;48cd
        LD      de,DecodeTileBuf                    ;48cf
Decode1bppTile2:
        PUSH    bc                                  ;48d2
        PUSH    hl                                  ;48d3
        EX      de,hl                               ;48d4
        LD      a,(de)                              ;48d5
        LD      d,a                                 ;48d6
        LD      b,0x4                               ;48d7
Decode1bppTile3:
        LD      a,c                                 ;48d9
        RL      d                                   ;48da
        JR      c,Decode1bppTile4                   ;48dc
        XOR     a                                   ;48de
Decode1bppTile4:
        RLD                                         ;48df
        LD      a,c                                 ;48e1
        RL      d                                   ;48e2
        JR      c,Decode1bppTile5                   ;48e4
        XOR     a                                   ;48e6
Decode1bppTile5:
        RLD                                         ;48e7
        INC     hl                                  ;48e9
        DJNZ    Decode1bppTile3                     ;48ea
        EX      de,hl                               ;48ec
        POP     hl                                  ;48ed
        INC     hl                                  ;48ee
        POP     bc                                  ;48ef
        DJNZ    Decode1bppTile2                     ;48f0
        RET                                         ;48f2

