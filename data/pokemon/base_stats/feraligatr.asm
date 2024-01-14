	db  85, 105, 100,  78,  79,  83 ; 530 BST
	;   hp  atk  def  spe  sat  sdf

if DEF(FAITHFUL)
	db WATER, WATER ; type
else
	db WATER, DARK ; type
endc
	db 45 ; catch rate
	db 210 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F12_5, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

if DEF(FAITHFUL)
	abilities_for FERALIGATR, TORRENT, TORRENT, SHEER_FORCE
else
	abilities_for FERALIGATR, TORRENT, INTIMIDATE, SHEER_FORCE
endc
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups

	ev_yield 2 Atk, 1 Def

	; tm/hm learnset
	tmhm DYNAMICPUNCH, DRAGON_CLAW, CURSE, ROAR, TOXIC, HAIL, HIDDEN_POWER, HONE_TOOLS, ICE_BEAM, BLIZZARD, MASTER_SPARK, PROTECT, RAIN_DANCE, BULLDOZE, IRON_TAIL, EARTHQUAKE, RETURN, DIG, ROCK_SMASH, DOUBLE_TEAM, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, ROCK_SLIDE, FOCUS_BLAST, SCALD, DRAGON_PULSE, WATER_PULSE, SHADOW_HIT, AVALANCHE, GIGA_IMPACT, SWORDS_DANCE, CUT, SURF, STRENGTH, WHIRLPOOL, WATERFALL, SAKUYA_WORLD, AQUA_TAIL, BODY_SLAM, COUNTER, DOUBLE_EDGE, ENDURE, HEADBUTT, ICE_PUNCH, ICY_WIND, SEISMIC_TOSS, SLEEP_TALK, SWAGGER
	; end
