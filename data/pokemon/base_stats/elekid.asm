if DEF(FAITHFUL)
	db  45,  63,  37,  95,  65,  55 ; 360 BST
	;   hp  atk  def  spe  sat  sdf
else
	db  50,  63,  37, 100,  65,  55 ; 370 BST
	;   hp  atk  def  spe  sat  sdf
endc

	db WIND, WIND ; type
	db 45 ; catch rate
	db 106 ; base exp
	db PERSIM_BERRY, ELECTIRIZER ; held items
	dn GENDER_F25, HATCH_MEDIUM_SLOW ; gender ratio, step cycles to hatch

	abilities_for ELEKID, STATIC, STATIC, VITAL_SPIRIT
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	ev_yield 1 Spe

	; tm/hm learnset
	tmhm DYNAMICPUNCH, SHADOW_FORCE, TOXIC, BULK_UP, HIDDEN_POWER, LIGHT_SCREEN, PROTECT, RAIN_DANCE, THUNDERBOLT, THUNDER, RETURN, MANA_BURST, ROCK_SMASH, DOUBLE_TEAM, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, KNIFE_THROW, FLASH, VOLT_SWITCH, THUNDER_WAVE, BODY_SLAM, COUNTER, DOUBLE_EDGE, ENDURE, FIRE_PUNCH, HEADBUTT, ICE_PUNCH, SEISMIC_TOSS, SLEEP_TALK, SWAGGER, THUNDERPUNCH, ZAP_CANNON
	; end
