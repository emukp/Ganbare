; === ZhFontTramp (bank F tail, 0xBEF8) ===
; trampoline patched into LoadTitleScreenAssets tail (bank0 0x4A93)
; flow: slot 0x8000 <- bank 0x10, call LoadChineseFont, restore banks 1/2/3
ZhFontTramp:
        DI
        LD      a,0x10
        LD      (0x8000),a                        ; slot 0x8000 <- bank 0x10
        LD      (BanksIn80),a
        EI
        CALL    LoadChineseFont
        JP      SetBanks1_2_3

        ; orphan data labels (disassembler artifacts referenced by data-as-JR
        ; encodings at 0xBEC7/0xBED6) - keep at original addresses so the
        ; relative offsets still encode the original data bytes 0x63/0x5D
        DS      0xbf2c-$,0xff
bF_lbf2ch:
        DS      0xbf35-$,0xff
bF_lbf35h:
        DS      0xc000-$,0xff                     ; pad to bank end
