	db 100, 100,  80,  50,  60,  60 ; 450 BST
	;   hp  atk  def  spe  sat  sdf

	db ICE, EARTH ; type
	db 75 ; catch rate
	db 160 ; base exp
	db RAWST_BERRY, NEVERMELTICE ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for KISUME, OBLIVIOUS, SNOW_CLOAK, THICK_FAT
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield 1 HP, 1 Atk

	; tm/hm learnset
	tmhm POISON_CLAW, CALM_MIND, ROAR, TOXIC, HAIL, HIDDEN_POWER, ICE_BEAM, BLIZZARD,  LIGHT_SCREEN, PROTECT, RAIN_DANCE, BULLDOZE, EARTHQUAKE, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, REFLECT, SANDSTORM, SUBSTITUTE, FACADE, REST, LUSTER_HEART, ROCK_SLIDE, AVALANCHE, ULTICHARGE, STONE_HIT, STRENGTH, BODY_SLAM, CHARM, DEFENSE_CURL, DOUBLE_EDGE, EARTH_POWER, ENDURE, HEADBUTT, ICY_WIND, SLEEP_TALK, SWAGGER
	; end
