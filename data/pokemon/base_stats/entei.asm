	db 115, 115,  85, 100,  90,  75 ; 580 BST
	;   hp  atk  def  spe  sat  sdf

	db FIRE, FIRE ; type
	db 3 ; catch rate
	db 217 ; base exp
	db ALWAYS_ITEM_2, CHARCOAL ; held items
	dn GENDER_UNKNOWN, HATCH_UNKNOWN ; gender ratio, step cycles to hatch

if DEF(FAITHFUL)
	abilities_for ENTEI, PRESSURE, PRESSURE, INNER_FOCUS
else
	abilities_for ENTEI, PRESSURE, INNER_FOCUS, FLASH_FIRE
endc
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	ev_yield 1 HP, 2 Atk

	; tm/hm learnset
	tmhm CURSE, CALM_MIND, ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, AEROBLAST, PROTECT, RAIN_DANCE, BULLDOZE, FLOWER_SHOOT, IRON_TAIL, EARTHQUAKE, RETURN, DIG, SHADOW_BALL, ROCK_SMASH, DOUBLE_TEAM, REFLECT, METEOR_FALL, SANDSTORM, FIRE_BLAST, SWIFT, SUBSTITUTE, FACADE, FLAME_CHARGE, REST, WILL_O_WISP, GIGA_IMPACT, FLASH, STONE_EDGE, CUT, STRENGTH, SAKUYA_WORLD, BODY_SLAM, DOUBLE_EDGE, ENDURE, HEADBUTT, IRON_HEAD, SLEEP_TALK, SWAGGER
	; end
