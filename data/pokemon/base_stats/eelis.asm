	db  76, 105,  76, 120, 135,  68 ; 472 BST
	;   hp  atk  def  spe  sat  sdf

	db DARK, FLYING ; type
	db 140 ; catch rate
	db 190 ; base exp
	db NO_ITEM, SHARP_BEAK ; held items
	dn GENDER_F50, HATCH_SLOWER ; gender ratio, step cycles to hatch

	abilities_for EELIS, PRESSURE, PRESSURE, PRESSURE
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_FLYING ; egg groups

	ev_yield 2 SAt, 1 Atk

	; tm/hm learnset
	tmhm SHADOW_FORCE, TOXIC, CALM_MIND, HIDDEN_POWER, SUNNY_DAY, HONE_TOOLS, PROTECT, LIGHT_SCREEN, RAIN_DANCE, THUNDERBOLT, THUNDER, MANA_BURST, SHADOW_BALL, RETURN, DOUBLE_TEAM, REFLECT, FLASH_CANNON, AERIAL_ACE, SWIFT, SUBSTITUTE, FACADE, FLAME_CHARGE, REST, ATTRACT, STEEL_WING, THIEF, ENERGY_LIGHT, FOCUS_BLAST, DARK_PULSE, WILL_O_WISP, U_TURN, VOLT_SWITCH, THUNDER_WAVE, FLASH, FLY, BATON_PASS, CHARM, COUNTER, DEFENSE_CURL, DREAM_EATER, EARTH_POWER, ENDURE, ICY_WIND, SKILL_SWAP, SLEEP_TALK, SUCKER_PUNCH, SWAGGER, DIZZY_PUNCH
	; end
