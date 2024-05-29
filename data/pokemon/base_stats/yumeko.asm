	db  49, 110,  45,  110,  35,  39 ; 500 BST
	;   hp  atk  def  spe  sat  sdf

	db STEEL, FIRE ; type
	db 60 ; catch rate
	db 171 ; base exp
	db BLACK_SLUDGE, NUGGET ; held items
	dn GENDER_F50, HATCH_SLOWER ; gender ratio, step cycles to hatch

	abilities_for YUMEKO, BATTLE_ARMOR, BATTLE_ARMOR, TECHNICIAN
	db GROWTH_FAST ; growth rate
	dn EGG_MINERAL, EGG_MONSTER ; egg groups

	ev_yield 2 Atk

	; tm/hm learnset
	tmhm CURSE, TOXIC, HAIL, HIDDEN_POWER, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, RETURN, DOUBLE_TEAM, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, WATER_PULSE, EXPLOSION, AVALANCHE, CUT, STRENGTH, DOUBLE_EDGE, ENDURE, ICY_WIND, ROLLOUT, SLEEP_TALK, SWAGGER
	; end
