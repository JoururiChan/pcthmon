	db 100, 134, 110,  61,  95, 100 ; 600 BST
	;   hp  atk  def  spe  sat  sdf

	db BEAST, DARK ; type
	db 45 ; catch rate
	db 218 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_SLOWEST ; gender ratio, step cycles to hatch

if DEF(FAITHFUL)
	abilities_for KOGASA, SAND_STREAM, SAND_STREAM, UNNERVE
else
	abilities_for KOGASA, SAND_STREAM, BATTLE_ARMOR, UNNERVE
endc
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	ev_yield 3 Atk

	; tm/hm learnset
	tmhm DYNAMICPUNCH, POISON_CLAW, ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, HONE_TOOLS, ICE_BEAM, BLIZZARD, THUNDERBOLT, THUNDER, EARTHQUAKE, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, FLAME_SHOOT, SANDSTORM, HELLBLAZE, AERIAL_ACE, SUBSTITUTE, FACADE, REST, LUSTER_HEART, ROCK_SLIDE, FOCUS_BLAST, DARK_PULSE, VOICE_BURST, WATER_PULSE, SHADOW_HIT, AVALANCHE, ULTICHARGE, STONE_HIT, THUNDER_WAVE, CUT, SURF, STRENGTH, WHIRLPOOL,  BODY_SLAM, COUNTER, DOUBLE_EDGE, EARTH_POWER, ENDURE, FIRE_PUNCH, HEADBUTT, ICE_PUNCH, IRON_HEAD, SEISMIC_TOSS, SLEEP_TALK, SWAGGER, THUNDERPUNCH
	; end
