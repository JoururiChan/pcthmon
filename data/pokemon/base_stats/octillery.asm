	db  75, 105,  75,  45, 105,  75 ; 480 BST
	;   hp  atk  def  spe  sat  sdf

if DEF(FAITHFUL)
	db WATER, WATER ; type
else
	db WATER, FIRE ; type
endc
	db 75 ; catch rate
	db 164 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for OCTILLERY, SUCTION_CUPS, SNIPER, MOODY
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_2 ; egg groups

	ev_yield 1 Atk, 1 SAt

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, AEROBLAST, PROTECT, RAIN_DANCE, RETURN, PSYCHIC, DOUBLE_TEAM, FLASH_CANNON, METEOR_FALL, SLUDGE_BOMB, FIRE_BLAST, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF,  SCALD, WATER_PULSE, GIGA_IMPACT, THUNDER_WAVE, SURF, WHIRLPOOL, WATERFALL, DEFENSE_CURL, DOUBLE_EDGE, ENDURE, ICY_WIND, SEED_BOMB, SEISMIC_TOSS, SLEEP_TALK, SWAGGER
	; end
