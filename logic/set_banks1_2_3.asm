; === SetBanks helpers (0x4206) ===
; zh-hack: refactored to a shared body; freed pad hosts zh-hack resident code.
; entries kept symbolic-only (no raw-address callers)

SetBanks1_2_3:
        LD      a,0x1
        JR      SetBanksN
SetBanks4_5_6:
        LD      a,0x4
        JR      SetBanksN
SetBanks7_8_9:
        LD      a,0x7
        JR      SetBanksN
SetBanksA_B_C:
        LD      a,0xa
        JR      SetBanksN
SetBanksD_E_F:
        LD      a,0xd
        JR      SetBanksN

; --- SetBanksN: map banks A/A+1/A+2 to slots 0x6000/0x8000/0xA000 (+shadows)
; zh-hack shadow remap: base 0x01 -> slot 0x6000 = shadow bank 0x14 (zh bank 1)
;                       base 0x0A -> slot 0xA000 = shadow bank 0x15 (zh bank C)
; out: A = base (1/4/7/0xA/0xD); F/HL preserved; BC/DE untouched
;      (original returned A=base+2 as an INC-chain artifact; no caller relies on it)
SetBanksN:
        DI
        PUSH    af
        PUSH    hl
        LD      hl,BanksIn60
        LD      (0x6000),a
        LD      (hl),a
        INC     a
        LD      (0x8000),a
        INC     hl
        LD      (hl),a
        INC     a                               ; A = base+2 (3/6/9/0xC/0xF)
        LD      (0xa000),a
        INC     hl
        LD      (hl),a                          ; HL = BanksInA0
        CP      0x03                            ; base 1 ?
        JR      nz,SetBanksN2
        LD      a,0x14
        LD      (0x6000),a
        DEC     hl
        DEC     hl
        LD      (hl),a                          ; BanksIn60
        INC     hl
        LD      a,0x16
        LD      (0x8000),a                      ; slot 0x8000 <- bank2 shadow
        LD      (hl),a                          ; BanksIn80
SetBanksN2:
        CP      0x0c                            ; base 0xA ? (base-1 branch leaves A=0x14)
        JR      nz,SetBanksN3
        LD      a,0x15
        LD      (0xa000),a
        LD      (hl),a                          ; BanksInA0
SetBanksN3:
        POP     hl
        POP     af
        EI
        RET

; === ZhDrawStub (zh-hack) ===
; draw-time trampoline into bank 0x10 (ZhDispatch -> DrawChineseChar/C)
; in:  A = lead byte (0xC0-0xDF), C = mask (0xFF/0x00) with HL -> second byte
;      (PrintText), or C = second byte with ZhTypewriterFlag != 0 (typewriter)
;      D = dest X, E = dest Y
; out: HL advanced past second byte (PrintText path)
ZhDrawStub:
        LD      b,a                               ; keep lead byte (bank switch clobbers A)
        DI
        LD      a,(BanksIn80)
        PUSH    af
        LD      a,0x10
        LD      (0x8000),a                        ; slot 0x8000 <- bank 0x10
        LD      (BanksIn80),a
        LD      a,b                               ; A = lead byte
        CALL    ZhDispatch                        ; bank 0x10: select HL or C=low path
        DI
        POP     af
        LD      (0x8000),a                        ; restore slot 0x8000
        LD      (BanksIn80),a
        EI
        RET

; === DrawChar (moved from 0x491C; zh-hack space reclaim) ===
DrawChar:
        PUSH    bc
        PUSH    hl
        PUSH    de
        OR      a
        LD      h,a
        JR      z,DrawChar2
        CALL    GetTileXY
        ADD     a,0x38
DrawChar2:
        LD      l,a
        LD      bc,0x808
        LD      a,0x1
        CALL    VDP_Copy_Byte
        POP     de
        POP     hl
        POP     bc
        RET
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
