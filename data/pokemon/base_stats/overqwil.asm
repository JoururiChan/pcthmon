	db  85, 115,  95,  85,  65,  65 ; 510 BST
	;   hp  atk  def  spe  sat  sdf

	db DARK, MIASMA ; type
	db 30 ; catch rate
	db 179 ; base exp
	db NO_ITEM, POISON_BARB ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for OVERQWIL, POISON_POINT, SWIFT_SWIM, INTIMIDATE
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	ev_yield 2 Atk

	; tm/hm learnset
	tmhm POISON_CLAW, TOXIC, HAIL, HIDDEN_POWER, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, RETURN, SHADOW_BALL, DOUBLE_TEAM, SLUDGE_BOMB, SWIFT, SUBSTITUTE, FACADE, REST, LUSTER_HEART, SCALD, DARK_PULSE, WATER_PULSE, EXPLOSION, POISON_JAB, THUNDER_WAVE, GYRO_BALL, SWORDS_DANCE, SURF, WHIRLPOOL, WATERFALL, LEAF_STORM,  DEFENSE_CURL, DOUBLE_EDGE, ENDURE, HEADBUTT, ICY_WIND, TREMORS, SLEEP_TALK, SWAGGER
	; end
