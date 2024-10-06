if DEF(FAITHFUL)
	db  80,  92,  65,  68,  65,  80 ; 450 BST
	;   hp  atk  def  spe  sat  sdf
else
	db  80, 102,  65,  88,  65,  80 ; 480 BST
	;   hp  atk  def  spe  sat  sdf
endc

	db WATER, WATER ; type
	db 60 ; catch rate
if DEF(FAITHFUL)
	db 170 ; base exp
else
	db 180 ; base exp
endc
	db NO_ITEM, NO_ITEM ; items
	dn GENDER_F50, HATCH_MEDIUM_FAST ; gender ratio

	abilities_for CLETTY, SWIFT_SWIM, WATER_VEIL, LIGHTNING_ROD
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	ev_yield 2 Atk

	; tm/hm learnset
	tmhm SHADOW_FORCE, TOXIC, HAIL, HIDDEN_POWER, ICE_BEAM, BLIZZARD,  PROTECT, RAIN_DANCE, RETURN, DOUBLE_TEAM, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, SCALD, WATER_PULSE, POISON_JAB, ULTICHARGE, SWORDS_DANCE, SURF, WHIRLPOOL, WATERFALL, LEAF_STORM,  BODY_SLAM, DOUBLE_EDGE, ENDURE, HEADBUTT, ICY_WIND, KNOCK_OFF, SLEEP_TALK, SWAGGER
	; end
