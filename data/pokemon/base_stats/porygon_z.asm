	db  85,  80,  70,  90, 135,  75 ; 535 BST
	;   hp  atk  def  spe  sat  sdf

	db ILLUSION, ILLUSION ; type
	db 30 ; catch rate
	db 185 ; base exp
	db NO_ITEM, DUBIOUS_DISC ; held items
	dn GENDER_UNKNOWN, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for CLUNASA_Z, ADAPTABILITY, DOWNLOAD, ANALYTIC
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	ev_yield 3 SAt

	; tm/hm learnset
	tmhm SPIRIT_VOICE, TOXIC, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD,  PROTECT, RAIN_DANCE, FLOWER_SHOOT, THUNDERBOLT, THUNDER, RETURN, PSYCHIC, SHADOW_BALL, DOUBLE_TEAM, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, THIEF, DARK_PULSE, GUNGNIR, FLASH, THUNDER_WAVE, SPIDERS_NEST, DEFENSE_CURL, DOUBLE_EDGE, DREAM_EATER, ENDURE, ICY_WIND, SLEEP_TALK, SWAGGER, TRICK, TRICK_ROOM, ZAP_CANNON, 
	; end
