if DEF(FAITHFUL)
	db  90,  95,  95,  70,  70,  90 ; 510 BST
	;   hp  atk  def  spe  sat  sdf
else
	db  90,  95, 100,  70,  70,  90 ; 515 BST
	;   hp  atk  def  spe  sat  sdf
endc

	db WATER, FIGHTING ; type
	db 45 ; catch rate
	db 185 ; base exp
	db NO_ITEM, KINGS_ROCK ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for POLIWRATH, WATER_ABSORB, DAMP, SWIFT_SWIM
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_WATER_1, EGG_WATER_1 ; egg groups

	ev_yield 3 Def

	; tm/hm learnset
	tmhm DYNAMICPUNCH, CURSE, TOXIC, HAIL, BULK_UP, HIDDEN_POWER, ICE_BEAM, BLIZZARD, AEROBLAST, PROTECT, RAIN_DANCE, BULLDOZE, EARTHQUAKE, RETURN, DIG, PSYCHIC, ROCK_SMASH, DOUBLE_TEAM, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ROCK_SLIDE, FOCUS_BLAST, SCALD, DRAIN_PUNCH, WATER_PULSE, POISON_JAB, GIGA_IMPACT, SURF, STRENGTH, WHIRLPOOL, WATERFALL, BATON_PASS, BODY_SLAM, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, EARTH_POWER, ENDURE, HEADBUTT, ICE_PUNCH, ICY_WIND, SEISMIC_TOSS, SLEEP_TALK, SWAGGER
	; end
