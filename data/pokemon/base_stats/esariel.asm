	db  102, 110, 105, 124, 140, 130 ; 450 BST
	;   hp  atk  def  spe  sat  sdf

	db HEART, FLYING ; type
	db 50 ; catch rate
	db 230 ; base exp
	db ORAN_BERRY, LIGHT_BALL ; held items
	dn GENDER_F100, HATCH_SLOWEST ; gender ratio, step cycles to hatch

	abilities_for ESARIEL, PRESSURE, PRESSURE, HAKUREI_MIKO
	db GROWTH_SLOW ; growth rate
	dn EGG_FAIRY, EGG_FLYING ; egg groups

	ev_yield 3 SAt

	; tm/hm learnset
	tmhm POISON_CLAW, CALM_MIND, POWER_TRICK, ROAR, TOXIC, HAIL, PAY_DAY, HIDDEN_POWER, ICE_BEAM, BLIZZARD, LIGHT_SCREEN, PROTECT, SAFEGUARD, FLOWER_SHOOT, SEAL_NEEDLE, THUNDER, RETURN, MANA_BURST, DOUBLE_TEAM, REFLECT, STAR_CANNON, FLAME_SHOOT, SWIFT, SUBSTITUTE, FACADE, REST, LUSTER_HEART, LEECH_LIFE, FOCUS_BLAST, ENERGY_BALL, CROSS_JAM, FLAME_CHARGE, STEEL_WING, ULTICHARGE, FLASH, ENERGY_LIGHT, AURA_WAVE, DARK_PULSE, AVALANCHE, WILL_O_WISP, ACROBATICS, FLY, STRENGTH, LEAF_STORM, CHARM, DREAM_EATER, EARTH_POWER, ENDURE, VOICE_BIND, KNOCK_OFF, ICE_PUNCH, ICY_WIND, SKILL_SWAP, SLEEP_TALK, SWAGGER, THUNDERPUNCH, DIZZY_PUNCH
	; end
