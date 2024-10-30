if DEF(FAITHFUL)
	db  95,  65,  80,  30, 110, 110 ; 490 BST
	;   hp  atk  def  spe  sat  sdf
else
	db  95,  65,  80,  30, 110, 120 ; 500 BST
	;   hp  atk  def  spe  sat  sdf
endc

	db MIASMA, REASON ; type
	db 70 ; catch rate
	db 164 ; base exp
	db NO_ITEM, KINGS_ROCK ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for SLOWKING, GLUTTONY, OWN_TEMPO, REGENERATOR
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups

	ev_yield 3 SDf

	; tm/hm learnset
	tmhm DYNAMICPUNCH, SHADOW_FORCE, CALM_MIND, TOXIC, HAIL,  HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD,  LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, BULLDOZE,  EARTHQUAKE, RETURN, DIG, MANA_BURST, SHADOW_BALL, ROCK_SMASH, DOUBLE_TEAM, FIRE_BREATH, SLUDGE_BOMB, HELLBLAZE, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, FOCUS_BLAST, SCALD, DRAIN_PUNCH, WATER_PULSE, POISON_JAB, AVALANCHE, ULTICHARGE, FLASH, THUNDER_WAVE, SURF, STRENGTH, WHIRLPOOL,  BODY_SLAM, COUNTER, DOUBLE_EDGE, DREAM_EATER, ENDURE, HEADBUTT, ICE_PUNCH, ICY_WIND, PAY_DAY, SEISMIC_TOSS, SKILL_SWAP, SLEEP_TALK, SWAGGER, TRICK, TRICK_ROOM, ZAP_CANNON, 
	; end
