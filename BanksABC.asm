; =============================================================================
; Ganbare Goemon - banks 0xA-0xC
; =============================================================================

	PHASE	06000h			; bank 0xA (slot 0x6000)
	include	"logic/header_bA_0000.asm"
	include	"sound/update_sound.asm"
	include	"logic/snd_dispatch_track.asm"
	include	"sound/snd_sfx_handler.asm"
	include	"logic/snd_set_chan_period.asm"
	include	"sound/snd_sfx_engine_track.asm"
	include	"data/data_bA_6552.asm"
	include	"data/data_bA_7e9d.asm"
	UNPHASE

	PHASE	08000h			; bank 0xB (slot 0x8000)
	include	"logic/header_bB_8000.asm"
	include	"data/gfx_map_data2.asm"
	UNPHASE

	PHASE	0A000h			; bank 0xC (slot 0xA000)
	include	"logic/header_bC_a000.asm"
	include	"data/data_bC_a2eb.asm"
	include	"logic/code_bC_a639.asm"
	include	"data/txt_dialog_tbl.asm"
	include	"data/txt_dialog_yes_no.asm"
	include	"data/txt_dialog_empty02.asm"
	include	"logic/code_bC_b075.asm"
	include	"logic/txt_dialog_shop301.asm"
	include	"data/data_bC_b6a5.asm"
	include	"data/data_bC_bc99.asm"
	UNPHASE
