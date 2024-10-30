	db 106, 130,  90,  90, 110, 154 ; 680 BST
	;   hp  atk  def  spe  sat  sdf

	db FIRE, FLYING ; type
	db 3 ; catch rate
	db 220 ; base exp
	db ALWAYS_ITEM_2, SACRED_ASH ; held items
	dn GENDER_UNKNOWN, HATCH_UNKNOWN ; gender ratio, step cycles to hatch

if DEF(FAITHFUL)
	abilities_for HO_OH, PRESSURE, PRESSURE, REGENERATOR
else
	abilities_for HO_OH, PRESSURE, DROUGHT, REGENERATOR
endc
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	ev_yield 3 SDf

	; tm/hm learnset
	tmhm SHADOW_FORCE, CALM_MIND, ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY,  LIGHT_SCREEN, PROTECT, RAIN_DANCE, GIGA_DRAIN, SAFEGUARD, BULLDOZE, FLOWER_SHOOT, THUNDERBOLT, THUNDER, EARTHQUAKE, RETURN, MANA_BURST, SHADOW_BALL, ROCK_SMASH, DOUBLE_TEAM, REFLECT, FIRE_BREATH, SANDSTORM, HELLBLAZE, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, FLAME_CHARGE, REST, STEEL_WING, AURA_WAVE, WILL_O_WISP, ULTICHARGE, FLASH, THUNDER_WAVE, FLY, STRENGTH, DOUBLE_EDGE, DREAM_EATER, EARTH_POWER, ENDURE, VOICE_BIND, IRON_HEAD, SLEEP_TALK, SWAGGER, ZAP_CANNON, 
	; end
