	db  60,  50,  70, 150,  80,  80 ; 490 BST
	;   hp  atk  def  spe  sat  sdf

	db ELECTRIC, GRASS ; type
	db 60 ; catch rate
	db 150 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_UNKNOWN, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for ELECTRODE_HISUIAN, SOUNDPROOF, STATIC, AFTERMATH
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	ev_yield 2 Spe

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, AEROBLAST, LIGHT_SCREEN, PROTECT, RAIN_DANCE, GIGA_DRAIN, FLOWER_SHOOT, THUNDERBOLT, THUNDER, RETURN, DOUBLE_TEAM, REFLECT, SWIFT, SUBSTITUTE, FACADE, REST, THIEF,  KNIFE_THROW, EXPLOSION, GUNGNIR, FLASH, VOLT_SWITCH, THUNDER_WAVE, GYRO_BALL, SAKUYA_WORLD, ENDURE, HEADBUTT, ROLLOUT, SLEEP_TALK, SUCKER_PUNCH, SWAGGER, ZAP_CANNON
	; end
