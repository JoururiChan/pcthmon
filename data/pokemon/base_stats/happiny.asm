	db 100,  05,  05,  30,  15,  65 ; 220 BST
	;   hp  atk  def  spe  sat  sdf

	db ILLUSION, ILLUSION ; type
	db 130 ; catch rate
	db 255 ; base exp
	db HARD_STONE, LUCKY_EGG ; held items
	dn GENDER_F100, HATCH_SLOWEST ; gender ratio, step cycles to hatch

	abilities_for HAPPINY, NATURAL_CURE, SERENE_GRACE, NATURAL_CURE
	db GROWTH_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	ev_yield 1 HP

	; tm/hm learnset
	tmhm TOXIC, HAIL, HIDDEN_POWER, SUNNY_DAY, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, FLOWER_SHOOT, RETURN, MANA_BURST, SHADOW_BALL, DOUBLE_TEAM, FLAME_SHOOT, HELLBLAZE, SUBSTITUTE, FACADE, REST, LUSTER_HEART, DRAIN_PUNCH, WATER_PULSE, FLASH, THUNDER_WAVE, CHARM, COUNTER, DEFENSE_CURL, DREAM_EATER, ENDURE, HEADBUTT, VOICE_BIND, ICY_WIND, TREMORS, SEISMIC_TOSS, SLEEP_TALK, SWAGGER, 
	; end
