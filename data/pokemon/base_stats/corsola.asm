if DEF(FAITHFUL)
	db  65,  55,  95,  35,  65,  95 ; 410 BST
	;   hp  atk  def  spe  sat  sdf
else
	db  65,  55, 115,  35, 105, 115 ; 490 BST
	;   hp  atk  def  spe  sat  sdf
endc

	db WATER, BEAST ; type
	db 60 ; catch rate
if DEF(FAITHFUL)
	db 113 ; base exp
else
	db 128 ; base exp
endc
	db NO_ITEM, HARD_STONE ; held items
	dn GENDER_F75, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for CORSOLA, HUSTLE, NATURAL_CURE, REGENERATOR
	db GROWTH_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_3 ; egg groups

	ev_yield 1 Def, 1 SDf

	; tm/hm learnset
	tmhm SHADOW_FORCE, CALM_MIND, TOXIC, HAIL, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, BULLDOZE, EARTHQUAKE, RETURN, DIG, MANA_BURST, SHADOW_BALL, ROCK_SMASH, DOUBLE_TEAM, REFLECT, SANDSTORM, SUBSTITUTE, FACADE, REST, ATTRACT, ROCK_SLIDE, SCALD, WATER_PULSE, EXPLOSION, STONE_RISE, SURF, STRENGTH, WHIRLPOOL, BODY_SLAM, DEFENSE_CURL, DOUBLE_EDGE, EARTH_POWER, ENDURE, HEADBUTT, ICY_WIND, TREMORS, SLEEP_TALK, SUCKER_PUNCH, SWAGGER
	; end
