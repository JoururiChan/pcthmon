	db  50,  40,  45,  55, 70,  50 ; 310 BST
	;   hp  atk  def  spe  sat  sdf

	db DARK, FAITH ; type
	db 40 ; catch rate
	db 140 ; base exp
	db NO_ITEM, SPELL_TAG ; held items
	dn GENDER_F50, HATCH_SLOWEST ; gender ratio, step cycles to hatch

	abilities_for CSHINKI, SYNCHRONIZE, SCRAPPY, PRESSURE
	db GROWTH_SLOW ; growth rate
	dn EGG_FLYING, EGG_DRAGON ; egg groups

	ev_yield 1 SDf

	; tm/hm learnset
	tmhm SHADOW_FORCE, POWER_TRICK, CALM_MIND, TOXIC, ROAR, HAIL, HIDDEN_POWER, PAY_DAY, SUNNY_DAY, ICE_BEAM, BLIZZARD, LIGHT_SCREEN, PROTECT, RAIN_DANCE, GIGA_DRAIN, FLOWER_SHOOT, THUNDERBOLT, SEAL_NEEDLE, THUNDER, RETURN, MANA_BURST, SHADOW_BALL, DOUBLE_TEAM, REFLECT, FLASH_CANNON, SLUDGE_BOMB, SUBSTITUTE, HELLBLAZE, FACADE, REST, ATTRACT, THIEF, ENERGY_LIGHT, STEEL_WING, LEECH_LIFE, ROCK_SLIDE, AURA_WAVE, DARK_PULSE, FOCUS_BLAST, CRASH_CROSS, ENIGMA_BURST, WILL_O_WISP, WATER_PULSE, FLASH, THUNDER_WAVE, FLY, WATERFALL, LEAF_STORM, CHARM, DEFENSE_CURL, EARTH_POWER, DREAM_EATER, ENDURE, ICY_WIND, VOICE_BIND, SKILL_SWAP, SLEEP_TALK, SUCKER_PUNCH, TRICK, TRICK_ROOM, ZAP_CANNON, DIZZY_PUNCH
	; end
