	db  70,  45,  55,  90, 110,  95 ; 405 BST
	;   hp  atk  def  spe  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 100 ; catch rate
	db 170 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F87_5, HATCH_FASTER ; gender ratio, step cycles to hatch

	abilities_for MARISA, PICKUP, PICKUP, BLAZE
	db GROWTH_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_MINERAL ; egg groups

	ev_yield 2 SAt

	; tm/hm learnset
	tmhm DYNAMICPUNCH, DRAGON_CLAW, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HONE_TOOLS, PROTECT, IRON_TAIL, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, METEOR_FALL, FIRE_BLAST, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, FLAME_CHARGE, REST, ATTRACT, ROCK_SLIDE, DRAGON_PULSE, WILL_O_WISP, SHADOW_HIT, SWORDS_DANCE, CUT, STRENGTH, BODY_SLAM, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, ENDURE, FIRE_PUNCH, HEADBUTT, SEISMIC_TOSS, SLEEP_TALK, SWAGGER, THUNDERPUNCH
	; end
