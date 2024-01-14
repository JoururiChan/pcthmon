if DEF(FAITHFUL)
	db  60,  80, 110,  45,  50,  80 ; 425 BST
	;   hp  atk  def  spe  sat  sdf
else
	db  60,  80, 110,  70,  50,  80 ; 450 BST
	;   hp  atk  def  spe  sat  sdf
endc

	db GROUND, GROUND ; type
	db 75 ; catch rate
if DEF(FAITHFUL)
	db 124 ; base exp
else
	db 140 ; base exp
endc
	db NO_ITEM, THICK_CLUB ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for MAROWAK, ROCK_HEAD, LIGHTNING_ROD, BATTLE_ARMOR
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	ev_yield 2 Def

	; tm/hm learnset
	tmhm DYNAMICPUNCH, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, MASTER_SPARK, PROTECT, BULLDOZE, IRON_TAIL, EARTHQUAKE, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, METEOR_FALL, SANDSTORM, FIRE_BLAST, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ROCK_SLIDE, FOCUS_BLAST, BLADE_FLASH, GIGA_IMPACT, STONE_EDGE, SWORDS_DANCE, STRENGTH, BODY_SLAM, COUNTER, DOUBLE_EDGE, EARTH_POWER, ENDURE, FIRE_PUNCH, HEADBUTT, ICE_PUNCH, ICY_WIND, IRON_HEAD, KNOCK_OFF, SEISMIC_TOSS, SLEEP_TALK, SWAGGER, THUNDERPUNCH
	; end
