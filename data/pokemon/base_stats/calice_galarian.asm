if DEF(FAITHFUL)
	db  95, 100,  95,  30, 100,  70 ; 490 BST
	;   hp  atk  def  spe  sat  sdf
else
	db  95, 100, 100,  30, 100,  75 ; 500 BST
	;   hp  atk  def  spe  sat  sdf
endc

	db MIASMA, PSYCHIC ; type
	db 75 ; catch rate
	db 164 ; base exp
	db NO_ITEM, KINGS_ROCK ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for CALICE, QUICK_DRAW, OWN_TEMPO, REGENERATOR
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups

	ev_yield 2 Def

	; tm/hm learnset
	tmhm DYNAMICPUNCH, SPIRIT_VOICE, CALM_MIND, TOXIC, HAIL,  HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD,  RAIN_DANCE, SAFEGUARD, BULLDOZE, EARTHQUAKE, RETURN, DIG, PSYCHIC, SHADOW_BALL, ROCK_SMASH, DOUBLE_TEAM, METEOR_FALL, SLUDGE_BOMB, HELL_TOKAMAK, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, FOCUS_BLAST, SCALD, DRAIN_PUNCH, WATER_PULSE, POISON_JAB, AVALANCHE, GUNGNIR, FLASH, THUNDER_WAVE, SURF, STRENGTH, WHIRLPOOL,  BODY_SLAM, COUNTER, DOUBLE_EDGE, DREAM_EATER, ENDURE, HEADBUTT, ICE_PUNCH, ICY_WIND, PAY_DAY, SEISMIC_TOSS, SKILL_SWAP, SLEEP_TALK, SWAGGER, TRICK, TRICK_ROOM, ZAP_CANNON, 
	; end
