	db  65,  65,  45,  95,  75,  45 ; 390 BST
	;   hp  atk  def  spe  sat  sdf

	db BUG, FLYING ; type
	db 75 ; catch rate
	db 147 ; base exp
	db NO_ITEM, WIDE_LENS ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for YANMA, SPEED_BOOST, CONCENTRATE, FRISK
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	ev_yield 1 Spe

	; tm/hm learnset
	tmhm SHADOW_FORCE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, GIGA_DRAIN, FLOWER_SHOOT, RETURN, MANA_BURST, SHADOW_BALL, DOUBLE_TEAM, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, STEEL_WING, LEECH_LIFE, AURA_WAVE, U_TURN, FLASH, DOUBLE_EDGE, DREAM_EATER, ENDURE, HEADBUTT, SLEEP_TALK, SWAGGER
	; end
