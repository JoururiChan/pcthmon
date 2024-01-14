	db  76, 105,  76, 120, 135,  68 ; 472 BST
	;   hp  atk  def  spe  sat  sdf

	db DARK, FLYING ; type
	db 140 ; catch rate
	db 190 ; base exp
	db NO_ITEM, SHARP_BEAK ; held items
	dn GENDER_F50, HATCH_SLOWER ; gender ratio, step cycles to hatch

	abilities_for EELIS, PRESSURE, PRESSURE, PRESSURE
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_FLYING ; egg groups

	ev_yield 2 SAt, 1 Atk

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, MASTER_SPARK, PROTECT, RAIN_DANCE, RETURN, DOUBLE_TEAM, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, STEEL_WING, ROOST, BLADE_FLASH, GIGA_IMPACT, U_TURN, FLY, SAKUYA_WORLD, BATON_PASS, DOUBLE_EDGE, ENDURE, SLEEP_TALK, SWAGGER
	; end
