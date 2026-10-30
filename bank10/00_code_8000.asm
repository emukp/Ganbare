; === LoadChineseFont (bank 0x10, slot 0x8000) ===
; Expands Chinese glyphs (1bpp 12x12, 24B/glyph, banks 0x11+) to 4bpp 16x12
; cells (96B, 2px left pad) and uploads them to VRAM page 2 (byte 0x10000+,
; 16 cells/row, cell stride 8B, row-block stride 0x600).
; Entry: called once from ZhFontTramp (bank F tail), banks D/E/F mapped.
; Re-entry guarded by ZhFontLoaded magic (0x5A).

ZhRowBuf:     equ 0xC230        ; 8B scratch (gap after DecodeTileBuf 0xC210+32)
ZhFontLoaded: equ 0xC238        ; 1B magic flag
ZhSrcPtr:     equ 0xC239        ; 2B src pointer save
ZhCellOff:    equ 0xC23B        ; 2B page-2 byte offset of current cell
ZhRowCnt:     equ 0xC23D        ; 1B row counter
ZhTypewriterFlag: equ 0xC23F    ; 1B: 1 = typewriter path (C = index low)

LoadChineseFont:
        LD      a,(ZhFontLoaded)
        CP      0x5a
        RET     z
        LD      a,0x5a
        LD      (ZhFontLoaded),a
        XOR     a
        LD      (ZhCellOff),a
        LD      (ZhCellOff+1),a
        LD      ix,ZhBankTable
zh_bank_loop:
        LD      a,(ix+0)
        AND     a
        JR      z,zh_load_done                  ; table end
        DI
        LD      (0x6000),a                        ; slot 0x6000 <- glyph data bank
        LD      (BanksIn60),a
        EI
        LD      b,(ix+1)                          ; glyph count this bank
        LD      hl,0x6000
zh_glyph_loop:
        PUSH    bc
        CALL    ZhExpandGlyph                     ; HL=src; HL advanced by 24
        POP     bc
        DJNZ    zh_glyph_loop
        INC     ix
        INC     ix
        JR      zh_bank_loop

; bank layout table (PER_BANK=256 must match tools/bdf2asm.py)
ZhBankTable:
        DEFB    0x11,0                          ; count patched: 256 = full bank
        DEFB    0x12,ZhGlyphCount-256           ; remainder
        DEFB    0,0

; --- zh_load_done: make sure the final glyph is present, then clear blank cell
zh_load_done:
        ; The per-bank DJNZ loop has been observed to leave the very last cell
        ; (ZhGlyphCount-1) blank.  Bank 0x12 is still mapped at 0x6000 here, so
        ; re-emit that one glyph explicitly (idempotent when already loaded).
        LD      hl,((ZhGlyphCount-1)>>4)*0x600+((ZhGlyphCount-1)&15)*8
        LD      (ZhCellOff),hl
        LD      hl,0x6000+((ZhGlyphCount-256)-1)*24
        CALL    ZhExpandGlyph
        ; clear blank cell (idx = ZhGlyphCount, used for erase path)
        LD      hl,(ZhGlyphCount>>4)*0x600+(ZhGlyphCount&15)*8  ; cell right after last glyph
        LD      (ZhCellOff),hl
        LD      a,12
zh_blank_loop:
        PUSH    af
        XOR     a
        LD      b,8
        LD      hl,ZhRowBuf
zh_blank_fill:
        LD      (hl),a
        INC     hl
        DJNZ    zh_blank_fill
        LD      hl,ZhRowBuf
        LD      de,(ZhCellOff)
        CALL    ZhWriteRowP2
        LD      hl,(ZhCellOff)
        LD      de,0x80
        ADD     hl,de
        LD      (ZhCellOff),hl
        POP     af
        DEC     a
        JR      nz,zh_blank_loop
        RET

; === DrawChineseChar (bank 0x10; called via ZhDrawStub) ===
; in:  A = lead byte (0xC0-0xFD), HL -> second byte, C = mask (0xFF/0x00),
;      D = dest X, E = dest Y
; out: HL advanced past second byte; 12x12 HMMM from VRAM page 2 to page 0
;      (mask = 0 -> blank cell at idx ZhGlyphCount)
DrawChineseChar:
        LD      b,a
        LD      a,c
        AND     a                                 ;mask == 0 (erase)?
        LD      a,b
        JR      nz,zh_dc_show
        LD      bc,ZhGlyphCount                   ;blank cell index
        JR      zh_dc_go
zh_dc_show:
        SUB     0xc0
        LD      b,a                               ;B = glyph index high
        LD      a,(hl)
        LD      c,a                               ;C = glyph index low
zh_dc_go:
        INC     hl                                ;consume second byte
