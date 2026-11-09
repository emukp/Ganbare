; =============================================================================
; Ganbare Goemon - banks 0xD-0xF
; =============================================================================

	PHASE	06000h			; bank 0xD (slot 0x6000)
	include	"logic/header_bD_0000.asm"
	include	"logic/rle_map_data.asm"
	include	"data/data_bD_6032.asm"
	include	"logic/code_bD_63d2.asm"
	include	"logic/code_bD_6756.asm"
	include	"logic/code_bD_6aa8.asm"
	include	"logic/code_bD_6dbe.asm"
	include	"logic/code_bD_7115.asm"
	include	"data/data_bD_753c.asm"
	include	"logic/rle_map_cell_data.asm"
	include	"logic/code_bD_78f8.asm"
	include	"logic/code_bD_7c7a.asm"
	include	"logic/code_bD_7fca.asm"
	UNPHASE

	PHASE	08000h			; bank 0xE (slot 0x8000)
	include	"logic/header_bE_8000.asm"
	include	"logic/code_bE_8341.asm"
	include	"logic/code_bE_86a6.asm"
	include	"logic/code_bE_8a24.asm"
	include	"logic/code_bE_8dde.asm"
	include	"logic/gfx_title_chars.asm"
	include	"data/data_bE_929d.asm"
	include	"gfx/gfx_title_arrows.asm"
	include	"data/data_bE_9775.asm"
	include	"logic/code_bE_9ade.asm"
	include	"data/data_bE_9d01.asm"
	UNPHASE

	PHASE	0A000h			; bank 0xF (slot 0xA000)
	include	"logic/header_bF_a000.asm"
	include	"logic/code_bF_a3b0.asm"
	include	"logic/code_bF_a702.asm"
	include	"logic/code_bF_aab3.asm"
	include	"logic/code_bF_add8.asm"
	include	"logic/code_bF_b11c.asm"
	include	"logic/code_bF_b442.asm"
	include	"logic/code_bF_b776.asm"
	include	"logic/code_bF_ba75.asm"
	include	"logic/code_bF_bd95.asm"
	include	"gfx/zh_font_tramp.asm"
	UNPHASE
