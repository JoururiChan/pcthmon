	db 125,  55,  71,  75, 165, 110 ; 253 BST
	;   hp  atk  def  spe  sat  sdf

	db GHOST, DARK ; type
	db 55 ; catch rate
	db 225 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F100, HATCH_SLOWEST ; gender ratio, step cycles to hatch

	abilities_for EMIMA, PRESSURE, PRESSURE, SCRAPPY
	db GROWTH_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_FLYING ; egg groups

	ev_yield 3 SAt

	; tm/hm learnset
	tmhm SHADOW_FORCE, POWER_TRICK, CALM_MIND, TOXIC, HIDDEN_POWER, HONE_TOOLS, LIGHT_SCREEN, RAIN_DANCE, GIGA_DRAIN, SAFEGUARD, FLOWER_SHOOT, SEAL_NEEDLE, THUNDERBOLT, THUNDER, PROTECT, MANA_BURST, SHADOW_BALL, REFLECT, FIRE_BREATH, RETURN, DOUBLE_TEAM, HELLBLAZE, SWIFT, FLAME_CHARGE, SUBSTITUTE, REST, ATTRACT, THIEF, ENERGY_LIGHT, FOCUS_BLAST, WILD_CHARGE, FLASH, DARK_PULSE, ENIGMA_BURST, WILL_O_WISP, ULTICHARGE, VOLT_SWITCH, THUNDER_WAVE, LEAF_STORM, FLY, WATERFALL, BATON_PASS, LEAF_STORM, CHARM, COUNTER, DREAM_EATER, ENDURE, FIRE_PUNCH, VOICE_BIND, ICY_WIND, KNOCK_OFF, STEEL_FIST, SKILL_SWAP, SLEEP_TALK, SUCKER_PUNCH, TRICK, TRICK_ROOM, SWAGGER, ZAP_CANNON
	; end
