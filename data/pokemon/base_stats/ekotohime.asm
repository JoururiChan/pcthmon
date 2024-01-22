	db  94,  118,  100,  86,  46,  31 ; 320 BST
	;   hp  atk  def  spe  sat  sdf

	db FAIRY, FIGHTING ; type
	db 201 ; catch rate
	db 101 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_MEDIUM_SLOW ; gender ratio, step cycles to hatch

	abilities_for EKOTOHIME, OWN_TEMPO, COLLECTOR, COLLECTOR
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FAIRY, EGG_GROUND ; egg groups

	ev_yield 3 Def

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, GIGA_DRAIN, FLOWER_SHOOT, RETURN, DOUBLE_TEAM, SLUDGE_BOMB, SUBSTITUTE, FACADE, REST, ATTRACT, ENERGY_LIGHT,  FLASH, SWORDS_DANCE, CUT, CHARM, DOUBLE_EDGE, ENDURE, HYPER_VOICE, SEED_BOMB, SLEEP_TALK, SWAGGER
	; end
