	db  35, 70,  30,  70,  25,  30 ; 500 BST
	;   hp  atk  def  spe  sat  sdf

	db STEEL, STEEL ; type
	db 60 ; catch rate
	db 110 ; base exp
	db BLACK_SLUDGE, NUGGET ; held items
	dn GENDER_F50, HATCH_SLOWER ; gender ratio, step cycles to hatch

	abilities_for CYUMEKO, BATTLE_ARMOR, BATTLE_ARMOR, TECHNICIAN
	db GROWTH_FAST ; growth rate
	dn EGG_MINERAL, EGG_MONSTER ; egg groups

	ev_yield 1 Atk

	; tm/hm learnset
	tmhm DYNAMICPUNCH, CURSE, TOXIC,  HIDDEN_POWER, SUNNY_DAY, AEROBLAST, PROTECT, RAIN_DANCE, GIGA_DRAIN, THUNDERBOLT, THUNDER, RETURN, DIG, SHADOW_BALL, ROCK_SMASH, DOUBLE_TEAM, METEOR_FALL, SLUDGE_BOMB, HELL_TOKAMAK, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ROCK_SLIDE, FOCUS_BLAST, DARK_PULSE, EXPLOSION, POISON_JAB, GUNGNIR, CUT, STRENGTH, BODY_SLAM, ENDURE, FIRE_PUNCH, ICE_PUNCH, SLEEP_TALK, SWAGGER, THUNDERPUNCH, ZAP_CANNON
	; end
