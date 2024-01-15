	db  80, 120, 130,  45,  55,  65 ; 495 BST
	;   hp  atk  def  spe  sat  sdf

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 177 ; base exp
	db NO_ITEM, EVERSTONE ; held items
	dn GENDER_F50, HATCH_FAST ; gender ratio, step cycles to hatch

	abilities_for GOLEM, ROCK_HEAD, STURDY, SAND_VEIL
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	ev_yield 3 Def

	; tm/hm learnset
	tmhm DYNAMICPUNCH, CURSE, ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, AEROBLAST, PROTECT, BULLDOZE, EARTHQUAKE, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, METEOR_FALL, SANDSTORM, FIRE_BLAST, SUBSTITUTE, FACADE, REST, ATTRACT, ROCK_SLIDE, FOCUS_BLAST, EXPLOSION, GIGA_IMPACT, STONE_EDGE, GYRO_BALL, STRENGTH, BODY_SLAM, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, EARTH_POWER, ENDURE, FIRE_PUNCH, HEADBUTT, IRON_HEAD, ROLLOUT, SEISMIC_TOSS, SLEEP_TALK, SUCKER_PUNCH, SWAGGER, THUNDERPUNCH
	; end
