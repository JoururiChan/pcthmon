	db  70, 140, 110, 140,  73,  71 ; 534 BST
	;   hp  atk  def  spe  sat  sdf

	db GHOST, STEEL ; type
	db 100 ; catch rate
	db 189 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F87_5, HATCH_FAST ; gender ratio, step cycles to hatch

	abilities_for EYOUMU, INNER_FOCUS, EARLY_BIRD, INSOMNIA
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_INDETERMINATE ; egg groups

	ev_yield 2 Atk, 1 Spe

	; tm/hm learnset
	tmhm DYNAMICPUNCH, CURSE, ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, MASTER_SPARK, PROTECT, BULLDOZE, SOLAR_BEAM, IRON_TAIL, EARTHQUAKE, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, METEOR_FALL, FIRE_BLAST, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, FLAME_CHARGE, REST, ATTRACT, ROCK_SLIDE, FOCUS_BLAST, BLAZE_STAR, WILL_O_WISP, SHADOW_HIT, GIGA_IMPACT, GYRO_BALL, CUT, STRENGTH, BODY_SLAM, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, EARTH_POWER, ENDURE, FIRE_PUNCH, HEADBUTT, ROLLOUT, SEISMIC_TOSS, SLEEP_TALK, SWAGGER, THUNDERPUNCH
	; end
