; === ZhTypewriterChar (0x492B; reclaimed pad) ===
; Called from the 0x42F1 typewriter player for a lead byte 0xC0-0xDF.
; in:  A = lead byte, HL -> second byte (stream bank 2/F still mapped),
;      DE = dest (loaded by the player)
; The second byte is read before ZhDrawStub switches slot 0x8000, so bank 2
; streams stay readable.  Never returns to the player: draws 12x12, advances
; X by 12 through the player's advance code and RETs to the player's caller.
ZhTypewriterChar:
        LD      (ZhTypewriterFlag),a
        LD      c,(hl)                              ;C = glyph index low
        INC     hl
        LD      (0xcd65),hl                         ;advance stream cursor
        CALL    ZhDrawStub                          ;A=lead, C=low, flag=1
        POP     hl                                  ;drop return to player
        LD      a,0x0c                              ;12px
        JP      b0_l4321h                           ;advance and RET to caller

        DS      0x4940-$,0xff
