	db  55,  55,  50,  55,  45,  65 ; 325 BST
	;   hp  atk  def  spe  sat  sdf

	db ILLUSION, ILLUSION ; type
	db 45 ; catch rate
	db 92 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F12_5, HATCH_SLOWER ; gender ratio, step cycles to hatch

	abilities_for TLYRICA, RUN_AWAY, ADAPTABILITY, ANTICIPATION
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield 1 SDf

	; tm/hm learnset
	tmhm SPIRIT_VOICE, CALM_MIND, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE,  RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, BATON_PASS, BODY_SLAM, CHARM, DOUBLE_EDGE, EARTH_POWER, ENDURE, HEADBUTT, VOICE_BIND, PAY_DAY, SLEEP_TALK, SWAGGER
	; end
