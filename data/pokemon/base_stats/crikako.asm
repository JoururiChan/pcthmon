	db  24,  62,  26,  65,  30,  50 ; 445 BST
	;   hp  atk  def  spe  sat  sdf

	db REASON, REASON ; type
	db 105 ; catch rate
	db 90 ; base exp
	db TINYMUSHROOM, BIG_MUSHROOM ; held items
	dn GENDER_F50, HATCH_SLOWER ; gender ratio, step cycles to hatch

	abilities_for CRIKAKO, INSOMNIA, INSOMNIA, INSOMNIA
	db GROWTH_FAST ; growth rate
	dn EGG_MINERAL, EGG_FLYING ; egg groups

	ev_yield 1 SAt

	; tm/hm learnset
	tmhm POWER_TRICK, CALM_MIND, TOXIC, HIDDEN_POWER, SUNNY_DAY, HONE_TOOLS, PROTECT, RAIN_DANCE, GIGA_DRAIN, RETURN, DOUBLE_TEAM, SLUDGE_BOMB, THUNDERBOLT, THUNDER, MANA_BURST, ROCK_SMASH, STAR_CANNON, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, LUSTER_HEART, FLAME_CHARGE, THIEF, ROCK_SLIDE, ENERGY_LIGHT, FOCUS_BLAST, ACROBATICS, EXPLOSION, SCALD, WATER_PULSE, CHARGE_OUT, FLASH, VOLT_SWITCH, GYRO_BALL, STRENGTH, BODY_SLAM, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, DREAM_EATER, ENDURE, HEADBUTT, IRON_HEAD, SLEEP_TALK, SUCKER_PUNCH, TRICK_ROOM, ZAP_CANNON, DIZZY_PUNCH, SWAGGER
	; end
