	db  67, 25,  32,  55,  60,  40 ; 505 BST
	;   hp  atk  def  spe  sat  sdf

	db DARK, HEART ; type
	db 66 ; catch rate
	db 75 ; base exp
	db NO_ITEM, FOCUS_BAND ; held items
	dn GENDER_F75, HATCH_SLOW ; gender ratio, step cycles to hatch

	abilities_for CMUGETSU, LIMBER, LIMBER, PRESSURE
	db GROWTH_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_FAIRY ; egg groups

	ev_yield 1 HP

	; tm/hm learnset
	tmhm POISON_CLAW, CALM_MIND, HIDDEN_POWER, LIGHT_SCREEN, PROTECT, GIGA_DRAIN, RETURN, SAFEGUARD, SEAL_NEEDLE, DOUBLE_TEAM, MANA_BURST, SHADOW_BALL, REFLECT, STAR_CANNON, HELLBLAZE, SWIFT, SUBSTITUTE, FACADE, REST, LUSTER_HEART, THIEF, FOCUS_BLAST, ENERGY_LIGHT, LEECH_LIFE, ULTICHARGE, DARK_PULSE, VOICE_BURST, WILL_O_WISP, CHARGE_OUT, FLASH, CHARM, DREAM_EATER, ENDURE, HEADBUTT, KNOCK_OFF, TREMORS, SEISMIC_TOSS, SKILL_SWAP, SLEEP_TALK, SUCKER_PUNCH, SWAGGER, TRICK, TRICK_ROOM, DIZZY_PUNCH
	; end
