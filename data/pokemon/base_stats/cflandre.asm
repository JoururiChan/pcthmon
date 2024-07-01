	db  15,  100,  10,  50,  100, 10 ; 295 BST
	;   hp  atk  def  spe  sat  sdf

	db DARK, DARK ; type
	db 33 ; catch rate
	db 160 ; base exp
	db NO_ITEM, DRAGON_SCALE ; held items
	dn GENDER_F50, HATCH_FASTEST ; gender ratio, step cycles to hatch

	abilities_for CFLANDRE, HUSTLE, HUSTLE, RECKLESS
	db GROWTH_FAST ; growth rate
	dn EGG_MONSTER, EGG_FLYING ; egg groups

	ev_yield 1 SAt

	; tm/hm learnset
	tmhm CURSE, TOXIC, HAIL, HIDDEN_POWER, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, RETURN, DOUBLE_TEAM, FLASH_CANNON, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, SCALD, DRAGON_PULSE, WATER_PULSE, SURF, WHIRLPOOL, WATERFALL, SPIDERS_NEST, DOUBLE_EDGE, ENDURE, HEADBUTT, ICY_WIND, SLEEP_TALK, SWAGGER
	; end
