	db  140, 60,  90,  60,  150, 100 ; 600 BST
	;   hp  atk  def  spe  sat  sdf

	db REASON, DARK ; type
	db 10 ; catch rate
	db 245 ; base exp
	db ALWAYS_ITEM_2, LUM_BERRY ; held items
	dn GENDER_F50, HATCH_SLOWEST ; gender ratio, step cycles to hatch

	abilities_for YUKARI, MEGA_LAUNCHER, ARENA_TRAP, PARENTAL_BOND
	db GROWTH_SLOW ; growth rate
	dn EGG_HUMANSHAPE, EGG_INDETERMINATE ; egg groups

	ev_yield 2 SAt

	; tm/hm learnset
	tmhm POISON_CLAW, POWER_TRICK, CALM_MIND, TOXIC, HIDDEN_POWER, HONE_TOOLS, LIGHT_SCREEN, PROTECT, RETURN, GIGA_DRAIN, MANA_BURST, SHADOW_BALL, DOUBLE_TEAM, SANDSTORM, SUBSTITUTE, FACADE, REST, THIEF, AURA_WAVE, ENERGY_LIGHT, FOCUS_BLAST, WILL_O_WISP, ENERGY_BALL, CROSS_JAM, DARK_PULSE, VOICE_BURST, CHARGE_OUT, WILL_O_WISP, SHADOW_HIT, ULTICHARGE, FLASH, VOLT_SWITCH, THUNDER_WAVE, GYRO_BALL, BATON_PASS, CHARM, COUNTER, DEFENSE_CURL, DREAM_EATER, ENDURE, KNOCK_OFF, SEISMIC_TOSS, SKILL_SWAP, SLEEP_TALK, SUCKER_PUNCH, SWAGGER, TRICK, TRICK_ROOM, ZAP_CANNON
