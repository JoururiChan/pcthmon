	db 105, 105,  75,  50,  65, 100 ; 500 BST
	;   hp  atk  def  spe  sat  sdf

	db MIASMA, DARK ; type
	db 75 ; catch rate
	db 157 ; base exp
	db BLACK_SLUDGE, NUGGET ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for CYUMEKO, POISON_TOUCH, GLUTTONY, CORROSION
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	ev_yield 1 HP, 1 Atk

	; tm/hm learnset
	tmhm DYNAMICPUNCH, SPIRIT_VOICE, TOXIC, HIDDEN_POWER, SUNNY_DAY, GIGA_DRAIN, RETURN, DIG, SHADOW_BALL, ROCK_SMASH, DOUBLE_TEAM, METEOR_FALL, SLUDGE_BOMB, HELL_TOKAMAK, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ROCK_SLIDE, FOCUS_BLAST, DARK_PULSE, EXPLOSION, POISON_JAB, GUNGNIR, STONE_EDGE, STRENGTH, BODY_SLAM, ENDURE, FIRE_PUNCH, ICE_PUNCH, KNOCK_OFF, SLEEP_TALK, SWAGGER, THUNDERPUNCH
	; end
