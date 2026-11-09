; =============================================================================
; Ganbare Goemon - banks 0x4-0x6
; =============================================================================

	PHASE	06000h			; bank 0x4 (slot 0x6000)
	include	"logic/header_b4_6000.asm"
	include	"data/data_b4_605f.asm"
	include	"data/data_b4_6401.asm"
	include	"logic/code_b4_6893.asm"
	include	"data/data_b4_6942.asm"
	include	"data/data_b4_6cda.asm"
	include	"data/data_b4_6ff2.asm"
	include	"logic/code_b4_72f4.asm"
	include	"logic/code_b4_762a.asm"
	include	"data/data_b4_7893.asm"
	include	"data/data_b4_7cc1.asm"
	UNPHASE

	PHASE	08000h			; bank 0x5 (slot 0x8000)
	include	"logic/header_b5_8000.asm"
	include	"data/data_b5_8019.asm"
	include	"logic/code_b5_86c3.asm"
	include	"logic/code_b5_89d6.asm"
	include	"data/data_b5_8a7d.asm"
	include	"logic/code_b5_8e8b.asm"
	include	"data/data_b5_8f7d.asm"
	UNPHASE

	PHASE	0A000h			; bank 0x6 (slot 0xA000)
	include	"logic/header_b6_a000.asm"
	include	"data/data_b6_a210.asm"
	include	"logic/gfx_stage_intro1.asm"
	include	"gfx/gfx_stage_intro2.asm"
	include	"logic/code_b6_b850.asm"
	include	"logic/gfx_konami_logo.asm"
	include	"data/gfx_konami_logo2.asm"
	UNPHASE
