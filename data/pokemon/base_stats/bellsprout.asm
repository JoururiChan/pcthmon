	db  50,  75,  35,  40,  70,  30 ; 300 BST
	;   hp  atk  def  spe  sat  sdf

	db GRASS, POISON ; type
	db 255 ; catch rate
	db 84 ; base exp
	db GOLD_LEAF, GOLD_LEAF ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for BELLSPROUT, CHLOROPHYLL, CHLOROPHYLL, GLUTTONY
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	ev_yield 1 Atk

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, GIGA_DRAIN, FLOWER_SHOOT, RETURN, DOUBLE_TEAM, REFLECT, SLUDGE_BOMB, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, LEECH_LIFE,  POISON_JAB, FLASH, SWORDS_DANCE, CUT, DOUBLE_EDGE, ENDURE, KNOCK_OFF, SEED_BOMB, SLEEP_TALK, SUCKER_PUNCH, SWAGGER
	; end
