	db  50,  80,  40, 105, 95, 55 ; 425 BST
	;   hp  atk  def  spe  sat  sdf

	db BEAST, EARTH ; type
	db 240 ; catch rate
	db 155 ; base exp
	db PERSIM_BERRY, PERSIM_BERRY ; held items
	dn GENDER_F50, HATCH_FASTER ; gender ratio, step cycles to hatch

	abilities_for CHEN, RECKLESS, ANTICIPATION, TECHNICIAN
	db GROWTH_FAST ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	ev_yield 1 SAt, 1 Spe

	; tm/hm learnset
	tmhm DYNAMICPUNCH, POISON_CLAW, POWER_TRICK, CALM_MIND, ROAR, TOXIC, BULK_UP, PAY_DAY, HIDDEN_POWER, LIGHT_SCREEN, PROTECT, SAFEGUARD, BULLDOZE, SEAL_NEEDLE, RETURN, MANA_BURST, SHADOW_BALL, ROCK_SMASH, DOUBLE_TEAM, REFLECT, STAR_CANNON, AERIAL_ACE, FLAME_SHOOT, SUBSTITUTE, FACADE, HELLBLAZE, REST, LUSTER_HEART, SWIFT, THIEF, FLAME_CHARGE, ROCK_SLIDE, AURA_WAVE, FOCUS_BLAST, ENERGY_BALL, CROSS_JAM, WILD_CHARGE, VOICE_BURST, ACROBATICS, POISON_JAB, ULTICHARGE, CHARGE_OUT, FLASH, STONE_HIT, VOLT_SWITCH, GYRO_BALL, CUT, BATON_PASS, BODY_SLAM, CHARM, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, ENDURE, FIRE_PUNCH, HEADBUTT, ICE_PUNCH, VOICE_BIND, SEISMIC_TOSS, IRON_HEAD, KNOCK_OFF, STEEL_FIST, TREMORS, SKILL_SWAP, SLEEP_TALK, SUCKER_PUNCH, SWAGGER, THUNDERPUNCH, TRICK, DIZZY_PUNCH, 
	; end
