; Used for Lyra to describe multiple evolutions (see engine/phone/scripts/lyra.asm)

MACRO multi_evo
; mon, EVOLVE_* value
	if _NARG == 1
		dp \1, PLAIN_FORM
		db EVOLVE_\1
	elif _NARG == 2
		dp \1
		db \2
	else
		dp \1, \2
		db \3
	endc
ENDM

MultipleEvolutions:
	multi_evo EKIKURI
	multi_evo EKIKURI, EKIKURI_FLY_FORM, EVOLVE_EKIKURI
	multi_evo EKIKURI, EKIKURI_SURF_FORM, EVOLVE_EKIKURI
	multi_evo CKANA
	multi_evo EKURUMI
	multi_evo ELUIZE
	multi_evo ELUIZE, GALARIAN_FORM, EVOLVE_ELUIZE_GALARIAN
	multi_evo EALICE
	multi_evo CIRNO
	multi_evo EKOAKUMA
	multi_evo CMEILING
	multi_evo CHEN
	multi_evo ELYRICA
	multi_evo MIME_JR_
	multi_evo URSARING
	multi_evo STANTLER
	multi_evo DUNSPARCE, DUDUNSPARCE_TWO_SEGMENT_FORM, EVOLVE_DUNSPARCE
	multi_evo DUNSPARCE, DUDUNSPARCE_THREE_SEGMENT_FORM, EVOLVE_DUNSPARCE
	dw -1
