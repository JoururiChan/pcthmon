	db  55, 130, 115,  75,  50,  50 ; 475 BST
	;   hp  atk  def  spe  sat  sdf

	db WATER, WATER ; type
	db 60 ; catch rate
	db 206 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for KINGLER, HYPER_CUTTER, SHELL_ARMOR, SHEER_FORCE
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	ev_yield 2 Atk

	; tm/hm learnset
	tmhm CURSE, TOXIC, HAIL, HIDDEN_POWER, HONE_TOOLS, ICE_BEAM, BLIZZARD, AEROBLAST, PROTECT, RAIN_DANCE, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ROCK_SLIDE, BLADE_FLASH, SCALD, ICHIGO_CROSS, WATER_PULSE, SHADOW_HIT, GUNGNIR, SWORDS_DANCE, CUT, SURF, STRENGTH, WHIRLPOOL, SAKUYA_WORLD, BODY_SLAM, DOUBLE_EDGE, ENDURE, ICY_WIND, KNOCK_OFF, SLEEP_TALK, SWAGGER
	; end
