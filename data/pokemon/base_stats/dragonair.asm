	db  61,  84,  65,  70,  70,  70 ; 420 BST
	;   hp  atk  def  spe  sat  sdf

	db DRAGON, DRAGON ; type
	db 45 ; catch rate
	db 144 ; base exp
	db NO_ITEM, DRAGON_SCALE ; held items
	dn GENDER_F50, HATCH_SLOWEST ; gender ratio, step cycles to hatch

	abilities_for DRAGONAIR, SHED_SKIN, SHED_SKIN, MARVEL_SCALE
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_1, EGG_DRAGON ; egg groups

	ev_yield 2 Atk

	; tm/hm learnset
	tmhm CURSE, TOXIC, HAIL, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, MASTER_SPARK, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, IRON_TAIL, THUNDERBOLT, THUNDER, RETURN, DOUBLE_TEAM, METEOR_FALL, FIRE_BLAST, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, DRAGON_PULSE, WATER_PULSE, THUNDER_WAVE, FLY, SURF, WHIRLPOOL, WATERFALL, AGILITY, AQUA_TAIL, BODY_SLAM, DOUBLE_EDGE, ENDURE, HEADBUTT, ICY_WIND, SLEEP_TALK, SWAGGER, ZAP_CANNON
	; end
