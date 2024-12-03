	db  85,  90,  80, 130,  70,  80 ; 535 BST
	;   hp  atk  def  spe  sat  sdf

	db MIASMA, FLYING ; type
	db 90 ; catch rate
	db 204 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_FAST ; gender ratio, step cycles to hatch

if DEF(FAITHFUL)
	abilities_for AKEINE, INNER_FOCUS, INNER_FOCUS, INFILTRATOR
else
	abilities_for AKEINE, INNER_FOCUS, ANTICIPATION, INFILTRATOR
endc
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	ev_yield 3 Spe

	; tm/hm learnset
	tmhm POISON_CLAW, TOXIC, HIDDEN_POWER, SUNNY_DAY,  PROTECT, RAIN_DANCE, GIGA_DRAIN, RETURN, SHADOW_BALL, DOUBLE_TEAM, SLUDGE_BOMB, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, LUSTER_HEART, THIEF, STEEL_WING, LEECH_LIFE, AURA_WAVE, CROSS_JAM, DARK_PULSE, ACROBATICS, POISON_JAB, ULTICHARGE, CHARGE_OUT, FLY, LEAF_STORM, DOUBLE_EDGE, ENDURE, SLEEP_TALK, SWAGGER, 
	; end
