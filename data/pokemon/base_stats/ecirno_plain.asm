	db  100,  120,  35,  105,  89,  73 ; 490 BST
	;   hp  atk  def  spe  sat  sdf

	db ICE, FLYING ; type
	db 150 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_FASTEST ; gender ratio, step cycles to hatch

	abilities_for ECIRNO, WATER_VEIL, SPEED_BOOST, GUTS
	db GROWTH_FAST ; growth rate
	dn EGG_MINERAL, EGG_WATER_3 ; egg groups

	ev_yield 3 HP

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, AEROBLAST, LIGHT_SCREEN, PROTECT, GIGA_DRAIN, FLOWER_SHOOT, RETURN, PSYCHIC, DOUBLE_TEAM, REFLECT, SLUDGE_BOMB, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF,  EXPLOSION, GUNGNIR, FLASH, SWORDS_DANCE, STRENGTH, DOUBLE_EDGE, DREAM_EATER, ENDURE, HEADBUTT, ROLLOUT, SEED_BOMB, SKILL_SWAP, SLEEP_TALK, SWAGGER, TRICK_ROOM, ZEN_HEADBUTT, SURF, WHIRLPOOL, WATERFALL
	; end
