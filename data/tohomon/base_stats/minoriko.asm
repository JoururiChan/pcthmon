	db  95,  75,  50,  55,  75, 50 ; 400 BST
	;   hp  atk  def  spe  sat  sdf

	db NATURE, EARTH ; type
	db 240 ; catch rate
	db 143 ; base exp
	db NO_ITEM, CHESTO_BERRY ; held items
	dn GENDER_F50, HATCH_FASTEST ; gender ratio, step cycles to hatch

	abilities_for MINORIKO, DROUGHT, LEAF_GUARD, HARVEST
	db GROWTH_FAST ; growth rate
	dn EGG_PLANT, EGG_GROUND ; egg groups

	ev_yield 2 Def

	; tm/hm learnset
	tmhm POWER_TRICK, CALM_MIND, TOXIC, PAY_DAY, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, LIGHT_SCREEN, SAFEGUARD, GIGA_DRAIN, FLOWER_SHOOT, SEAL_NEEDLE, EARTHQUAKE, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, SLUDGE_BOMB, REFLECT, SANDSTORM, STAR_CANNON, FLAME_SHOOT, SUBSTITUTE, FACADE, REST, LUSTER_HEART, ENERGY_LIGHT, ENERGY_BALL, POISON_JAB, FLASH, STONE_HIT, CUT, LEAF_STORM, BATON_PASS, DEFENSE_CURL, EARTH_POWER, ENDURE, FIRE_PUNCH, KNOCK_OFF, TREMORS, SEED_BOMB, SWAGGER, TRICK
	; end
