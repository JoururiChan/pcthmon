	db  50, 85,  55,  60,  80,  40 ; 370 BST
	;   hp  atk  def  spe  sat  sdf

	db EARTH, EARTH ; type
	db 65 ; catch rate
	db 110 ; base exp
	db ALWAYS_ITEM_2, SITRUS_BERRY ; held items
	dn GENDER_F50, HATCH_SLOWEST ; gender ratio, step cycles to hatch

	abilities_for CTENSHI, GUTS, CLOUD_NINE, SAND_STREAM
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_HUMANSHAPE ; egg groups

	ev_yield 1 Atk

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HAIL, BULK_UP, PAY_DAY, HIDDEN_POWER, SUNNY_DAY, HONE_TOOLS, PROTECT, JUMP_KICK, RAIN_DANCE, BULLDOZE, SAFEGUARD, EARTHQUAKE, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, SWIFT, AERIAL_ACE, SANDSTORM, SUBSTITUTE, FACADE, REST, THIEF, ROCK_SLIDE, FOCUS_BLAST, ENERGY_BALL, AURA_WAVE, BLADE_FLASH, SHADOW_HIT, DRAIN_PUNCH, ACROBATICS, EXPLOSION, AVALANCHE, POISON_JAB, ULTICHARGE, FLASH, SWORDS_DANCE, STONE_HIT, CUT, STRENGTH, BODY_SLAM, CHARM, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, ENDURE, FIRE_PUNCH, HEADBUTT, VOICE_BIND, IRON_HEAD, KNOCK_OFF, STEEL_FIST, TREMORS, SEISMIC_TOSS, SLEEP_TALK, SWAGGER, SUCKER_PUNCH, DIZZY_PUNCH
	; end
