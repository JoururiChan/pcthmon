if DEF(FAITHFUL)
	db 100,  50,  50,  70,  86,  96 ; 452 BST
	;   hp  atk  def  spe  sat  sdf
else
	db 100,  50,  50,  70,  96,  96 ; 462 BST
	;   hp  atk  def  spe  sat  sdf
endc

if DEF(FAITHFUL)
	db ILLUSION, FLYING ; type
	db 90 ; catch rate
else
	db GHOST, FLYING ; type
	db 80 ; catch rate
endc
	db 162 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_FAST ; gender ratio, step cycles to hatch

	abilities_for NOCTOWL, INSOMNIA, KEEN_EYE, TINTED_LENS
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	ev_yield 2 HP

	; tm/hm learnset
	tmhm SHADOW_FORCE, CALM_MIND, TOXIC, HIDDEN_POWER, SUNNY_DAY,  PROTECT, RAIN_DANCE, RETURN, MANA_BURSTRST, SHADOW_BALL, DOUBLE_TEAM, REFLECT, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, STEEL_WING, AURA_WAVE, ULTICHARGE, FLASH, FLY, LEAF_STORM, DOUBLE_EDGE, DREAM_EATER, ENDURE, VOICE_BIND, SLEEP_TALK, SWAGGER, 
	; end
