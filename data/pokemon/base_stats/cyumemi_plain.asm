	db  55,  24,  50,  33,  70,  58 ; 440 BST
	;   hp  atk  def  spe  sat  sdf

	db FIRE, ICE ; type
	db 90 ; catch rate
	db 130 ; base exp
	db NO_ITEM, QUICK_CLAW ; held items
	dn GENDER_F50, HATCH_FAST ; gender ratio, step cycles to hatch

	abilities_for CYUMEMI, LIMBER, SOUNDPROOF, SOUNDPROOF
	db GROWTH_SLOW ; growth rate
	dn EGG_HUMANSHAPE, EGG_MINERAL ; egg groups

	ev_yield 1 SAt

	; tm/hm learnset
	tmhm CURSE, CALM_MIND, TOXIC, HAIL, BULK_UP, HIDDEN_POWER, SUNNY_DAY, HONE_TOOLS, ICE_BEAM, BLIZZARD, PROTECT, THUNDERBOLT, THUNDER, SAFEGUARD, RETURN, PSYCHIC, SHADOW_BALL, DOUBLE_TEAM, REFLECT, FLASH_CANNON, SUBSTITUTE, FACADE, FLAME_CHARGE, REST, ATTRACT, THIEF, BLADE_FLASH, ENERGY_LIGHT, ICHIGO_CROSS, DARK_PULSE, WATER_PULSE, SHADOW_HIT, AVALANCHE, FLASH, THUNDER_WAVE, SWORDS_DANCE, CUT, STRENGTH, SAKUYA_WORLD, BODY_SLAM, CHARM, DEFENSE_CURL, DOUBLE_EDGE, DREAM_EATER, ENDURE, HEADBUTT, HYPER_VOICE, ICY_WIND, KNOCK_OFF, PAY_DAY, SEED_BOMB, SLEEP_TALK, SWAGGER, ZAP_CANNON
	; end
