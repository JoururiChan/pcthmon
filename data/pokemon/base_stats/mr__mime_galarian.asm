	db  50,  65,  65, 100,  90,  90 ; 460 BST
	;   hp  atk  def  spe  sat  sdf

	db ICE, PSYCHIC ; type
	db 45 ; catch rate
	db 136 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, 4; gender ratio, step cycles to hatch

	abilities_for MR__MIME_GALARIAN, VITAL_SPIRIT, SCREEN_CLEANER, ICE_BODY
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	ev_yield 2 Spe

	; tm/hm learnset
	tmhm DYNAMICPUNCH, CURSE, CALM_MIND, TOXIC, HAIL, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, MASTER_SPARK, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, SOLAR_BEAM, THUNDERBOLT, THUNDER, RETURN, PSYCHIC, SHADOW_BALL, ROCK_SMASH, DOUBLE_TEAM, REFLECT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, DAZZLINGLEAM, FOCUS_BLAST, ENERGY_BALL, DRAIN_PUNCH, AVALANCHE, GIGA_IMPACT, FLASH, THUNDER_WAVE, BATON_PASS, CHARM, BODY_SLAM, COUNTER, DOUBLE_EDGE, DREAM_EATER, ENDURE, HEADBUTT, ICE_PUNCH, ICY_WIND, SEISMIC_TOSS, SKILL_SWAP, SLEEP_TALK, SWAGGER, TRICK, TRICK_ROOM, ZAP_CANNON, ZEN_HEADBUTT
	; end
