	db  60,  25,  42,  49,  75,  75 ; 349 BST
	;   hp  atk  def  spe  sat  sdf

	db GHOST, DARK ; type
	db 70 ; catch rate
	db 110 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_FAST ; gender ratio, step cycles to hatch

	abilities_for CMIMA, KEEN_EYE, TANGLED_FEET, BIG_PECKS
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	ev_yield 2 Spe

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, RETURN, DOUBLE_TEAM, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, STEEL_WING, ROOST, FOCUS_BLAST, U_TURN, FLY, SAKUYA_WORLD, DOUBLE_EDGE, ENDURE, SLEEP_TALK, SWAGGER
	; end
