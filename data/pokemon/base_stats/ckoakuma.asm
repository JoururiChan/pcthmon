	db  33, 19,  22,  60,  65, 60 ; 455 BST
	;   hp  atk  def  spe  sat  sdf

	db REASON, REASON ; type
	db 223 ; catch rate
	db 105 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_SLOW ; gender ratio, step cycles to hatch

	abilities_for CKOAKUMA, SYNCHRONIZE, SYNCHRONIZE, SYNCHRONIZE
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_FLYING ; egg groups

	ev_yield 1 SAt

	; tm/hm learnset
	tmhm POISON_CLAW, POWER_TRICK, CALM_MIND, TOXIC, HIDDEN_POWER, PAY_DAY, PROTECT, ICE_BEAM, BLIZZARD, LIGHT_SCREEN, SEAL_NEEDLE, THUNDER, MANA_BURST, SHADOW_BALL, DOUBLE_TEAM, REFLECT, SWIFT, SUBSTITUTE, FACADE, REST, LUSTER_HEART, LEECH_LIFE, FOCUS_BLAST, ENERGY_BALL, DARK_PULSE, SHADOW_HIT, CHARGE_OUT, FLASH, THUNDER_WAVE, GYRO_BALL, FLY, LEAF_STORM, BATON_PASS, CHARM, DREAM_EATER, ENDURE, FIRE_PUNCH, VOICE_BIND, ICY_WIND, KNOCK_OFF, TREMORS, SKILL_SWAP, FIRE_PUNCH, SLEEP_TALK, SWAGGER, TRICK, TRICK_ROOM, ZAP_CANNON, DIZZY_PUNCH
	; end
