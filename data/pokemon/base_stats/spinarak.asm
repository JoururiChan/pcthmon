	db  40,  60,  40,  30,  40,  40 ; 250 BST
	;   hp  atk  def  spe  sat  sdf

	db BUG, MIASMA ; type
	db 255 ; catch rate
	db 54 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_FAST ; gender ratio, step cycles to hatch

	abilities_for CKEINE, SWARM, INSOMNIA, SNIPER
	db GROWTH_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	ev_yield 1 Atk

	; tm/hm learnset
	tmhm POISON_CLAW, TOXIC, HIDDEN_POWER, SUNNY_DAY, HONE_TOOLS, PROTECT, GIGA_DRAIN, FLOWER_SHOOT, RETURN, DIG, MANA_BURST, DOUBLE_TEAM, SLUDGE_BOMB, SUBSTITUTE, FACADE, REST, LUSTER_HEART, THIEF, LEECH_LIFE, CROSS_JAM, DARK_PULSE, POISON_JAB, FLASH, LEAF_STORM, BATON_PASS, BODY_SLAM, DOUBLE_EDGE, ENDURE, SLEEP_TALK, SUCKER_PUNCH, SWAGGER
	; end
