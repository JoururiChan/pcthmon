	db  40,  35,  35,  90,  50,  40 ; 290 BST
	;   hp  atk  def  spe  sat  sdf

	db DARK, DARK ; type
	db 255 ; catch rate
	db 69 ; base exp
	db NO_ITEM, AMULET_COIN ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for ECHIYURI, PICKUP, TOUGH_CLAWS, RATTLED
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield 1 Spe

	; tm/hm learnset
	tmhm POISON_CLAW, TOXIC, HIDDEN_POWER, SUNNY_DAY, HONE_TOOLS, PROTECT, RAIN_DANCE,  THUNDERBOLT, THUNDER, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, LUSTER_HEART, THIEF, BLADE_FLASH, DARK_PULSE, WATER_PULSE, SHADOW_HIT, CHARGE_OUT, FLASH, CUT, LEAF_STORM, BODY_SLAM, CHARM, DEFENSE_CURL, DOUBLE_EDGE, DREAM_EATER, ENDURE, HEADBUTT, VOICE_BIND, ICY_WIND, KNOCK_OFF, PAY_DAY, SEED_BOMB, SLEEP_TALK, SWAGGER, ZAP_CANNON
	; end
