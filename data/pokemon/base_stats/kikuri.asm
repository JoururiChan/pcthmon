	db  80,  37, 100,  35, 105, 100 ; 448 BST
	;   hp  atk  def  spe  sat  sdf

	db FAITH, EARTH ; type
	db 100 ; catch rate
	db 167 ; base exp
	db NO_ITEM, POISON_BARB ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for KIKURI, LEVITATE, LEVITATE, LEVITATE
	db GROWTH_FAST ; growth rate
	dn EGG_MINERAL, EGG_INDETERMINATE ; egg groups

	ev_yield 2 Def

	; tm/hm learnset	
	tmhm SHADOW_FORCE, CALM_MIND, TOXIC, HIDDEN_POWER, PROTECT, RAIN_DANCE, RETURN, THUNDERBOLT, MANA_BURST, SHADOW_BALL, REFLECT, FLASH_CANNON, SUBSTITUTE, FACADE, REST, ATTRACT, ENERGY_LIGHT, WILL_O_WISP, ROCK_SLIDE, STONE_RISE, FLASH, DARK_PULSE, VOLT_SWITCH, THUNDER_WAVE, GYRO_BALL,  BODY_SLAM, DOUBLE_EDGE, ENDURE, HEADBUTT, SEED_BOMB, SLEEP_TALK, SWAGGER
	; end