zh_dc_go2:
        PUSH    hl
        LD      l,c
        LD      h,b                               ;HL = glyph index
        SRL     h
        RR      l
        SRL     h
        RR      l
        SRL     h
        RR      l
        SRL     h
        RR      l                                 ;HL = block (idx / 16)
        LD      a,l
        ADD     a,a
        ADD     a,a                               ;block*4
        LD      b,a
        ADD     a,a                               ;block*8
        ADD     a,b                               ;block*12
        LD      l,a                               ;L = SY low (512+block*12)
        LD      a,2
        ADC     a,0                               ;A = mode (SY high = 2|3, DY page 0)
        LD      b,a
        LD      a,c
        AND     0x0f                              ;col = idx & 15
        ADD     a,a
        ADD     a,a
        ADD     a,a
        ADD     a,a                               ;col*16
        ADD     a,2                               ;SX = col*16 + 2
        LD      h,a                               ;H = SX
        LD      a,b
        LD      bc,0x0c0c                         ;NX = 12, NY = 12
        CALL    VDP_Copy_Byte
        POP     hl
        RET

; --- DrawChineseCharC: typewriter path; A=lead, C=index low (always draw) ---
DrawChineseCharC:
        SUB     0xc0
        LD      b,a                               ;B = glyph index high
        JR      zh_dc_go2                         ;C already = low; skip (HL) read

; --- ZhDispatch: pick PrintText (HL->second) or typewriter (C=low) path ---
ZhDispatch:
        PUSH    af
        LD      a,(ZhTypewriterFlag)
        AND     a
        JR      z,ZhDispatchHl
        XOR     a
        LD      (ZhTypewriterFlag),a
        POP     af
        JP      DrawChineseCharC
ZhDispatchHl:
        POP     af
        JP      DrawChineseChar

; --- ZhExpandGlyph: expand 24B 1bpp glyph at HL -> upload 12 rows to VRAM page 2
ZhExpandGlyph:
        LD      (ZhSrcPtr),hl
        LD      a,12
        LD      (ZhRowCnt),a
zh_row_loop:
        LD      hl,(ZhSrcPtr)
        LD      a,(hl)
        INC     hl
        LD      b,a
        LD      a,(hl)
        INC     hl
        LD      (ZhSrcPtr),hl
        LD      c,a                             ; BC = src row (B bit7 = pixel 0)
        LD      iy,ZhRowBuf+1
        CALL    ZhExpByte
        LD      (iy+0),a
        INC     iy
        CALL    ZhExpByte
        LD      (iy+0),a
        INC     iy
        CALL    ZhExpByte
        LD      (iy+0),a
        INC     iy
        CALL    ZhExpByte
        LD      (iy+0),a
        INC     iy
        CALL    ZhExpByte
        LD      (iy+0),a
        INC     iy
        CALL    ZhExpByte
        LD      (iy+0),a
        XOR     a
        LD      (ZhRowBuf),a                    ; 2px left pad
        LD      (ZhRowBuf+7),a                  ; 2px right pad
        LD      hl,ZhRowBuf
        LD      de,(ZhCellOff)
        CALL    ZhWriteRowP2
        LD      hl,(ZhCellOff)
        LD      de,0x80
        ADD     hl,de
        LD      (ZhCellOff),hl
        LD      a,(ZhRowCnt)
        DEC     a
        LD      (ZhRowCnt),a
        JR      nz,zh_row_loop
        ; next cell: off = off - 12*0x80 + 8; wrap every 16 cells (col byte 0x80)
        LD      hl,(ZhCellOff)
        LD      de,-0x5f8                       ; -0x600+8
        ADD     hl,de
        LD      a,l
        CP      0x80
        JR      nz,zh_cell_ok
        LD      de,0x580                        ; -0x80+0x600
        ADD     hl,de
zh_cell_ok:
        LD      (ZhCellOff),hl
        LD      hl,(ZhSrcPtr)
        RET

; --- ZhExpByte: shift 2 src bits from BC -> 4bpp pixel pair (fg color 0x0E)
ZhExpByte:
        XOR     a
        SLA     c
        RL      b
        JR      nc,zh_eb1
        OR      0xf0
zh_eb1:
        SLA     c
        RL      b
        JR      nc,zh_eb2
        OR      0x0f
zh_eb2:
        AND     0xee                            ; mask -> color 0x0E in both nibbles
        RET

; --- ZhWriteRowP2: write 8 bytes at HL to VRAM page 2 offset DE
; DI across address-set + OTIR: HTIMI must not slip another VRAM write in between
ZhWriteRowP2:
        EX      de,hl                           ; HL = page-2 offset, DE = src
        DI
        CALL    ZhSetVramWRP2
        EX      de,hl                           ; HL = src
        LD      a,(0x7)
        LD      c,a
        LD      b,8
        OTIR
        EI
        RET

; --- ZhSetVramWRP2: set VRAM write address, HL = offset from 0x10000 (page 2)
; NOTE: caller handles DI/EI
ZhSetVramWRP2:
        PUSH    bc
        LD      a,(0x7)
        INC     a
        LD      c,a
        LD      a,h
        RLCA
        RLCA
        AND     0x3
        OR      0x4                             ; page 2 base (A16)
        OUT     (c),a                           ; R#14 = A14-A16
        LD      a,0x8e
        OUT     (c),a
        LD      a,l
        OUT     (c),a
        LD      a,h
        AND     0x3f
        OR      0x40
        OUT     (c),a
        POP     bc
        RET
