	db  40,  30,  50, 100,  55,  55 ; 330 BST
	;   hp  atk  def  spe  sat  sdf

	db WIND, NATURE ; type
	db 190 ; catch rate
	db 103 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_UNKNOWN, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for DDAICHAN, SOUNDPROOF, STATIC, AFTERMATH
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	ev_yield 1 Spe

	; tm/hm learnset
	tmhm POISON_CLAW, TOXIC, HIDDEN_POWER, LIGHT_SCREEN, PROTECT, RAIN_DANCE, GIGA_DRAIN, FLOWER_SHOOT, THUNDERBOLT, THUNDER, RETURN, DOUBLE_TEAM, REFLECT, SWIFT, SUBSTITUTE, FACADE, REST, THIEF,  KNIFE_THROW, EXPLOSION, FLASH, VOLT_SWITCH, THUNDER_WAVE, GYRO_BALL, LEAF_STORM, ENDURE, HEADBUTT, TREMORS, SLEEP_TALK, SUCKER_PUNCH, SWAGGER, ZAP_CANNON
	; end
