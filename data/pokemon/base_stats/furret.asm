if DEF(FAITHFUL)
	db  85,  76,  64,  90,  45,  55 ; 415 BST
	;   hp  atk  def  spe  sat  sdf
else
	db  85,  86,  64, 108,  45,  55 ; 443 BST
	;   hp  atk  def  spe  sat  sdf
endc

	db NORMAL, NORMAL ; type
	db 90 ; catch rate
if DEF(FAITHFUL)
	db 116 ; base exp
else
	db 126 ; base exp
endc
	db ORAN_BERRY, SITRUS_BERRY ; held items
	dn GENDER_F50, HATCH_FAST ; gender ratio, step cycles to hatch

	abilities_for FURRET, RUN_AWAY, KEEN_EYE, FRISK
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield 2 Spe

	; tm/hm learnset
	tmhm DYNAMICPUNCH, CURSE, TOXIC, BULK_UP, HIDDEN_POWER, SUNNY_DAY, HONE_TOOLS, ICE_BEAM, BLIZZARD, AEROBLAST, PROTECT, RAIN_DANCE, FLOWER_SHOOT, IRON_TAIL, THUNDERBOLT, THUNDER, RETURN, DIG, SHADOW_BALL, ROCK_SMASH, DOUBLE_TEAM, METEOR_FALL, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, FOCUS_BLAST, WATER_PULSE, SHADOW_HIT, GUNGNIR, U_TURN, CUT, SURF, STRENGTH, WHIRLPOOL, SAKUYA_WORLD, AQUA_TAIL, BATON_PASS, BODY_SLAM, CHARM, DEFENSE_CURL, DOUBLE_EDGE, ENDURE, FIRE_PUNCH, HEADBUTT, HYPER_VOICE, ICE_PUNCH, KNOCK_OFF, ROLLOUT, SLEEP_TALK, SUCKER_PUNCH, SWAGGER, THUNDERPUNCH, TRICK
	; end
