	db  70, 105,  50, 95, 110, 60 ; 470 BST
	;   hp  atk  def  spe  sat  sdf

	db FAITH, DREAM ; type
	db 100 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F87_5, HATCH_SLOW ; gender ratio, step cycles to hatch

	abilities_for TREIMU, HAKUREI_MIKO, HAKUREI_MIKO, OWN_TEMPO
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_FLYING ; egg groups

	ev_yield 2 SAt, 1 Spe

	; tm/hm learnset
	tmhm POWER_TRICK, TOXIC, HIDDEN_POWER, AERIAL_ACE, SUNNY_DAY, LIGHT_SCREEN, PAY_DAY, PROTECT, SAFEGUARD, RETURN, ROCK_SMASH, DOUBLE_TEAM, SUBSTITUTE, FACADE, REST, LUSTER_HEART, JUMP_KICK, SEAL_NEEDLE, FLASH, SWORDS_DANCE, FLY, STRENGTH, BODY_SLAM, CHARM, DOUBLE_EDGE, ENDURE, HEADBUTT, STEEL_FIST, KNOCK_OFF, SLEEP_TALK, SWAGGER
	; end
