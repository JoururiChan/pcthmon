	db  60,  40,  80,  40,  60,  45 ; 325 BST
	;   hp  atk  def  spe  sat  sdf

	db GRASS, PSYCHIC ; type
	db 90 ; catch rate
	db 98 ; base exp
	db NO_ITEM, MARANGABERRY ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for EXEGGCUTE, CHLOROPHYLL, CHLOROPHYLL, HARVEST
	db GROWTH_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	ev_yield 1 Def

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, LIGHT_SCREEN, PROTECT, GIGA_DRAIN, FLOWER_SHOOT, RETURN, PSYCHIC, DOUBLE_TEAM, REFLECT, SLUDGE_BOMB, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF,  EXPLOSION, FLASH, SWORDS_DANCE, STRENGTH, DOUBLE_EDGE, DREAM_EATER, ENDURE, ROLLOUT, SEED_BOMB, SKILL_SWAP, SLEEP_TALK, SWAGGER, TRICK_ROOM
	; end
