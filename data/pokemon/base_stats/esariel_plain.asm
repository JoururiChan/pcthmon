	db  102, 110, 105, 124, 140, 130 ; 450 BST
	;   hp  atk  def  spe  sat  sdf

	db FAIRY, FLYING ; type
	db 50 ; catch rate
	db 230 ; base exp
	db ORAN_BERRY, LIGHT_BALL ; held items
	dn GENDER_F100, HATCH_SLOWEST ; gender ratio, step cycles to hatch

	abilities_for ESARIEL, PRESSURE, PRESSURE, HAKUREI_MIKO
	db GROWTH_SLOW ; growth rate
	dn EGG_FAIRY, EGG_FLYING ; egg groups

	ev_yield 3 SAt

	; tm/hm learnset
	tmhm CURSE, CALM_MIND, ROAR, TOXIC, HAIL, HIDDEN_POWER, SHADOW_DANCE, ICE_BEAM, AEROBLAST, PROTECT, FLOWER_SHOOT, SAFEGUARD, AEROBLAST, EARTHQUAKE, RETURN, PSYCHIC, DOUBLE_TEAM, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, FOCUS_BLAST, FLAME_CHARGE, STEEL_WING, GUNGNIR, FLASH, ENERGY_LIGHT, WHITE_BIRD, SPORE, DARK_PULSE, DRAGON_PULSE, WILL_O_WISP, ACROBATICS, FLY, STRENGTH, SAKUYA_WORLD, BODY_SLAM, CHARM, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, ENDURE, HEADBUTT, KNOCK_OFF, PAY_DAY, ROLLOUT, SEISMIC_TOSS, SLEEP_TALK, SWAGGER, THUNDERPUNCH, ZAP_CANNON
	; end
