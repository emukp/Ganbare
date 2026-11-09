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
; File layout: ROM image = 32 banks concatenated in bank order
;              (bank 0x00-0x0F original, 0x10-0x1F zh-hack expansion)
; =============================================================================
	org	0			; ROM image starts at file offset 0

	include	"constants/bios.asm"			; BIOS routine address symbols
	include	"constants/SystemVariables.asm"		; system variable address symbols
	include	"constants/Variables.asm"		; game RAM variable symbols (auto-generated)

; Bank groups live in Banks*.asm; each bank is PHASE'd at its runtime address.
	include	"Banks0123.asm"		; banks 0x0-0x3 (header + first 12 KiB)
	include	"Banks456.asm"		; banks 0x4-0x6
	include	"Banks789.asm"		; banks 0x7-0x9
	include	"BanksABC.asm"		; banks 0xA-0xC
	include	"BanksDEF.asm"		; banks 0xD-0xF
	include	"BanksExpansion.asm"	; banks 0x10-0x1F (zh-hack)
