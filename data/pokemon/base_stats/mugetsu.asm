	db  100, 40,  43,  95,  88,  58 ; 505 BST
	;   hp  atk  def  spe  sat  sdf

	db DARK, HEART ; type
	db 66 ; catch rate
	db 115 ; base exp
	db NO_ITEM, FOCUS_BAND ; held items
	dn GENDER_F75, HATCH_SLOW ; gender ratio, step cycles to hatch

	abilities_for MUGETSU, LIMBER, LIMBER, PRESSURE
	db GROWTH_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_FAIRY ; egg groups

	ev_yield 2 HP

	; tm/hm learnset
	tmhm SHADOW_FORCE, CALM_MIND, HIDDEN_POWER, LIGHT_SCREEN, PROTECT, GIGA_DRAIN, RETURN, SAFEGUARD, SEAL_NEEDLE, DOUBLE_TEAM, MANA_BURST, SHADOW_BALL, REFLECT, FLASH_CANNON, HELLBLAZE, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, FOCUS_BLAST, ENERGY_LIGHT, LEECH_LIFE, ULTICHARGE, DARK_PULSE, ENIGMA_BURST, WILL_O_WISP, U_TURN, FLASH, CHARM, DREAM_EATER, ENDURE, HEADBUTT, KNOCK_OFF, TREMORS, SEISMIC_TOSS, SKILL_SWAP, SLEEP_TALK, SUCKER_PUNCH, SWAGGER, TRICK, TRICK_ROOM, DIZZY_PUNCH
	; end
