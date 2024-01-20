	db 125,  55,  71,  75, 165, 110 ; 253 BST
	;   hp  atk  def  spe  sat  sdf

	db GHOST, DARK ; type
	db 55 ; catch rate
	db 225 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F100, HATCH_SLOWEST ; gender ratio, step cycles to hatch

	abilities_for EMIMA, PRESSURE, PRESSURE, SCRAPPY
	db GROWTH_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_FLYING ; egg groups

	ev_yield 3 SAt

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SHADOW_DANCE, LIGHT_SCREEN, PROTECT, RAIN_DANCE, THUNDERBOLT, THUNDER, REFLECT, METEOR_FALL, RETURN, DOUBLE_TEAM, SWIFT, PSYCHIC, SHADOW_BALL, FLAME_CHARGE, SUBSTITUTE, REST, ATTRACT, THIEF, FOCUS_BLAST, FLASH, DARK_PULSE, WILL_O_WISP, THUNDER_WAVE, SAKUYA_WORLD, DOUBLE_EDGE, ENDURE, SLEEP_TALK, SWAGGER
	; end
