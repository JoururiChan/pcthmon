	db  80, 100,  60,  95, 130, 120 ; 525 BST
	;   hp  atk  def  spe  sat  sdf

	db NORMAL, FLYING ; type
	db 100 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F87_5, HATCH_SLOW ; gender ratio, step cycles to hatch

	abilities_for EREIMU, HAKUREI_MIKO, HAKUREI_MIKO, OWN_TEMPO
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_FLYING ; egg groups

	ev_yield 2 SAt, 1 Spe

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, LIGHT_SCREEN, PROTECT, SAFEGUARD, RETURN, ROCK_SMASH, DOUBLE_TEAM, SUBSTITUTE, FACADE, REST, ATTRACT,  GIGA_IMPACT, FLASH, SWORDS_DANCE, FLY, STRENGTH, BODY_SLAM, CHARM, DOUBLE_EDGE, ENDURE, HEADBUTT, KNOCK_OFF, SLEEP_TALK, SWAGGER
	; end
