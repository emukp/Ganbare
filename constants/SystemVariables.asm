
;----------------------------------------------------------------------------
;
; System variables
;
;----------------------------------------------------------------------------

CLIKSW:		equ	#f3db
RG1SAV:		equ	#f3e0
FNKSTR:		equ	#f87f
ACPAGE:		equ	#faf6
KEYBUF:		equ	#fbf0
KANAST:		equ	#fcac
EXPTBL:		equ	#fcc1
HKEYI:		equ	#fd9a
HTIMI:		equ	#fd9f
HSTKE:		equ	#feda
HPHYD:		equ	#ffa7
RG08SAV:	equ	#ffe7
RG14SAV:	equ	#ffed			; Mirror of VDP register 14 (VRAM A16-A14)
RG23SAV:	equ	#fff6
BDRCLR:		equ	#f3eb			; Border color
CS240:		equ	#f401			; Cassette I/O params 2400 baud (game reuses as scratch)
RG26SAV:	equ	#fffb			; Mirror of VDP register 26
SLTSL:		equ	#ffff			; Secondary slot select register
