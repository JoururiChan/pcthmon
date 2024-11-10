	db  80, 80,  70,  95,  145, 110 ; 570 BST
	;   hp  atk  def  spe  sat  sdf

	db BEAST, REASON ; type
	db 90 ; catch rate
	db 221 ; base exp
	db ALWAYS_ITEM_2, LEFTOVERS ; held items
	dn GENDER_F50, HATCH_SLOW ; gender ratio, step cycles to hatch

	abilities_for TRAN, SPEED_BOOST, BATTLE_ARMOR, PARENTAL_BOND
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	ev_yield 3 SAt

	; tm/hm learnset
	tmhm SHADOW_FORCE, POWER_TRICK, CALM_MIND, ROAR, TOXIC, HIDDEN_POWER, PAY_DAY, TENSION_KICK, BULLDOZE, FLOWER_SHOOT, LIGHT_SCREEN, THUNDERBOLT, THUNDER, PROTECT, SAFEGUARD, SEAL_NEEDLE, RETURN, DIG, MANA_BURST, SHADOW_BALL, ROCK_SMASH, DOUBLE_TEAM, FIRE_BREATH, REFLECT, SANDSTORM, FLASH_CANNON, SUBSTITUTE, SWIFT, FACADE, REST, ATTRACT, AERIAL_ACE, FLAME_CHARGE, ENERGY_LIGHT, LEECH_LIFE, FOCUS_BLAST, AURA_WAVE, CRASH_CROSS, DARK_PULSE, ENIGMA_BURST, WILL_O_WISP, ACROBATICS, U_TURN, STONE_RISE, VOLT_SWITCH, THUNDER_WAVE, GYRO_BALL, CUT, BODY_SLAM, BATON_PASS, CHARM, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, DREAM_EATER, EARTH_POWER, ENDURE, FIRE_PUNCH, HEADBUTT, VOICE_BIND, ICE_PUNCH, ICY_WIND, IRON_HEAD, TREMORS, SLEEP_TALK, SKILL_SWAP, SUCKER_PUNCH, SWAGGER, THUNDERPUNCH, TRICK, TRICK_ROOM, ZAP_CANNON, DIZZY_PUNCH
	; end
