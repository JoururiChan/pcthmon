	db  60,  25,  42,  49,  75,  75 ; 349 BST
	;   hp  atk  def  spe  sat  sdf

	db GHOST, DARK ; type
	db 70 ; catch rate
	db 110 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F100, HATCH_SLOWEST ; gender ratio, step cycles to hatch

	abilities_for CMIMA, PRESSURE, PRESSURE, SCRAPPY
	db GROWTH_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_FLYING ; egg groups

	ev_yield 1 SAt

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, RETURN, DOUBLE_TEAM, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, STEEL_WING, WHITE_BIRD, FOCUS_BLAST, U_TURN, FLY, SAKUYA_WORLD, DOUBLE_EDGE, ENDURE, SLEEP_TALK, SWAGGER
	; end
