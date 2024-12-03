	db  68,  44,  53,  63,  72,  43 ; 300 BST
	;   hp  atk  def  spe  sat  sdf

	db DARK, FLYING ; type
	db 190 ; catch rate
	db 98 ; base exp
	db NO_ITEM, ASPEAR_BERRY ; held items
	dn GENDER_F50, HATCH_SLOWER ; gender ratio, step cycles to hatch

	abilities_for KURUMI, SYNCHRONIZE, SYNCHRONIZE, SYNCHRONIZE
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_FLYING ; egg groups

	ev_yield 1 SAt, 1 Spe

	; tm/hm learnset
	tmhm POISON_CLAW, POWER_TRICK, CALM_MIND, ROAR, TOXIC, BULK_UP, HIDDEN_POWER, PROTECT, SAFEGUARD, THUNDERBOLT, THUNDER, RETURN, DIG, ROCK_SMASH, MANA_BURST, SHADOW_BALL, DOUBLE_TEAM, FLAME_SHOOT, HELLBLAZE, STAR_CANNON, SLUDGE_BOMB, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, LUSTER_HEART, THIEF, STEEL_WING, ENERGY_LIGHT, LEECH_LIFE, AURA_WAVE, FOCUS_BLAST, ENERGY_BALL, DARK_PULSE, WILL_O_WISP, ACROBATICS, EXPLOSION, SHADOW_HIT, CHARGE_OUT, GYRO_BALL, CUT, FLY, STRENGTH, LEAF_STORM, BATON_PASS, CHARM, COUNTER, DEFENSE_CURL, DREAM_EATER, ENDURE, VOICE_BIND, ICY_WIND, KNOCK_OFF, SLEEP_TALK, SUCKER_PUNCH, SWAGGER, TRICK, DIZZY_PUNCH
	; end
