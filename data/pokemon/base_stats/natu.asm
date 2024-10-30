	db  40,  50,  45,  70,  70,  45 ; 320 BST
	;   hp  atk  def  spe  sat  sdf

	db REASON, FLYING ; type
	db 190 ; catch rate
	db 73 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for NATU, SYNCHRONIZE, EARLY_BIRD, MAGIC_BOUNCE
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	ev_yield 1 SAt

	; tm/hm learnset
	tmhm SHADOW_FORCE, CALM_MIND, TOXIC, HIDDEN_POWER, SUNNY_DAY, LIGHT_SCREEN, PROTECT, RAIN_DANCE, GIGA_DRAIN, FLOWER_SHOOT, RETURN, MANA_BURST, SHADOW_BALL, DOUBLE_TEAM, REFLECT, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, STEEL_WING, ENERGY_LIGHT, AURA_WAVE, U_TURN, FLASH, THUNDER_WAVE, BATON_PASS, DOUBLE_EDGE, DREAM_EATER, ENDURE, SKILL_SWAP, SLEEP_TALK, SUCKER_PUNCH, SWAGGER, TRICK, TRICK_ROOM, 
	; end
