if DEF(FAITHFUL)
	db  75,  80,  95,  50,  90, 100 ; 490 BST
	;   hp  atk  def  spe  sat  sdf
else
	db  75,  80,  95,  50, 100, 110 ; 510 BST
	;   hp  atk  def  spe  sat  sdf
endc

if DEF(FAITHFUL)
	db NATURE, NATURE ; type
else
	db NATURE, HEART ; type
endc
	db 45 ; catch rate
if DEF(FAITHFUL)
	db 184 ; base exp
else
	db 192 ; base exp
endc
	db NO_ITEM, MIRACLE_SEED ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

if DEF(FAITHFUL)
	abilities_for BELLOSSOM, CHLOROPHYLL, CHLOROPHYLL, CHLOROPHYLL
else
	abilities_for BELLOSSOM, CHLOROPHYLL, CHLOROPHYLL, OWN_TEMPO
endc
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	ev_yield 3 SDf

	; tm/hm learnset
	tmhm SPIRIT_VOICE, TOXIC, HIDDEN_POWER, SUNNY_DAY,  PROTECT, GIGA_DRAIN, SAFEGUARD, FLOWER_SHOOT, RETURN, DOUBLE_TEAM, SLUDGE_BOMB, SUBSTITUTE, FACADE, REST, ATTRACT, ENERGY_LIGHT,  DRAIN_PUNCH, GUNGNIR, FLASH, SWORDS_DANCE, CUT, BATON_PASS, CHARM, DOUBLE_EDGE, EARTH_POWER, ENDURE, VOICE_BIND, SEED_BOMB, SLEEP_TALK, SWAGGER
	; end
