	db  10,  55,  30,  90,  35,  45 ; 265 BST
	;   hp  atk  def  spe  sat  sdf

	db GROUND, STEEL ; type
	db 255 ; catch rate
	db 81 ; base exp
	db NO_ITEM, SOFT_SAND ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for DIGLETT_ALOLAN, SAND_VEIL, TANGLING_HAIR, SAND_FORCE
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield 1 Spe

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HONE_TOOLS, PROTECT, BULLDOZE, EARTHQUAKE, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, FLASH_CANNON, SLUDGE_BOMB, SANDSTORM, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ROCK_SLIDE, SHADOW_CLAW, CUT, AGILITY, BODY_SLAM, CHARM, DOUBLE_EDGE, EARTH_POWER, ENDURE, HEADBUTT, IRON_HEAD, SLEEP_TALK, SUCKER_PUNCH, SWAGGER
	; end
