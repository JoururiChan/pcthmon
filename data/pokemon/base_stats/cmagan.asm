	db  51,  30,  38,  45,  58,  58 ; 205 BST
	;   hp  atk  def  spe  sat  sdf

	db DARK, DARK ; type
	db 120 ; catch rate
	db 53 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_SLOWEST ; gender ratio, step cycles to hatch

	abilities_for CMAGAN, KEEN_EYE, KEEN_EYE, PRESSURE
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	ev_yield 1 HP

	; tm/hm learnset
	tmhm CURSE, CALM_MIND, TOXIC, SHADOW_DANCE, HIDDEN_POWER, LIGHT_SCREEN, PROTECT, SAFEGUARD, THUNDERBOLT, RETURN, PSYCHIC, DOUBLE_TEAM, REFLECT, FLASH_CANNON, SLUDGE_BOMB, SUBSTITUTE, REST, ENERGY_LIGHT, DARK_PULSE, WILL_O_WISP, WATER_PULSE, THUNDER_WAVE
	; end
