if DEF(FAITHFUL)
	db  75,  75,  55,  30, 105,  85 ; 425 BST
	;   hp  atk  def  spe  sat  sdf
else
	db  75,  55,  75,  85, 105,  85 ; 480 BST
	;   hp  atk  def  spe  sat  sdf
endc

if DEF(FAITHFUL)
	db NATURE, NATURE ; type
else
	db NATURE, FIRE ; type
endc
if DEF(FAITHFUL)
	db 120 ; catch rate
else
	db 110 ; catch rate
endc
if DEF(FAITHFUL)
	db 146 ; base exp
else
	db 156 ; base exp
endc
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for SUNFLORA, CHLOROPHYLL, SOLAR_POWER, EARLY_BIRD
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	ev_yield 2 SAt

	; tm/hm learnset
	tmhm POISON_CLAW, TOXIC, HIDDEN_POWER, SUNNY_DAY,  LIGHT_SCREEN, PROTECT, GIGA_DRAIN, SAFEGUARD, FLOWER_SHOOT, RETURN, DOUBLE_TEAM, FLAME_SHOOT, SLUDGE_BOMB, HELLBLAZE, SUBSTITUTE, FACADE, REST, LUSTER_HEART,  ULTICHARGE, FLASH, SWORDS_DANCE, CUT, DEFENSE_CURL, DOUBLE_EDGE, EARTH_POWER, ENDURE, TREMORS, SEED_BOMB, SLEEP_TALK, SWAGGER
	; end
