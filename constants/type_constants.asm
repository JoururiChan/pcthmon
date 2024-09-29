; TypeNames indexes (see data/types/names.asm)
; also used in:
; - TypeMatchups (see data/types/type_matchups.asm)
; - InverseTypeMatchups (see data/types/type_matchups.asm)
	const_def
	; Type order matters for Hidden Power and non-PSS category
	const ILLUSION    ; 00
	const DREAM  ; 01
	const FLYING    ; 02
	const MIASMA    ; 03
	const EARTH    ; 04
	const BEAST      ; 05
	const BUG       ; 06
	const GHOST     ; 07
	const STEEL     ; 08
DEF SPECIAL_TYPES EQU const_value
	const FIRE      ; 09
	const WATER     ; 0a
	const NATURE     ; 0b
	const WIND  ; 0c
	const REASON   ; 0d
	const ICE       ; 0e
	const FAITH    ; 0f
	const DARK      ; 10
	const HEART     ; 11
	const UNKNOWN_T ; 12
DEF NUM_TYPES EQU const_value

; categories
	const_def
	const PHYSICAL
	const SPECIAL
	const STATUS
DEF NUM_CATEGORIES EQU const_value

DEF TOHODEX_TYPE_STRING_LENGTH EQU 9
