; bank 0x10 — zh-hack expansion code bank (new routines: Chinese font loader etc.)
; mapped at slot 0x8000 (caller writes 0x10 to the mapper register before CALL)
; NOTE: draw-time resident code must NOT live here — this bank is only visible
;       under controlled bank switching

	include	"bank10/00_code_8000.asm"

	; pad to 8KB
	DS	0x2000 - ($ & 0x1FFF), 0xFF
