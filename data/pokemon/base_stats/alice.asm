	db  105,  90,  70, 30,  125,  70 ; 500 BST
	;   hp  atk  def  spe  sat  sdf

	db REASON, NATURE ; type
	db 160 ; catch rate
	db 230 ; base exp
	db NO_ITEM, KINGS_ROCK ; held items
	dn GENDER_F50, HATCH_SLOWEST ; gender ratio, step cycles to hatch

	abilities_for ALICE, MAGIC_BARRIER, MAGIC_BARRIER, MAGIC_BARRIER
	db GROWTH_SLOW ; growth rate
	dn EGG_FAIRY, EGG_MINERAL ; egg groups

	ev_yield 2 Def

	; tm/hm learnset
	tmhm DYNAMICPUNCH, POWER_TRICK, STAR_CANNON, CALM_MIND, TOXIC, HIDDEN_POWER, ICE_BEAM, LIGHT_SCREEN, PROTECT, SAFEGUARD, THUNDERBOLT, RETURN, DIG, MANA_BURST, SHADOW_BALL, ROCK_SMASH, DOUBLE_TEAM, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, LUSTER_HEART, FLAME_CHARGE, FOCUS_BLAST, DRAIN_PUNCH, ENERGY_LIGHT, BLADE_FLASH, CROSS_JAM, AVALANCHE, ULTICHARGE, DARK_PULSE, EXPLOSION, SHADOW_HIT, POISON_JAB, THUNDER_WAVE, CHARGE_OUT, FLASH, STONE_HIT, VOLT_SWITCH, GYRO_BALL, SWORDS_DANCE, CUT, STRENGTH, LEAF_STORM, KNIFE_THROW, BATON_PASS, BODY_SLAM, CHARM, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, DREAM_EATER, ENDURE, FIRE_PUNCH, HEADBUTT, ICE_PUNCH, KNOCK_OFF, STEEL_FIST, TREMORS, SEISMIC_TOSS, SKILL_SWAP, SLEEP_TALK, SUCKER_PUNCH, SWAGGER, TRICK, TRICK_ROOM, ZAP_CANNON,
	; end
