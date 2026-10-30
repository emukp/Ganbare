; === PrintDialogText ===
; NOTE: originally at 0x4280; the zh-hack grew 10_system_4206 by 6 bytes,
; so it now sits at 0x4286.  Three raw calls in bank3 (see
; 09_data_b579.asm ;b6d2/;b6f4 and 11_data_bc1b.asm ;bdba) were patched
; from CD 80 42 to CD 86 42.  Keep this address fixed: the ASSERT below
; fails if any earlier bank0 module changes size.
        ASSERT  $ == 0x4286
PrintDialogText:
        CP      0xff                                ;4280
        RET     z                                   ;4282
        PUSH    af                                  ;4283
        CALL    SetBanksA_B_C                       ;4284
        POP     af                                  ;4287
        LD      de,0xa9c0                           ;4288
        CALL    GetPointerDE2A                      ;428b
        EX      de,hl                               ;428e
        CALL    PrintTextXY                         ;428f
        JP      SetBanks1_2_3                       ;4292
