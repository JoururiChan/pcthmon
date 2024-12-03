	db   125,  125,  34,  105,  100, 34 ; 450 BST
	;   hp  atk  def  spe  sat  sdf

	db DARK, BEAST ; type
	db 70 ; catch rate
	db 231 ; base exp
	db OVAL_STONE, LUCKY_EGG ; held items
	dn GENDER_F50, HATCH_FASTEST ; gender ratio, step cycles to hatch

	abilities_for SREMILIA, INTIMIDATE, KEEN_EYE, PRESSURE
	db GROWTH_FAST ; growth rate
	dn EGG_MONSTER, EGG_FLYING ; egg groups

	ev_yield 3 Atk

	; tm/hm learnset
	tmhm DYNAMICPUNCH, POISON_CLAW, CALM_MIND, TOXIC, ROAR, BULK_UP, HIDDEN_POWER, JUMP_KICK, PROTECT, SAFEGUARD, SEAL_NEEDLE, RETURN, DIG, SHADOW_BALL, ROCK_SMASH, DOUBLE_TEAM, REFLECT, HELLBLAZE, SUBSTITUTE, FACADE, REST, SWIFT, AERIAL_ACE, LUSTER_HEART, FLAME_CHARGE, ROCK_SLIDE, LEECH_LIFE, FOCUS_BLAST, CROSS_JAM, WILD_CHARGE, DARK_PULSE, VOICE_BURST, DRAIN_PUNCH, WILL_O_WISP, ACROBATICS, SHADOW_HIT, POISON_JAB, ULTICHARGE, CHARGE_OUT, STONE_HIT, VOLT_SWITCH, CUT, FLY, STRENGTH, LEAF_STORM, BODY_SLAM, CHARM, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, DREAM_EATER, ENDURE, FIRE_PUNCH, HEADBUTT, VOICE_BIND, ICE_PUNCH, ICY_WIND, KNOCK_OFF, STEEL_FIST, TREMORS, SEISMIC_TOSS, SKILL_SWAP, SLEEP_TALK, SUCKER_PUNCH, SWAGGER, THUNDERPUNCH, TRICK, TRICK_ROOM, DIZZY_PUNCH 
	; end