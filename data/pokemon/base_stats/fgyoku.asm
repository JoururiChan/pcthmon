	db  60, 110,  88,  65, 110,  87 ; 520 BST
	;   hp  atk  def  spe  sat  sdf

	db FAITH, WIND ; type
	db 120 ; catch rate
	db 80 ; base exp
	db SHED_SHELL, SILVERPOWDER ; held items
	dn GENDER_F50, HATCH_SLOW ; gender ratio, step cycles to hatch

	abilities_for FGYOKU, PRESSURE, PRESSURE, PRESSURE
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	ev_yield 2 SAt, 1 Atk

	; tm/hm learnset
	tmhm POISON_CLAW, POWER_TRICK, CALM_MIND, TOXIC, HIDDEN_POWER, HONE_TOOLS, PAY_DAY, SUNNY_DAY, LIGHT_SCREEN, PROTECT, SAFEGUARD, GIGA_DRAIN, HELLBLAZE, CROSS_JAM, SAFEGUARD, SEAL_NEEDLE, THUNDERBOLT, WILL_O_WISP, THUNDER, RETURN, MANA_BURST, SHADOW_BALL, DOUBLE_TEAM, REFLECT, STAR_CANNON, SWIFT, SUBSTITUTE, FACADE, REST, LUSTER_HEART, ENERGY_LIGHT, FOCUS_BLAST, ENERGY_BALL, GYRO_BALL, FLASH, BATON_PASS, CHARM, DREAM_EATER, EARTH_POWER, VOICE_BIND, SUCKER_PUNCH, DEFENSE_CURL, TREMORS, SKILL_SWAP, SLEEP_TALK, TRICK_ROOM
	; end
