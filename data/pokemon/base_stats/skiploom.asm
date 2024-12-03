if DEF(FAITHFUL)
	db  55,  45,  50,  80,  45,  65 ; 340 BST
	;   hp  atk  def  spe  sat  sdf
else
	db  65,  45,  50,  80,  45,  65 ; 350 BST
	;   hp  atk  def  spe  sat  sdf
endc

	db NATURE, FLYING ; type
	db 120 ; catch rate
	db 136 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for SKIPLOOM, CHLOROPHYLL, LEAF_GUARD, INFILTRATOR
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FAIRY, EGG_PLANT ; egg groups

	ev_yield 2 Spe

	; tm/hm learnset
	tmhm POISON_CLAW, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, GIGA_DRAIN, FLOWER_SHOOT, RETURN, DOUBLE_TEAM, REFLECT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, LUSTER_HEART, ENERGY_LIGHT,  ACROBATICS, CHARGE_OUT, FLASH, SWORDS_DANCE, LEAF_STORM, BATON_PASS, CHARM, DEFENSE_CURL, DOUBLE_EDGE, ENDURE, HEADBUTT, PAY_DAY, SEED_BOMB, SLEEP_TALK, SWAGGER
	; end
