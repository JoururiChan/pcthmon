	db  80,  82,  83,  80, 100, 100 ; 525 BST
	;   hp  atk  def  spe  sat  sdf

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 208 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F12_5, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for EREIMU, OVERGROW, CHLOROPHYLL, THICK_FAT
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	ev_yield 2 SAt, 1 SDf

	; tm/hm learnset
	tmhm CURSE, ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, MASTER_SPARK, LIGHT_SCREEN, PROTECT, GIGA_DRAIN, SAFEGUARD, BULLDOZE, SOLAR_BEAM, EARTHQUAKE, RETURN, ROCK_SMASH, DOUBLE_TEAM, SLUDGE_BOMB, SUBSTITUTE, FACADE, REST, ATTRACT, ENERGY_BALL, GIGA_IMPACT, FLASH, SWORDS_DANCE, CUT, STRENGTH, BODY_SLAM, CHARM, DEFENSE_CURL, DOUBLE_EDGE, EARTH_POWER, ENDURE, HEADBUTT, KNOCK_OFF, SEED_BOMB, SLEEP_TALK, SWAGGER
	; end
