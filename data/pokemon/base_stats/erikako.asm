	db  50, 125,  52, 120,  88, 102 ; 475 BST
	;   hp  atk  def  spe  sat  sdf

	db PSYCHIC, FLYING ; type
	db 105 ; catch rate
	db 212 ; base exp
	db TINYMUSHROOM, BIG_MUSHROOM ; held items
	dn GENDER_F50, HATCH_SLOWER ; gender ratio, step cycles to hatch

	abilities_for ERIKAKO, INSOMNIA, INSOMNIA, INSOMNIA
	db GROWTH_FAST ; growth rate
	dn EGG_MINERAL, EGG_FLYING ; egg groups

	ev_yield 2 SAt, 1 Spe

	; tm/hm learnset
	tmhm CURSE, ROAR, TOXIC, BULK_UP, VENOSHOCK, HIDDEN_POWER, SUNNY_DAY, HONE_TOOLS, AEROBLAST, PROTECT, GIGA_DRAIN, RETURN, RAIN_DANCE, SAFEGUARD, BULLDOZE, DOUBLE_TEAM, SLUDGE_BOMB, THUNDERBOLT, THUNDER, PSYCHIC, ROCK_SMASH, FLASH_CANNON, AERIAL_ACE, METEOR_FALL, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, FLAME_CHARGE, STEEL_WING, ROCK_SLIDE, ACROBATICS, EXPLOSION, FLASH, VOLT_SWITCH, THUNDER_WAVE, CUT, STRENGTH, WHIRLPOOL, BODY_SLAM, COUNTER, DOUBLE_EDGE, DREAM_EATER, ENDURE, KNOCK_OFF, SEED_BOMB, SLEEP_TALK, SWAGGER
	; end
