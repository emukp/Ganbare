; =============================================================================
; Ganbare Goemon Karakuri Douchuu (1987, Konami, RC-748)
; 256KB MegaROM - Konami mapper (non-SCC, 8KB pages)  [zh-hack: orig 128KB + banks 0x10-0x1F]
;   original SHA1 fd71df03b0e9f3caf701ecfc6d5232060cab3b13
;
; Memory layout (confirmed by SetBanks helpers in bank0 + openMSX runtime):
;   0x4000-0x5FFF : fixed bank 0 (ROM header "AB", init=0x4097)
;   0x6000-0x7FFF : switchable, register = any write into 0x6000-0x7FFF, initial bank 1
;   0x8000-0x9FFF : switchable, register = any write into 0x8000-0x9FFF
;   0xA000-0xBFFF : switchable, register = any write into 0xA000-0xBFFF
;   bank home slots: 0/4/7/A/D -> 0x6000, 2/5/8/B/E -> 0x8000, 3/6/9/C/F -> 0xA000
;     (bank0: SetBanks1_2_3..D_E_F at 0x4206/0x4220/0x4238/0x4250/0x4268)
;   RAM shadow registers: 0xF0F1/0xF0F2/0xF0F3 = current bank of 0x6000/0x8000/0xA000
;
; File layout: ROM image = 16 banks concatenated in bank0..bankF order
; =============================================================================
	org	0			; ROM image starts at file offset 0

	include	"constants/bios.asm"			; BIOS routine address symbols
	include	"constants/SystemVariables.asm"		; system variable address symbols
	include	"constants/Variables.asm"		; game RAM variable symbols (auto-generated)

	PHASE	04000h			; bank 0 (fixed at 0x4000, holds ROM header)
	include	"bank0.asm"
	UNPHASE
	PHASE	06000h			; bank 1 (initial/resident bank of 0x6000 slot)
	include	"bank1.asm"
	UNPHASE
	PHASE	08000h			; bank 2 (0x8000 slot)
	include	"bank2.asm"
	UNPHASE
	PHASE	0A000h			; bank 3 (0xA000 slot)
	include	"bank3.asm"
	UNPHASE
	PHASE	06000h			; bank 4
	include	"bank4.asm"
	UNPHASE
	PHASE	08000h			; bank 5
	include	"bank5.asm"
	UNPHASE
	PHASE	0A000h			; bank 6
	include	"bank6.asm"
	UNPHASE
	PHASE	06000h			; bank 7
	include	"bank7.asm"
	UNPHASE
	PHASE	08000h			; bank 8
	include	"bank8.asm"
	UNPHASE
	PHASE	0A000h			; bank 9
	include	"bank9.asm"
	UNPHASE
	PHASE	06000h			; bank A
	include	"bankA.asm"
	UNPHASE
	PHASE	08000h			; bank B
	include	"bankB.asm"
	UNPHASE
	PHASE	0A000h			; bank C
	include	"bankC.asm"
	UNPHASE
	PHASE	06000h			; bank D
	include	"bankD.asm"
	UNPHASE
	PHASE	08000h			; bank E (font data 0x929D etc.)
	include	"bankE.asm"
	UNPHASE
	PHASE	0A000h			; bank F
	include	"bankF.asm"
	UNPHASE

; ---- zh-hack expansion banks 0x10-0x1F (new code + Chinese glyph data) ----
	PHASE	08000h			; bank 0x10 (code bank, slot 0x8000)
	include	"bank10.asm"
	UNPHASE
	PHASE	08000h			; bank 0x11 (glyph data)
	include	"bank11.asm"
	UNPHASE
	PHASE	08000h			; bank 0x12
	include	"bank12.asm"
	UNPHASE
	PHASE	08000h			; bank 0x13
	include	"bank13.asm"
	UNPHASE
	PHASE	08000h			; bank 0x14
	include	"bank14.asm"
	UNPHASE
	PHASE	08000h			; bank 0x15
	include	"bank15.asm"
	UNPHASE
	PHASE	08000h			; bank 0x16
	include	"bank16.asm"
	UNPHASE
	PHASE	08000h			; bank 0x17
	include	"bank17.asm"
	UNPHASE
	PHASE	06000h			; bank 0x18 (Game Over streams at 0x6000)
	include	"bank18.asm"
	UNPHASE
	PHASE	08000h			; bank 0x19
	include	"bank19.asm"
	UNPHASE
	PHASE	08000h			; bank 0x1A
	include	"bank1A.asm"
	UNPHASE
	PHASE	08000h			; bank 0x1B
	include	"bank1B.asm"
	UNPHASE
	PHASE	08000h			; bank 0x1C
	include	"bank1C.asm"
	UNPHASE
	PHASE	08000h			; bank 0x1D
	include	"bank1D.asm"
	UNPHASE
	PHASE	08000h			; bank 0x1E
	include	"bank1E.asm"
	UNPHASE
	PHASE	08000h			; bank 0x1F
	include	"bank1F.asm"
	UNPHASE

