	db  35,  46,  34,  20,  35,  45 ; 215 BST
	;   hp  atk  def  spe  sat  sdf

	db ILLUSION, ILLUSION ; type
	db 255 ; catch rate
	db 57 ; base exp
	db NO_ITEM, ORAN_BERRY ; held items
	dn GENDER_F50, HATCH_FAST ; gender ratio, step cycles to hatch

	abilities_for CWRIGGLE, RUN_AWAY, KEEN_EYE, FRISK
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield 1 Atk

	; tm/hm learnset
	tmhm DYNAMICPUNCH, POISON_CLAW, TOXIC, BULK_UP, HIDDEN_POWER, SUNNY_DAY, HONE_TOOLS, ICE_BEAM, PROTECT, RAIN_DANCE, FLOWER_SHOOT,  THUNDERBOLT, RETURN, DIG, SHADOW_BALL, ROCK_SMASH, DOUBLE_TEAM, FLAME_SHOOT, SWIFT, SUBSTITUTE, FACADE, REST, LUSTER_HEART, THIEF, WATER_PULSE, SHADOW_HIT, CHARGE_OUT, CUT, SURF, WHIRLPOOL,  BATON_PASS, BODY_SLAM, CHARM, DEFENSE_CURL, DOUBLE_EDGE, ENDURE, FIRE_PUNCH, HEADBUTT, VOICE_BIND, ICE_PUNCH, KNOCK_OFF, TREMORS, SLEEP_TALK, SUCKER_PUNCH, SWAGGER, THUNDERPUNCH, TRICK
	; end
