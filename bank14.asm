; bank 0x14 - zh shadow of bank 1 (fixed text streams)
; Generated at build time by tools/build_texts.py from work/base.rom (compiled bank 1).
; This is only an INCBIN stub - do not edit the generated data here.
;
;   pass 1 (no ZH_SHADOW): 0xFF placeholder -> work/base.rom
;   pass 2 (-DZH_SHADOW):  INCBIN work/bank14.bin (see Makefile)

        IFDEF   ZH_SHADOW
        INCBIN  "work/bank14.bin"
        ELSE
        DS      0x2000,0xFF
        ENDIF
        ASSERT  $ == 0xA000
