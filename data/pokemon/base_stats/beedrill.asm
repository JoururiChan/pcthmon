if DEF(FAITHFUL)
	db  65,  90,  40,  75,  45,  80 ; 395 BST
	;   hp  atk  def  spe  sat  sdf
else
	db  65, 100,  40, 115,  45,  90 ; 455 BST
	;   hp  atk  def  spe  sat  sdf
endc

	db BUG, POISON ; type
	db 45 ; catch rate
if DEF(FAITHFUL)
	db 159 ; base exp
else
	db 184 ; base exp
endc
	db SHED_SHELL, POISON_BARB ; held items
	dn GENDER_F50, HATCH_FAST ; gender ratio, step cycles to hatch

	abilities_for BEEDRILL, SWARM, SNIPER, ADAPTABILITY
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	ev_yield 2 Atk, 1 SDf

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, MASTER_SPARK, PROTECT, GIGA_DRAIN, SOLAR_BEAM, RETURN, ROCK_SMASH, DOUBLE_TEAM, SLUDGE_BOMB, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, LEECH_LIFE, ROOST, FALSE_SWIPE, X_SCISSOR, ACROBATICS, POISON_JAB, GIGA_IMPACT, U_TURN, FLASH, SWORDS_DANCE, CUT, AGILITY, BATON_PASS, DOUBLE_EDGE, ENDURE, KNOCK_OFF, SLEEP_TALK, SWAGGER
	; end
