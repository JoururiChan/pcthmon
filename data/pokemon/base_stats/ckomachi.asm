	db  35,  75,  45,  25,  65,  50 ; 295 BST
	;   hp  atk  def  spe  sat  sdf

	db WATER, WATER ; type
	db 170 ; catch rate
	db 90 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_SLOWEST ; gender ratio, step cycles to hatch

	abilities_for CKOMACHI, DAMP, OWN_TEMPO, WATER_VEIL
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_WATER_2 ; egg groups

	ev_yield 1 Atk

	; tm/hm learnset
	tmhm POISON_CLAW, POWER_TRICK, PAY_DAY, CALM_MIND, HIDDEN_POWER, HONE_TOOLS, ICE_BEAM, BLIZZARD, PROTECT, GIGA_DRAIN, RAIN_DANCE, RETURN, DOUBLE_TEAM, SAFEGUARD, REFLECT, SHADOW_BALL, ROCK_SMASH, SUBSTITUTE, FACADE, REST, HELLBLAZE, FLAME_CHARGE, ROCK_SLIDE, LEECH_LIFE, AURA_WAVE, FOCUS_BLAST, ENERGY_BALL, BLADE_FLASH, SCALD, CROSS_JAM, DARK_PULSE, DRAIN_PUNCH, WILL_O_WISP, WATER_PULSE, SHADOW_HIT, POISON_JAB, AVALANCHE, ULTICHARGE, FLASH, STONE_HIT, SWORDS_DANCE, CUT, SURF, STRENGTH, WHIRLPOOL, WATERFALL, KNIFE_THROW, BATON_PASS, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, DREAM_EATER, EARTH_POWER, ENDURE, FIRE_PUNCH, ICE_PUNCH, ICY_WIND, KNOCK_OFF, TREMORS, SEISMIC_TOSS, SKILL_SWAP, SLEEP_TALK, SUCKER_PUNCH, SWAGGER, THUNDERPUNCH, TRICK_ROOM, TRICK, DIZZY_PUNCH
	; end
