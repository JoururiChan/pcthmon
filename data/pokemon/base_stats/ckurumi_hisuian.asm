	db  95, 115,  80,  90,  95,  80 ; 555 BST
	;   hp  atk  def  spe  sat  sdf

	db FIRE, BEAST ; type
	db 75 ; catch rate
	db 213 ; base exp
	db NO_ITEM, ASPEAR_BERRY ; held items
	dn GENDER_F25, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for KURUMI, INTIMIDATE, FLASH_FIRE, ROCK_HEAD
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield 2 Atk

	; tm/hm learnset
	tmhm POISON_CLAW, ROAR, TOXIC, BULK_UP, HIDDEN_POWER, SUNNY_DAY,  PROTECT, SAFEGUARD, BULLDOZE, FLOWER_SHOOT,  RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, FLAME_SHOOT, HELLBLAZE, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, FLAME_CHARGE, REST, LUSTER_HEART, THIEF, ROCK_SLIDE, KNIFE_THROW, VOICE_BURST, WILL_O_WISP, ULTICHARGE, STONE_HIT, STRENGTH, LEAF_STORM, BODY_SLAM, DOUBLE_EDGE, ENDURE, HEADBUTT, VOICE_BIND, IRON_HEAD, SLEEP_TALK, SWAGGER
	; end
