	db 110,  85,  95,  50,  80,  95 ; 515 BST
	;   hp  atk  def  spe  sat  sdf

	db NORMAL, NORMAL ; type
	db 30 ; catch rate
	db 193 ; base exp
	db NO_ITEM, LAGGING_TAIL ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for LICKILICKY, OWN_TEMPO, OBLIVIOUS, CLOUD_NINE
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	ev_yield 3 HP

	; tm/hm learnset
	tmhm DYNAMICPUNCH, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, AEROBLAST, PROTECT, RAIN_DANCE, BULLDOZE, FLOWER_SHOOT, IRON_TAIL, THUNDERBOLT, THUNDER, EARTHQUAKE, RETURN, DIG, SHADOW_BALL, ROCK_SMASH, DOUBLE_TEAM, METEOR_FALL, SANDSTORM, HELL_TOKAMAK, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ROCK_SLIDE, FOCUS_BLAST, WATER_PULSE, EXPLOSION, GUNGNIR, GYRO_BALL, SWORDS_DANCE, CUT, SURF, STRENGTH, WHIRLPOOL, BODY_SLAM, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, DREAM_EATER, ENDURE, FIRE_PUNCH, HEADBUTT, ICE_PUNCH, ICY_WIND, KNOCK_OFF, ROLLOUT, SEISMIC_TOSS, SLEEP_TALK, SWAGGER, THUNDERPUNCH, ZEN_HEADBUTT
	; end
