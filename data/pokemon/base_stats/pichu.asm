	db  20,  40,  15,  60,  35,  35 ; 205 BST
	;   hp  atk  def  spe  sat  sdf

	db WIND, WIND ; type
	db 190 ; catch rate
	db 42 ; base exp
	db ORAN_BERRY, LIGHT_BALL ; held items
	dn GENDER_F50, HATCH_FASTER ; gender ratio, step cycles to hatch

	abilities_for PICHU, STATIC, STATIC, LIGHTNING_ROD
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	ev_yield 1 Spe

	; tm/hm learnset
	tmhm SPIRIT_VOICE, CALM_MIND, TOXIC, HIDDEN_POWER, LIGHT_SCREEN, PROTECT, RAIN_DANCE,  THUNDERBOLT, THUNDER, RETURN, DOUBLE_TEAM, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, KNIFE_THROW, FLASH, VOLT_SWITCH, THUNDER_WAVE, BODY_SLAM, CHARM, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, ENDURE, HEADBUTT, PAY_DAY, ROLLOUT, SEISMIC_TOSS, SLEEP_TALK, SWAGGER, THUNDERPUNCH, ZAP_CANNON
	; end
