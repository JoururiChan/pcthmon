	db  70, 120,  65, 125,  45,  85 ; 510 BST
	;   hp  atk  def  spe  sat  sdf

	db DARK, ICE ; type
	db 45 ; catch rate
	db 199 ; base exp
	db GRIP_CLAW, QUICK_CLAW ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

if DEF(FAITHFUL)
	abilities_for WEAVILE, PRESSURE, PRESSURE, PICKPOCKET
else
	abilities_for WEAVILE, PRESSURE, TECHNICIAN, PICKPOCKET
endc
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield 1 Atk, 1 Spe

	; tm/hm learnset
	tmhm CURSE, CALM_MIND, TOXIC, HAIL, HIDDEN_POWER, SUNNY_DAY, HONE_TOOLS, ICE_BEAM, BLIZZARD, MASTER_SPARK, PROTECT, RAIN_DANCE, IRON_TAIL, RETURN, DIG, SHADOW_BALL, ROCK_SMASH, DOUBLE_TEAM, REFLECT, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, FOCUS_BLAST, BLADE_FLASH, X_SCISSOR, DARK_PULSE, SHADOW_HIT, POISON_JAB, AVALANCHE, GIGA_IMPACT, SWORDS_DANCE, CUT, SURF, STRENGTH, WHIRLPOOL, SAKUYA_WORLD, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, DREAM_EATER, ENDURE, HEADBUTT, ICE_PUNCH, ICY_WIND, KNOCK_OFF, SLEEP_TALK, SWAGGER
	; end
