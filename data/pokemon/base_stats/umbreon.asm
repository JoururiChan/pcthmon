	db  95,  65, 110,  65,  60, 130 ; 525 BST
	;   hp  atk  def  spe  sat  sdf

	db DARK, DARK ; type
	db 45 ; catch rate
	db 197 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F12_5, HATCH_SLOWER ; gender ratio, step cycles to hatch

if DEF(FAITHFUL)
	abilities_for UMBREON, SYNCHRONIZE, SYNCHRONIZE, INNER_FOCUS
else
	abilities_for UMBREON, SYNCHRONIZE, MAGIC_GUARD, INNER_FOCUS
endc
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield 2 SDf

	; tm/hm learnset
	tmhm SHADOW_FORCE, CALM_MIND, TOXIC, HIDDEN_POWER, SUNNY_DAY,  PROTECT, RAIN_DANCE, DIG, MANA_BURST, SHADOW_BALL, DOUBLE_TEAM, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, DARK_PULSE, ULTICHARGE, FLASH, CUT, BATON_PASS, BODY_SLAM, CHARM, DOUBLE_EDGE, DREAM_EATER, ENDURE, HEADBUTT, VOICE_BIND, PAY_DAY, SLEEP_TALK, SUCKER_PUNCH, SWAGGER, ZAP_CANNON
	; end
