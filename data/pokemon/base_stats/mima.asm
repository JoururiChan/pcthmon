	db  92,  38,  60,  64, 120,  94 ; 510 BST
	;   hp  atk  def  spe  sat  sdf

	db GHOST, DARK ; type
	db 55 ; catch rate
	db 197 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_FAST ; gender ratio, step cycles to hatch

	abilities_for MIMA, KEEN_EYE, TANGLED_FEET, NO_GUARD
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	ev_yield 3 Spe

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, MASTER_SPARK, PROTECT, RAIN_DANCE, RETURN, DOUBLE_TEAM, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, STEEL_WING, ROOST, FOCUS_BLAST, GIGA_IMPACT, U_TURN, FLY, SAKUYA_WORLD, DOUBLE_EDGE, ENDURE, SLEEP_TALK, SWAGGER
	; end
