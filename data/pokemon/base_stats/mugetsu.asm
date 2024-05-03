	db  100, 40,  43,  95,  88,  58 ; 505 BST
	;   hp  atk  def  spe  sat  sdf

	db DARK, FAIRY ; type
	db 66 ; catch rate
	db 115 ; base exp
	db NO_ITEM, FOCUS_BAND ; held items
	dn GENDER_F75, HATCH_SLOW ; gender ratio, step cycles to hatch

	abilities_for MUGETSU, LIMBER, LIMBER, PRESSURE
	db GROWTH_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_FAIRY ; egg groups

	ev_yield 2 HP

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, GIGA_DRAIN, FLOWER_SHOOT, RETURN, DOUBLE_TEAM, REFLECT, SLUDGE_BOMB, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, LEECH_LIFE,  POISON_JAB, FLASH, SWORDS_DANCE, CUT, DOUBLE_EDGE, ENDURE, KNOCK_OFF, SEED_BOMB, SLEEP_TALK, SUCKER_PUNCH, SWAGGER
	; end
