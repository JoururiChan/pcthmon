	db  70,  84,  70,  51,  65,  70 ; 410 BST
	;   hp  atk  def  spe  sat  sdf

	db BEAST, EARTH ; type
	db 45 ; catch rate
	db 144 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_SLOWEST ; gender ratio, step cycles to hatch

if DEF(FAITHFUL)
	abilities_for PUPITAR, SHED_SKIN, SHED_SKIN, SHED_SKIN
else
	abilities_for PUPITAR, SHED_SKIN, SHED_SKIN, BATTLE_ARMOR
endc
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	ev_yield 2 Atk

	; tm/hm learnset
	tmhm POISON_CLAW, TOXIC, HIDDEN_POWER, SUNNY_DAY,  PROTECT, RAIN_DANCE, BULLDOZE,  EARTHQUAKE, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, SANDSTORM, SUBSTITUTE, FACADE, REST, LUSTER_HEART, ROCK_SLIDE, DARK_PULSE, STONE_HIT, BODY_SLAM, DOUBLE_EDGE, EARTH_POWER, ENDURE, HEADBUTT, IRON_HEAD, SLEEP_TALK, SWAGGER
	; end
