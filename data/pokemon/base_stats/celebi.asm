	db 100, 100, 100, 100, 100, 100 ; 600 BST
	;   hp  atk  def  spe  sat  sdf

if DEF(FAITHFUL)
	db PSYCHIC, GRASS ; type
else
	db GRASS, FAIRY ; type
endc
	db 45 ; catch rate
	db 64 ; base exp
	db ALWAYS_ITEM_2, LUM_BERRY ; held items
	dn GENDER_UNKNOWN, HATCH_UNKNOWN ; gender ratio, step cycles to hatch

if DEF(FAITHFUL)
	abilities_for CELEBI, NATURAL_CURE, NATURAL_CURE, NATURAL_CURE
else
	abilities_for CELEBI, NATURAL_CURE, NATURAL_CURE, MAGIC_GUARD
endc
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	ev_yield 3 HP

	; tm/hm learnset
	tmhm CURSE, CALM_MIND, TOXIC, HIDDEN_POWER, SUNNY_DAY, AEROBLAST, LIGHT_SCREEN, PROTECT, RAIN_DANCE, GIGA_DRAIN, SAFEGUARD, FLOWER_SHOOT, RETURN, PSYCHIC, SHADOW_BALL, DOUBLE_TEAM, REFLECT, SANDSTORM, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ENERGY_LIGHT,  WATER_PULSE, GUNGNIR, U_TURN, FLASH, THUNDER_WAVE, SWORDS_DANCE, CUT, BATON_PASS, DEFENSE_CURL, DOUBLE_EDGE, DREAM_EATER, EARTH_POWER, ENDURE, SEED_BOMB, SKILL_SWAP, SLEEP_TALK, SUCKER_PUNCH, SWAGGER, TRICK, TRICK_ROOM, ZEN_HEADBUTT
	; end
