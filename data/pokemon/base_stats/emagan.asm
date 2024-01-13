	db  76,  55,  65,  79, 115, 105 ; 251 BST
	;   hp  atk  def  spe  sat  sdf

	db DARK, POISON ; type
	db 67 ; catch rate
	db 134 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_SLOWEST ; gender ratio, step cycles to hatch

	abilities_for EMAGAN, KEEN_EYE, KEEN_EYE, PRESSURE
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	ev_yield 1 HP, 2 SDf

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, RETURN, DOUBLE_TEAM, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, STEEL_WING, ROOST, FOCUS_BLAST, U_TURN, FLY, SAKUYA_WORLD, DOUBLE_EDGE, ENDURE, SLEEP_TALK, SWAGGER
	; end
