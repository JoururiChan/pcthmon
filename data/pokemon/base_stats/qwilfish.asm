if DEF(FAITHFUL)
	db  65,  95,  85,  85,  55,  55 ; 440 BST
	;   hp  atk  def  spe  sat  sdf
else
	db  65, 100, 100,  85,  75,  55 ; 480 BST
	;   hp  atk  def  spe  sat  sdf
endc

	db WATER, MIASMA ; type
	db 45 ; catch rate
if DEF(FAITHFUL)
	db 100 ; base exp
else
	db 109 ; base exp
endc
	db NO_ITEM, POISON_BARB ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for QWILFISH, POISON_POINT, SWIFT_SWIM, INTIMIDATE
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	ev_yield 1 Atk

	; tm/hm learnset
	tmhm POISON_CLAW, TOXIC, HAIL, HIDDEN_POWER, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, RETURN, SHADOW_BALL, DOUBLE_TEAM, SLUDGE_BOMB, SWIFT, SUBSTITUTE, FACADE, REST, LUSTER_HEART, SCALD, WATER_PULSE, EXPLOSION, POISON_JAB, THUNDER_WAVE, GYRO_BALL, SWORDS_DANCE, SURF, WHIRLPOOL, WATERFALL, LEAF_STORM,  DEFENSE_CURL, DOUBLE_EDGE, ENDURE, HEADBUTT, ICY_WIND, TREMORS, SLEEP_TALK, SWAGGER
	; end
