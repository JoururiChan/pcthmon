	db  68,  88,  75,  65,  35,  25 ; 455 BST
	;   hp  atk  def  spe  sat  sdf

	db FAIRY, FIGHTING ; type
	db 201 ; catch rate
	db 101 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_MEDIUM_SLOW ; gender ratio, step cycles to hatch

	abilities_for KOTOHIME, OWN_TEMPO, COLLECTOR, COLLECTOR
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FAIRY, EGG_GROUND ; egg groups

	ev_yield 2 Def

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, AEROBLAST, PROTECT, RAIN_DANCE, GIGA_DRAIN, RETURN, SHADOW_BALL, DOUBLE_TEAM, SLUDGE_BOMB, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, STEEL_WING, LEECH_LIFE, WHITE_BIRD, ACROBATICS, POISON_JAB, GUNGNIR, U_TURN, FLY, SAKUYA_WORLD, DOUBLE_EDGE, ENDURE, SLEEP_TALK, SWAGGER, ZEN_HEADBUTT
	; end
