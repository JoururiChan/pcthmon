	db  60,  105, 60, 70,  125,  70 ; 490 BST
	;   hp  atk  def  spe  sat  sdf

	db GHOST, DARK ; type
	db 170 ; catch rate
	db 180 ; base exp
	db ALWAYS_ITEM_2, BLACKGLASSES ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for ALUNASA, CURSED_BODY, CURSED_BODY, SUPER_LUCK
	db GROWTH_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_HUMANSHAPE ; egg groups

	ev_yield 2 Atk, 1 SAt

	; tm/hm learnset
	tmhm POISON_CLAW, POWER_TRICK, CALM_MIND, TOXIC, HIDDEN_POWER, LIGHT_SCREEN, PROTECT, SAFEGUARD, FLOWER_SHOOT, RETURN, MANA_BURST, SHADOW_BALL, DOUBLE_TEAM, SUBSTITUTE, REFLECT, FACADE, HELLBLAZE, SWIFT, REST, LUSTER_HEART, VOICE_BURST, AURA_WAVE, LEECH_LIFE, FOCUS_BLAST, ENERGY_BALL, SHADOW_HIT, DARK_PULSE, WILL_O_WISP, FLASH, BATON_PASS, CHARM, COUNTER, DEFENSE_CURL, DREAM_EATER, ENDURE, VOICE_BIND, HEADBUTT, KNOCK_OFF, VOICE_BIND, SKILL_SWAP, SLEEP_TALK, SWAGGER, SUCKER_PUNCH, TRICK, TRICK_ROOM, DIZZY_PUNCH
	; end
