	db  45,  60,  30,  65,  80,  50 ; 330 BST
	;   hp  atk  def  spe  sat  sdf

	db DARK, FIRE ; type
	db 120 ; catch rate
	db 114 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for DPARSEE, EARLY_BIRD, FLASH_FIRE, UNNERVE
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield 1 SAt

	; tm/hm learnset
	tmhm POISON_CLAW, ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, FLOWER_SHOOT,  ROCK_SMASH, DOUBLE_TEAM, FLAME_SHOOT, SLUDGE_BOMB, HELLBLAZE, SWIFT, SUBSTITUTE, FACADE, FLAME_CHARGE, REST, LUSTER_HEART, THIEF, DARK_PULSE, WILL_O_WISP, BODY_SLAM, CHARM, COUNTER, DOUBLE_EDGE, DREAM_EATER, ENDURE, HEADBUTT, VOICE_BIND, SLEEP_TALK, SUCKER_PUNCH, SWAGGER
	; end
