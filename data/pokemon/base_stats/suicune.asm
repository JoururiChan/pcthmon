	db 100,  75, 115,  85,  90, 115 ; 580 BST
	;   hp  atk  def  spe  sat  sdf

	db WATER, WATER ; type
	db 3 ; catch rate
	db 215 ; base exp
	db ALWAYS_ITEM_2, MYSTIC_WATER ; held items
	dn GENDER_UNKNOWN, HATCH_UNKNOWN ; gender ratio, step cycles to hatch

if DEF(FAITHFUL)
	abilities_for SUICUNE, PRESSURE, PRESSURE, INNER_FOCUS
else
	abilities_for SUICUNE, PRESSURE, INNER_FOCUS, WATER_ABSORB
endc
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	ev_yield 1 Def, 2 SDf

	; tm/hm learnset
	tmhm CURSE, CALM_MIND, ROAR, TOXIC, HAIL, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, MASTER_SPARK, LIGHT_SCREEN, PROTECT, RAIN_DANCE, BULLDOZE, IRON_TAIL, RETURN, DIG, SHADOW_BALL, ROCK_SMASH, DOUBLE_TEAM, REFLECT, SANDSTORM, SWIFT, SUBSTITUTE, FACADE, REST, SCALD, WATER_PULSE, AVALANCHE, GIGA_IMPACT, CUT, SURF, WHIRLPOOL, WATERFALL, AGILITY, BODY_SLAM, DOUBLE_EDGE, ENDURE, HEADBUTT, ICY_WIND, IRON_HEAD, SLEEP_TALK, SWAGGER
	; end
