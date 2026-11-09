; =============================================================================
; Ganbare Goemon - banks 0x7-0x9
; =============================================================================

	PHASE	06000h			; bank 0x7 (slot 0x6000)
	include	"logic/header_b7_0000.asm"
	include	"gfx/gfx_stage01.asm"
	include	"gfx/gfx_stage02.asm"
	include	"data/gfx16_icons_gourd.asm"
	include	"gfx/gfx_placer03.asm"
	include	"gfx/gfx_placer05.asm"
	UNPHASE

	PHASE	08000h			; bank 0x8 (slot 0x8000)
	include	"gfx/gfx_placer08.asm"
	include	"data/gfx_placer10.asm"
	include	"gfx/gfx_placer13.asm"
	include	"data/gfx_map_data1.asm"
	UNPHASE

	PHASE	0A000h			; bank 0x9 (slot 0xA000)
	include	"logic/header_b9_a000.asm"
	include	"data/map2_pal_tree.asm"
	include	"logic/stage_map_tbl.asm"
	include	"data/data_b9_b8ec.asm"
	UNPHASE
