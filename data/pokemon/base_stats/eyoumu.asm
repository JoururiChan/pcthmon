	db  78, 140, 100, 140,  76,  74 ; 525 BST
	;   hp  atk  def  spe  sat  sdf
 
	db GHOST, STEEL ; type
	db 100 ; catch rate
	db 145 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F87_5, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for EYOUMU, INNER_FOCUS, EARLY_BIRD, INSOMNIA
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_INDETERMINATE ; egg groups

	ev_yield 2 Atk, 1 Spe

	; tm/hm learnset
	tmhm CURSE, CALM_MIND, TOXIC, HIDDEN_POWER, SUNNY_DAY, AEROBLAST, LIGHT_SCREEN, PROTECT, GIGA_DRAIN, SAFEGUARD, BULLDOZE, FLOWER_SHOOT, IRON_TAIL, EARTHQUAKE, RETURN, ROCK_SMASH, DOUBLE_TEAM, REFLECT, SUBSTITUTE, FACADE, REST, ATTRACT, ENERGY_LIGHT,  GIGA_IMPACT, FLASH, SWORDS_DANCE, CUT, STRENGTH, BODY_SLAM, COUNTER, DOUBLE_EDGE, EARTH_POWER, ENDURE, HEADBUTT, SEED_BOMB, SLEEP_TALK, SWAGGER
	; end
