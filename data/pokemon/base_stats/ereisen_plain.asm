	db  71,  68,  64,  98, 168, 168 ; 534 BST
	;   hp  atk  def  spe  sat  sdf

	db PSYCHIC, PSYCHIC ; type
	db 100 ; catch rate
	db 212 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F87_5, HATCH_SLOW ; gender ratio, step cycles to hatch

	abilities_for EREISEN, KEEN_EYE, KEEN_EYE, SNIPER
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_MINERAL ; egg groups

	ev_yield 2 SAt, 1 Spe

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, LIGHT_SCREEN, CALM_MIND, PROTECT, RETURN, THUNDERBOLT, DOUBLE_TEAM, SWIFT, PSYCHIC, SHADOW_BALL, REFLECT, SUBSTITUTE, FLASH_CANNON, METEOR_FALL, DIG, FACADE, FIRE_BLAST, ENERGY_LIGHT, FOCUS_BLAST, DARK_PULSE, FLASH, THUNDER_WAVE, REST, ATTRACT, WILL_O_WISP, BODY_SLAM, DEFENSE_CURL, DOUBLE_EDGE, ENDURE, HEADBUTT, ROLLOUT, SLEEP_TALK, SWAGGER
	; end
