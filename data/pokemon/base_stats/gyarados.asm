	db  95, 125,  79,  81,  60, 100 ; 540 BST
	;   hp  atk  def  spe  sat  sdf

	db WATER, FLYING ; type
	db 45 ; catch rate
	db 214 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_FASTEST ; gender ratio, step cycles to hatch

	abilities_for ELILYBLACK, INTIMIDATE, MOXIE, MOLD_BREAKER
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_2, EGG_DRAGON ; egg groups

	ev_yield 2 Atk

	; tm/hm learnset
	tmhm SPIRIT_VOICE, ROAR, TOXIC, HAIL, HIDDEN_POWER, ICE_BEAM, BLIZZARD,  PROTECT, RAIN_DANCE, BULLDOZE,  THUNDERBOLT, THUNDER, EARTHQUAKE, RETURN, ROCK_SMASH, DOUBLE_TEAM, METEOR_FALL, SANDSTORM, HELL_TOKAMAK, SUBSTITUTE, FACADE, REST, ATTRACT, SCALD, DARK_PULSE, DRAGON_PULSE, WATER_PULSE, AVALANCHE, GUNGNIR, STONE_EDGE, THUNDER_WAVE, FLY, SURF, STRENGTH, WHIRLPOOL, WATERFALL,  BODY_SLAM, DOUBLE_EDGE, ENDURE, HEADBUTT, ICY_WIND, IRON_HEAD, SLEEP_TALK, SWAGGER, ZAP_CANNON
	; end
