if DEF(FAITHFUL)
	db 130,  75,  60,  20,  45, 100 ; 430 BST
	;   hp  atk  def  spe  sat  sdf
else
	db 130,  85,  70,  20,  45, 100 ; 450 BST
	;   hp  atk  def  spe  sat  sdf
endc

	db POISON, GROUND ; type
	db 90 ; catch rate
	db 137 ; base exp
	db NO_ITEM, CHESTO_BERRY ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for CLODSIRE, POISON_POINT, WATER_ABSORB, UNAWARE
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	ev_yield 2 HP

	; tm/hm learnset
	tmhm DYNAMICPUNCH, CURSE, TOXIC, HAIL,  HIDDEN_POWER, ICE_BEAM, BLIZZARD, AEROBLAST, PROTECT, SAFEGUARD, BULLDOZE, IRON_TAIL, EARTHQUAKE, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, SLUDGE_BOMB, SANDSTORM, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ROCK_SLIDE, FOCUS_BLAST, POISON_JAB, GUNGNIR, FLASH, STONE_EDGE, SURF, STRENGTH, AQUA_TAIL, BODY_SLAM, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, EARTH_POWER, ENDURE, HEADBUTT, ICE_PUNCH, ICY_WIND, ROLLOUT, SEISMIC_TOSS, SLEEP_TALK, SWAGGER
	; end
