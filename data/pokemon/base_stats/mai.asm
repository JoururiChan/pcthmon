	db  53, 38,  50,  70,  80,  67 ; 450 BST
	;   hp  atk  def  spe  sat  sdf

	db ICE, ICE ; type
	db 105 ; catch rate
	db 182 ; base exp
	db NO_ITEM, LEEK ; held items
	dn GENDER_F50, HATCH_FAST ; gender ratio, step cycles to hatch

	abilities_for MAI, INSOMNIA, ICE_BODY, WATER_VEIL
	db GROWTH_FAST ; growth rate
	dn EGG_MINERAL, EGG_FAIRY ; egg groups

	ev_yield 2 SAt

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, RETURN, DOUBLE_TEAM, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, STEEL_WING, WHITE_BIRD, SWORDS_DANCE, FLY, SAKUYA_WORLD, BATON_PASS, BODY_SLAM, DOUBLE_EDGE, ENDURE, KNOCK_OFF, SLEEP_TALK, SWAGGER
	; end
