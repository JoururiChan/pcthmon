	db  62,  110,  45,  71,  105,  125 ; 420 BST
	;   hp  atk  def  spe  sat  sdf

	db DARK, POISON ; type
	db 241 ; catch rate
	db 140 ; base exp
	db LAGGING_TAIL, HARD_STONE ; held items
	dn GENDER_F50, HATCH_SLOW ; gender ratio, step cycles to hatch

	abilities_for ERUMIA, OWN_TEMPO, LEVITATE, LEVITATE
	db GROWTH_FAST ; growth rate
	dn EGG_MONSTER, EGG_INDETERMINATE ; egg groups

	ev_yield 3 SDf

	; tm/hm learnset
	tmhm DYNAMICPUNCH, CURSE, CALM_MIND, TOXIC, HIDDEN_POWER, SUNNY_DAY, AEROBLAST, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, RETURN, PSYCHIC, SHADOW_BALL, ROCK_SMASH, DOUBLE_TEAM, REFLECT, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ENERGY_LIGHT, FOCUS_BLAST, DRAIN_PUNCH, GUNGNIR, FLASH, THUNDER_WAVE, BATON_PASS, BODY_SLAM, COUNTER, DOUBLE_EDGE, DREAM_EATER, ENDURE, FIRE_PUNCH, HEADBUTT, ICE_PUNCH, SEISMIC_TOSS, SKILL_SWAP, SLEEP_TALK, SWAGGER, THUNDERPUNCH, TRICK, TRICK_ROOM, ZAP_CANNON, ZEN_HEADBUTT
	; end
