	db  85,  50,  95,  80, 120, 115 ; 545 BST
	;   hp  atk  def  spe  sat  sdf

	db HEART, FLYING ; type
	db 30 ; catch rate
	db 220 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F12_5, HATCH_FASTER ; gender ratio, step cycles to hatch

	abilities_for TOGEKISS, HUSTLE, SERENE_GRACE, SUPER_LUCK
	db GROWTH_FAST ; growth rate
	dn EGG_FLYING, EGG_FAIRY ; egg groups

	ev_yield 2 SAt, 1 SDf

	; tm/hm learnset
	tmhm SPIRIT_VOICE, TOXIC, HIDDEN_POWER, SUNNY_DAY,  LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, FLOWER_SHOOT, RETURN, PSYCHIC, SHADOW_BALL, ROCK_SMASH, DOUBLE_TEAM, REFLECT, METEOR_FALL, HELL_TOKAMAK, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, STEEL_WING, ENERGY_LIGHT, WHITE_BIRD, FOCUS_BLAST, DRAIN_PUNCH, WATER_PULSE, GUNGNIR, FLASH, THUNDER_WAVE, FLY, BATON_PASS, BODY_SLAM, CHARM, DEFENSE_CURL, DOUBLE_EDGE, DREAM_EATER, ENDURE, HEADBUTT, VOICE_BIND, ROLLOUT, SLEEP_TALK, SWAGGER, TRICK, 
	; end
