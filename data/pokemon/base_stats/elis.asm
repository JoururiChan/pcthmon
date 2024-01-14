	db  61,  81,  58,  90,  95,  55 ; 262 BST
	;   hp  atk  def  spe  sat  sdf

	db DARK, FLYING ; type
	db 140 ; catch rate
	db 145 ; base exp
	db NO_ITEM, SHARP_BEAK ; held items
	dn GENDER_F50, HATCH_SLOWER ; gender ratio, step cycles to hatch

	abilities_for ELIS, PRESSURE, PRESSURE, PRESSURE
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_FLYING ; egg groups

	ev_yield 2 SAt

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, RETURN, DOUBLE_TEAM, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, STEEL_WING, ROOST, BLADE_FLASH, U_TURN, FLY, SAKUYA_WORLD, BATON_PASS, DOUBLE_EDGE, ENDURE, SLEEP_TALK, SWAGGER
	; end
