	db  80,  80,  50,  25,  40,  50 ; 325 BST
	;   hp  atk  def  spe  sat  sdf

	db POISON, POISON ; type
	db 190 ; catch rate
	db 90 ; base exp
	db BLACK_SLUDGE, NUGGET ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for GRIMER, STENCH, STICKY_HOLD, POISON_TOUCH
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	ev_yield 1 HP

	; tm/hm learnset
	tmhm DYNAMICPUNCH, CURSE, TOXIC, VENOSHOCK, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, GIGA_DRAIN, THUNDERBOLT, THUNDER, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, METEOR_FALL, SLUDGE_BOMB, FIRE_BLAST, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ROCK_SLIDE, EXPLOSION, POISON_JAB, STRENGTH, BODY_SLAM, ENDURE, FIRE_PUNCH, ICE_PUNCH, SLEEP_TALK, SWAGGER, THUNDERPUNCH, ZAP_CANNON
	; end
