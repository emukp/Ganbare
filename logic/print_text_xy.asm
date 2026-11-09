; === PrintTextXY (0x48f3) ===
PrintTextXY:
        LD      c,0xff                              ;48f3
        JR      PrintTextGetXY                      ;48f5
EraseTextXY:
        LD      c,0x0                               ;48f7
PrintTextGetXY:
        LD      d,(hl)                              ;48f9
        INC     hl                                  ;48fa
        LD      e,(hl)                              ;48fb
        INC     hl                                  ;48fc

; === PrintText (0x48fd) ===
; zh-hack: lead byte 0xC0-0xFD -> 12x12 Chinese glyph from VRAM page 2 (12px step)
PrintText:
        LD      a,(hl)                              ;48fd
        INC     hl                                  ;48fe
        LD      b,a                                 ;48ff
        INC     b                                   ;4900
        RET     z                                   ;4901  0xFF: stream end
        INC     b                                   ;4902
        JR      z,PrintTextXY                       ;4903  0xFE: reposition
        CP      0xc0                                ;zh-hack
        JR      nc,PrintTextZh                      ;zh-hack: lead byte 0xC0-0xFD
        PUSH    af                                  ;4905
        AND     c                                   ;4906
        CALL    DrawChar                            ;4907
        POP     af                                  ;490a
        PUSH    bc                                  ;490b
        SUB     0x62                                ;490c
        CP      0x2                                 ;490e
        LD      b,0x8                               ;4910
        JR      nc,PrintText3                       ;4912
        LD      b,0x4                               ;4914
PrintText3:
        LD      a,d                                 ;4916
        ADD     a,b                                 ;4917
        LD      d,a                                 ;4918
        POP     bc                                  ;4919
        JR      PrintText                           ;491a

; --- PrintTextZh: Chinese 2-byte code (12x12 glyph, 12px step)
PrintTextZh:
        PUSH    bc                                  ;keep mask in C
        CALL    ZhDrawStub                          ;draws 12x12 (blank if C==0), HL++
        POP     bc
        LD      a,d
        ADD     a,0xc                               ;12px advance
        LD      d,a
        JR      PrintText
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
