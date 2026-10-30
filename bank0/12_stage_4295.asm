; === map loaders (0x429B after the zh-hack 0x4206 growth) ===
; merged shared body: keeps total module size so 0x42C3 (RleDecompress) and
; 0x42E1/0x42F1 (raw-called player) stay at their original addresses.
LoadMapLayout:
        CALL    SetBanksD_E_F
        LD      hl,0x6000
        LD      bc,0xd000
        JR      LoadMapCommon
LoadMapCellGfx:
        CALL    SetBanksD_E_F
        LD      hl,0x75b9
        LD      bc,0xe100
LoadMapCommon:
        LD      a,(0xc289)
        ADD     a,a
        CALL    GetTableWord
        EX      de,hl
        LD      h,b
        LD      l,c
        CALL    RleDecompress
        JP      SetBanks1_2_3

        DS      0x42C3-$,0xff
