	db 100, 100, 125,  50, 110,  50 ; 535 BST
	;   hp  atk  def  spe  sat  sdf

	db NATURE, NATURE ; type
	db 30 ; catch rate
	db 211 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for TANGROWTH, CHLOROPHYLL, LEAF_GUARD, REGENERATOR
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	ev_yield 2 Def

	; tm/hm learnset
	tmhm SPIRIT_VOICE, TOXIC, HIDDEN_POWER, SUNNY_DAY,  PROTECT, GIGA_DRAIN, BULLDOZE, FLOWER_SHOOT, EARTHQUAKE, RETURN, ROCK_SMASH, DOUBLE_TEAM, REFLECT, SLUDGE_BOMB, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ROCK_SLIDE, FOCUS_BLAST,  POISON_JAB, GUNGNIR, FLASH, SWORDS_DANCE, CUT, STRENGTH, BODY_SLAM, DOUBLE_EDGE, EARTH_POWER, ENDURE, HEADBUTT, KNOCK_OFF, SEED_BOMB, SLEEP_TALK, SWAGGER
	; end
