	db  95, 105,  85,  45, 125,  75 ; 530 BST
	;   hp  atk  def  spe  sat  sdf

	db GRASS, DRAGON ; type
	db 45 ; catch rate
	db 212 ; base exp
	db NO_ITEM, SITRUS_BERRY ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for EXEGGUTOR_ALOLAN, FRISK, FRISK, HARVEST
	db GROWTH_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	ev_yield 2 SAt

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, MASTER_SPARK, LIGHT_SCREEN, PROTECT, GIGA_DRAIN, BULLDOZE, SOLAR_BEAM, EARTHQUAKE, RETURN, PSYCHIC, ROCK_SMASH, DOUBLE_TEAM, REFLECT, METEOR_FALL, SLUDGE_BOMB, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, DREAM_HEAVEN, DRAGON_PULSE, EXPLOSION, GIGA_IMPACT, FLASH, SWORDS_DANCE, STRENGTH, DOUBLE_EDGE, DREAM_EATER, EARTH_POWER, ENDURE, HEADBUTT, ROLLOUT, SEED_BOMB, SKILL_SWAP, SLEEP_TALK, SWAGGER, TRICK_ROOM, ZEN_HEADBUTT
	; end
