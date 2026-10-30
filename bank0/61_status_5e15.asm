GS_Title:
        LD      hl,WaitCounter                      ;5e15
        DEC     (hl)                                ;5e18
        JP      nz,PreDrawTitleCursor               ;5e19
        JP      NextStatusT                         ;5e1c
