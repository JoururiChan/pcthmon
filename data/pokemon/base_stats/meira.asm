	db  43, 100,  67, 100,  86,  40 ; 483 BST
	;   hp  atk  def  spe  sat  sdf

	db STEEL, DREAM ; type
	db 235 ; catch rate
	db 110 ; base exp
	db LEPPA_BERRY, MOON_STONE ; held items
	dn GENDER_F75, HATCH_FAST ; gender ratio, step cycles to hatch

	abilities_for MEIRA, INNER_FOCUS, INNER_FOCUS, STEADFAST
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_MINERAL ; egg groups

	ev_yield 2 Atk

	; tm/hm learnset
	tmhm DYNAMICPUNCH, POWER_TRICK, CALM_MIND, TOXIC, BULK_UP, HIDDEN_POWER, HONE_TOOLS, PROTECT, TENSION_KICK, BULLDOZE, SEAL_NEEDLE, RETURN, EARTHQUAKE, DIG, PSYCHIC, ROCK_SMASH, DOUBLE_TEAM, REFLECT, SUBSTITUTE, FACADE, REST, AERIAL_ACE, SWIFT, ATTRACT, FLAME_CHARGE, BLADE_FLASH, THIEF, DRAIN_PUNCH, FOCUS_BLAST, ICHIGO_CROSS, BLAZE_STAR, ACROBATICS, SHADOW_HIT, GUNGNIR, POISON_JAB, U_TURN, STONE_EDGE, SWORDS_DANCE, CUT, STRENGTH, BATON_PASS, BODY_SLAM, CHARM, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, DREAM_EATER, ENDURE, FIRE_PUNCH, HEADBUTT, ICE_PUNCH, IRON_HEAD, KNOCK_OFF, ROLLOUT, SEISMIC_TOSS, STEEL_FIST, SLEEP_TALK, SWAGGER, SUCKER_PUNCH, THUNDERPUNCH
	; end
