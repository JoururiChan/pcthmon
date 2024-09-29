	db  80, 130,  60, 120,  40,  80 ; 510 BST
	;   hp  atk  def  spe  sat  sdf

	db MIASMA, DREAM ; type
	db 45 ; catch rate
	db 199 ; base exp
	db GRIP_CLAW, QUICK_CLAW ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

if DEF(FAITHFUL)
	abilities_for SNEASLER, PRESSURE, UNBURDEN, POISON_TOUCH
else
	abilities_for SNEASLER, TECHNICIAN, UNBURDEN, POISON_TOUCH
endc
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield 1 Atk, 1 Spe

	; tm/hm learnset
	tmhm DYNAMICPUNCH, SPIRIT_VOICE, CALM_MIND, TOXIC, BULK_UP,  HIDDEN_POWER, SUNNY_DAY, HONE_TOOLS, PROTECT, RAIN_DANCE,  RETURN, DIG, SHADOW_BALL, ROCK_SMASH, DOUBLE_TEAM, REFLECT, SLUDGE_BOMB, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ROCK_SLIDE, BLADE_FLASH, ICHIGO_CROSS, DRAIN_PUNCH, SHADOW_HIT, POISON_JAB, U_TURN, SWORDS_DANCE, CUT, SURF, STRENGTH, WHIRLPOOL, SPIDERS_NEST, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, DREAM_EATER, ENDURE, FIRE_PUNCH, HEADBUTT, ICE_PUNCH, KNOCK_OFF, SLEEP_TALK, SWAGGER
	; end
