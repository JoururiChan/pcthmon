	db  50,  75,  90,  40,  10,  35 ; 300 BST
	;   hp  atk  def  spe  sat  sdf

	db ICE, STEEL ; type
	db 255 ; catch rate
	db 93 ; base exp
	db NO_ITEM, GRIP_CLAW ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for SANDSHREW_ALOLAN, SNOW_CLOAK, SNOW_CLOAK, SLUSH_RUSH
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield 1 Def

	; tm/hm learnset
	tmhm DYNAMICPUNCH, CURSE, TOXIC, HAIL, BULK_UP, HIDDEN_POWER, SUNNY_DAY, HONE_TOOLS, ICE_BEAM, BLIZZARD, PROTECT, SAFEGUARD, BULLDOZE, IRON_TAIL, EARTHQUAKE, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ROCK_SLIDE, LEECH_LIFE, X_SCISSOR, SHADOW_HIT, POISON_JAB, GYRO_BALL, SWORDS_DANCE, CUT, STRENGTH, BODY_SLAM, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, EARTH_POWER, ENDURE, HEADBUTT, ICE_PUNCH, IRON_HEAD, KNOCK_OFF, ROLLOUT, SEISMIC_TOSS, SLEEP_TALK, SWAGGER
	; end
