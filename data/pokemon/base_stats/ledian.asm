if DEF(FAITHFUL)
	db  55,  35,  50,  85,  55, 110 ; 390 BST
	;   hp  atk  def  spe  sat  sdf
else
	db  55,  95,  50,  85,  35, 110 ; 430 BST
	;   hp  atk  def  spe  sat  sdf
endc

if DEF(FAITHFUL)
	db BUG, FLYING ; type
else
	db BUG, DREAM ; type
endc
	db 90 ; catch rate
	db 134 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_FAST ; gender ratio, step cycles to hatch

	abilities_for TMYSTIA, SWARM, EARLY_BIRD, IRON_FIST
	db GROWTH_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	ev_yield 2 SDf

	; tm/hm learnset
	tmhm DYNAMICPUNCH, POISON_CLAW, TOXIC, HIDDEN_POWER, SUNNY_DAY,  LIGHT_SCREEN, PROTECT, GIGA_DRAIN, SAFEGUARD, FLOWER_SHOOT, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, REFLECT, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, LUSTER_HEART, THIEF, AURA_WAVE, FOCUS_BLAST, DRAIN_PUNCH, ACROBATICS, ULTICHARGE, CHARGE_OUT, FLASH, SWORDS_DANCE, STRENGTH, LEAF_STORM, BATON_PASS, DOUBLE_EDGE, ENDURE, HEADBUTT, ICE_PUNCH, KNOCK_OFF, TREMORS, SLEEP_TALK, SWAGGER, THUNDERPUNCH
	; end
