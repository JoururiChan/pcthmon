	db  45,  40,  70,  25,  70,  65 ; 480 BST
	;   hp  atk  def  spe  sat  sdf

	db ICE, GHOST ; type
	db 240 ; catch rate
	db 85 ; base exp
	db NO_ITEM, NO_ITEM ; items
	dn GENDER_F50, HATCH_SLOWER ; gender ratio

	abilities_for CLETTY, FUR_COAT, THICK_FAT, SNOW_WARNING
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_WATER_2 ; egg groups

	ev_yield 1 Def

	; tm/hm learnset
	tmhm SHADOW_FORCE, POWER_TRICK, CALM_MIND, TOXIC, HAIL, HIDDEN_POWER, ICE_BEAM, BLIZZARD, LIGHT_SCREEN, PROTECT, RAIN_DANCE, RETURN, GIGA_DRAIN, DOUBLE_TEAM, FLOWER_SHOOT, SWIFT, SUBSTITUTE, SHADOW_BALL, FACADE, ROCK_SMASH, FLASH_CANNON, REFLECT, REST, ATTRACT, SCALD, WATER_PULSE, THIEF, ENERGY_LIGHT, LEECH_LIFE, AURA_WAVE, FOCUS_BLAST, ENERGY_BALL, CRASH_CROSS, DARK_PULSE, ENIGMA_BURST, WILL_O_WISP, FLASH, GYRO_BALL, SURF, WHIRLPOOL, WATERFALL, LEAF_STORM, BATON_PASS, DREAM_EATER, EARTH_POWER, ENDURE, VOICE_BIND, ICE_PUNCH, ICY_WIND, KNOCK_OFF, TREMORS, SKILL_SWAP, SUCKER_PUNCH, SWAGGER, TRICK, SLEEP_TALK, SWAGGER
	; end
