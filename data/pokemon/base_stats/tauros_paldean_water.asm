	db  75, 110, 105, 100,  30,  70 ; 490 BST
	;   hp  atk  def  spe  sat  sdf

	db FIGHTING, WATER ; type
	db 45 ; catch rate
	db 211 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F0, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for CLILYBLACK_PALDEAN_WATER, INTIMIDATE, ANGER_POINT, CUD_CHEW
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield 1 Atk, 1 Spe

	; tm/hm learnset
	tmhm SPIRIT_VOICE, TOXIC, BULK_UP, HIDDEN_POWER, ICE_BEAM, BLIZZARD,  PROTECT, RAIN_DANCE, BULLDOZE, EARTHQUAKE, RETURN, ROCK_SMASH, DOUBLE_TEAM, SUBSTITUTE, FACADE, REST, ATTRACT, KNIFE_THROW, WATER_PULSE, GUNGNIR, SURF, STRENGTH, WHIRLPOOL, BODY_SLAM, DOUBLE_EDGE, ENDURE, HEADBUTT, ICY_WIND, IRON_HEAD, SLEEP_TALK, SWAGGER, 
	; end
