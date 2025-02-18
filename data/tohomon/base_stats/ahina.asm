	db  80, 65,  50,  85, 80, 70 ; 420 BST
	;   hp  atk  def  spe  sat  sdf

	db MIASMA, MIASMA ; type
	db 235 ; catch rate
	db 170 ; base exp
	db NO_ITEM, SPELL_TAG ; held items
	dn GENDER_F50, GROWTH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for AHINA, MAGIC_BOUNCE, BULLETPROOF, POISON_POINT
	db GROWTH_SLOW ; growth rate
	dn EGG_HUMANSHAPE, EGG_INDETERMINATE ; egg groups

	ev_yield 1 Atk, 1 SAt

	; tm/hm learnset
	tmhm POWER_TRICK, CALM_MIND, TOXIC, HIDDEN_POWER, PAY_DAY, PROTECT, LIGHT_SCREEN, RETURN, GIGA_DRAIN, SAFEGUARD, SHADOW_BALL, SEAL_NEEDLE, DOUBLE_TEAM, REFLECT, SLUDGE_BOMB, SUBSTITUTE, FACADE, HELLBLAZE, REST, THIEF, ENERGY_LIGHT, LEECH_LIFE, DARK_PULSE, WILL_O_WISP, AURA_WAVE, FLASH, ENERGY_BALL, SCALD, CROSS_JAM, DRAIN_PUNCH, WATER_PULSE, SHADOW_HIT, POISON_JAB, GYRO_BALL, WHIRLPOOL, BATON_PASS, CHARM, COUNTER, DEFENSE_CURL, DREAM_EATER, ENDURE, FIRE_PUNCH, VOICE_BIND, KNOCK_OFF, SKILL_SWAP, SLEEP_TALK, SUCKER_PUNCH, SWAGGER, TRICK, TRICK_ROOM, DIZZY_PUNCH
	; end
