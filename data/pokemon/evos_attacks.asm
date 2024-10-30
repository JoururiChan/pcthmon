MACRO evo_data
	db \1 ; evolution type
	if \1 == EVOLVE_PARTY
		dp \2, PLAIN_FORM ; parameter
	else
		db \2 ; parameter
	endc
	if \1 == EVOLVE_STAT || \1 == EVOLVE_HOLDING
		db \3 ; ATK_*_DEF | time of day
		shift
	endc
	if _NARG > 3
		dp \3, \4
	else
		dp \3, PLAIN_FORM
	endc
ENDM


SECTION "Evolutions and Attacks", ROMX

INCLUDE "data/pokemon/evolution_moves.asm"

INCLUDE "data/pokemon/evos_attacks_pointers.asm"

EvosAttacks::

CReimuEvosAttacks:
	evo_data EVOLVE_LEVEL, 36, REIMU
	evo_data EVOLVE_ITEM, MOON_STONE, TREIMU
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 6, SEAL_NEEDLE
	db 10, FORESIGHT
	db 14, MACH_PUNCH
	db 22, LIGHT_SCREEN ; Sweet Scent → Take Down
	db 22, REFLECT
	db 28, HEALINGLIGHT
	db 33, PIN_MISSILE ; Worry Seed → event move
	db -1 ; no more level-up moves

ReimuEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, SEAL_NEEDLE
	db 1, PIN_MISSILE ; Worry Seed → event move
	db 38, AERIAL_ACE
	db 41, TENSION_KICK ; Worry Seed → event move
	db 44, ACROBATICS ; Synthesis → similar move
	db 47, CALM_MIND
	db 50, ENERGY_BALL ; Solar Beam → Sludge Bomb
	db 53, LOW_KICK
	db 56, HONE_TOOLS
	db -1 ; no more level-up moves

TReimuEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, SEAL_NEEDLE
	db 1, PIN_MISSILE ; Worry Seed → event move
	db 38, AURA_WAVE
	db 41, COLOR_FIST ; Worry Seed → event move
	db 44, CALM_MIND ; Synthesis → similar move
	db 47, HONE_TOOLS
	db 50, HOLY_CHARGE ; Solar Beam → Sludge Bomb
	db 53, PSYSTRIKE
	db 56, FOCUS_BLAST
	db -1 ; no more level-up moves

CMarisaEvosAttacks:
	evo_data EVOLVE_LEVEL, 36, MARISA
	evo_data EVOLVE_ITEM, SUN_STONE, AMARISA
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 7, THUNDERSHOCK
	db 11, THIEF
	db 15, EMBER ; Holy Flame → TM move
	db 20, SPORE ; Scary Face → Holy Flame
	db 23, SWIFT ; Fire Fang → Scary Face
	db 28, SLUDGE_BOMB ; Flame Burst → TM move
	db 31, AIR_SLASH
	db 35, THUNDERBOLT
	db -1 ; no more level-up moves

MarisaEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, THUNDERSHOCK
	db 1, THIEF
	db 38, FIRE_SPIN
	db 41, FOCUS_ENERGY ; Worry Seed → event move
	db 44, TAILWIND ; Synthesis → similar move
	db 47, FLAME_CHARGE
	db 50, AEROBLAST ; Solar Beam → Sludge Bomb
	db 53, FLAME_HIT
	db 56, CALM_MIND
	db -1 ; no more level-up moves

AMarisaEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, THUNDERSHOCK
	db 1, THIEF
	db 38, SLUDGE_BOMB
	db 41, FOCUS_ENERGY ; Worry Seed → event move
	db 44, TAILWIND ; Synthesis → similar move
	db 47, POISON_GAS
	db 50, POWER_BEAM ; Solar Beam → Sludge Bomb
	db 53, TOXIC_SPORE
	db 56, ZAP_CANNON
	db -1 ; no more level-up moves

CSakuyaEvosAttacks:
	evo_data EVOLVE_LEVEL, 36, SAKUYA
	evo_data EVOLVE_ITEM, DUSK_STONE, HSAKUYA
	db -1 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER ; Tail Whip → similar move
	db 7, KNIFE_THROW
	db 10, THUNDER_WAVE ; Withdraw → similar move
	db 17, FURY_STRIKES
	db 21, HONE_TOOLS
	db 25, DISABLE
	db 29, PROTECT
	db 34, NIGHT_SLASH
	db -1 ; no more level-up moves

SakuyaEvosAttacks:
	db -1 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER ; Tail Whip → similar move
	db 7, KNIFE_THROW
	db 38, FOCUS_ENERGY
	db 41, BLADE_FLASH ; Worry Seed → event move
	db 44, THUNDERPUNCH ; Synthesis → similar move
	db 47, WILD_CHARGE
	db 50, TRICK_ROOM ; Solar Beam → Sludge Bomb
	db 53, SUPERSONIC
	db 56, AQUA_CUT
	db -1 ; no more level-up moves

HSakuyaEvosAttacks:
	db -1 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER ; Tail Whip → similar move
	db 7, KNIFE_THROW
	db 38, TAILWIND
	db 41, FEINT_ATTACK ; Worry Seed → event move
	db 44, BRAVER ; Synthesis → similar move
	db 47, GLARE
	db 50, SUPERSONIC ; Solar Beam → Sludge Bomb
	db 53, ULTICHARGE
	db 56, AQUA_CUT
	db -1 ; no more level-up moves

CGyokuEvosAttacks:
	evo_data EVOLVE_ITEM, MOON_STONE, MGYOKU
	evo_data EVOLVE_ITEM, SUN_STONE, FGYOKU
	evo_data EVOLVE_ITEM, SHINY_STONE, OGYOKU
	db -1 ; no more evolutions
	db 1, PSYSHOT
	db 1, FORESIGHT
	db 8, SEAL_NEEDLE
	db 12, SONIC_BOOM
	db 16, PROTECT
	db 21, HAZE
	db 24, HOLY_FLAME
	db 28, PSYBEAM
	db 32, RECOVER
	db 35, REFLECT
	db 35, LIGHT_SCREEN
	db 39, FLASH_CANNON
	db -1 ; no more level-up moves

MGyokuEvosAttacks:
	db -1 ; no more evolutions
	db 1, PSYSHOT
	db 1, FORESIGHT
	db 43, EARTH_POWER
	db 46, SANDSTORM
	db 49, PIN_MISSILE
	db 52, ENIGMA_BURST
	db 55, SKILL_SWAP
	db 58, SPIKES
	db 61, STONE_RISE
	db -1 ; no more level-up moves

FGyokuEvosAttacks:
	db -1 ; no more evolutions
	db 1, PSYSHOT
	db 1, FORESIGHT
	db 43, THUNDERBOLT
	db 46, THUNDER_WAVE
	db 49, PIN_MISSILE
	db 52, ENIGMA_BURST
	db 55, SKILL_SWAP
	db 58, TAILWIND
	db 61, AEROBLAST
	db -1 ; no more level-up moves

OGyokuEvosAttacks:
	db -1 ; no more evolutions
	db 1, PSYSHOT
	db 1, FORESIGHT
	db 43, MANA_BURST
	db 46, SUPERSONIC
	db 49, PIN_MISSILE
	db 52, ENIGMA_BURST
	db 55, SKILL_SWAP
	db 58, CALM_MIND
	db 61, FIVEELEMENTS
	db -1 ; no more level-up moves

CMaganEvosAttacks:
	evo_data EVOLVE_LEVEL, 42, MAGAN
	db -1 ; no more evolutions
	db 1, ACID ; OGyoku move
	db 1, LEER ; OGyoku move
	db 6, MEAN_LOOK
	db 10, GLARE
	db 13, VENOSHOCK
	db 17, THUNDERSHOCK
	db 22, FORESIGHT
	db 25, TOXIC_SPORE
	db 29, HYPNOSIS
	db 33, ENERGY_BALL
	db 37, THUNDERBOLT
	db 41, THUNDER_WAVE
	db -1 ; no more level-up moves

MaganEvosAttacks:
	db -1 ; no more evolutions
	db 1, ACID ; OGyoku move
	db 1, LEER ; OGyoku move
	db 45, ENIGMA_BURST
	db 48, SLUDGE_BOMB
	db 51, CONFUSE_RAY
	db 54, BARRIER
	db 57, ZAP_CANNON
	db 60, GUNK_SHOT
	db -1 ; no more level-up moves

CMimaEvosAttacks:
	evo_data EVOLVE_LEVEL, 38, MIMA
	db -1 ; no more evolutions
	db 1, ASTONISH
	db 1, CONFUSE_RAY ; Sand Attack → Gust
	db 9, MEAN_LOOK ; Gust → GSC TM move
	db 14, PSYSHOT
	db 17, FEINT_ATTACK ; Whirlwind → RBY TM move
	db 22, DESTINY_BOND ; Twister → egg move
	db 25, NIGHT_SHADE ; Feather Dance → TM move
	db 29, NASTY_PLOT
	db 32, U_TURN
	db 35, BATTLE_CHANT
	db -1 ; no more level-up moves

MimaEvosAttacks:
	db -1 ; no more evolutions
	db 1, ASTONISH
	db 1, CONFUSE_RAY ; Sand Attack → Gust
	db 40, MANA_BURST
	db 43, HYPNOSIS
	db 46, DREAM_EATER
	db 49, AURA_SPHERE
	db 52, POWER_BEAM
	db 55, DARK_PULSE
	db 58, SHADOW_DANCE
	db -1 ; no more level-up moves

CElisEvosAttacks:
	evo_data EVOLVE_LEVEL, 42, ELIS
	db -1 ; no more evolutions
	db 1, ASTONISH
	db 1, SAFEGUARD ; Tail Whip → similar move
	db 6, GUST
	db 9, PURSUIT
	db 14, HEALINGLIGHT
	db 18, WING_ATTACK
	db 22, TRICK
	db 25, SLEEP_POWDER
	db 29, FEINT_ATTACK ; Assurance → similar move
	db 33, ENCORE
	db 37, CONFUSE_RAY
	db 40, LEECH_LIFE
	db -1 ; no more level-up moves

ElisEvosAttacks:
	db -1 ; no more evolutions
	db 1, QUICK_ATTACK ; Pluck → egg move
	db 1, ASTONISH
	db 1, SAFEGUARD ; Tail Whip → similar move
	db 44, AIR_SLASH
	db 47, SWIFT
	db 50, ULTICHARGE
	db 53, DISABLE
	db 56, TRICK_ROOM
	db 59, CRASH_CROSS
	db -1 ; no more level-up moves

CKikuriEvosAttacks:
	evo_data EVOLVE_LEVEL, 42, KIKURI
	db -1 ; no more evolutions
	db 1, PSYSHOT
	db 1, DEFENSE_CURL
	db 6, HEALINGLIGHT
	db 10, ROCK_BULLET
	db 14, DISABLE
	db 19, PSYBEAM
	db 23, HOLY_FLAME
	db 27, CALM_MIND
	db 30, HYPNOSIS
	db 35, EARTH_POWER
	db 39, EXTRASENSORY
	db -1 ; no more level-up moves

KikuriEvosAttacks:
	db -1 ; no more evolutions
	db 1, PSYSHOT
	db 1, DEFENSE_CURL
	db 43, RECOVER
	db 46, SUBSTITUTE
	db 49, POWER_GEM
	db 52, SANDSTORM
	db 55, STONE_RISE
	db 58, ENERGY_BALL
	db -1 ; no more level-up moves

CSarielEvosAttacks:
	evo_data EVOLVE_LEVEL, 42, SARIEL
	db -1 ; no more evolutions
	db 1, GUST
	db 1, PSYSHOT ; Tail Whip → similar move
	db 6, FORESIGHT
	db 10, HEALINGLIGHT ; evolution move
	db 14, SWIFT
	db 19, WING_ATTACK
	db 22, HAIL
	db 25, DISARM_VOICE
	db 28, DRAINING_KISS
	db 32, AURA_WAVE
	db 36, HYPNOSIS
	db 41, SING
	db -1 ; no more level-up moves

SarielEvosAttacks:
	db -1 ; no more evolutions
	db 1, GUST
	db 1, PSYSHOT ; Tail Whip → similar move
	db 44, SPIRIT_VOICE
	db 47, HEAL_BELL
	db 50, AIR_SLASH
	db 53, MOONBLAST
	db 56, ANCIENTPOWER
	db 59, EXTREMESPEED
	db -1 ; no more level-up moves

CKongaraEvosAttacks:
	evo_data EVOLVE_LEVEL, 42, KONGARA
	db -1 ; no more evolutions
	db 1, PURSUIT
	db 1, HAZE
	db 7, KARATE_CHOP
	db 11, MINIMIZE
	db 14, SEISMIC_TOSS
	db 18, FURY_STRIKES
	db 23, KNOCK_OFF
	db 26, RECOVER
	db 29, REFLECT
	db 34, RAGE
	db 38, BULK_UP
	db -1 ; no more level-up moves

KongaraEvosAttacks:
	db -1 ; no more evolutions
	db 1, PURSUIT
	db 1, HAZE
	db 43, SUCKER_PUNCH
	db 46, HONE_TOOLS
	db 49, SLASH
	db 52, BATTLE_CHANT
	db 55, FUTURE_SIGHT
	db 58, AURA_SPHERE
	db 61, LIFE_BALANCE
	db -1 ; no more level-up moves

CRikaEvosAttacks:
	evo_data EVOLVE_LEVEL, 28, RIKA
	evo_data EVOLVE_ITEM, MOON_STONE, ARIKA
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, SMOKESCREEN
	db 7, THUNDERSHOCK
	db 10, DEFENSE_CURL
	db 15, BLACK_RIPPLE
	db 18, BUBBLE_BEAM ; Fury Attack → similar move
	db 21, GUST
	db 24, THUNDER_WAVE
	db 27, FIRE_BREATH
	db -1 ; no more level-up moves

RikaEvosAttacks:
	evo_data EVOLVE_ITEM, MOON_STONE, ARIKA
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, SMOKESCREEN
	db 30, FIRE_SPIN
	db 33, WIRE_WEB
	db 36, BULK_UP
	db 39, ROCK_BLAST
	db 42, THUNDERBOLT
	db 45, HELLBLAZE
	db 48, SUBSTITUTE
	db 51, PROTECT
	db 54, ENERGY_BALL
	db 57, VOLT_SWITCH
	db 60, POWER_BEAM
	db -1 ; no more level-up moves

ARikaEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, SMOKESCREEN
	db 30, WING_ATTACK
	db 33, HAZE
	db 36, BULK_UP
	db 39, ROCK_BLAST
	db 42, THUNDERBOLT
	db 45, DOUBLE_EDGE
	db 48, SUBSTITUTE
	db 51, PROTECT
	db 54, DRAIN_PUNCH
	db 57, VOLT_SWITCH
	db 60, CROSS_CHOP
	db -1 ; no more level-up moves

CMeiraEvosAttacks:
	evo_data EVOLVE_LEVEL, 30, MEIRA
	db -1 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 5, FORESIGHT
	db 9, BLADE_FLASH
	db 14, SUCKER_PUNCH; Follow Me → new move
	db 18, FOCUS_ENERGY ; Bestow → Crystal unique move
	db 21, LOW_KICK ; Wake-Up Slap → RBY TM move
	db 24, AERIAL_ACE
	db 27, ROAR
	db -1 ; no more level-up moves

MeiraEvosAttacks:
	db -1 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 30, METAL_CLAW
	db 33, BARRIER
	db 36, REFLECT
	db 39, TENSION_KICK
	db 42, DRAIN_PUNCH
	db 45, REST
	db 48, STEEL_FIST
	db 51, BRAVER
	db 54, BRICK_BREAK
	db 57, RECOVER
	db 60, SLASH
	db -1 ; no more level-up moves

CEllenEvosAttacks:
	evo_data EVOLVE_LEVEL, 28, ELLEN
	db -1 ; no more evolutions
	db 1, PSYSHOT ; evolution move
	db 1, TRICK
	db 7, SING
	db 11, RAPID_SPIN
	db 14, CHARM
	db 17, QUICK_ATTACK
	db 20, DISARM_VOICE
	db 24, FUTURE_SIGHT
	db 26, GROWTH
	db -1 ; no more level-up moves

EllenEvosAttacks:
	db -1 ; no more evolutions
	db 1, PSYSHOT ; evolution move
	db 1, TRICK
	db 29, DIZZY_PUNCH
	db 32, PSYBEAM
	db 35, HYPNOSIS
	db 38, DOUBLE_TEAM
	db 41, FLASH_CANNON
	db 44, TAKE_DOWN
	db 47, RECOVER
	db 50, MANA_BURST
	db 53, PSYSTRIKE
	db 56, CONFUSE_RAY
	db 59, MOONBLAST
	db -1 ; no more level-up moves

CKotohimeEvosAttacks:
	evo_data EVOLVE_LEVEL, 30, KOTOHIME
	db -1 ; no more evolutions
	db 1, KARATE_CHOP
	db 4, DISARM_VOICE
	db 7, SWEET_KISS
	db 11, FEINT_ATTACK
	db 15, MACH_PUNCH ; Wing Attack → egg move
	db 18, CHARM
	db 22, DOUBLE_KICK
	db 25, HOLY_FLAME
	db 29, BARRIER
	db -1 ; no more level-up moves

KotohimeEvosAttacks:
	db -1 ; no more evolutions
	db 1, KARATE_CHOP
	db 1, DISARM_VOICE
	db 32, LIGHT_SCREEN
	db 35, REFLECT
	db 38, HEADBUTT
	db 41, DRAIN_PUNCH
	db 44, COLOR_FIST
	db 47, RECOVER
	db 50, SUBSTITUTE
	db 53, STEEL_FIST
	db 56, DYNAMICPUNCH
	db -1 ; no more level-up moves

CKanaEvosAttacks:
	evo_data EVOLVE_LEVEL, 32, KANA
	db -1 ; no more evolutions
	db 1, LICK
	db 1, ASTONISH ; Sweet Scent → event move
	db 6, PURSUIT
	db 10, ENCORE
	db 14, SWAGGER
	db 17, HEX
	db 21, CHARM
	db 25, FEINT_ATTACK
	db 28, LIFE_BALANCE
	db 31, DISABLE
	db -1 ; no more level-up moves

KanaEvosAttacks:
	db -1 ; no more evolutions
	db 1, LICK
	db 1, ASTONISH ; Sweet Scent → event move
	db 35, REST
	db 38, SPIRIT_VOICE
	db 41, DARK_PULSE
	db 44, CONFUSE_RAY
	db 47, SHADOW_FORCE
	db 50, LEECH_LIFE
	db 53, NASTY_PLOT
	db 56, THRASH
	db 59, SHADOW_DANCE
	db -1 ; no more level-up moves

CRikakoEvosAttacks:
	evo_data EVOLVE_LEVEL, 34, RIKAKO
	db -1 ; no more evolutions
	db 1, PSYSHOT
	db 5, SONIC_BOOM
	db 9, SKILL_SWAP ; LGPE move
	db 12, SUPERSONIC
	db 16, PSYBEAM ; Fury Cutter → egg move
	db 20, TOXIC_SPORE
	db 23, TAKE_DOWN
	db 27, CALM_MIND
	db 31, TELEPORT
	db -1 ; no more level-up moves

RikakoEvosAttacks:
	db -1 ; no more evolutions
	db 1, AERIAL_ACE ; evo move
	db 1, PSYSHOT
	db 34, MANA_BURST
	db 37, HURRICANE
	db 40, AERIAL_ACE
	db 43, EXPLOSION
	db 46, PSYSTRIKE
	db 49, DOUBLE_EDGE
	db 52, ENERGY_BALL
	db 55, ZAP_CANNON
	db 58, U_TURN
	db -1 ; no more level-up moves

CChiyuriEvosAttacks:
	evo_data EVOLVE_LEVEL, 36, CHIYURI
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, AQUA_JET ; XD move
	db 7, THUNDER_WAVE
	db 11, CONVERSION
	db 14, SPARK ; Mud-Slap → LGPE move
	db 17, SCALD
	db 22, HONE_TOOLS
	db 25, FOCUS_ENERGY
	db 28, BULK_UP
	db 32, THUNDERBOLT
	db 35, ICE_BEAM
	db -1 ; no more level-up moves

ChiyuriEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, AQUA_JET ; XD move
	db 37, HEADBUTT
	db 40, RAIN_DANCE
	db 43, RECOVER
	db 46, AQUAHAMMER
	db 49, VOICE_BIND
	db 52, DRAIN_PUNCH
	db 55, WILD_CHARGE
	db -1 ; no more level-up moves

CYumemiEvosAttacks:
	evo_data EVOLVE_LEVEL, 38, YUMEMI
	db -1 ; no more evolutions
	db 1, EMBER
	db 1, PSYSHOT
	db 5, SKILL_SWAP
	db 9, DOUBLE_TEAM
	db 13, REFLECT
	db 17, HOLY_FLAME
	db 21, SUNNY_DAY
	db 25, FIRE_PUNCH
	db 29, POWER_TRICK
	db 32, SPARK
	db 36, FIRE_BREATH
	db -1 ; no more level-up moves

YumemiEvosAttacks:
	db -1 ; no more evolutions
	db 1, EMBER
	db 1, PSYSHOT
	db 40, CRASH_CROSS
	db 43, ICE_BEAM
	db 46, THUNDER_WAVE
	db 49, SACRED_FIRE
	db 52, MANA_BURST
	db 55, BARRIER
	db 58, HEAT_SMASH
	db -1 ; no more level-up moves

COrangeEvosAttacks:
	evo_data EVOLVE_LEVEL, 28, ORANGE
	db -1 ; no more evolutions
	db 1, KARATE_CHOP
	db 4, LEER ; Fury Swipes → similar move
	db 8, TACKLE
	db 12, BULK_UP
	db 15, MAGNITUDE
	db 19, ROCK_BULLET
	db 23, KNOCK_OFF
	db 27, BATON_PASS ; Assurance → egg move
	db -1 ; no more level-up moves

OrangeEvosAttacks:
	db -1 ; no more evolutions
	db 1, KARATE_CHOP
	db 1, LEER ; Fury Swipes → similar move
	db 31, PURSUIT ; Punishment → new move
	db 34, TENSION_KICK
	db 37, STEEL_FIST
	db 40, COLOR_FIST
	db 43, CROSS_CHOP ; Stomping Tantrum → HGSS tutor move
	db 46, ENDURE
	db 49, BULLDOZE
	db 52, SWAGGER
	db 55, HONE_TOOLS
	db 58, FLAME_HIT
	db -1 ; no more level-up moves

CKurumiEvosAttacks:
	evo_data EVOLVE_LEVEL, 30, KURUMI
	db -1 ; no more evolutions
	db 1, GUST
	db 1, DEFENSE_CURL
	db 5, GROWL
	db 9, SONIC_BOOM
	db 13, SCREECH
	db 16, ROAR
	db 20, BITE
	db 24, WING_ATTACK
	db 29, LEECH_LIFE
	db -1 ; no more level-up moves

KurumiEvosAttacks:
	db -1 ; no more evolutions
	db 1, GUST
	db 1, DEFENSE_CURL
	db 33, BLACK_RIPPLE
	db 36, HYPNOSIS
	db 36, DREAM_EATER
	db 39, SHADOW_FORCE
	db 42, REFLECT
	db 45, RECOVER
	db 48, ULTICHARGE
	db 51, NASTY_PLOT
	db 54, POWER_BITE
	db -1 ; no more level-up moves

CEllyEvosAttacks:
	evo_data EVOLVE_LEVEL, 32, ELLY
	db -1 ; no more evolutions
	db 1, SCRATCH
	db 1, HONE_TOOLS
	db 6, MACH_PUNCH
	db 10, FOCUS_ENERGY
	db 14, BLADE_FLASH
	db 18, KNOCK_OFF
	db 21, SPIKES
	db 25, RAPID_SPIN
	db 29, AERIAL_ACE
	db -1 ; no more level-up moves

EllyEvosAttacks:
	db -1 ; no more evolutions
	db 1, SCRATCH
	db 1, HONE_TOOLS
	db 33, REFLECT
	db 36, TRICK_ROOM
	db 39, BATTLE_CHANT
	db 42, SWORDS_DANCE
	db 45, CROSS_CHOP
	db 48, EXTREMESPEED
	db 51, FLASH_CANNON
	db 54, DRAIN_PUNCH
	db -1 ; no more level-up moves

CYukaEvosAttacks:
	evo_data EVOLVE_LEVEL, 38, YUKA
	evo_data EVOLVE_ITEM, LEAF_STONE, AYUKA
	db -1 ; no more evolutions
	db 1, VINE_WHIP
	db 1, LEER
	db 5, SPORE
	db 9, PURSUIT
	db 14, LEECH_SEED
	db 17, RAZOR_LEAF
	db 21, SLEEP_POWDER
	db 25, ENERGY_LIGHT
	db 29, NASTY_PLOT
	db 33, BLACK_RIPPLE
	db -1 ; no more level-up moves

YukaEvosAttacks:
	db -1 ; no more evolutions
	db 1, VINE_WHIP
	db 1, LEER
	db 39, GROWTH
	db 42, ENERGY_LIGHT
	db 45, THRASH
	db 48, SWAGGER
	db 51, SUCKER_PUNCH
	db 54, POWER_BEAM
	db 57, SUNNY_DAY
	db 60, DARK_PULSE
	db -1 ; no more level-up moves

AYukaEvosAttacks:
	db -1 ; no more evolutions
	db 1, VINE_WHIP
	db 1, LEER
	db 39, GROWTH
	db 42, ENERGY_LIGHT
	db 45, VENOSHOCK
	db 48, SWAGGER
	db 51, SLUDGE_BOMB
	db 54, POWER_BEAM
	db 57, SUNNY_DAY
	db 60, GUNK_SHOT
	db -1 ; no more level-up moves

CMugetsuEvosAttacks:
	evo_data EVOLVE_LEVEL, 40, MUGETSU
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, SWEET_KISS
	db 5, DOUBLE_TEAM
	db 9, HYPNOSIS
	db 13, DOUBLE_SLAP
	db 17, DISARM_VOICE
	db 21, DRAINING_KISS
	db 24, SING
	db 28, LIGHT_SCREEN
	db 32, DREAM_EATER
	db 36, BLACK_RIPPLE
	db 39, TAKE_DOWN
	db -1 ; no more level-up moves

MugetsuEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, SWEET_KISS
	db 42, HAZE
	db 45, CURSE_THORN
	db 48, REST
	db 51, ENERGY_BALL
	db 54, WILL_O_WISP
	db 57, MOONBLAST
	db -1 ; no more level-up moves

CGengetsuEvosAttacks:
	evo_data EVOLVE_LEVEL, 40, GENGETSU
	db -1 ; no more evolutions
	db 1, GUST
	db 1, TELEPORT
	db 6, DOUBLE_SLAP
	db 10, SONIC_BOOM
	db 13, SLEEP_POWDER
	db 17, SWEET_KISS
	db 21, WING_ATTACK
	db 25, BLACK_RIPPLE
	db 29, HEALINGLIGHT
	db 34, DREAM_EATER
	db 39, HYPNOSIS
	db -1 ; no more level-up moves

GengetsuEvosAttacks:
	db -1 ; no more evolutions
	db 1, GUST
	db 1, TELEPORT
	db 42, NIGHT_SLASH
	db 45, CHARM
	db 48, ENIGMA_BURST
	db 51, LIFE_BALANCE
	db 54, HURRICANE
	db 57, BARRIER
	db 60, THRASH
	db -1 ; no more level-up moves

CSaraEvosAttacks:
	evo_data EVOLVE_LEVEL, 28, SARA
	db -1 ; no more evolutions
	db 1, RAGE
	db 1, LEER
	db 5, ROCK_BULLET
	db 10, KARATE_CHOP
	db 14, SWAGGER
	db 17, LOW_KICK
	db 21, HEADBUTT
	db 25, BODY_SLAM	 
	db -1 ; no more level-up moves

SaraEvosAttacks:
	db -1 ; no more evolutions
	db 1, RAGE
	db 1, LEER
	db 30, FIRE_PUNCH
	db 33, BULK_UP
	db 36, TENSION_KICK
	db 39, DRAIN_PUNCH
	db 42, FOCUS_ENERGY
	db 45, BARRIER
	db 48, HEAT_SMASH
	db 51, CROSS_CHOP
	db -1 ; no more level-up moves

CLuizeEvosAttacks:
	evo_data EVOLVE_LEVEL, 30, LUIZE
	evo_data EVOLVE_ITEM, DUSK_STONE, DLUIZE
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 5, PURSUIT ; Tail Whip → similar move
	db 9, DEFENSE_CURL
	db 13, DOUBLE_SLAP ; Flame Wheel → Stomp
	db 18, BARRIER ; Stomp → Flame Charge
	db 22, TRICK ; Flame Charge → event move
	db 25, HEADBUTT
	db 29, FEINT_ATTACK
	db -1 ; no more level-up moves

LuizeEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 33, CHARM ; Inferno → egg move
	db 36, TAKE_DOWN
	db 39, BLACK_RIPPLE
	db 42, SWEET_KISS ; Bounce → new move
	db 45, PLAY_ROUGH
	db 48, CURSE
	db 51, LEECH_LIFE
	db 54, DOUBLE_EDGE
	db -1 ; no more level-up moves

DLuizeEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 33, CHARM ; Inferno → egg move
	db 36, SPIRIT_VOICE
	db 39, FIRE_BREATH
	db 42, SWEET_KISS ; Bounce → new move
	db 45, SPIRIT_SWEEP
	db 48, CURSE
	db 51, HELLBLAZE
	db 54, SHADOW_FORCE
	db -1 ; no more level-up moves

CAliceEvosAttacks:
	evo_data EVOLVE_LEVEL, 36, ALICE
	evo_data EVOLVE_ITEM, SHINY_STONE, AALICE
	db -1 ; no more evolutions
	db 1, PSYSHOT
	db 1, PROTECT
	db 6, WIRE_WEB
	db 10, KNIFE_THROW
	db 14, RAPID_SPIN
	db 18, DEFENSE_CURL
	db 21, LIGHT_SCREEN
	db 21, REFLECT
	db 25, SUBSTITUTE
	db 28, PSYBEAM
	db 32, AURA_SPHERE
	db 35, EXTREMESPEED
	db -1 ; no more level-up moves

AliceEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, PROTECT
	db 37, ENERGY_LIGHT
	db 40, CALM_MIND
	db 43, STUN_SPORE
	db 46, MANA_BURST
	db 49, LEAF_STORM
	db 52, BARRIER
	db 55, FIVEELEMENTS
	db 58, EXPLOSION
	db -1 ; no more level-up moves

AAliceEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, PROTECT
	db 37, EARTH_POWER
	db 40, CALM_MIND
	db 43, STUN_SPORE
	db 46, MANA_BURST
	db 49, STONE_RISE
	db 52, BARRIER
	db 55, PSYSTRIKE
	db 58, EXPLOSION
	db -1 ; no more level-up moves

CMaiEvosAttacks:
	evo_data EVOLVE_LEVEL, 34, MAI
	db -1 ; no more evolutions
	db 1, ICE_SHARD
	db 1, FOCUS_ENERGY
	db 6, SING
	db 10, CHARM
	db 14, DISARM_VOICE
	db 18, ICY_WIND
	db 22, ENCORE
	db 26, ATTRACT
	db 29, DRAINING_KISS
	db 33, CONFUSE_RAY
	db -1 ; no more level-up moves

MaiEvosAttacks:
	db -1 ; no more evolutions
	db 1, ICE_SHARD
	db 1, FOCUS_ENERGY
	db 36, ICE_BEAM
	db 39, SWEET_KISS
	db 42, BODY_SLAM
	db 45, THRASH
	db 48, CRASH_CROSS
	db 51, HEALINGLIGHT
	db 54, MOONBLAST
	db -1 ; no more level-up moves

CYukiEvosAttacks:
	evo_data EVOLVE_LEVEL, 34, YUKI
	db -1 ; no more evolutions
	db 1, EMBER
	db 1, FOCUS_ENERGY
	db 6, LEER
	db 10, GLARE
	db 14, PURSUIT
	db 18, FIRE_SPIN
	db 22, DISABLE
	db 26, CALM_MIND
	db 29, FLAME_CHARGE
	db 33, SUCKER_PUNCH
	db -1 ; no more level-up moves

YukiEvosAttacks:
	db -1 ; no more evolutions
	db 1, EMBER
	db 1, FOCUS_ENERGY
	db 36, FLAME_CHARGE
	db 39, WILL_O_WISP
	db 42, DARK_PULSE
	db 45, SACRED_FIRE
	db 48, HELLBLAZE
	db 51, RECOVER
	db 54, THRASH
	db -1 ; no more level-up moves

CYumekoEvosAttacks:
	evo_data EVOLVE_LEVEL, 36, YUMEKO
	db -1 ; no more evolutions
	db 1, KNIFE_THROW
	db 1, HONE_TOOLS
	db 5, FORESIGHT
	db 9, SPIKES
	db 13, BLADE_FLASH
	db 17, FLAME_CHARGE
	db 21, DISABLE
	db 25, GLARE
	db 30, SPIRIT_SWEEP
	db 33, SLASH
	db 37, DRAIN_PUNCH
	db -1 ; no more level-up moves

YumekoEvosAttacks:
	db -1 ; no more evolutions
	db 1, KNIFE_THROW
	db 1, HONE_TOOLS
	db 41, TAILWIND
	db 44, FIRE_PUNCH
	db 47, BATON_PASS
	db 50, BATTLE_CHANT
	db 53, BRAVER
	db 56, HELLBLAZE
	db -1 ; no more level-up moves

CShinkiEvosAttacks:
	evo_data EVOLVE_LEVEL, 38, SHINKI
	db -1 ; no more evolutions
	db 1, PSYSHOT
	db 1, ENDURE
	db 6, ABSORB
	db 11, ACID
	db 15, BARRIER
	db 18, SLEEP_POWDER
	db 21, HOLY_FLAME
	db 25, BLACK_RIPPLE
	db 29, TELEPORT
	db 33, HAZE
	db 37, THUNDER_WAVE 
	db -1 ; no more level-up moves

ShinkiEvosAttacks:
	db -1 ; no more evolutions
	db 1, PSYSHOT
	db 1, ENDURE
	db 41, ENERGY_BALL
	db 45, DARK_PULSE
	db 48, PROTECT
	db 51, DREAM_EATER
	db 54, SACRED_FIRE
	db 57, HELLBLAZE 
	db -1 ; no more level-up moves

CRumiaEvosAttacks:
	evo_data EVOLVE_LEVEL, 28, RUMIA
	evo_data EVOLVE_ITEM, DUSK_STONE, ARUMIA
	db -1 ; no more evolutions
	db 1, LICK
	db 1, GROWL
	db 6, SCRATCH
	db 9, BITE
	db 14, TRICK
	db 17, GLARE
	db 21, BLACK_RIPPLE
	db 25, MEAN_LOOK
	db -1 ; no more level-up moves

RumiaEvosAttacks:
	db -1 ; no more evolutions
	db 1, LICK
	db 1, GROWL
	db 29, HAZE
	db 32, RAPID_SPIN
	db 35, AVARICE_BITE
	db 38, LIFE_BALANCE
	db 41, CONFUSE_RAY
	db 44, SUCKER_PUNCH
	db 47, POWER_BITE
	db 50, TOXIC
	db 53, HELLBLAZE
	db 56, THRASH
	db -1 ; no more level-up moves

ARumiaEvosAttacks:
	db -1 ; no more evolutions
	db 1, LICK
	db 1, GROWL
	db 29, HAZE
	db 32, BLADE_FLASH
	db 35, BATTLE_CHANT
	db 38, LIFE_BALANCE
	db 41, CONFUSE_RAY
	db 44, NIGHT_SLASH
	db 47, SLASH
	db 50, TOXIC
	db 53, HELLBLAZE
	db 56, THRASH
	db -1 ; no more level-up moves

CDaichanEvosAttacks:
	evo_data EVOLVE_LEVEL, 30, DAICHAN
	evo_data EVOLVE_ITEM, LEAF_STONE, DDAICHAN
	db -1 ; no more evolutions
	db 1, VINE_WHIP
	db 1, GROWL
	db 6, SLEEP_POWDER
	db 10, DISARM_VOICE
	db 14, RAZOR_LEAF
	db 18, GROWTH
	db 21, SPORE
	db 25, DRAINING_KISS
	db 29, SEED_BOMB
	db -1 ; no more level-up moves

DaichanEvosAttacks:
	db -1 ; no more evolutions
	db 1, VINE_WHIP
	db 1, GROWL
	db 32, LIGHT_SCREEN
	db 35, FLOWER_SHOOT
	db 38, HEADBUTT
	db 41, REST
	db 44, HEAL_BELL
	db 47, LEAF_STORM
	db 50, MOONBLAST
	db 53, FRESH_SNACK
	db 56, AEROBLAST
	db -1 ; no more level-up moves

DDaichanEvosAttacks:
	db -1 ; no more evolutions
	db 1, VINE_WHIP
	db 1, GROWL
	db 32, REFLECT
	db 35, POWER_WHIP
	db 38, GIGA_DRAIN
	db 41, REST
	db 44, HEAL_BELL
	db 47, AURA_WAVE
	db 50, MOONBLAST
	db 53, FRESH_SNACK
	db 56, AEROBLAST
	db -1 ; no more level-up moves

CCirnoEvosAttacks:
	evo_data EVOLVE_LEVEL, 30, CIRNO
	evo_data EVOLVE_ITEM, WATER_STONE, SCIRNO
	db -1 ; no more evolutions
	db 1, ICE_SHARD
	db 1, TACKLE
	db 7, LEER
	db 11, SCARY_FACE
	db 15, WATER_GUN
	db 19, ICY_WIND
	db 23, HAZE
	db 26, ENCORE
	db -1 ; no more level-up moves

CirnoEvosAttacks:
	evo_data EVOLVE_LEVEL, 36, SCIRNO
	db -1 ; no more evolutions
	db 1, ICE_SHARD
	db 1, TACKLE
	db 31, ACROBATICS
	db 34, ICICLE_SPEAR
	db 37, ICE_PUNCH
	db 40, HAIL
	db 43, AMNESIA
	db 46, AIR_SLASH
	db 49, AVALANCHE
	db 52, BLIZZARD
	db 55, PLAY_ROUGH
	db -1 ; no more level-up moves

SCirnoEvosAttacks:
	db -1 ; no more evolutions
	db 1, ICE_SHARD
	db 1, TACKLE
	db 31, AQUAHAMMER
	db 34, BODY_SLAM
	db 37, ICE_PUNCH
	db 40, HAIL
	db 43, AMNESIA
	db 46, AQUA_CUT
	db 49, AVALANCHE
	db 52, BLIZZARD
	db 55, PLAY_ROUGH
	db -1 ; no more level-up moves

CMeilingEvosAttacks:
	evo_data EVOLVE_LEVEL, 32, MEILING
	evo_data EVOLVE_ITEM, LEAF_STONE, AMEILING
	db -1 ; no more evolutions
	db 1, KARATE_CHOP
	db 1, FORESIGHT
	db 7, SAFEGUARD
	db 11, LOW_KICK
	db 15, COUNTER
	db 20, TENSION_KICK
	db 23, BULK_UP
	db 27, ROCK_BLAST
	db 31, DRAIN_PUNCH
	db -1 ; no more level-up moves

MeilingEvosAttacks:
	db -1 ; no more evolutions
	db 1, KARATE_CHOP
	db 1, FORESIGHT
	db 35, TAILWIND
	db 38, AURA_SPHERE
	db 41, POWER_TRICK
	db 44, SWAGGER
	db 47, CROSS_CHOP
	db 50, PLAY_ROUGH
	db 53, SUBSTITUTE
	db 56, HEAT_SMASH
	db -1 ; no more level-up moves

AMeilingEvosAttacks:
	db -1 ; no more evolutions
	db 1, KARATE_CHOP
	db 35, TAILWIND
	db 38, ENERGY_BALL
	db 41, POWER_TRICK
	db 44, SWAGGER
	db 47, COLOR_FIST
	db 50, PROTECT
	db 53, STEEL_FIST
	db 56, HOLY_CHARGE
	db -1 ; no more level-up moves

CKoakumaEvosAttacks:
	evo_data EVOLVE_LEVEL, 34, KOAKUMA
	evo_data EVOLVE_ITEM, SHINY_STONE, HKOAKUMA
	db -1 ; no more evolutions
	db 1, PSYSHOT
	db 1, CONFUSE_RAY
	db 6, CHARM
	db 10, GUST
	db 13, TELEPORT
	db 17, PSYBEAM
	db 21, TRICK
	db 28, HYPNOSIS
	db 32, AIR_SLASH
	db -1 ; no more level-up moves

KoakumaEvosAttacks:
	db -1 ; no more evolutions
	db 1, PSYSHOT
	db 1, CONFUSE_RAY
	db 35, MANA_BURST
	db 38, LIGHT_SCREEN
	db 38, REFLECT
	db 41, DARK_PULSE
	db 44, EXTREMESPEED
	db 47, DESTINY_BOND
	db 50, LIFE_BALANCE
	db 53, DREAM_EATER
	db 56, ENERGY_BALL
	db -1 ; no more level-up moves

HKoakumaEvosAttacks:
	db -1 ; no more evolutions
	db 1, PSYSHOT
	db 1, CONFUSE_RAY
	db 35, MANA_BURST
	db 38, LIGHT_SCREEN
	db 38, REFLECT
	db 41, DARK_PULSE
	db 44, SWIFT
	db 47, SAFEGUARD
	db 50, SUBSTITUTE
	db 53, DREAM_EATER
	db 56, ANCIENTPOWER
	db -1 ; no more level-up moves

CPatchouliEvosAttacks:
	evo_data EVOLVE_LEVEL, 34, PATCHOULI
	evo_data EVOLVE_ITEM, SHINY_STONE, TPATCHOULI
	db -1 ; no more evolutions
	db 1, PSYSHOT
	db 1, CONVERSION
	db 6, EMBER
	db 9, WATER_GUN
	db 13, ROCK_BULLET
	db 17, TRICK
	db 20, CONFUSE_RAY
	db 24, PSYBEAM
	db 27, SUNNY_DAY
	db 30, RAIN_DANCE
	db 33, SANDSTORM
	db -1 ; no more level-up moves

PatchouliEvosAttacks:
	db -1 ; no more evolutions
	db 1, PSYSHOT
	db 1, CONVERSION
	db 6, EMBER
	db 35, FLASH
	db 38, BARRIER
	db 41, MANA_BURST
	db 44, HELLBLAZE
	db 47, HYDRO_PUMP
	db 50, EARTH_POWER
	db 53, FIVEELEMENTS
	db 56, FLASH_CANNON
	db 59, FUTURE_SIGHT
	db -1 ; no more level-up moves

TPatchouliEvosAttacks:
	db -1 ; no more evolutions
	db 1, PSYSHOT
	db 1, CONVERSION
	db 35, HYPNOSIS
	db 38, BARRIER
	db 41, DREAM_EATER
	db 44, HELLBLAZE
	db 47, HYDRO_PUMP
	db 50, STONE_RISE
	db 53, FIVEELEMENTS
	db 56, ENIGMA_BURST
	db 59, FUTURE_SIGHT
	db -1 ; no more level-up moves

CRemiliaEvosAttacks:
	evo_data EVOLVE_LEVEL, 38, REMILIA
	evo_data EVOLVE_ITEM, MOON_STONE, SREMILIA
	db -1 ; no more evolutions
	db 1, PURSUIT
	db 1, GLARE
	db 7, GUST
	db 11, BITE
	db 14, ROAR
	db 17, TRICK
	db 21, AERIAL_ACE
	db 25, FEINT_ATTACK
	db 32, BULK_UP
	db 35, HAZE
	db -1 ; no more level-up moves

RemiliaEvosAttacks:
	db -1 ; no more evolutions
	db 1, PURSUIT
	db 1, GLARE
	db 39, LEECH_LIFE
	db 42, POWER_BITE
	db 45, AIR_SLASH
	db 48, WILL_O_WISP
	db 51, MEAN_LOOK
	db 54, ULTICHARGE
	db 57, EXTREMESPEED
	db 60, AVARICE_BITE
	db -1 ; no more level-up moves

SRemiliaEvosAttacks:
	db -1 ; no more evolutions
	db 1, PURSUIT
	db 1, GLARE
	db 7, GUST
	db 39, LEECH_LIFE
	db 42, POWER_BITE
	db 45, DOUBLE_EDGE
	db 48, WILL_O_WISP
	db 51, MEAN_LOOK
	db 54, ULTICHARGE
	db 57, SLASH
	db 60, AVARICE_BITE
	db -1 ; no more level-up moves

CFlandreEvosAttacks:
	evo_data EVOLVE_LEVEL, 40, FLANDRE
	evo_data EVOLVE_ITEM, FIRE_STONE, AFLANDRE
	db -1 ; no more evolutions
	db 1, PURSUIT
	db 1, GLARE
	db 7, EMBER
	db 11, BITE
	db 14, ROAR
	db 17, TRICK
	db 21, FLAME_CHARGE
	db 25, FEINT_ATTACK
	db 32, BULK_UP
	db 35, HAZE
	db 39, LEECH_LIFE
	db -1 ; no more level-up moves

FlandreEvosAttacks:
	db -1 ; no more evolutions
	db 1, PURSUIT
	db 1, GLARE
	db 43, AVARICE_BITE
	db 46, THUNDERBOLT
	db 49, THUNDER_WAVE
	db 52, TAILWIND
	db 55, WILD_CHARGE
	db 58, POWER_BITE
	db -1 ; no more level-up moves

AFlandreEvosAttacks:
	db -1 ; no more evolutions
	db 1, PURSUIT
	db 1, GLARE
	db 43, AVARICE_BITE
	db 46, CRASH_CROSS
	db 49, SMOKESCREEN
	db 52, WILL_O_WISP
	db 55, HEAT_SMASH
	db 58, ULTICHARGE
	db -1 ; no more level-up moves

CLettyEvosAttacks:
	evo_data EVOLVE_LEVEL, 28, LETTY
	evo_data EVOLVE_ITEM, ICE_STONE, DLETTY
	db -1 ; no more evolutions
	db 1, ASTONISH
	db 1, SING
	db 7, ICE_SHARD
	db 11, HAIL
	db 15, SONIC_BOOM
	db 18, BARRIER
	db 22, REFLECT
	db 26, SPIRIT_SWEEP
	db -1 ; no more level-up moves

LettyEvosAttacks:
	db -1 ; no more evolutions
	db 1, ASTONISH
	db 1, SING
	db 30, SHADOW_DANCE
	db 33, TRICK
	db 36, GROWTH
	db 39, ICE_BEAM
	db 42, SHADOW_HIT
	db 45, ENIGMA_BURST
	db 48, CURSE
	db 51, REST
	db 54, CURSE_THORN
	db 57, AVALANCHE
	db 60, BLIZZARD
	db -1 ; no more level-up moves

DLettyEvosAttacks:
	db -1 ; no more evolutions
	db 1, ASTONISH
	db 1, SING
	db 30, SHADOW_DANCE
	db 33, LIGHT_SCREEN
	db 36, GROWTH
	db 39, ICICLE_CRASH
	db 42, SPIRIT_VOICE
	db 45, ENIGMA_BURST
	db 48, CURSE
	db 51, SLEEP_POWDER
	db 54, CURSE_THORN
	db 57, AURA_WAVE
	db 60, BLIZZARD
	db -1 ; no more level-up moves

CChenEvosAttacks:
	evo_data EVOLVE_LEVEL, 30, CCHEN
	evo_data EVOLVE_ITEM, SUN_STONE, HCHEN
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, TRICK
	db 6, SCRATCH
	db 10, RAPID_SPIN
	db 14, ROAR
	db 17, LEER
	db 21, HEADBUTT
	db 24, SWIFT
	db 28, BULK_UP
	db -1 ; no more level-up moves

ChenEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, TRICK
	db 32, SCREECH
	db 35, SLASH
	db 38, DIG
	db 41, HEAT_CLAW
	db 44, TAILWIND
	db 47, ENDURE
	db 50, BATTLE_CHANT
	db 53, EXTREMESPEED
	db 56, DOUBLE_EDGE
	db -1 ; no more level-up moves

HChenEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, TRICK
	db 32, SCREECH
	db 35, SLASH
	db 38, ENIGMA_BURST
	db 41, VOICE_BIND
	db 44, DOUBLE_TEAM
	db 47, TRICK_ROOM
	db 50, NIGHT_SLASH
	db 53, HOLY_CHARGE
	db 56, DOUBLE_EDGE
	db -1 ; no more level-up moves

CLilyWhiteEvosAttacks:
	evo_data EVOLVE_LEVEL, 34, LILYWHITE
	evo_data EVOLVE_ITEM, SHINY_STONE, DLILYWHITE
	db -1 ; no more evolutions
	db 1, ABSORB
	db 1, LEER
	db 7, SLEEP_POWDER
	db 11, DOUBLE_SLAP
	db 15, DISARM_VOICE
	db 19, SING
	db 23, BARRIER
	db 27, RAZOR_LEAF
	db 31, STUN_SPORE
	db -1 ; no more level-up moves

LilyWhiteEvosAttacks:
	db -1 ; no more evolutions
	db 1, ABSORB
	db 1, LEER
	db 7, SLEEP_POWDER
	db 11, DOUBLE_SLAP
	db 15, DISARM_VOICE
	db 19, SING
	db 23, BARRIER
	db 27, RAZOR_LEAF
	db 31, STUN_SPORE
	db 35, DRAINING_KISS
	db 38, SPORE
	db 41, DIZZY_PUNCH
	db 44, SEED_BOMB
	db 47, LEECH_SEED
	db 50, MOONBLAST
	db 53, STEEL_WING
	db 56, LEAF_STORM
	db -1 ; no more level-up moves

DLilyWhiteEvosAttacks:
	db -1 ; no more evolutions
	db 1, ABSORB
	db 1, LEER
	db 7, SLEEP_POWDER
	db 11, DOUBLE_SLAP
	db 15, DISARM_VOICE
	db 19, SING
	db 23, BARRIER
	db 27, RAZOR_LEAF
	db 31, STUN_SPORE
	db 35, LEAF_SNIP
	db 38, REFLECT
	db 41, DIZZY_PUNCH
	db 44, TAKE_DOWN
	db 47, HEAL_BELL
	db 50, MOONBLAST
	db 53, AURA_WAVE
	db 56, ENERGY_LIGHT
	db -1 ; no more level-up moves

CLilyBlackEvosAttacks:
	evo_data EVOLVE_LEVEL, 34, LILYBLACK
	evo_data EVOLVE_ITEM, DUSK_STONE, SLILYBLACK
	db -1 ; no more evolutions
	db 1, ABSORB
	db 1, LEER
	db 7, SLEEP_POWDER
	db 11, PURSUIT
	db 15, BLACK_RIPPLE
	db 19, SING
	db 23, BARRIER
	db 27, RAZOR_LEAF
	db 31, STUN_SPORE
	db -1 ; no more level-up moves

LilyBlackEvosAttacks:
	db -1 ; no more evolutions
	db 1, ABSORB
	db 1, LEER
	db 7, SLEEP_POWDER
	db 11, PURSUIT
	db 15, BLACK_RIPPLE
	db 19, SING
	db 23, BARRIER
	db 27, RAZOR_LEAF
	db 31, STUN_SPORE
	db 35, LEAF_SNIP
	db 38, GLARE
	db 41, KNOCK_OFF
	db 44, LEECH_LIFE
	db 47, NASTY_PLOT
	db 50, DARK_PULSE
	db 53, ENIGMA_BURST
	db 56, SEED_BOMB
	db -1 ; no more level-up moves

SLilyBlackEvosAttacks:
	db -1 ; no more evolutions
	db 1, ABSORB
	db 1, LEER
	db 7, SLEEP_POWDER
	db 11, PURSUIT
	db 15, BLACK_RIPPLE
	db 19, SING
	db 23, BARRIER
	db 27, RAZOR_LEAF
	db 31, STUN_SPORE
	db 35, GIGA_DRAIN
	db 38, SUPERSONIC
	db 41, FEINT_ATTACK
	db 44, SUCKER_PUNCH
	db 47, CURSE
	db 50, DARK_PULSE
	db 53, EXTRASENSORY
	db 56, FLOWER_SHOOT
	db -1 ; no more level-up moves

CLyricaEvosAttacks:
	evo_data EVOLVE_LEVEL, 34, LYRICA
	evo_data EVOLVE_ITEM, SHINY_STONE, TLYRICA
	db -1 ; no more evolutions
	db 1, ASTONISH
	db 1, SING
	db 7, THUNDERSHOCK
	db 12, TRICK
	db 16, CURSE
	db 20, U_TURN
	db 25, SWIFT
	db 29, SPIRIT_VOICE
	db 33, CONFUSE_RAY
	db -1 ; no more level-up moves

LyricaEvosAttacks:
	db -1 ; no more evolutions
	db 1, ASTONISH
	db 1, SING
	db 7, THUNDERSHOCK
	db 12, TRICK
	db 16, CURSE
	db 20, U_TURN
	db 25, SWIFT
	db 29, SPIRIT_VOICE
	db 33, CONFUSE_RAY
	db 37, VOLT_SWITCH
	db 40, THUNDER_WAVE
	db 43, MANA_BURST
	db 46, HEALINGLIGHT
	db 49, ZAP_CANNON
	db 52, SHADOW_DANCE
	db 55, SHADOW_FORCE
	db 58, POWER_BEAM
	db -1 ; no more level-up moves

TLyricaEvosAttacks:
	db -1 ; no more evolutions
	db 1, ASTONISH
	db 1, SING
	db 7, THUNDERSHOCK
	db 12, TRICK
	db 16, CURSE
	db 20, U_TURN
	db 25, SWIFT
	db 29, SPIRIT_VOICE
	db 33, CONFUSE_RAY
	db 37, FLASH_CANNON
	db 40, TAILWIND
	db 43, DESTINY_BOND
	db 46, HEALINGLIGHT
	db 49, THUNDERBOLT
	db 52, SPIRIT_SWEEP
	db 55, SHADOW_FORCE
	db 58, POWER_BEAM
	db -1 ; no more level-up moves

CMerlinEvosAttacks:
	evo_data EVOLVE_LEVEL, 34, MERLIN
	evo_data EVOLVE_ITEM, SUN_STONE, SMERLIN
	db -1 ; no more evolutions
	db 1, ASTONISH
	db 1, SING
	db 7, EMBER
	db 12, TRICK
	db 16, CURSE
	db 20, FIRE_SPIN
	db 25, SUNNY_DAY
	db 29, SPIRIT_VOICE
	db 33, CONFUSE_RAY
	db -1 ; no more level-up moves

MerlinEvosAttacks:
	db -1 ; no more evolutions
	db 1, ASTONISH
	db 1, SING
	db 7, EMBER
	db 12, TRICK
	db 16, CURSE
	db 20, FIRE_SPIN
	db 25, SUNNY_DAY
	db 29, SPIRIT_VOICE
	db 33, CONFUSE_RAY
	db 37, FIRE_BREATH
	db 40, WILL_O_WISP
	db 43, MANA_BURST
	db 46, HEALINGLIGHT
	db 49, HELLBLAZE
	db 52, SHADOW_DANCE
	db 55, SHADOW_FORCE
	db 58, HEAT_SMASH
	db -1 ; no more level-up moves

SMerlinEvosAttacks:
	db -1 ; no more evolutions
	db 1, ASTONISH
	db 1, SING
	db 7, EMBER
	db 12, TRICK
	db 16, CURSE
	db 20, FIRE_SPIN
	db 25, SUNNY_DAY
	db 29, SPIRIT_VOICE
	db 33, CONFUSE_RAY
	db 37, FLAME_HIT
	db 40, WILL_O_WISP
	db 43, SACRED_FIRE
	db 46, HEALINGLIGHT
	db 49, HELLBLAZE
	db 52, SHADOW_DANCE
	db 55, CURSE_THORN
	db 58, HEAT_SMASH
	db -1 ; no more level-up moves

CLunasaEvosAttacks:
	evo_data EVOLVE_LEVEL, 34, LUNASA
	evo_data EVOLVE_ITEM, MOON_STONE, ALUNASA
	db -1 ; no more evolutions
	db 1, ASTONISH
	db 1, SING
	db 7, PURSUIT
	db 12, TRICK
	db 16, CURSE
	db 20, FEINT_ATTACK
	db 25, GLARE
	db 29, SPIRIT_VOICE
	db 33, CONFUSE_RAY
	db -1 ; no more level-up moves

LunasaEvosAttacks:
	db -1 ; no more evolutions
	db 1, ASTONISH
	db 1, SING
	db 7, PURSUIT
	db 12, TRICK
	db 16, CURSE
	db 20, FEINT_ATTACK
	db 25, GLARE
	db 29, SPIRIT_VOICE
	db 33, CONFUSE_RAY
	db 37, LEECH_LIFE
	db 40, WILL_O_WISP
	db 43, SHADOW_HIT
	db 46, HEALINGLIGHT
	db 49, DARK_PULSE
	db 52, SHADOW_DANCE
	db 55, CURSE_THORN
	db 58, ULTICHARGE
	db -1 ; no more level-up moves

ALunasaEvosAttacks:
	db -1 ; no more evolutions
	db 1, ASTONISH
	db 1, SING
	db 7, PURSUIT
	db 12, TRICK
	db 16, CURSE
	db 20, FEINT_ATTACK
	db 25, GLARE
	db 29, SPIRIT_VOICE
	db 33, CONFUSE_RAY
	db 37, KNOCK_OFF
	db 40, NASTY_PLOT
	db 43, SHADOW_BALL
	db 46, HEALINGLIGHT
	db 49, BLACK_RIPPLE
	db 52, SHADOW_FORCE
	db 55, CURSE_THORN
	db 58, MOONBLAST
	db -1 ; no more level-up moves

CYuyukoEvosAttacks:
	evo_data EVOLVE_LEVEL, 38, YUYUKO
	evo_data EVOLVE_ITEM, LEAF_STONE, AYUYUKO
	db -1 ; no more evolutions
	db 1, LICK
	db 1, CHARM
	db 7, ABSORB
	db 11, CONFUSE_RAY
	db 14, DISABLE
	db 18, HEX
	db 22, RAZOR_LEAF
	db 26, ENERGY_LIGHT
	db 30, POWER_TRICK
	db 34, SPIRIT_VOICE
	db 37, SPIRIT_SWEEP
	db -1 ; no more level-up moves

YuyukoEvosAttacks:
	db -1 ; no more evolutions
	db 1, LICK
	db 1, CHARM
	db 7, ABSORB
	db 11, CONFUSE_RAY
	db 14, DISABLE
	db 18, HEX
	db 22, RAZOR_LEAF
	db 26, ENERGY_LIGHT
	db 30, POWER_TRICK
	db 34, SPIRIT_VOICE
	db 37, SPIRIT_SWEEP
	db 40, DRAINING_KISS
	db 43, HYPNOSIS
	db 46, DREAM_EATER
	db 49, LEAF_STORM
	db 52, HEAL_BELL
	db 55, DESTINY_BOND
	db 58, SHADOW_DANCE
	db 61, SACRED_FIRE
	db -1 ; no more level-up moves

AYuyukoEvosAttacks:
	db -1 ; no more evolutions
	db 1, LICK
	db 1, CHARM
	db 7, ABSORB
	db 11, CONFUSE_RAY
	db 14, DISABLE
	db 18, HEX
	db 22, RAZOR_LEAF
	db 26, ENERGY_LIGHT
	db 30, POWER_TRICK
	db 34, SPIRIT_VOICE
	db 37, SPIRIT_SWEEP
	db 40, FLASH_CANNON
	db 43, SAFEGUARD
	db 46, ENIGMA_BURST
	db 49, POWER_WHIP
	db 52, HEAL_BELL
	db 55, LIFE_BALANCE
	db 58, SHADOW_FORCE
	db 61, SACRED_FIRE
	db -1 ; no more level-up moves

CRanEvosAttacks:
	evo_data EVOLVE_LEVEL, 40, RAN
	evo_data EVOLVE_ITEM, SHINY_STONE, TRAN
	db -1 ; no more evolutions
	db 1, SCRATCH
	db 1, SUPERSONIC
	db 6, ROAR
	db 10, PSYSHOT
	db 14, SEAL_NEEDLE
	db 19, BARRIER
	db 23, CALM_MIND
	db 27, ENIGMA_BURST
	db 31, HEAT_CLAW
	db 35, LIGHT_SCREEN
	db 38, PSYBEAM
	db -1 ; no more level-up moves

RanEvosAttacks:
	db -1 ; no more evolutions
	db 1, SCRATCH
	db 1, SUPERSONIC
	db 6, ROAR
	db 10, PSYSHOT
	db 14, SEAL_NEEDLE
	db 19, BARRIER
	db 23, CALM_MIND
	db 27, ENIGMA_BURST
	db 31, HEAT_CLAW
	db 35, LIGHT_SCREEN
	db 38, PSYBEAM
	db 42, SLASH
	db 45, DARK_PULSE
	db 48, REFLECT
	db 51, SAFEGUARD
	db 54, MANA_BURST
	db 58, SHADOW_FORCE
	db 61, DOUBLE_EDGE
	db -1 ; no more level-up moves

TRanEvosAttacks:
	db -1 ; no more evolutions
	db 1, SCRATCH
	db 1, SUPERSONIC
	db 6, ROAR
	db 10, PSYSHOT
	db 14, SEAL_NEEDLE
	db 19, BARRIER
	db 23, CALM_MIND
	db 27, ENIGMA_BURST
	db 31, HEAT_CLAW
	db 35, LIGHT_SCREEN
	db 38, PSYBEAM
	db 42, VOICE_BIND
	db 45, AURA_WAVE
	db 48, HYPNOSIS
	db 51, TRICK_ROOM
	db 54, DREAM_EATER
	db 58, ENERGY_BALL
	db 61, POWER_BITE
	db -1 ; no more level-up moves

CYukariEvosAttacks:
	evo_data EVOLVE_LEVEL, 42, YUKARI
	evo_data EVOLVE_ITEM, DUSK_STONE, TYUKARI
	db -1 ; no more evolutions
	db 1, PSYSHOT
	db 1, CONVERSION
	db 6, METRONOME
	db 11, FLASH
	db 15, HYPNOSIS
	db 18, FEINT_ATTACK
	db 22, PSYBEAM
	db 26, TELEPORT
	db 31, ENIGMA_BURST
	db 34, DREAM_EATER
	db 38, SHADOW_BALL
	db 41, NASTY_PLOT
	db -1 ; no more level-up moves

YukariEvosAttacks:
	db 1, PSYSHOT
	db 1, CONVERSION
	db 6, METRONOME
	db 11, FLASH
	db 15, HYPNOSIS
	db 18, FEINT_ATTACK
	db 22, PSYBEAM
	db 26, TELEPORT
	db 31, ENIGMA_BURST
	db 34, DREAM_EATER
	db 38, SHADOW_BALL
	db 41, NASTY_PLOT
	db 45, MANA_BURST
	db 48, BLACK_RIPPLE
	db 51, HAZE
	db 54, CONFUSE_RAY
	db 58, DARK_PULSE
	db 61, POWER_BEAM
	db 64, PSYSTRIKE
	db 67, ULTICHARGE
	db -1 ; no more level-up moves

TYukariEvosAttacks:
	db -1 ; no more evolutions
	db 1, PSYSHOT
	db 1, CONVERSION
	db 6, METRONOME
	db 11, FLASH
	db 15, HYPNOSIS
	db 18, FEINT_ATTACK
	db 22, PSYBEAM
	db 26, TELEPORT
	db 31, ENIGMA_BURST
	db 34, DREAM_EATER
	db 38, SHADOW_BALL
	db 41, NASTY_PLOT
	db 45, MANA_BURST
	db 48, NIGHT_SLASH
	db 51, REST
	db 54, POWER_TRICK
	db 58, DARK_PULSE
	db 61, HELLBLAZE
	db 64, PSYSTRIKE
	db 67, ULTICHARGE
	db -1 ; no more level-up moves

CSuikaEvosAttacks:
	evo_data EVOLVE_LEVEL, 36, SUIKA
	evo_data EVOLVE_ITEM, FIRE_STONE, TSUIKA
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, ROAR
	db 6, DOUBLE_SLAP
	db 10, EMBER
	db 13, BARRIER
	db 16, HAZE
	db 20, BITE
	db 24, BRICK_BREAK
	db 28, FRESH_SNACK
	db 32, STOMP
	db 35, TOXIC_SPORE
	db -1 ; no more level-up moves

SuikaEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, ROAR
	db 6, DOUBLE_SLAP
	db 10, EMBER
	db 13, BARRIER
	db 16, HAZE
	db 20, BITE
	db 24, BRICK_BREAK
	db 28, FRESH_SNACK
	db 32, STOMP
	db 35, TOXIC_SPORE
	db 39, FLAME_CHARGE
	db 42, FIRE_PUNCH
	db 45, WILL_O_WISP
	db 48, TAILWIND
	db 51, DOUBLE_EDGE
	db 54, THRASH
	db 57, HELLBLAZE
	db 60, HEAT_SMASH
	db -1 ; no more level-up moves

TSuikaEvosAttacks:
	db 1, TACKLE
	db 1, ROAR
	db 6, DOUBLE_SLAP
	db 10, EMBER
	db 13, BARRIER
	db 16, HAZE
	db 20, BITE
	db 24, BRICK_BREAK
	db 28, FRESH_SNACK
	db 32, STOMP
	db 35, TOXIC_SPORE
	db 39, POISON_JAB
	db 42, AVARICE_BITE
	db 45, TOXIC
	db 48, BELLY_DRUM
	db 51, DOUBLE_EDGE
	db 54, DYNAMICPUNCH
	db 57, GUNK_SHOT
	db 60, EXPLOSION
	db -1 ; no more level-up moves

CYoumuEvosAttacks:
	evo_data EVOLVE_LEVEL, 36, YOUMU
	evo_data EVOLVE_ITEM, DUSK_STONE, SYOUMU
	db -1 ; no more evolutions
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 7, ASTONISH
	db 11, DOUBLE_TEAM
	db 15, BLADE_FLASH
	db 19, PROTECT
	db 23, SUBSTITUTE
	db 27, NIGHT_SLASH
	db 31, SHADOW_HIT
	db 34, ENDURE
	db -1 ; no more level-up moves

YoumuEvosAttacks:
	db -1 ; no more evolutions
	db 37, HONE_TOOLS ; Sweet Scent → HGSS tutor move
	db 40, TENSION_KICK ; Light Screen → TM move
	db 43, SWORDS_DANCE
	db 46, FORESIGHT
	db 49, BATTLE_CHANT
	db 52, AIR_SLASH
	db 55, BRAVER
	db 58, REST
	db 61, AURA_SPHERE	
	db -1 ; no more level-up moves

SYoumuEvosAttacks:
	db -1 ; no more evolutions
	db 37, TAILWIND ; Sweet Scent → HGSS tutor move
	db 40, AQUA_CUT ; Light Screen → TM move
	db 43, SWORDS_DANCE
	db 46, CALM_MIND
	db 49, BATTLE_CHANT
	db 52, EXTREMESPEED
	db 55, FLAME_HIT
	db 58, SUPERSONIC
	db 61, ULTICHARGE	
	db -1 ; no more level-up moves

CReisenEvosAttacks:
	evo_data EVOLVE_LEVEL, 36, REISEN
	evo_data EVOLVE_ITEM, MOON_STONE, TREISEN
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 6, PSYSHOT
	db 10, CONFUSE_RAY
	db 13, HYPNOSIS
	db 17, PSYBEAM
	db 20, TELEPORT ; Flame Wheel → Defense Curl
	db 24, DISARM_VOICE ; Defense Curl → Flame Charge
	db 29, MEAN_LOOK
	db 32, DARK_PULSE
	db 35, CALM_MIND
	db -1 ; no more level-up moves

ReisenEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 38, MANA_BURST ; Flame Charge → TM move
	db 41, PROTECT ; Lava Plume → egg move
	db 44, TRICK_ROOM
	db 47, EXTRASENSORY
	db 50, TOXIC_SPORE
	db 53, CHARM
	db 56, SHADOW_BALL
	db -1 ; no more level-up moves

TReisenEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 38, MANA_BURST ; Flame Charge → TM move
	db 41, POWER_TRICK ; Lava Plume → egg move
	db 44, TRICK_ROOM
	db 47, FIVEELEMENTS
	db 50, SHADOW_HIT
	db 53, CHARM
	db 56, ENERGY_BALL
	db -1 ; no more level-up moves

CSanaeEvosAttacks:
	evo_data EVOLVE_LEVEL, 36, SANAE
	evo_data EVOLVE_ITEM, LEAF_STONE, DSANAE
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 6, GUST
	db 9, WATER_GUN
	db 14, SAFEGUARD
	db 19, SEAL_NEEDLE ; Ice Fang → egg move
	db 24, MEGA_DRAIN ; Flail → similar move
	db 27, RAIN_DANCE ; DSanae move
	db 31, FLASH_CANNON
	db 35, ICY_WIND
	db -1 ; no more level-up moves

SanaeEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 37, AIR_SLASH
	db 40, ENERGY_LIGHT ; Chip Away → HGSS tutor move
	db 43, WATERFALL
	db 46, HEALINGLIGHT
	db 49, AEROBLAST
	db 52, BARRIER
	db 55, LIGHT_SCREEN
	db 58, ENERGY_BALL
	db -1 ; no more level-up moves

DSanaeEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 37, MIRROR_COAT
	db 40, ENERGY_LIGHT ; Chip Away → HGSS tutor move
	db 43, HURRICANE
	db 46, HEALINGLIGHT
	db 49, HYDRO_PUMP
	db 52, TAILWIND
	db 55, REFLECT
	db 58, ENIGMA_BURST
	db -1 ; no more level-up moves

SentretEvosAttacks:
	evo_data EVOLVE_LEVEL, 15, FURRET
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT
	db 4, DEFENSE_CURL
	db 7, QUICK_ATTACK
	db 13, FURY_STRIKES ; Fury Swipes → similar move
	db 16, DIZZY_PUNCH ; Helping Hand → event move
	db 19, HEAT_CLAW ; Follow Me → HGSS tutor move
	db 25, HEADBUTT ; Slam → tutor move
	db 28, REST
	db 31, SUCKER_PUNCH
	db 36, AMNESIA
	db 39, BATON_PASS
	db 42, SLASH ; Me First → egg move
	db 47, VOICE_BIND
	db -1 ; no more level-up moves

FurretEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT
	db 1, LEAF_STORM ; evolution move
	db 4, DEFENSE_CURL
	db 7, QUICK_ATTACK
	db 13, FURY_STRIKES ; Fury Swipes → similar move
	db 17, DIZZY_PUNCH ; Helping Hand → event move
	db 21, HEAT_CLAW ; Follow Me → HGSS tutor move
	db 28, HEADBUTT ; Slam → tutor move
	db 32, REST
	db 36, SUCKER_PUNCH
	db 42, AMNESIA
	db 46, BATON_PASS
	db 50, SLASH ; Me First → egg move
	db 56, VOICE_BIND
	db -1 ; no more level-up moves

HoothootEvosAttacks:
	evo_data EVOLVE_LEVEL, 20, NOCTOWL
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, FORESIGHT
	db 4, HYPNOSIS
	db 7, PECK
	db 10, PSYSHOT
	db 13, NIGHT_SHADE ; Echoed Voice → event move
	db 16, HOLY_CHARGE
	db 19, HEX ; Psycho Shift → new move
	db 22, WING_ATTACK ; Lunacy_Eyes → egg move
	db 25, TAKE_DOWN
	db 28, REFLECT
	db 31, AIR_SLASH
	db 34, EXTRASENSORY ; Uproar → Lunacy_Eyes
	db 37, AURA_WAVE
	db 40, VOICE_BIND ; Moonblast → tutor move
	db 43, MOONBLAST ; Synchronoise → Moonblast
	db 46, DREAM_EATER
	db -1 ; no more level-up moves

NoctowlEvosAttacks:
	db -1 ; no more evolutions
	db 1, DREAM_EATER
	db 1, TACKLE
	db 1, GROWL
	db 1, FORESIGHT
	db 4, HYPNOSIS
	db 7, PECK
	db 10, PSYSHOT
	db 13, NIGHT_SHADE ; Echoed Voice → event move
	db 16, HOLY_CHARGE
	db 19, HEX ; Psycho Shift → new move
	db 23, WING_ATTACK ; Lunacy_Eyes → egg move
	db 27, TAKE_DOWN
	db 31, REFLECT
	db 35, AIR_SLASH
	db 39, EXTRASENSORY ; Uproar → Lunacy_Eyes
	db 43, AURA_WAVE
	db 47, VOICE_BIND ; Moonblast → tutor move
	db 51, MOONBLAST ; Synchronoise → Moonblast
	db 55, DREAM_EATER
	db -1 ; no more level-up moves

LedybaEvosAttacks:
	evo_data EVOLVE_LEVEL, 18, LEDIAN
	db -1 ; no more evolutions
	db 1, TACKLE
	db 5, SUPERSONIC
	db 8, SWIFT
	db 12, LIGHT_SCREEN
	db 12, REFLECT
	db 12, SAFEGUARD
	db 15, MACH_PUNCH
	db 19, BARRIER ; Silver Wind → event move
	db 22, DIZZY_PUNCH ; Comet Punch → new move
	db 26, BATON_PASS
	db 29, LEAF_STORM
	db 33, SPIRIT_VOICE
	db 36, AIR_SLASH
	db 40, DOUBLE_EDGE
	db -1 ; no more level-up moves

LedianEvosAttacks:
	db -1 ; no more evolutions
	db 1, SWORDS_DANCE ; evolution move
	db 1, TACKLE
	db 5, SUPERSONIC
	db 8, SWIFT
	db 12, LIGHT_SCREEN
	db 12, REFLECT
	db 12, SAFEGUARD
	db 15, MACH_PUNCH
	db 20, BARRIER ; Silver Wind → event move
	db 24, DIZZY_PUNCH ; Comet Punch → new move
	db 29, BATON_PASS
	db 33, LEAF_STORM
	db 38, SPIRIT_VOICE
	db 42, AIR_SLASH
	db 47, DOUBLE_EDGE
	db -1 ; no more level-up moves

SpinarakEvosAttacks:
	evo_data EVOLVE_LEVEL, 22, ARIADOS
	db -1 ; no more evolutions
	db 1, SEAL_NEEDLE
	db 1, WIRE_WEB
	db 1, WRAP ; Constrict → similar move
	db 5, ABSORB
	db 8, GLARE ; Infestation → new move
	db 12, SCARY_FACE
	db 15, NIGHT_SHADE
	db 19, GROWTH ; Shadow Sneak → event move
	db 22, FURY_STRIKES ; Fury Swipes → similar move
	db 26, SUCKER_PUNCH
	db 29, MEAN_LOOK ; Spider Web → similar move
	db 33, LEAF_STORM
	db 36, PIN_MISSILE
	db 40, MANA_BURST
	db 43, POISON_JAB
	db 47, LEECH_LIFE ; Cross Poison → TM move
	db 50, FEINT_ATTACK ; Sticky Web → new move
	db -1 ; no more level-up moves

AriadosEvosAttacks:
	db -1 ; no more evolutions
	db 1, LEAF_SNIP ; evolution move
	db 1, FOCUS_ENERGY
	db 1, SEAL_NEEDLE
	db 1, WIRE_WEB
	db 1, WRAP ; Constrict → similar move
	db 5, ABSORB
	db 8, GLARE ; Infestation → new move
	db 12, SCARY_FACE
	db 15, NIGHT_SHADE
	db 19, GROWTH ; Shadow Sneak → event move
	db 23, FURY_STRIKES ; Fury Swipes → similar move
	db 28, SUCKER_PUNCH
	db 32, MEAN_LOOK ; Spider Web → similar move
	db 37, LEAF_STORM
	db 41, PIN_MISSILE
	db 46, MANA_BURST
	db 50, POISON_JAB
	db 55, LEECH_LIFE ; Cross Poison → TM move
	db 58, FEINT_ATTACK ; Sticky Web → new move
	db -1 ; no more level-up moves

CrobatEvosAttacks:
	db -1 ; no more evolutions
	db 1, CRASH_CROSS ; evolution move
	db 1, SCREECH
	db 1, ABSORB
	db 1, AVARICE_BITE ; LGPE move
	db 5, SUPERSONIC
	db 7, ASTONISH
	db 11, BITE
	db 13, GUST ; Wing Attack → egg move
	db 17, CONFUSE_RAY
	db 19, WING_ATTACK ; Air Cutter → Wing Attack
	db 24, SWIFT
	db 27, HEAT_CLAW ; Poison Fang → HGSS tutor move
	db 32, MEAN_LOOK
	db 35, LEECH_LIFE
	db 40, HAZE
	db 43, VENOSHOCK
	db 48, AIR_SLASH
	db 51, AVARICE_BITE ; Quick Guard → new move
	db -1 ; no more level-up moves

ChinchouEvosAttacks:
	evo_data EVOLVE_LEVEL, 27, LANTURN
	db -1 ; no more evolutions
	db 1, WATER_GUN ; Bubble → Water Gun
	db 1, SUPERSONIC
	db 6, THUNDER_WAVE
	db 9, THUNDERSHOCK ; Electro Ball → new move
	db 12, BUBBLE_BEAM ; Water Gun → Bubble Beam
	db 17, CONFUSE_RAY
	db 20, WATER_PULSE ; Bubble Beam → TM move
	db 23, SPARK
	db 28, PSYBEAM ; Signal Beam → egg move
	db 31, REVERSAL ; Flail → similar move
	db 34, THUNDERBOLT ; Discharge → TM move
	db 39, TAKE_DOWN
	db 42, RECOVER ; Aqua Ring → similar move
	db 45, ICE_BEAM ; Hydro Pump → TM move
	db 47, HYDRO_PUMP ; Ion Deluge → Hydro Pump
	db 50, LIGHT_SCREEN ; Charge → event move
	db -1 ; no more level-up moves

LanturnEvosAttacks:
	db -1 ; no more evolutions
	db 1, WATER_GUN ; Bubble → Water Gun
	db 1, SUPERSONIC
	db 6, THUNDER_WAVE
	db 9, THUNDERSHOCK ; Electro Ball → new move
	db 12, BUBBLE_BEAM ; Water Gun → Bubble Beam
	db 17, CONFUSE_RAY
	db 20, WATER_PULSE ; Bubble Beam → TM move
	db 23, SPARK
	db 29, PSYBEAM ; Signal Beam → egg move
	db 33, REVERSAL ; Flail → similar move
	db 37, THUNDERBOLT ; Discharge → TM move
	db 43, TAKE_DOWN
	db 47, RECOVER ; Aqua Ring → similar move
	db 51, ICE_BEAM ; Hydro Pump → TM move
	db 54, HYDRO_PUMP ; Ion Deluge → Hydro Pump
	db 58, LIGHT_SCREEN ; Charge → event move
	db -1 ; no more level-up moves

PichuEvosAttacks:
	evo_data EVOLVE_HAPPINESS, TR_ANYTIME, KIKURI
	db -1 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, CHARM
	db 5, LEER ; Tail Whip → similar move
	db 10, SWEET_KISS
	db 13, NASTY_PLOT
	db 18, THUNDER_WAVE
	db 23, SCARY_FACE ; event move
	db 28, SING ; event move
	db 38, BATTLE_CHANT ; event move
	db -1 ; no more level-up moves

CleffaEvosAttacks:
	evo_data EVOLVE_HAPPINESS, TR_ANYTIME, CMEIRA
	db -1 ; no more evolutions
	db 1, SPLASH
	db 1, TACKLE ; Pound → similar move
	db 1, METRONOME ; Copycat → egg move
	db 4, SING
	db 8, SWEET_KISS
	db 12, DISARM_VOICE
	db 16, ENCORE
	db 20, CHARM
	db -1 ; no more level-up moves

IgglybuffEvosAttacks:
	evo_data EVOLVE_HAPPINESS, TR_ANYTIME, ELLEN
	db -1 ; no more evolutions
	db 1, SING
	db 1, TACKLE ; Pound → similar move
	db 1, DEFENSE_CURL ; Copycat → Defense Curl
	db 4, TREMORS ; Defense Curl → tutor move
	db 8, SWEET_KISS
	db 12, DISARM_VOICE
	db 16, DISABLE
	db 20, CHARM
	db -1 ; no more level-up moves

TogepiEvosAttacks:
	evo_data EVOLVE_HAPPINESS, TR_ANYTIME, TOGETIC
	db -1 ; no more evolutions
	db 1, GROWL
	db 1, CHARM
	db 5, METRONOME
	db 9, SWEET_KISS
	db 13, SING ; Yawn → similar move
	db 17, ENCORE
	db 21, DIZZY_PUNCH ; Follow Me → new move
	db 25, HEAL_BELL ; Bestow → HGSS tutor move
	db 29, FRESH_SNACK ; Wish → new move
	db 33, ANCIENTPOWER
	db 37, SAFEGUARD
	db 41, BATON_PASS
	db 45, DOUBLE_EDGE
	db 49, EXTRASENSORY ; Last Resort → egg move
	db 53, PLAY_ROUGH ; After You → Sw/Sh move
	db -1 ; no more level-up moves

TogeticEvosAttacks:
	evo_data EVOLVE_ITEM, SHINY_STONE, TOGEKISS
	db -1 ; no more evolutions
	db 1, GROWL
	db 1, CHARM
	db 1, DISARM_VOICE ; evolution move
	db 5, METRONOME
	db 9, SWEET_KISS
	db 13, SING ; Yawn → similar move
	db 17, ENCORE
	db 21, DIZZY_PUNCH ; Follow Me → new move
	db 25, HEAL_BELL ; Bestow → HGSS tutor move
	db 29, FRESH_SNACK ; Wish → new move
	db 33, ANCIENTPOWER
	db 37, SAFEGUARD
	db 41, BATON_PASS
	db 45, DOUBLE_EDGE
	db 49, EXTRASENSORY ; Last Resort → egg move
	db 53, PLAY_ROUGH ; After You → Sw/Sh move
	db -1 ; no more level-up moves

NatuEvosAttacks:
	evo_data EVOLVE_LEVEL, 25, XATU
	db -1 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 6, NIGHT_SHADE
	db 9, TELEPORT
	db 12, SAFEGUARD ; Lucky Chant → event move
	db 17, HYPNOSIS ; Stored Power → new move
	db 20, LIFE_BALANCE ; Ominous Wind → HGSS tutor move
	db 23, CONFUSE_RAY
	db 28, RECOVER ; Wish → similar move
	db 33, MANA_BURST
	db 36, AURA_WAVE ; Miracle Eye → egg move
	db 39, HAZE ; Psycho Shift → egg move
	db 44, FUTURE_SIGHT
	db 47, HEX ; Power Swap + Guard Swap → new move
	db 50, SUCKER_PUNCH ; Me First → HGSS tutor move
	db -1 ; no more level-up moves

XatuEvosAttacks:
	db -1 ; no more evolutions
	db 1, AIR_SLASH ; evolution move
	db 1, PECK
	db 1, LEER
	db 6, NIGHT_SHADE
	db 9, TELEPORT
	db 12, SAFEGUARD ; Lucky Chant → event move
	db 17, HYPNOSIS ; Stored Power → new move
	db 20, LIFE_BALANCE ; Ominous Wind → HGSS tutor move
	db 23, CONFUSE_RAY
	db 29, RECOVER ; Wish → similar move
	db 35, MANA_BURST
	db 39, AURA_WAVE ; Miracle Eye → egg move
	db 43, HAZE ; Psycho Shift → egg move
	db 49, FUTURE_SIGHT
	db 53, HEX ; Power Swap + Guard Swap → new move
	db 57, SUCKER_PUNCH ; Me First → HGSS tutor move
	db -1 ; no more level-up moves

MareepEvosAttacks:
	evo_data EVOLVE_LEVEL, 15, FLAAFFY
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, THUNDER_WAVE
	db 8, THUNDERSHOCK
	db 11, POISON_GAS ; Cotton Spore → GSC TM move
	db 15, SPARK ; Charge → new move
	db 18, HEAL_BELL ; Take Down → HGSS tutor move
	db 22, TAKE_DOWN ; Electro Ball → Take Down
	db 25, CONFUSE_RAY
	db 29, POWER_GEM
	db 32, THUNDERBOLT ; Discharge → TM move
	db 36, SAFEGUARD ; Cotton Guard → egg move
	db 39, ENERGY_LIGHT ; Signal Beam → new move
	db 43, LIGHT_SCREEN
	db 46, THUNDER
	db -1 ; no more level-up moves

FlaaffyEvosAttacks:
if DEF(FAITHFUL)
	evo_data EVOLVE_LEVEL, 30, AMPHAROS
else
	evo_data EVOLVE_LEVEL, 36, AMPHAROS
endc
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, THUNDER_WAVE
	db 8, THUNDERSHOCK
	db 11, POISON_GAS ; Cotton Spore → GSC TM move
	db 16, SPARK ; Charge → new move
	db 20, HEAL_BELL ; Take Down → HGSS tutor move
	db 25, TAKE_DOWN ; Electro Ball → Take Down
	db 29, CONFUSE_RAY
	db 34, POWER_GEM
	db 38, THUNDERBOLT ; Discharge → TM move
	db 43, SAFEGUARD ; Cotton Guard → egg move
	db 47, ENERGY_LIGHT ; Signal Beam → new move
	db 52, LIGHT_SCREEN
	db 56, THUNDER
	db -1 ; no more level-up moves

AmpharosEvosAttacks:
	db -1 ; no more evolutions
	db 1, THUNDERPUNCH ; evolution move
	db 1, FIRE_PUNCH
	db 1, ENIGMA_BURST
	db 1, TACKLE
	db 1, GROWL
	db 4, THUNDER_WAVE
	db 8, THUNDERSHOCK
	db 11, POISON_GAS ; Cotton Spore → GSC TM move
	db 16, SPARK ; Charge → new move
	db 20, HEAL_BELL ; Take Down → HGSS tutor move
	db 25, TAKE_DOWN ; Electro Ball → Take Down
	db 29, CONFUSE_RAY
	db 35, POWER_GEM
	db 40, THUNDERBOLT ; Discharge → TM move
	db 46, SAFEGUARD ; Cotton Guard → egg move
	db 51, ENERGY_LIGHT ; Signal Beam → new move
	db 57, LIGHT_SCREEN
	db 62, THUNDER
	db 65, ENIGMA_BURST
	db 71, FLAME_HIT ; HGSS tutor move
	db -1 ; no more level-up moves

BellossomEvosAttacks:
	db -1 ; no more evolutions
	db 1, MEGA_DRAIN
	db 1, HEAL_BELL ; new move
	db 1, SUNNY_DAY
	db 1, STUN_SPORE
	db 39, GROWTH ; Quiver Dance → Growth
	db 49, MOONBLAST ; Petal Blizzard → CKana move
	db 59, BATTLE_CHANT ; evolution move
	db 69, PLAY_ROUGH ; Leaf Storm → Sw/Sh move
	db -1 ; no more level-up moves

MarillEvosAttacks:
	evo_data EVOLVE_LEVEL, 18, AZUMARILL
	db -1 ; no more evolutions
	db 1, TACKLE
	db 2, GROWL ; Tail Whip → new move
	db 5, FORESIGHT ; Water Sport → egg move
	db 7, AQUA_JET ; Bubble → egg move
	db 10, DEFENSE_CURL
	db 10, TREMORS
	db 13, BUBBLE_BEAM
	db 16, DIZZY_PUNCH ; Helping Hand → event move
	db 20, AQUA_CUT
	db 23, PLAY_ROUGH
	db 28, SCARY_FACE ; Aqua Ring → event move
	db 31, RAIN_DANCE
	db 37, DOUBLE_EDGE
	db 40, COLOR_FIST ; Superpower → similar move
	db 47, HYDRO_PUMP
	db -1 ; no more level-up moves

AzumarillEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 2, GROWL ; Tail Whip → new move
	db 5, FORESIGHT ; Water Sport → egg move
	db 7, AQUA_JET ; Bubble → egg move
	db 10, DEFENSE_CURL
	db 10, TREMORS
	db 13, BUBBLE_BEAM
	db 16, DIZZY_PUNCH ; Helping Hand → event move
	db 21, AQUA_CUT
	db 25, PLAY_ROUGH
	db 31, SCARY_FACE ; Aqua Ring → event move
	db 35, RAIN_DANCE
	db 42, DOUBLE_EDGE
	db 46, COLOR_FIST ; Superpower → similar move
	db 55, HYDRO_PUMP
	db -1 ; no more level-up moves

SudowoodoEvosAttacks:
	db -1 ; no more evolutions
	db 1, SUBSTITUTE ; Copycat → event move
	db 5, REVERSAL ; Flail → similar move
	db 8, LOW_KICK
	db 12, LEER ; Rock Bullet → new move
	db 15, ROCK_BULLET ; Mimic → Rock Bullet
	db 19, FEINT_ATTACK
	db 22, ANCIENTPOWER ; Rock Tomb → new move
	db 26, SPIKES ; Block → SV TM move
	db 29, ROCK_SLIDE
	db 33, COUNTER
	db 36, SUCKER_PUNCH
	db 40, DOUBLE_EDGE
	db 43, STONE_RISE ; evolution move
	db 47, COLOR_FIST ; Hammer Arm → similar move
	db 50, IRON_HEAD ; Head Smash → tutor move
	db -1 ; no more level-up moves

PolitoedEvosAttacks:
	db -1 ; no more evolutions
	db 1, GIGA_DRAIN ; Bounce → TM move ; evolution move
	db 1, BUBBLE_BEAM
	db 1, HYPNOSIS
	db 1, DOUBLE_SLAP
	db 1, SHADOW_DANCE
	db 27, SWAGGER
	db 48, VOICE_BIND
	db -1 ; no more level-up moves

HoppipEvosAttacks:
	evo_data EVOLVE_LEVEL, 18, SKIPLOOM
	db -1 ; no more evolutions
	db 1, ABSORB
	db 1, SPLASH
	db 4, HEALINGLIGHT ; Synthesis → similar move
	db 6, DEFENSE_CURL; Tail Whip → tutor move
	db 8, TACKLE
	db 10, PSYSHOT ; Fairy Wind → egg move
	db 12, TOXIC_SPORE
	db 14, STUN_SPORE
	db 16, SLEEP_POWDER
	db 19, HEADBUTT ; Bullet Seed → tutor move
	db 22, LEECH_SEED
	db 25, MEGA_DRAIN
	db 28, ACROBATICS
	db 31, ENCORE ; Rage Powder → egg move
	db 34, LEAF_STORM ; Cotton Spore → GSC event move
	db 37, U_TURN
	db 40, AMNESIA ; Worry Seed → egg move
	db 43, GIGA_DRAIN
	db 46, ENERGY_LIGHT ; Bounce → TM move
	db 49, ENERGY_BALL ; Memento → TM move
	db -1 ; no more level-up moves

SkiploomEvosAttacks:
	evo_data EVOLVE_LEVEL, 27, JUMPLUFF
	db -1 ; no more evolutions
	db 1, ABSORB
	db 1, SPLASH
	db 4, HEALINGLIGHT ; Synthesis → similar move
	db 6, DEFENSE_CURL; Tail Whip → tutor move
	db 8, TACKLE
	db 10, PSYSHOT ; Fairy Wind → egg move
	db 12, TOXIC_SPORE
	db 14, STUN_SPORE
	db 16, SLEEP_POWDER
	db 20, HEADBUTT ; Bullet Seed → tutor move
	db 24, LEECH_SEED
	db 28, MEGA_DRAIN
	db 32, ACROBATICS
	db 36, ENCORE ; Rage Powder → egg move
	db 40, LEAF_STORM ; Cotton Spore → GSC event move
	db 44, U_TURN
	db 48, AMNESIA ; Worry Seed → egg move
	db 52, GIGA_DRAIN
	db 56, ENERGY_LIGHT ; Bounce → TM move
	db 60, ENERGY_BALL ; Memento → TM move
	db -1 ; no more level-up moves

JumpluffEvosAttacks:
	db -1 ; no more evolutions
	db 1, ABSORB
	db 1, SPLASH
	db 4, HEALINGLIGHT ; Synthesis → similar move
	db 6, DEFENSE_CURL; Tail Whip → tutor move
	db 8, TACKLE
	db 10, PSYSHOT ; Fairy Wind → egg move
	db 12, TOXIC_SPORE
	db 14, STUN_SPORE
	db 16, SLEEP_POWDER
	db 20, HEADBUTT ; Bullet Seed → tutor move
	db 24, LEECH_SEED
	db 29, MEGA_DRAIN
	db 34, ACROBATICS
	db 39, ENCORE ; Rage Powder → egg move
	db 44, LEAF_STORM ; Cotton Spore → GSC event move
	db 49, U_TURN
	db 54, AMNESIA ; Worry Seed → egg move
	db 59, GIGA_DRAIN
	db 64, ENERGY_LIGHT ; Bounce → TM move
	db 69, ENERGY_BALL ; nice, Memento → TM move
	db -1 ; no more level-up moves

AipomEvosAttacks:
	evo_data EVOLVE_MOVE, DOUBLE_SLAP, AMBIPOM
	db -1 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER ; Tail Whip → similar move
	db 4, POISON_GAS ; Sand Attack → similar move
	db 8, ASTONISH
	db 11, BATON_PASS
	db 15, THIEF ; Tickle → TM move
	db 18, FURY_STRIKES ; Fury Swipes → similar move
	db 22, SWIFT
	db 25, SCREECH
	db 29, LEAF_STORM
	db 32, DOUBLE_SLAP ; Double Hit → egg move
	db 36, ACROBATICS ; Fling → TM move
	db 39, NASTY_PLOT
	db 43, DOUBLE_EDGE ; Last Resort → tutor move
	db -1 ; no more level-up moves

SunkernEvosAttacks:
	evo_data EVOLVE_ITEM, SUN_STONE, SUNFLORA
	db -1 ; no more evolutions
	db 1, SPLASH ; Growth → Hoppip move
	db 1, ABSORB
	db 4, GROWTH ; Ingrain → Growth
	db 7, DEFENSE_CURL ; Grass Whistle → TM move
	db 10, MEGA_DRAIN
	db 13, LEECH_SEED
	db 16, RAZOR_LEAF
	db 19, PROTECT ; Worry Seed → TM move
	db 22, GIGA_DRAIN
	db 25, LEAF_STORM ; Endeavor → new move
	db 28, HEALINGLIGHT ; Synthesis → similar move
	db 31, EARTH_POWER ; Natural Gift → tutor move
	db 34, FLOWER_SHOOT
	db 37, DOUBLE_EDGE
	db 40, SUNNY_DAY
	db 43, SEED_BOMB
	db -1 ; no more level-up moves

SunfloraEvosAttacks:
	db -1 ; no more evolutions
	db 1, SPLASH ; Growth → Hoppip move
	db 1, TACKLE ; Pound → similar move
	db 1, ABSORB
if !DEF(FAITHFUL)
	db 1, EMBER ; evolution move
endc
	db 4, GROWTH ; Ingrain → Growth
	db 7, DEFENSE_CURL ; Grass Whistle → TM move
	db 10, MEGA_DRAIN
	db 13, LEECH_SEED
	db 16, RAZOR_LEAF
	db 19, PROTECT ; Worry Seed → TM move
	db 22, GIGA_DRAIN
	db 25, LEAF_STORM ; Bullet Seed → TM move
	db 28, BATTLE_CHANT
if DEF(FAITHFUL)
	db 31, EARTH_POWER ; Natural Gift → tutor move
else
	db 31, FIRE_BREATH ; Natural Gift → TM move
endc
	db 34, FLOWER_SHOOT
	db 37, DOUBLE_EDGE
	db 40, SUNNY_DAY
	db 43, SEED_BOMB ; Leaf Storm → Sunkern move
if !DEF(FAITHFUL)
	db 50, HELLBLAZE ; Petal Blizzard → TM move
endc
	db -1 ; no more level-up moves

YanmaEvosAttacks:
	evo_data EVOLVE_MOVE, ANCIENTPOWER, YANMEGA
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT
	db 1, LEAF_SNIP
	db 6, QUICK_ATTACK
	db 11, DOUBLE_TEAM
	db 14, SONIC_BOOM
	db 17, PROTECT ; Detect → similar move
	db 22, HOLY_FLAME ; Supersonic → new move
	db 27, SUPERSONIC ; Uproar → Supersonic
	db 30, PURSUIT
if DEF(FAITHFUL)
	db 33, ANCIENTPOWER
else
	db 35, ANCIENTPOWER
endc
	db 38, HYPNOSIS
	db 43, WING_ATTACK
	db 46, SCREECH
	db 49, U_TURN
	db 54, AIR_SLASH
	db 57, SPIRIT_VOICE
	db 62, DREAM_EATER ; event move
	db -1 ; no more level-up moves

WooperEvosAttacks:
	evo_data EVOLVE_LEVEL, 20, QUAGSIRE
	db -1 ; no more evolutions
	db 1, WATER_GUN
	db 1, LEER ; Tail Whip → similar move
	db 5, POISON_GAS ; Mud Sport → TM move
	db 9, SCARY_FACE ; Mud Shot → event move
	db 15, HEADBUTT ; Slam → tutor move
	db 19, RECOVER ; Mud Bomb → egg move
	db 23, AMNESIA
	db 29, BELLY_DRUM ; Yawn → event move
	db 33, EARTHQUAKE
	db 37, RAIN_DANCE
	db 43, HAZE
	db 47, AQUA_CUT ; Muddy Water → event move
	db -1 ; no more level-up moves



QuagsireEvosAttacks:
	db -1 ; no more evolutions
	db 1, ANCIENTPOWER ; evolution move
	db 1, WATER_GUN
	db 1, LEER ; Tail Whip → similar move
	db 5, POISON_GAS ; Mud Sport → TM move
	db 9, SCARY_FACE ; Mud Shot → event move
	db 15, HEADBUTT ; Slam → tutor move
	db 19, RECOVER ; Mud Bomb → egg move
	db 24, AMNESIA
	db 31, BELLY_DRUM ; Yawn → event move
	db 36, EARTHQUAKE
	db 41, RAIN_DANCE
	db 48, HAZE
	db 53, AQUA_CUT ; Muddy Water → event move
	db -1 ; no more level-up moves

EspeonEvosAttacks:
	db -1 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, LEER ; Tail Whip → similar move
	db 1, PSYSHOT ; evolution move
	db 5, POISON_GAS ; Sand Attack → similar move
	db 9, DOUBLE_KICK ; Baby-Doll Eyes → LGPE move
	db 13, QUICK_ATTACK
	db 17, SWIFT
	db 20, PSYBEAM
	db 25, FUTURE_SIGHT
	db 29, REFLECT ; Psych Up → event move
	db 33, HEALINGLIGHT ; Morning Sun → similar move
	db 37, MANA_BURST
	db 41, DOUBLE_EDGE ; Last Resort → tutor move
	db 45, POWER_GEM ; Power Swap → SV TM move
	db -1 ; no more level-up moves

UmbreonEvosAttacks:
	db -1 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, LEER ; Tail Whip → similar move
	db 1, PURSUIT ; evolution move
	db 5, POISON_GAS ; Sand Attack → similar move
	db 9, DOUBLE_KICK ; Baby-Doll Eyes → LGPE move
	db 13, QUICK_ATTACK
	db 17, CONFUSE_RAY
	db 20, FEINT_ATTACK
	db 25, TOXIC ; Assurance → TM move
	db 29, SCREECH
	db 33, HEALINGLIGHT ; Moonlight → similar move
	db 37, SUCKER_PUNCH ; Mean Look → tutor move
	db 41, DOUBLE_EDGE ; Last Resort → tutor move
	db 45, MEAN_LOOK ; Guard Swap → Mean Look
	db -1 ; no more level-up moves

MurkrowEvosAttacks:
	evo_data EVOLVE_ITEM, DUSK_STONE, HONCHKROW
	db -1 ; no more evolutions
	db 1, PECK
	db 1, ASTONISH
	db 5, PURSUIT
	db 11, HAZE
	db 15, WING_ATTACK
	db 21, NIGHT_SHADE
	db 25, THIEF ; Assurance → TM move
	db 31, SWAGGER ; Taunt → TM move
	db 35, FEINT_ATTACK
	db 41, MEAN_LOOK
	db 45, BATON_PASS ; Foul Play → XD move
	db 50, DRAGON_DRILL ; Tailwind → egg move
	db 55, SUCKER_PUNCH
	db 61, SHADOW_DANCE ; Torment → egg move
	db 65, DIVE_KICK ; Quash → egg move
	db -1 ; no more level-up moves

SlowkingEvosAttacks:
	db -1 ; no more evolutions
	db 1, POWER_GEM
	db 1, HIDDEN_POWER
	db 1, CURSE
	db 1, TACKLE
	db 5, GROWL
	db 9, WATER_GUN
	db 14, PSYSHOT
	db 19, DISABLE
	db 23, HEADBUTT
	db 28, WATER_PULSE
	db 32, HOLY_CHARGE
	db 36, NASTY_PLOT
	db 41, SWAGGER
	db 45, MANA_BURST
	db 49, RAIN_DANCE ; Trump Card → TM move
	db 54, BELLY_DRUM ; Psych Up → egg move
	db 58, RECOVER ; Heal Pulse → similar move
	db -1 ; no more level-up moves

MisdreavusEvosAttacks:
	evo_data EVOLVE_ITEM, DUSK_STONE, MISMAGIUS
	db -1 ; no more evolutions
	db 1, GROWL
	db 1, TELEPORT ; Psywave → new move
	db 1, DISARM_VOICE ; new move
	db 5, PSYSHOT ; Spite → new move
	db 10, ASTONISH
	db 14, CONFUSE_RAY
	db 19, MEAN_LOOK
	db 23, HEX
	db 28, PSYBEAM
	db 32, LIFE_BALANCE
	db 37, DESTINY_BOND ; Payback → egg move
	db 41, SHADOW_BALL
	db 46, SHADOW_DANCE
	db 50, ENERGY_LIGHT ; Grudge → TM move
	db 55, POWER_GEM
	db 62, NASTY_PLOT ; egg move
	db -1 ; no more level-up moves

UnownEvosAttacks:
	db -1 ; no more evolutions
	db 1, HIDDEN_POWER
	db -1 ; no more level-up moves

WobbuffetEvosAttacks:
	db -1 ; no more evolutions
	db 1, SPLASH
	db 1, CHARM
	db 1, ENCORE
	db 1, AMNESIA
	db 1, RECOVER ; evolve move
	db 1, COUNTER
	db 1, MIRROR_COAT
	db 1, SAFEGUARD
	db 1, DESTINY_BOND
	db -1 ; no more level-up moves

GirafarigEvosAttacks:
	evo_data EVOLVE_MOVE, HOLY_CHARGE, FARIGIRAF
FarigirafEvosAttacks:
	db -1 ; no more evolutions
	db 1, ASTONISH
	db 1, TACKLE
	db 1, GROWL
	db 1, PSYSHOT
	db 5, FORESIGHT ; Odor Sleuth → egg move
	db 10, PURSUIT ; Assurance → new move
	db 14, STOMP
	db 19, PSYBEAM
	db 23, LEAF_STORM
	db 28, DOUBLE_KICK ; Double Hit → egg move
	db 32, HOLY_CHARGE
	db 37, AVARICE_BITE
	db 41, BATON_PASS
	db 46, NASTY_PLOT
	db 50, MANA_BURST
if !DEF(FAITHFUL)
	db 55, DARK_PULSE ; new move
endc
	db -1 ; no more level-up moves

PinecoEvosAttacks:
	evo_data EVOLVE_LEVEL, 31, FORRETRESS
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, PROTECT
	db 6, FOCUS_ENERGY ; Self-Destruct → TCG move
	db 9, LEAF_SNIP
	db 12, SUBSTITUTE ; Take Down → event move
	db 17, RAPID_SPIN
	db 20, DEFENSE_CURL ; Bide → TM move
	db 23, TAKE_DOWN ; Natural Gift → Take Down
	db 28, SPIKES
	db 31, REVERSAL ; Payback → new move
	db 34, EXPLOSION
	db 39, REFLECT ; Iron Defense → egg move
	db 42, GYRO_BALL
	db 45, DOUBLE_EDGE
	db -1 ; no more level-up moves

ForretressEvosAttacks:
	db -1 ; no more evolutions
	db 1, FLASH_CANNON ; Mirror Shot → TM move ; evolution move
	db 1, LEAF_STORM ; Autotomize → similar move
	db 1, POISON_NAIL
	db 1, TACKLE
	db 1, PROTECT
	db 6, FOCUS_ENERGY ; Self-Destruct → TCG move
	db 9, LEAF_SNIP
	db 12, SUBSTITUTE ; Take Down → event move
	db 17, RAPID_SPIN
	db 20, DEFENSE_CURL ; Bide → TM move
	db 23, TAKE_DOWN ; Natural Gift → Take Down
	db 28, SPIKES
	db 32, REVERSAL ; Payback → new move
	db 36, EXPLOSION
	db 42, REFLECT ; Iron Defense → egg move
	db 46, GYRO_BALL
	db 50, DOUBLE_EDGE
	db 56, ZAP_CANNON
	db 60, IRON_HEAD ; Heavy Slam → new move
	db -1 ; no more level-up moves

DunsparceEvosAttacks:
	evo_data EVOLVE_LEVEL, 32, DUDUNSPARCE, NO_FORM ; preserve pre-evo form
	db -1 ; no more evolutions
	db 1, RAGE
	db 1, DEFENSE_CURL
	db 3, TREMORS
	db 6, ASTONISH ; Spite → egg move
	db 8, PURSUIT
	db 11, SCREECH
	db 13, POISON_GAS
	db 16, FURY_STRIKES ; Yawn → event move (Fury Attack)
	db 18, ANCIENTPOWER
	db 21, BODY_SLAM
	db 23, HOLY_FLAME ; Drill Run → new move
	db 26, AURA_WAVE
	db 28, TAKE_DOWN
	db 31, TAILWIND ; Coil → new move
	db 33, DIG
	db 36, GLARE
	db 38, DOUBLE_EDGE
	db 41, EARTHQUAKE ; Endeavor → TM move
	db 43, AIR_SLASH
	db 46, HEX ; Dragon Rush → egg move
	db 48, ENDURE
	db 51, REVERSAL ; Flail → similar move
	db 53, FLAME_HIT ; new move
	db -1 ; no more level-up moves

GligarEvosAttacks:
	evo_data EVOLVE_HOLDING, RAZOR_FANG, TR_EVENITE, GLISCOR
	db -1 ; no more evolutions
	db 1, SEAL_NEEDLE
	db 4, POISON_GAS ; Sand Attack → similar move
	db 7, DEFENSE_CURL ; Harden → similar move
	db 10, QUICK_ATTACK ; Knock Off → Quick Attack
	db 13, WING_ATTACK ; Quick Attack → egg move
	db 16, LEAF_SNIP ; Fury Cutter → similar move
	db 19, FEINT_ATTACK
	db 22, ACROBATICS
	db 27, SLASH
	db 30, U_TURN
	db 35, SCREECH
	db 40, CRASH_CROSS
	db 45, KNOCK_OFF ; Sky Uppercut → Knock Off
	db 50, SWORDS_DANCE
	db 55, NIGHT_SLASH ; Guillotine → egg move
	db -1 ; no more level-up moves

GliscorEvosAttacks:
	db -1 ; no more evolutions
	db 1, POISON_JAB
	db 4, POISON_GAS ; Sand Attack → similar move
	db 7, DEFENSE_CURL ; Harden → similar move
	db 10, QUICK_ATTACK ; Knock Off → Quick Attack
	db 13, WING_ATTACK ; Quick Attack → egg move
	db 16, LEAF_SNIP ; Fury Cutter → similar move
	db 19, FEINT_ATTACK
	db 22, ACROBATICS
	db 27, SLASH ; Night Slash → Gligar move
	db 30, U_TURN
	db 35, SCREECH
	db 40, CRASH_CROSS
	db 45, KNOCK_OFF ; Sky Uppercut → Knock Off
	db 50, SWORDS_DANCE
	db 55, NIGHT_SLASH ; Guillotine → Night Slash
	db -1 ; no more level-up moves

SteelixEvosAttacks:
	db -1 ; no more evolutions
	db 1, BRAVER ; evolution move
	db 1, TACKLE
	db 1, DEFENSE_CURL ; Harden → similar move
	db 1, WRAP ; Bind → similar move
	db 4, CURSE
	db 7, ROCK_BULLET
	db 10, RAGE
	db 13, ROCK_BLAST ; Rock Tomb → egg move
	db 16, BODY_SLAM ; Stealth Rock → TM move
	db 19, SANDSTORM ; Autotomize → Sandstorm
	db 22, ANCIENTPOWER ; Smack Down → HGSS tutor move
	db 25, SPIRIT_SWEEP
	db 28, HEADBUTT ; Slam → tutor move
	db 31, SCREECH
	db 34, ROCK_SLIDE
	db 37, AVARICE_BITE
	db 40, IRON_HEAD
	db 43, DIG
	db 46, STONE_RISE
	db 49, DOUBLE_EDGE
	db 52, EARTHQUAKE ; Sandstorm → TM move
	db -1 ; no more level-up moves

SnubbullEvosAttacks:
	evo_data EVOLVE_LEVEL, 23, GRANBULL
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, SCARY_FACE
	db 1, LEER ; Tail Whip → similar move
	db 1, CHARM
	db 7, BITE
	db 13, LICK
	db 19, HEADBUTT
	db 25, ROAR
	db 31, RAGE
	db 37, PLAY_ROUGH
	db 43, DOUBLE_EDGE ; Payback → event move
	db 49, AVARICE_BITE
	db -1 ; no more level-up moves

GranbullEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, SCARY_FACE
	db 1, LEER ; Tail Whip → similar move
	db 1, CHARM
	db 7, BITE
	db 13, LICK
	db 19, HEADBUTT
	db 27, ROAR
	db 35, RAGE
	db 43, PLAY_ROUGH
	db 51, DOUBLE_EDGE ; Payback → event move
	db 59, AVARICE_BITE
	db 67, FLAME_HIT
	db -1 ; no more level-up moves

QwilfishEvosAttacks:
	db -1 ; no more evolutions
	db 1, WATER_GUN
	db 1, SPIKES
	db 1, TACKLE
	db 1, SEAL_NEEDLE
	db 5, DEFENSE_CURL ; Harden → TM move
	db 9, MINIMIZE
	db 13, BUBBLE_BEAM ; Bubble → similar move
	db 17, TREMORS
	db 21, POISON_NAIL
	db 25, LIFE_BALANCE ; Stockpile + Spit Up → HGSS move tutor
	db 29, REVERSAL ; Revenge → Sw/Sh move
	db 33, WATER_PULSE ; Brine → TM move
	db 37, PIN_MISSILE
	db 41, TAKE_DOWN
	db 45, AQUA_CUT
	db 49, POISON_JAB
	db 53, DESTINY_BOND
	db 57, HYDRO_PUMP
	db 60, DOUBLE_EDGE ; Fell Stinger → event move
	db -1 ; no more level-up moves

ScizorEvosAttacks:
	db -1 ; no more evolutions
	db 1, METAL_CLAW ; evolution move
	db 1, STEEL_FIST
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, FOCUS_ENERGY
	db 9, PURSUIT
	db 13, BLADE_FLASH
	db 17, LEAF_STORM
	db 21, WING_ATTACK
	db 25, LEAF_SNIP ; Fury Cutter → similar move
	db 29, SLASH
	db 33, SPIRIT_VOICE ; Razor Wind → egg move
	db 37, DEFENSE_CURL ; Iron Defense → similar move
	db 41, CRASH_CROSS
	db 45, AVARICE_BITE ; Night Slash → Prism tutor move
	db 49, COLOR_FIST ; Double Hit → SV TM move
	db 50, IRON_HEAD
	db 57, SWORDS_DANCE
	db -1 ; no more level-up moves

ShuckleEvosAttacks:
	db -1 ; no more evolutions
	db 1, POISON_GAS ; Constrict → GSC TM move
	db 1, DEFENSE_CURL ; Withdraw → similar move
	db 1, TREMORS
	db 5, ENCORE
	db 9, WRAP
	db 12, WIRE_WEB ; Struggle Bug → HGSS tutor move
	db 16, SAFEGUARD
	db 20, REST
	db 23, ROCK_BULLET
	db 27, ACID ; Gastro Acid → egg move
	db 31, DISABLE ; Power Trick → new move
	db 34, POWER_TRICK
	db 38, ROCK_BLAST ; Rock Slide → Sw/Sh move
	db 42, LEAF_SNIP
	db 45, ROCK_SLIDE ; Power Split + Guard Split → Rock Slide
	db 49, REVERSAL ; Stone Rise → Sw/Sh move
	db 53, STONE_RISE ; Sticky Web → Stone Rise
	db -1 ; no more level-up moves

HeracrossEvosAttacks:
	db -1 ; no more evolutions
	db 1, NIGHT_SLASH
	db 1, TACKLE
	db 1, LEER
	db 1, KNIFE_THROW
	db 1, ENDURE
	db 7, LEAF_SNIP ; Feint → HGSS tutor move
	db 10, FURY_STRIKES ; Aerial Ace → Fury Strikes
	db 16, LOW_KICK ; Chip Away → HGSS tutor move
	db 19, COUNTER
	db 25, AERIAL_ACE ; Fury Attack → Aerial Ace
	db 28, SEISMIC_TOSS ; Brick Break → tutor move
	db 31, PIN_MISSILE
	db 34, TAKE_DOWN
	db 37, CURSE_THORN
	db 43, COLOR_FIST
	db 46, REVERSAL
	db -1 ; no more level-up moves

SneaselEvosAttacks:
	evo_data EVOLVE_HOLDING, RAZOR_CLAW, TR_EVENITE, WEAVILE
	db -1 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, BITE ; Taunt → egg move
	db 8, QUICK_ATTACK
	db 10, FEINT_ATTACK
	db 14, ICE_SHARD ; Icy Wind → Ice Shard
	db 16, FURY_STRIKES ; Fury Swipes → similar move
	db 20, LEAF_STORM
	db 22, METAL_CLAW
	db 25, HONE_TOOLS
	db 28, ICICLE_CRASH ; Beat Up → egg move
	db 32, SCREECH
	db 35, SLASH
	db 40, HEALINGLIGHT ; Snatch → event move (Moonlight)
	db 44, CRASH_CROSS ; Punishment → TM move
	db 47, AVARICE_BITE ; Ice Shard → new move
	db -1 ; no more level-up moves

TeddiursaEvosAttacks:
	evo_data EVOLVE_LEVEL, 30, URSARING
	db -1 ; no more evolutions
	db 1, THIEF ; Covet → TM move
	db 1, SCRATCH
	db 1, GROWL ; Baby-Doll Eyes → similar move
	db 1, LICK
	db 1, FOCUS_ENERGY ; Fake Tears → egg move
	db 8, FURY_STRIKES ; Fury Swipes → similar move
	db 15, FEINT_ATTACK
	db 22, BELLY_DRUM ; Sweet Scent → egg move
	db 25, PLAY_ROUGH ; Play Nice → egg move
	db 29, SLASH
	db 36, CHARM
	db 43, REST
	db 43, AVARICE_BITE ; Snore → egg move
	db 50, THRASH
	db 57, COLOR_FIST ; Fling → new move
	db 64, DOUBLE_EDGE ; new move
	db -1 ; no more level-up moves

UrsaringEvosAttacks:
	evo_data EVOLVE_ITEM, MOON_STONE, URSALUNA
	evo_data EVOLVE_LOCATION, SINJOH_RUINS, URSALUNA
	evo_data EVOLVE_LOCATION, MYSTRI_STAGE, URSALUNA
	db -1 ; no more evolutions
	db 1, GUNK_SHOT ; HGSS tutor move
	db 1, THIEF ; Covet → TM move
	db 1, SCRATCH
	db 1, LEER
	db 1, LICK
	db 1, FOCUS_ENERGY ; Fake Tears → egg move
	db 8, FURY_STRIKES ; Fury Swipes → similar move
	db 15, FEINT_ATTACK
	db 22, BELLY_DRUM ; Sweet Scent → egg move
	db 25, PLAY_ROUGH ; Play Nice → egg move
	db 29, SLASH
	db 38, SCARY_FACE
	db 47, REST
	db 49, AVARICE_BITE ; Snore → egg move
	db 58, THRASH
	db 67, COLOR_FIST ; Hammer Arm → new move
	db 76, DOUBLE_EDGE ; new move
	db -1 ; no more level-up moves

SlugmaEvosAttacks:
	evo_data EVOLVE_LEVEL, 38, MAGCARGO
	db -1 ; no more evolutions
	db 1, POISON_GAS ; Smog → TM move
	db 6, EMBER
	db 8, ROCK_BULLET
	db 13, DEFENSE_CURL ; Harden → similar move
	db 15, FIRE_SPIN ; Incinerate → new move
	db 20, SMOKESCREEN ; Clear Smog → egg move
	db 22, ANCIENTPOWER
	db 27, FLAME_CHARGE ; Flame Burst → TM move
	db 29, ROCK_SLIDE
	db 34, LIFE_BALANCE ; Lava Plume → HGSS tutor move
	db 36, AMNESIA
	db 41, BODY_SLAM
	db 43, RECOVER
	db 48, FIRE_BREATH
	db 50, EARTH_POWER
	db -1 ; no more level-up moves

MagcargoEvosAttacks:
	db -1 ; no more evolutions
	db 1, POWER_TRICK ; evolution move
	db 1, POISON_GAS ; Smog → TM move
	db 6, EMBER
	db 8, ROCK_BULLET
	db 13, DEFENSE_CURL ; Harden → similar move
	db 15, FIRE_SPIN ; Incinerate → new move
	db 20, SMOKESCREEN ; Clear Smog → egg move
	db 22, ANCIENTPOWER
	db 27, FLAME_CHARGE ; Flame Burst → TM move
	db 29, ROCK_SLIDE
	db 34, LIFE_BALANCE ; Lava Plume → HGSS tutor move
	db 36, AMNESIA
	db 43, BODY_SLAM
	db 47, RECOVER
	db 54, FIRE_BREATH
	db 58, EARTH_POWER
	db -1 ; no more level-up moves

SwinubEvosAttacks:
	evo_data EVOLVE_LEVEL, 33, PILOSWINE
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT ; Odor Sleuth → similar move
	db 5, BITE ; Mud Sport → egg move
	db 8, ICE_SHARD ; Powder Snow → Ice Shard
	db 11, POISON_GAS
	db 14, ENDURE
	db 18, MAGNITUDE ; Mud Bomb → new move
	db 21, ICY_WIND
	db 24, ICICLE_CRASH ; Ice Shard → egg move
	db 28, TAKE_DOWN
	db 35, BULLDOZE ; Mist → TM move
	db 37, REVERSAL ; Earthquake → similar move
	db 40, EARTHQUAKE ; Flail → Earthquake
	db 44, BLIZZARD
	db 48, AMNESIA
	db -1 ; no more level-up moves

PiloswineEvosAttacks:
	evo_data EVOLVE_MOVE, ANCIENTPOWER, MAMOSWINE
	db -1 ; no more evolutions
	db 1, ANCIENTPOWER
	db 1, FURY_STRIKES ; evolution move (Fury Attack)
	db 1, PECK
	db 1, FORESIGHT ; Odor Sleuth → similar move
	db 5, BITE ; Mud Sport → egg move
	db 8, ICE_SHARD ; Powder Snow → Ice Shard
	db 11, POISON_GAS
	db 14, ENDURE
	db 18, MAGNITUDE ; Mud Bomb → new move
	db 21, ICY_WIND
	db 24, ICICLE_CRASH ; Ice Fang → egg move
	db 28, TAKE_DOWN
	db 37, BULLDOZE ; Mist → TM move
	db 41, THRASH
	db 46, EARTHQUAKE
	db 52, BLIZZARD
	db 58, AMNESIA
	db -1 ; no more level-up moves

CorsolaEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL ; Harden → similar move
	db 4, WATER_GUN ; Bubble → similar move
	db 8, TREMORS ; Recover → TM move
	db 10, BUBBLE_BEAM
	db 13, SAFEGUARD ; Refresh → egg move
	db 17, ANCIENTPOWER
	db 20, ICICLE_SPEAR ; Spike Cannon → egg move
	db 23, CONFUSE_RAY ; Lucky Chant → egg move
	db 27, ENDURE ; Brine → Endure
	db 29, BARRIER ; Iron Defense → similar move
	db 31, ROCK_BLAST
	db 35, RECOVER ; Endure → Recover
	db 38, HYDRO_PUMP ; Aqua Ring → Sw/Sh move
	db 41, POWER_GEM
	db 45, MIRROR_COAT
	db 47, EARTH_POWER
	db 50, REVERSAL ; Flail → similar move
	db -1 ; no more level-up moves

RemoraidEvosAttacks:
	evo_data EVOLVE_LEVEL, 25, OCTILLERY
	db -1 ; no more evolutions
	db 1, WRAP ; Sw/Sh move
	db 1, WATER_GUN
	db 6, FORESIGHT ; Lock-On → new move
	db 10, PSYBEAM
	db 14, AURORA_BEAM
	db 18, BUBBLE_BEAM
	db 22, FOCUS_ENERGY
	db 26, WATER_PULSE
	db 30, FIRE_BREATH ; Signal Beam → TM move
	db 34, ICE_BEAM
	db 38, SEED_BOMB ; Bullet Seed → tutor move
	db 42, GUNK_SHOT ; Hydro Pump → new move
	db 46, HYDRO_PUMP ; Power Beam → Hydro Pump
	db 50, AURA_SPHERE ; Soak → new move
	db 54, POWER_BEAM
	db -1 ; no more level-up moves

OctilleryEvosAttacks:
	db -1 ; no more evolutions
	db 1, BLACK_RIPPLE ; evolution move
	db 1, ROCK_BLAST
	db 1, POWER_WHIP ; new move
	db 1, WATER_GUN
	db 6, FORESIGHT ; Constrict → new move
	db 10, PSYBEAM
	db 14, AURORA_BEAM
	db 18, BUBBLE_BEAM
	db 22, FOCUS_ENERGY
	db 26, WRAP ; Wring Out → new move
	db 28, WATER_PULSE
	db 34, FIRE_BREATH ; Signal Beam → TM move
	db 40, ICE_BEAM
	db 46, SEED_BOMB ; Bullet Seed → tutor move
	db 52, GUNK_SHOT ; Hydro Pump → new move
	db 58, HYDRO_PUMP ; Power Beam → Hydro Pump
if !DEF(FAITHFUL)
	db 58, HELLBLAZE ; new move
endc
	db 64, AURA_SPHERE ; Soak → new move
	db 70, POWER_BEAM
	db -1 ; no more level-up moves

DelibirdEvosAttacks:
	db -1 ; no more evolutions
; based on Gen V Chatot
	db 1, PECK
	db 5, GROWL
	db 9, PAY_DAY ; Mirror Move → new move
	db 13, SING
	db 17, ICY_WIND
	db 21, WING_ATTACK
	db 25, HAIL
	db 29, DRAGON_DRILL
	db 33, AURORA_BEAM
	db 37, BODY_SLAM
	db 41, AURA_WAVE
	db 45, FLY
	db 49, BELLY_DRUM
	db 53, HURRICANE
	db 57, BLIZZARD
	db -1 ; no more level-up moves

MantineEvosAttacks:
	db -1 ; no more evolutions
	db 1, GUST ; event move
	db 1, TACKLE
	db 1, WATER_GUN ; Bubble → similar move
	db 3, SUPERSONIC
	db 7, BUBBLE_BEAM
	db 11, CONFUSE_RAY
	db 14, WING_ATTACK
	db 16, HEADBUTT
	db 19, WATER_PULSE
	db 23, AQUA_JET ; Wide Guard → new move
	db 27, TAKE_DOWN
	db 32, LEAF_STORM
	db 36, AIR_SLASH
	db 39, AURA_WAVE ; Aqua Ring → similar move
	db 46, MIRROR_COAT ; Bounce → Dream World move
	db 49, HYDRO_PUMP
	db -1 ; no more level-up moves

SkarmoryEvosAttacks:
	db -1 ; no more evolutions
	db 1, LEER
	db 1, PECK
	db 6, POISON_GAS ; Sand Attack → similar move
	db 9, BITE ; Metal Claw → new move
	db 12, METAL_CLAW ; Air Cutter → Metal Claw
	db 17, FURY_STRIKES ; Fury Attack → similar move
	db 20, PURSUIT ; Feint → egg move
	db 23, SWIFT
	db 28, SPIKES
	db 31, LEAF_STORM
	db 34, STEEL_WING
	db 39, SLASH
	db 42, SCREECH ; Metal Sound → similar move
	db 45, AIR_SLASH
	db 50, DRAGON_DRILL ; Autotomize → egg move
	db 53, NIGHT_SLASH
	db -1 ; no more level-up moves

HoundourEvosAttacks:
	evo_data EVOLVE_LEVEL, 24, HOUNDOOM
	db -1 ; no more evolutions
	db 1, LEER
	db 1, EMBER
	db 4, PURSUIT ; Howl → egg move
	db 8, SMOKESCREEN ; Smog → new move
	db 13, ROAR
	db 16, BITE
	db 20, FORESIGHT ; Odor Sleuth → similar move
	db 25, HEAT_CLAW ; Beat Up → HGSS tutor move
	db 28, FIRE_SPIN ; Fire Fang → egg move
	db 32, FEINT_ATTACK
	db 37, DESTINY_BOND ; Embargo → egg move
	db 40, WILL_O_WISP ; Foul Play → egg move
	db 44, FIRE_BREATH
	db 49, AVARICE_BITE
	db 52, NASTY_PLOT
	db 56, DARK_PULSE ; Inferno → TM move
	db -1 ; no more level-up moves

HoundoomEvosAttacks:
	db -1 ; no more evolutions
	db 1, LEER
	db 1, EMBER
	db 4, PURSUIT ; Howl → egg move
	db 8, SMOKESCREEN ; Smog → new move
	db 13, ROAR
	db 16, BITE
	db 20, FORESIGHT ; Odor Sleuth → similar move
	db 26, HEAT_CLAW ; Beat Up → HGSS tutor move
	db 30, FIRE_SPIN ; Fire Fang → egg move
	db 35, FEINT_ATTACK
	db 41, DESTINY_BOND ; Embargo → egg move
	db 45, WILL_O_WISP ; Foul Play → egg move
	db 50, FIRE_BREATH
	db 56, AVARICE_BITE
	db 60, NASTY_PLOT
	db 65, DARK_PULSE ; Inferno → TM move
	db -1 ; no more level-up moves

KingdraEvosAttacks:
	db -1 ; no more evolutions
	db 1, SPIRIT_SWEEP ; evolution move
	db 1, WATER_GUN ; Bubble → similar move
	db 5, SMOKESCREEN
	db 9, LEER
	db 13, BUBBLE_BEAM ; Water Gun → Bubble Beam
	db 17, AQUA_JET ; Twister → new move
	db 21, WATER_PULSE ; Bubble Beam → TM move
	db 26, FOCUS_ENERGY
	db 31, FLAME_HIT ; Brine → HGSS tutor move
	db 38, LEAF_STORM
	db 45, ENIGMA_BURST
	db 52, TAILWIND
	db 60, HYDRO_PUMP
	db -1 ; no more level-up moves

PhanpyEvosAttacks:
	evo_data EVOLVE_LEVEL, 25, DONPHAN
	db -1 ; no more evolutions
	db 1, FORESIGHT ; Odor Sleuth → similar move
	db 1, TACKLE
	db 1, GROWL
	db 1, DEFENSE_CURL
	db 6, REVERSAL ; Flail → similar move
	db 10, TREMORS
	db 15, MAGNITUDE ; Natural Gift → Donphan move
	db 19, ENDURE
	db 24, TAKE_DOWN ; Slam → Take Down
	db 28, BODY_SLAM ; Take Down → TM move
	db 33, CHARM
	db 37, PLAY_ROUGH ; Last Resort → egg move
	db 42, DOUBLE_EDGE
	db -1 ; no more level-up moves

DonphanEvosAttacks:
	db -1 ; no more evolutions
	db 1, FURY_STRIKES ; evolution move
	db 1, GUNK_SHOT ; HGSS tutor move
	db 1, KNIFE_THROW
	db 1, GROWL
	db 1, DEFENSE_CURL
	db 1, BULLDOZE
	db 6, RAPID_SPIN
	db 10, TREMORS
	db 15, MAGNITUDE ; Assurance → Magnitude
	db 19, KNOCK_OFF
	db 24, ANCIENTPOWER ; Slam → HGSS tutor move
	db 30, BRAVER ; Magnitude → TM move
	db 37, SCARY_FACE
	db 43, EARTHQUAKE
	db 50, ULTICHARGE
	db -1 ; no more level-up moves

CLunasa2EvosAttacks:
	evo_data EVOLVE_HOLDING, DUBIOUS_DISC, TR_ANYTIME, CLUNASA_Z
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, CONVERSION
	db 1, DEFENSE_CURL
	db 7, PSYBEAM
	db 12, LEAF_STORM
	db 18, RECOVER
	db 23, GROWTH ; Magnet Rise → new move
	db 29, AURORA_BEAM ; Signal Beam → new move
	db 34, THUNDER_WAVE ; Recycle → TM move
	db 40, BARRIER ; Discharge → event move
	db 45, THUNDERBOLT ; Lock-On → TM move
	db 50, FIVEELEMENTS
	db 56, MIRROR_COAT ; Magic Coat → new move
	db 62, ZAP_CANNON
	db 67, POWER_BEAM
	db -1 ; no more level-up moves

StantlerEvosAttacks:
	evo_data EVOLVE_LOCATION, RUGGED_ROAD, WYRDEER
	evo_data EVOLVE_LOCATION, SNOWTOP_MOUNTAIN, WYRDEER
	evo_data EVOLVE_LOCATION, SINJOH_RUINS, WYRDEER
	evo_data EVOLVE_LOCATION, MYSTRI_STAGE, WYRDEER
	db -1 ; no more evolutions
	db 1, TACKLE
	db 3, LEER
	db 7, ASTONISH
	db 10, HYPNOSIS
	db 13, STOMP
	db 16, POISON_GAS ; Sand-Attack → similar move
	db 21, HEADBUTT ; Take Down → tutor move
	db 23, CONFUSE_RAY
	db 27, CALM_MIND
	db 33, TAKE_DOWN ; Role Play → Take Down
	db 38, HOLY_CHARGE
	db 43, THRASH ; Jump Kick → egg move
	db 49, SKILL_SWAP ; Imprison → tutor move
	db 50, TENSION_KICK ; Captivate → new move
	db 55, CURSE_THORN ; Me First → egg move
	db 60, DOUBLE_EDGE ; new move
	db -1 ; no more level-up moves

SmeargleEvosAttacks:
	db -1 ; no more evolutions
	db 1, SKETCH
	db 11, SKETCH
	db 21, SKETCH
	db 31, SKETCH
	db 41, SKETCH
	db 51, SKETCH
	db 61, SKETCH
	db 71, SKETCH
	db 81, SKETCH
	db 91, SKETCH
	db -1 ; no more level-up moves

TyrogueEvosAttacks:
	evo_data EVOLVE_STAT, 20, ATK_LT_DEF, CKOAKUMA
	evo_data EVOLVE_STAT, 20, ATK_GT_DEF, AMEILING
	evo_data EVOLVE_STAT, 20, ATK_EQ_DEF, HITMONTOP
	db -1 ; no more evolutions
	db 1, TACKLE
	db 1, RAGE ; Fake Out → event move
	db 1, FORESIGHT
	db -1 ; no more level-up moves

HitmontopEvosAttacks:
	db -1 ; no more evolutions
	db 1, LOW_KICK ; Rolling Kick → HGSS tutor move ; evolution move
	db 1, BULK_UP ; Revenge → TM move
	db 6, FOCUS_ENERGY
	db 10, PURSUIT
	db 15, QUICK_ATTACK
	db 19, RAPID_SPIN
	db 24, FEINT_ATTACK ; Feint → new move
	db 28, COUNTER
	db 33, DOUBLE_KICK ; Triple Kick → similar move
	db 37, LEAF_STORM
	db 42, GYRO_BALL
	db 46, FORESIGHT ; Wide Guard + Quick Guard → new move
	db 50, PROTECT ; Detect → similar move
	db 55, COLOR_FIST
	db 60, REVERSAL ; Endeavor → new move
	db -1 ; no more level-up moves

SmoochumEvosAttacks:
	evo_data EVOLVE_LEVEL, 30, HCHEN
	db -1 ; no more evolutions
	db 1, LICK
	db 1, TACKLE ; Pound → similar move
	db 4, ICY_WIND ; Powder Snow → TM move
	db 8, METRONOME ; Copycat → HChen RBY TM move
	db 12, PSYSHOT
	db 16, THIEF ; Covet → similar move
	db 20, SING
	db 24, MEAN_LOOK ; Fake Tears → Mean Look
	db 28, ICE_PUNCH
	db 32, MANA_BURST
	db 36, SWEET_KISS
	db 40, NASTY_PLOT ; Mean Look → egg move
	db 44, SHADOW_DANCE
	db 48, BLIZZARD
	db -1 ; no more level-up moves

ElekidEvosAttacks:
	evo_data EVOLVE_LEVEL, 30, CLILYWHITE
	db -1 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, THUNDERSHOCK
	db 8, LOW_KICK
	db 12, SWIFT
	db 15, BULK_UP ; Shock Wave → TM move
	db 19, THUNDER_WAVE
	db 22, KARATE_CHOP ; Electro Ball → egg move
	db 26, LIGHT_SCREEN
	db 29, THUNDERPUNCH
	db 33, SCREECH ; Discharge → Screech
	db 36, CROSS_CHOP ; Screech → new move
	db 40, THUNDERBOLT
	db 43, THUNDER
	db -1 ; no more level-up moves

MagbyEvosAttacks:
	evo_data EVOLVE_LEVEL, 30, LILYWHITE
	db -1 ; no more evolutions
	db 1, HAZE ; Smog → new move
	db 1, LEER
	db 5, EMBER
	db 8, SMOKESCREEN
	db 12, FEINT_ATTACK
	db 15, FIRE_SPIN
	db 19, LOW_KICK ; Clear Smog → HGSS tutor move
	db 22, FLAME_CHARGE ; Flame Burst → TM move
	db 26, CONFUSE_RAY
	db 29, FIRE_PUNCH
	db 33, SUNNY_DAY ; Lava Plume → Sunny Day
	db 36, FOCUS_BLAST ; Sunny Day → TM move
	db 40, FIRE_BREATH
	db 43, HELLBLAZE
	db -1 ; no more level-up moves

MiltankEvosAttacks:
	db -1 ; no more evolutions
	db 1, TACKLE
	db 3, GROWL
	db 5, DEFENSE_CURL
	db 8, STOMP
	db 11, FRESH_SNACK ; Milk Drink → similar move
	db 15, DIZZY_PUNCH ; Bide → egg move
	db 19, TREMORS
	db 24, BODY_SLAM
	db 29, HOLY_CHARGE
	db 35, SEISMIC_TOSS ; Captivate → egg move
	db 41, GYRO_BALL
	db 48, HEAL_BELL
	db 50, REVERSAL ; Wake-Up Slap → egg move
	db -1 ; no more level-up moves

BlisseyEvosAttacks:
	db -1 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, TACKLE ; Pound → similar move
	db 1, GROWL
	db 5, LEER ; Tail Whip → similar move
	db 9, SWEET_KISS ; Refresh → Happiny move
	db 12, DOUBLE_SLAP
	db 16, FRESH_SNACK ; Soft-Boiled → similar move
	db 20, METRONOME ; Bestow → egg move
	db 23, MINIMIZE
	db 27, TAKE_DOWN
	db 31, SING
	db 35, CHARM ; Fling → Happiny move
	db 39, HEAL_BELL ; Heal Pulse → HGSS tutor move
	db 44, BODY_SLAM ; Egg Bomb → TM move
	db 50, LIGHT_SCREEN
	db 57, SUBSTITUTE ; Healing Wish → TM move
	db 65, DOUBLE_EDGE
	db -1 ; no more level-up moves

RaikouEvosAttacks:
	db -1 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 8, THUNDERSHOCK
	db 15, ROAR
	db 22, QUICK_ATTACK
	db 29, SPARK
	db 36, REFLECT
	db 43, AVARICE_BITE
	db 50, WILD_CHARGE ; Thunder Fang → TM move
	db 57, EXTREMESPEED ; Discharge → event move
	db 64, EXTRASENSORY
	db 71, RAIN_DANCE
	db 78, CALM_MIND
	db 85, AURA_SPHERE ; Thunder → event move
	db 92, THUNDER
	db 99, HIDDEN_POWER ; TM move
	db -1 ; no more level-up moves

EnteiEvosAttacks:
	db -1 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 8, EMBER
	db 15, ROAR
	db 22, FIRE_SPIN
	db 29, STOMP
	db 36, FIRE_BREATH
	db 43, SWAGGER
	db 50, FLAME_CHARGE ; Fire Fang → TM move
	db 57, EXTREMESPEED ; Lava Plume → event move
	db 64, EXTRASENSORY
	db 71, HELLBLAZE
	db 78, CALM_MIND
	db 85, HEAT_SMASH ; Eruption → event move
	db 92, SACRED_FIRE
	db 99, HIDDEN_POWER ; TM move
	db -1 ; no more level-up moves

SuicuneEvosAttacks:
	db -1 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 8, BUBBLE_BEAM
	db 15, RAIN_DANCE
	db 22, GUST
	db 29, AURORA_BEAM
	db 36, LIGHT_SCREEN ; Mist → new move
	db 43, MIRROR_COAT
	db 50, AIR_SLASH ; Ice Fang → event move
	db 57, EXTREMESPEED ; Tailwind → event move
	db 64, EXTRASENSORY
	db 71, HYDRO_PUMP
	db 78, CALM_MIND
	db 85, POWER_BEAM ; Blizzard → TM move
	db 92, BLIZZARD
	db 99, HIDDEN_POWER ; TM move
	db -1 ; no more level-up moves

LarvitarEvosAttacks:
	evo_data EVOLVE_LEVEL, 30, PUPITAR
	db -1 ; no more evolutions
	db 1, TACKLE ; Sw/Sh move
	db 1, BITE
	db 1, LEER
	db 5, SANDSTORM
	db 10, SCREECH
	db 14, RAGE ; Chip Away → event move
	db 19, ROCK_SLIDE
	db 23, SCARY_FACE
	db 28, THRASH
	db 32, DARK_PULSE
	db 37, ANCIENTPOWER ; Payback → HGSS tutor move
	db 41, AVARICE_BITE
	db 46, EARTHQUAKE
	db 50, STONE_RISE
	db 55, FLAME_HIT ; Power Beam → HGSS tutor move
	db 61, POWER_BEAM
	db 68, COLOR_FIST ; new move
	db -1 ; no more level-up moves

PupitarEvosAttacks:
	evo_data EVOLVE_LEVEL, 55, TYRANITAR
	db -1 ; no more evolutions
	db 1, DEFENSE_CURL ; evolution move
	db 1, TACKLE ; Sw/Sh move
	db 1, BITE
	db 1, LEER
	db 5, SANDSTORM
	db 10, SCREECH
	db 14, RAGE ; Chip Away → event move
	db 19, ROCK_SLIDE
	db 23, SCARY_FACE
	db 28, THRASH
	db 34, DARK_PULSE
	db 41, ANCIENTPOWER ; Payback → HGSS tutor move
	db 47, AVARICE_BITE
	db 54, EARTHQUAKE
	db 60, STONE_RISE
	db 67, FLAME_HIT ; Power Beam → HGSS tutor move
	db 75, POWER_BEAM
	db 84, COLOR_FIST ; new move
	db -1 ; no more level-up moves

TyranitarEvosAttacks:
	db -1 ; no more evolutions
	db 1, STOMP ; evolution move
	db 1, LOW_KICK ; HGSS tutor move
	db 1, SPIRIT_SWEEP ; GSC TM move
	db 1, TACKLE ; Sw/Sh move
	db 1, BITE
	db 1, LEER
	db 5, SANDSTORM
	db 10, SCREECH
	db 14, RAGE ; Chip Away → event move
	db 19, ROCK_SLIDE
	db 23, SCARY_FACE
	db 28, THRASH
	db 34, DARK_PULSE
	db 41, ANCIENTPOWER ; Payback → HGSS tutor move
	db 47, AVARICE_BITE
	db 54, EARTHQUAKE
	db 63, STONE_RISE
	db 73, FLAME_HIT ; Power Beam → HGSS tutor move
	db 82, POWER_BEAM
	db 92, COLOR_FIST ; new move
	db -1 ; no more level-up moves

LugiaEvosAttacks:
	db -1 ; no more evolutions
	db 1, ROAR ; Whirlwind → similar move
	db 9, GUST
	db 15, SPIRIT_SWEEP ; Dragon Rush → GSC TM move
	db 23, EXTRASENSORY
	db 29, RAIN_DANCE
	db 37, HYDRO_PUMP
	db 43, ENIGMA_BURST ; Aeroblast → TM move
	db 50, AEROBLAST ; Punishment → Aeroblast
	db 57, ANCIENTPOWER
	db 65, SAFEGUARD
	db 71, RECOVER
	db 79, FUTURE_SIGHT
	db 85, REFLECT ; Natural Gift → TM move
	db 93, CALM_MIND
	db 99, HURRICANE ; Sky Attack → new move
	db -1 ; no more level-up moves

HoOhEvosAttacks:
	db -1 ; no more evolutions
	db 1, ROAR ; Whirlwind → similar move
	db 9, GUST
	db 15, SPIRIT_SWEEP ; Dive Kick → GSC TM move
	db 23, EXTRASENSORY
	db 29, SUNNY_DAY
	db 37, HELLBLAZE
	db 43, FLOWER_SHOOT ; Sacred Fire → Solar Beam
	db 50, SACRED_FIRE ; Punishment → Sacred Fire
	db 57, ANCIENTPOWER
	db 65, SAFEGUARD
	db 71, RECOVER
	db 79, FUTURE_SIGHT
	db 85, LIGHT_SCREEN ; Natural Gift → TM move
	db 93, CALM_MIND
	db 99, DIVE_KICK ; Sky Attack → Dive Kick
	db -1 ; no more level-up moves

CelebiEvosAttacks:
	db -1 ; no more evolutions
	db 1, LEECH_SEED
	db 1, PSYSHOT
	db 1, RECOVER
	db 1, METRONOME ; Heal Bell → new move
	db 10, SAFEGUARD
	db 19, ENERGY_BALL ; Magical Leaf → TM move
	db 28, ANCIENTPOWER
	db 37, BATON_PASS
	db 46, MOONBLAST ; Natural Gift → new move
	db 55, LIGHT_SCREEN ; Heal Block → TM move
	db 64, FUTURE_SIGHT
	db 73, HEAL_BELL ; Healing Wish → Heal Bell
	db 82, NASTY_PLOT ; Leaf Storm → event move
	db 91, SHADOW_DANCE
	db 100, AURA_SPHERE ; Sw/Sh move
	db -1 ; no more level-up moves

AzurillEvosAttacks:
	evo_data EVOLVE_HAPPINESS, TR_ANYTIME, MARILL
	db -1 ; no more evolutions
	db 1, SPLASH
	db 1, WATER_GUN
	db 2, GROWL ; Tail Whip → new move
	db 5, FORESIGHT ; Water Sport → Marill egg move
	db 7, AQUA_JET ; Bubble → egg move
	db 10, CHARM
	db 13, BUBBLE_BEAM
	db 16, SING ; Helping Hand → egg move
	db 20, TREMORS ; Slam → tutor move
	db 23, BODY_SLAM ; Bounce → egg move
	db -1 ; no more level-up moves

WynautEvosAttacks:
	evo_data EVOLVE_LEVEL, 15, WOBBUFFET
	db -1 ; no more evolutions
	db 1, SPLASH
	db 1, CHARM
	db 1, ENCORE
	db 1, AMNESIA
	db 1, COUNTER
	db 1, MIRROR_COAT
	db 1, SAFEGUARD
	db 1, DESTINY_BOND
	db -1 ; no more level-up moves

AmbipomEvosAttacks:
	db -1 ; no more evolutions
	db 1, HEADBUTT ; Dual Chop → tutor move
	db 1, SCRATCH
	db 1, LEER ; Tail Whip → similar move
	db 4, POISON_GAS ; Sand Attack → similar move
	db 8, ASTONISH
	db 11, BATON_PASS
	db 15, THIEF ; Tickle → TM move
	db 18, FURY_STRIKES ; Fury Swipes → similar move
	db 22, SWIFT
	db 25, SCREECH
	db 29, LEAF_STORM
	db 32, DOUBLE_SLAP ; Double Hit → egg move
	db 36, ACROBATICS ; Fling → TM move
	db 39, NASTY_PLOT
	db 43, DOUBLE_EDGE ; Last Resort → tutor move
	db -1 ; no more level-up moves

MismagiusEvosAttacks:
	db -1 ; no more evolutions
	db 1, POWER_GEM
	db 1, SHADOW_BALL ; Phantom Force → TM move
	db 1, FIRE_BREATH ; Mystical Fire → TM move
	db 1, ENERGY_LIGHT ; Magical Leaf → TM move ; evolution move
	db 1, GROWL
	db 1, TELEPORT ; Psywave → new move
	db 1, DISARM_VOICE ; new move
	db 1, PSYSHOT ; Spite → new move
	db 1, ASTONISH
	db -1 ; no more level-up moves

HonchkrowEvosAttacks:
	db -1 ; no more evolutions
	db 1, SUCKER_PUNCH
	db 1, ASTONISH
	db 1, PURSUIT
	db 1, HAZE
	db 1, WING_ATTACK
	db 25, SWAGGER
	db 35, NASTY_PLOT
	db 45, NIGHT_SLASH ; Foul Play → Night Slash
	db 55, SHADOW_DANCE ; Night Slash → egg move
	db 65, DIVE_KICK ; Quash → egg move
	db 75, DARK_PULSE
	db -1 ; no more level-up moves

BonslyEvosAttacks:
	evo_data EVOLVE_MOVE, ROCK_BULLET, SUDOWOODO
	db -1 ; no more evolutions
	db 1, CHARM ; Fake Tears → new move
	db 1, SUBSTITUTE ; Copycat → Sudowoodo event move
	db 5, REVERSAL ; Flail → similar move
	db 8, LOW_KICK
	db 12, LEER ; Rock Bullet → new move
	db 15, ROCK_BULLET ; Mimic → Rock Bullet
	db 19, FEINT_ATTACK
	db 22, ANCIENTPOWER ; Rock Tomb → new move
	db 26, PROTECT ; Block → TM move
	db 29, ROCK_SLIDE
	db 33, COUNTER
	db 36, SUCKER_PUNCH
	db 40, DOUBLE_EDGE
	db -1 ; no more level-up moves

MimeJrEvosAttacks:
	db -1 ; no more evolutions
	db 1, BARRIER
	db 1, PSYSHOT
	db 1, TACKLE  ; Pound → similar move
	db 4, HYPNOSIS ; Copycat → egg move
	db 8, CALM_MIND ; Meditate → TM move
	db 11, DOUBLE_SLAP
	db 13, PROTECT ; Mimic → event move
	db 15, METRONOME ; Psywave → RBY TM move
	db 18, ENCORE
	db 22, LIGHT_SCREEN
	db 22, REFLECT
	db 25, PSYBEAM
	db 29, SUBSTITUTE
	db 32, CONFUSE_RAY ; Recycle → egg move
	db 36, TRICK
	db 39, MANA_BURST
	db 43, FUTURE_SIGHT ; Role Play → egg move
	db 46, BATON_PASS
	db 50, SAFEGUARD
	db -1 ; no more level-up moves

HappinyEvosAttacks:
	evo_data EVOLVE_HOLDING, OVAL_STONE, TR_MORNDAY, CREMILIA
	db -1 ; no more evolutions
	db 1, MINIMIZE
	db 1, TACKLE ; Pound → similar move
	db 1, METRONOME ; Copycat → egg move
	db 4, DEFENSE_CURL
	db 8, SWEET_KISS
	db 12, DISARM_VOICE
	db 16, TREMORS ; Covet → tutor move
	db 20, CHARM
	db -1 ; no more level-up moves

MunchlaxEvosAttacks:
	evo_data EVOLVE_HAPPINESS, TR_ANYTIME, CRAN
	db -1 ; no more evolutions
	db 1, SWEET_KISS ; Recycle → event move
	db 1, METRONOME
	db 1, TACKLE
	db 4, DEFENSE_CURL
	db 9, AMNESIA
	db 12, LICK
	db 17, RAGE ; Chip Away → RBY TM move
	db 20, TAKE_DOWN ; Screech → RBY TM move
	db 25, BODY_SLAM
	db 28, SCREECH ; Stockpile → Screech
	db 33, PROTECT ; Swallow → TM move
	db 36, TREMORS
	db 41, FLAME_HIT ; Fling → HGSS tutor move
	db 44, BELLY_DRUM
	db 49, AVARICE_BITE ; Natural Gift → CRan move
	db 50, GUNK_SHOT ; Snatch → egg move
	db 57, DOUBLE_EDGE ; Last Resort → egg move
	db -1 ; no more level-up moves

MantykeEvosAttacks:
	evo_data EVOLVE_PARTY, REMORAID, MANTINE
	db -1 ; no more evolutions
	db 1, GUST ; event move
	db 1, TACKLE
	db 1, WATER_GUN ; Bubble → similar move
	db 3, SUPERSONIC
	db 7, BUBBLE_BEAM
	db 11, CONFUSE_RAY
	db 14, WING_ATTACK
	db 16, HEADBUTT
	db 19, WATER_PULSE
	db 23, AQUA_JET ; Wide Guard → new move
	db 27, TAKE_DOWN
	db 32, LEAF_STORM
	db 36, AIR_SLASH
	db 39, AURA_WAVE ; Aqua Ring → similar move
	db 46, MIRROR_COAT ; Bounce → Dream World move
	db 49, HYDRO_PUMP
	db -1 ; no more level-up moves

WeavileEvosAttacks:
	db -1 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, BITE ; Taunt → egg move
	db 8, QUICK_ATTACK
	db 10, FEINT_ATTACK
	db 14, ICE_SHARD ; Icy Wind → Ice Shard
	db 16, FURY_STRIKES ; Fury Swipes → similar move
	db 20, NASTY_PLOT
	db 22, METAL_CLAW
	db 25, HONE_TOOLS
	db 28, ICICLE_CRASH ; Fling → egg move
	db 32, SCREECH
	db 35, NIGHT_SLASH
	db 40, HEALINGLIGHT ; Snatch → event move (Moonlight)
	db 44, CRASH_CROSS ; Punishment → TM move
	db 47, AVARICE_BITE ; Dark Pulse → new move
	db -1 ; no more level-up moves

MagnezoneEvosAttacks:
	db -1 ; no more evolutions
	db 1, FIVEELEMENTS ; evolution move
	db 1, MIRROR_COAT
	db 1, BARRIER
	db 1, SUPERSONIC
	db 1, TACKLE
	db 5, THUNDERSHOCK
	db 7, THUNDER_WAVE
	db 11, QUICK_ATTACK ; Magnet Bomb → TCG move
	db 13, LIGHT_SCREEN
	db 17, SONIC_BOOM
	db 19, SPARK
	db 23, SWIFT ; Mirror Shot → TM move
	db 25, SCREECH ; Metal Sound → Screech
	db 29, THUNDERBOLT ; Electro Ball → TM move
	db 33, FLASH_CANNON
	db 39, EXPLOSION ; Screech → TM move
	db 43, HIDDEN_POWER ; Discharge → TM move
	db 49, LEAF_STORM ; Lock-On → event move
	db 53, GYRO_BALL ; Magnet Rise → Gyro Ball
	db 59, THUNDER ; Gyro Ball → TM move
	db 63, ZAP_CANNON
	db -1 ; no more level-up moves

LickilickyEvosAttacks:
	db -1 ; no more evolutions
	db 1, LICK
	db 5, SUPERSONIC
	db 9, DEFENSE_CURL
	db 13, KNOCK_OFF
	db 17, WRAP
	db 21, STOMP
	db 25, DISABLE
	db 29, HEADBUTT ; Slam → TM move
	db 33, TREMORS
	db 37, SCREECH ; Chip Away → Screech
	db 41, AMNESIA ; Me First → egg move
	db 45, BODY_SLAM ; Refresh → egg move
	db 49, CURSE ; Screech → egg move
	db 53, POWER_WHIP
	db 57, BELLY_DRUM ; Wring Out → egg move
	db 61, GYRO_BALL
	db -1 ; no more level-up moves

RhyperiorEvosAttacks:
	db -1 ; no more evolutions
	db 1, FLAME_HIT ; Hammer Arm → HGSS tutor move ; evolution move
	db 1, POISON_JAB
	db 1, TACKLE
	db 1, POISON_GAS ; Sand-Attack → similar move
	db 1, LEER ; Tail Whip → similar move
	db 3, KNIFE_THROW
	db 6, FURY_STRIKES ; Fury Attack → similar move
	db 9, SCARY_FACE
	db 13, MAGNITUDE ; Smack Down → egg move
	db 17, STOMP
	db 21, BULLDOZE
	db 25, ANCIENTPOWER ; Chip Away → HGSS tutor move
	db 29, ROCK_BLAST
	db 33, TAKE_DOWN ; Drill Run → Take Down
	db 37, STONE_RISE ; Take Down → Stone Rise
	db 41, DOUBLE_EDGE ; Double Edge → event move
	db 48, EARTHQUAKE
	db 55, COLOR_FIST ; Megahorn → new move
	db 62, CURSE_THORN ; Horn Drill → Megahorn
	db 69, ROCK_SLIDE ; Rock Wrecker → similar move
	db -1 ; no more level-up moves

TangrowthEvosAttacks:
	db -1 ; no more evolutions
	db 1, WRAP ; Constrict → similar move
	db 4, SLEEP_POWDER
	db 7, VINE_WHIP
	db 10, ABSORB
	db 14, TOXIC_SPORE
	db 17, PROTECT ; Bind → TM move
	db 20, GROWTH
	db 23, MEGA_DRAIN
	db 27, KNOCK_OFF
	db 30, STUN_SPORE
	db 33, HEALINGLIGHT ; Natural Gift → new move
	db 36, GIGA_DRAIN
	db 40, ANCIENTPOWER
	db 43, BODY_SLAM ; Slam → similar move
	db 46, LIFE_BALANCE ; Tickle → HGSS tutor move
	db 49, SWORDS_DANCE ; Wring Out → TM move
	db 50, BATON_PASS ; Grassy Terrain → new move
	db 53, POWER_WHIP
	db -1 ; no more level-up moves

ElectivireEvosAttacks:
	db -1 ; no more evolutions
	db 1, COLOR_FIST ; evolution move
	db 1, FIRE_PUNCH
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, THUNDERSHOCK
	db 8, LOW_KICK
	db 12, SWIFT
	db 15, BULK_UP ; Shock Wave → TM move
	db 19, THUNDER_WAVE
	db 22, KARATE_CHOP ; Electro Ball → egg move
	db 26, LIGHT_SCREEN
	db 29, THUNDERPUNCH
	db 36, SCREECH ; Discharge → Screech
	db 42, CROSS_CHOP ; Screech → new move
	db 49, THUNDERBOLT
	db 55, THUNDER
	db 62, ULTICHARGE
	db -1 ; no more level-up moves

MagmortarEvosAttacks:
	db -1 ; no more evolutions
	db 1, FLASH_CANNON ; evolution move
	db 1, THUNDERPUNCH
	db 1, HAZE ; Smog → new move
	db 1, LEER
	db 5, EMBER
	db 8, SMOKESCREEN
	db 12, FEINT_ATTACK
	db 15, FIRE_SPIN
	db 19, LOW_KICK ; Clear Smog → HGSS tutor move
	db 22, FLAME_CHARGE ; Flame Burst → TM move
	db 26, CONFUSE_RAY
	db 29, FIRE_PUNCH
	db 36, SUNNY_DAY ; Lava Plume → Sunny Day
	db 42, FOCUS_BLAST ; Sunny Day → TM move
	db 49, FIRE_BREATH
	db 55, HELLBLAZE
	db 62, POWER_BEAM
	db -1 ; no more level-up moves

TogekissEvosAttacks:
	db -1 ; no more evolutions
	db 1, DISARM_VOICE ; evolution move
	db 1, HURRICANE ; Sky Attack → new move
	db 1, EXTREMESPEED
	db 1, AURA_SPHERE
	db 1, AIR_SLASH
	db 1, PLAY_ROUGH ; Sw/Sh move
	db 1, FUTURE_SIGHT ; Sw/Sh move
	db -1 ; no more level-up moves

YanmegaEvosAttacks:
	db -1 ; no more evolutions
	db 1, SPIRIT_SWEEP ; evolution move
	db 1, NIGHT_SLASH
	db 1, TACKLE
	db 1, FORESIGHT
	db 1, LEAF_SNIP
	db 6, QUICK_ATTACK
	db 11, DOUBLE_TEAM
	db 14, SONIC_BOOM
	db 17, PROTECT ; Detect → similar move
	db 22, HOLY_FLAME ; Supersonic → new move
	db 27, SUPERSONIC ; Uproar → Supersonic
	db 30, PURSUIT
if DEF(FAITHFUL)
	db 33, ANCIENTPOWER
else
	db 35, ANCIENTPOWER
endc
	db 38, SLASH ; Feint → Slash
	db 43, WING_ATTACK ; Slash → Wing Attack
	db 46, SCREECH
	db 49, U_TURN
	db 54, AIR_SLASH
	db 57, SPIRIT_VOICE
	db 62, FLY ; new move
	db -1 ; no more level-up moves

LeafeonEvosAttacks:
	db -1 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, LEER ; Tail Whip → similar move
	db 1, RAZOR_LEAF ; evolution move
	db 5, POISON_GAS ; Sand Attack → similar move
	db 9, DOUBLE_KICK ; Baby-Doll Eyes → LGPE move
	db 13, QUICK_ATTACK
	db 17, BITE ; Grass Whistle → new move
	db 20, ENERGY_BALL ; Magical Leaf → TM move
	db 25, GIGA_DRAIN
	db 29, SWORDS_DANCE
	db 33, HEALINGLIGHT ; Synthesis → similar move
	db 37, SEED_BOMB ; Sunny Day → tutor move
	db 41, DOUBLE_EDGE ; Last Resort → tutor move
	db 45, SUNNY_DAY ; Leaf Blade → Sunny Day
	db -1 ; no more level-up moves

GlaceonEvosAttacks:
	db -1 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, LEER ; Tail Whip → similar move
	db 1, ICY_WIND ; evolution move
	db 5, POISON_GAS ; Sand Attack → similar move
	db 9, DOUBLE_KICK ; Baby-Doll Eyes → LGPE move
	db 13, QUICK_ATTACK
	db 17, BITE
	db 20, ICE_SHARD ; Ice Fang → Ice Shard
	db 25, HAIL ; Ice Shard → Hail
	db 29, BARRIER
	db 33, MIRROR_COAT
	db 37, ICE_BEAM ; Hail → TM move
	db 41, DOUBLE_EDGE ; Last Resort → tutor move
	db 45, BLIZZARD
	db -1 ; no more level-up moves

MamoswineEvosAttacks:
	db -1 ; no more evolutions
	db 1, ANCIENTPOWER
	db 1, PECK
	db 1, FORESIGHT ; Odor Sleuth → similar move
	db 5, BITE ; Mud Sport → egg move
	db 8, ICE_SHARD ; Powder Snow → Ice Shard
	db 11, POISON_GAS
	db 14, ENDURE
	db 18, MAGNITUDE ; Mud Bomb → new move
	db 21, HAIL
	db 24, AVALANCHE ; Ice Fang → egg move
	db 28, TAKE_DOWN
	db 34, ROCK_BLAST ; Double Hit → Sw/Sh move
	db 37, BULLDOZE ; Mist → TM move
	db 41, THRASH
	db 46, EARTHQUAKE
	db 52, BLIZZARD
	db 58, SCARY_FACE
	db -1 ; no more level-up moves

CLunasaZEvosAttacks:
	db -1 ; no more evolutions
	db 1, TRICK_ROOM
	db 1, TACKLE
	db 1, CONVERSION
	db 1, NASTY_PLOT ; evolution move
	db 7, PSYBEAM
	db 12, LEAF_STORM
	db 18, RECOVER
	db 23, GROWTH ; Magnet Rise → new move
	db 29, AURORA_BEAM ; Signal Beam → new move
	db 34, LIFE_BALANCE ; Embargo → HGSS tutor move
	db 40, BARRIER ; Discharge → event move
	db 45, THUNDERBOLT ; Lock-On → TM move
	db 50, FIVEELEMENTS
	db 56, MIRROR_COAT ; Magic Coat → new move
	db 62, ZAP_CANNON
	db 67, POWER_BEAM
	db -1 ; no more level-up moves

SylveonEvosAttacks:
	db -1 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, LEER ; Tail Whip → similar move
	db 1, DISARM_VOICE ; evolution move
	db 5, POISON_GAS ; Sand Attack → similar move
	db 9, DOUBLE_KICK ; Baby-Doll Eyes → LGPE move
	db 13, QUICK_ATTACK
	db 17, SWIFT
	db 20, DRAINING_KISS
	db 25, SKILL_SWAP
	db 29, HEAL_BELL ; Misty Terrain → HGSS tutor move
	db 33, LIGHT_SCREEN
	db 37, MOONBLAST
	db 41, DOUBLE_EDGE ; Last Resort → tutor move
	db 45, PLAY_ROUGH ; Psych Up → new move
	db -1 ; no more level-up moves

PerrserkerEvosAttacks:
	db -1 ; no more evolutions
	db 1, IRON_HEAD ; evolution move
	db 1, COUNTER ; Metal Burst → similar move
	db 1, PLAY_ROUGH ; Iron Defense → TR move
	db 1, ASTONISH ; Fake Out → new move
	db 1, GROWL
	db 1, HONE_TOOLS
	db 1, SCRATCH
	db 12, PAY_DAY
	db 16, METAL_CLAW
	db 20, PURSUIT ; Taunt → new move
	db 24, SWAGGER
	db 31, FURY_STRIKES
	db 36, SCREECH
	db 42, SLASH
	db 48, AVARICE_BITE ; Metal Sound → TR move
	db 54, THRASH
	db 60, COLOR_FIST ; TR move
	db -1 ; no more level-up moves

CursolaEvosAttacks:
	db -1 ; no more evolutions
	db 1, SHADOW_DANCE
	db 1, TACKLE
	db 1, DEFENSE_CURL ; Harden → similar move
	db 1, ASTONISH
	db 1, DISABLE
	db 15, HAZE ; Spite → egg move
	db 20, ANCIENTPOWER
	db 25, HEX
	db 30, CURSE
	db 35, GIGA_DRAIN ; Strength Sap → TM move
	db 40, POWER_GEM
	db 45, NIGHT_SHADE
	db 50, HYDRO_PUMP ; Grudge → TR move
	db 55, MIRROR_COAT
	db -1 ; no more level-up moves

SirfetchDEvosAttacks:
	db -1 ; no more evolutions
	db 1, CUT ; Fury Cutter → HM move
	db 1, COUNTER ; Iron Defense → egg move ; evolution move
	db 1, QUICK_ATTACK ; First Impression → egg move
	db 1, PECK
	db 1, POISON_GAS ; Sand Attack → similar move
	db 1, LEER
if DEF(FAITHFUL)
	db 15, ROCK_SMASH
else
	db 15, REVERSAL ; Rock Smash → TM move
endc
	db 20, FEINT_ATTACK ; Brutal Swing → similar move
	db 25, PROTECT ; Detect → similar move
	db 30, KNOCK_OFF
	db 35, STEEL_WING ; Defog → TM move
if DEF(FAITHFUL)
	db 40, NIGHT_SLASH ; Brick Break → egg move
else
	db 40, ROCK_SMASH ; Brick Break
endc
	db 45, SWORDS_DANCE
	db 50, BODY_SLAM ; Slam → TR move
	db 55, POISON_JAB ; Leaf Blade → TR move
	db 60, COLOR_FIST ; Final Gambit → TR move
	db 65, DIVE_KICK
	db 70, ULTICHARGE ; Meteor Assault → similar move
	db -1 ; no more level-up moves


MrRimeEvosAttacks:
	db -1 ; no more evolutions
	db 1, RECOVER ; Slack Off → similar move
	db 1, ENCORE
	db 1, PROTECT
	db 1, LIGHT_SCREEN
	db 1, REFLECT
	db 1, SAFEGUARD
	db 1, ENERGY_LIGHT
	db 1, TACKLE ; Pound → similar move
	db 1, RAPID_SPIN
	db 1, BATON_PASS
	db 1, ICE_SHARD
	db 12, PSYSHOT
	db 16, METRONOME ; Ally Switch → TR move
	db 20, ICY_WIND
	db 24, DOUBLE_KICK
	db 28, PSYBEAM
	db 32, HYPNOSIS
	db 36, MIRROR_COAT
	db 40, SUCKER_PUNCH
	db 44, ICE_BEAM ; Freeze-Dry → TR move
	db 48, MANA_BURST
	db 52, CONFUSE_RAY ; Teeter Dance → egg move
	db -1 ; no more level-up moves

WyrdeerEvosAttacks:
	db -1 ; no more evolutions
	db 1, EXTRASENSORY ; evolution move
	db 1, TACKLE
	db 3, LEER
	db 7, ASTONISH
	db 10, HYPNOSIS
	db 13, STOMP
	db 16, POISON_GAS ; Sand-Attack → similar move
	db 21, HEADBUTT ; Take Down → tutor move
	db 23, CONFUSE_RAY
	db 27, CALM_MIND
	db 33, TAKE_DOWN ; Role Play → Take Down
	db 38, HOLY_CHARGE
	db 43, THRASH ; Jump Kick → egg move
	db 49, SKILL_SWAP ; Imprison → tutor move
	db 55, TENSION_KICK ; Captivate → new move
	db 60, CURSE_THORN ; Me First → egg move
	db 65, DOUBLE_EDGE ; new move
	db -1 ; no more level-up moves

KleavorEvosAttacks:
	db -1 ; no more evolutions
	db 1, ROCK_BULLET ; evolution move
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, FOCUS_ENERGY
	db 9, PURSUIT
	db 13, BLADE_FLASH
	db 17, LEAF_STORM
	db 21, AERIAL_ACE
	db 25, LEAF_SNIP ; Fury Cutter → similar move
	db 29, SLASH
	db 33, GLARE ; Razor Wind → new move
	db 37, DEFENSE_CURL ; Stealth Rock → new move
	db 41, CRASH_CROSS
	db 45, AVARICE_BITE ; Night Slash → Prism tutor move
	db 49, COLOR_FIST ; Double Hit → SV TM move
	db 50, STONE_RISE ; Stone Axe → new move
	db 57, SWORDS_DANCE
	db -1 ; no more level-up moves

UrsalunaEvosAttacks:
	db -1 ; no more evolutions
	db 1, BULLDOZE ; evolution move
	db 1, GUNK_SHOT ; HGSS tutor move
	db 1, THIEF ; Covet → TM move
	db 1, SCRATCH
	db 1, LEER
	db 1, LICK
	db 1, FOCUS_ENERGY ; Fake Tears → egg move
	db 8, FURY_STRIKES ; Fury Swipes → similar move
	db 15, FEINT_ATTACK
	db 22, BELLY_DRUM ; Sweet Scent → egg move
	db 25, PLAY_ROUGH ; Play Nice → egg move
	db 29, SLASH
	db 38, SCARY_FACE
	db 47, REST
	db 49, AVARICE_BITE ; Snore → egg move
	db 58, THRASH
	db 67, COLOR_FIST ; Hammer Arm → SV TM move
	db 76, DOUBLE_EDGE ; new move
	db 85, GUNK_SHOT ; SV TM move
	db -1 ; no more level-up moves

SneaslerEvosAttacks:
	db -1 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, BITE ; Taunt → egg move
	db 8, QUICK_ATTACK
	db 10, FEINT_ATTACK
	db 14, LOW_KICK ; Rock Smash → Low Kick
	db 16, FURY_STRIKES ; Fury Swipes → similar move
	db 20, LEAF_STORM
	db 22, METAL_CLAW
	db 25, HONE_TOOLS
	db 28, POISON_JAB
	db 32, SCREECH
	db 35, SLASH
	db 40, SWORDS_DANCE
	db 44, CRASH_CROSS ; Punishment → TM move
	db 47, COLOR_FIST
	db 50, GUNK_SHOT ; SV TM move
	db -1 ; no more level-up moves

OverqwilEvosAttacks:
	db -1 ; no more evolutions
	db 1, AQUA_JET ; Water Gun → SV TM move
	db 1, SPIKES
	db 1, TACKLE
	db 1, SEAL_NEEDLE
	db 5, DEFENSE_CURL ; Harden → TM move
	db 9, MINIMIZE
	db 13, PIN_MISSILE
	db 17, TREMORS
	db 21, POISON_NAIL
	db 25, LIFE_BALANCE ; Stockpile + Spit Up → HGSS move tutor
	db 29, REVERSAL ; Revenge → Sw/Sh move
	db 33, WATER_PULSE ; Brine → TM move
	db 37, AVARICE_BITE ; Dark Pulse → SV TM move
	db 41, TAKE_DOWN
	db 45, AQUA_CUT
	db 49, POISON_JAB
	db 53, DESTINY_BOND
	db 57, EXPLOSION ; Self-Destruct → similar move
	db 60, DOUBLE_EDGE ; Fell Stinger → event move
	db -1 ; no more level-up moves

DudunsparceEvosAttacks:
	db -1 ; no more evolutions
	db 1, RAGE
	db 1, DEFENSE_CURL
	db 3, TREMORS
	db 6, ASTONISH ; Spite → egg move
	db 8, PURSUIT
	db 11, SCREECH
	db 13, POISON_GAS
	db 16, FURY_STRIKES ; Yawn → event move (Fury Attack)
	db 18, ANCIENTPOWER
	db 21, BODY_SLAM
	db 23, HOLY_FLAME ; Drill Run → new move
	db 26, AURA_WAVE
	db 28, TAKE_DOWN
	db 31, TAILWIND ; Coil → new move
	db 33, DIG
	db 36, GLARE
	db 38, DOUBLE_EDGE
	db 41, EARTHQUAKE ; Endeavor → TM move
	db 43, AIR_SLASH
	db 46, HEX ; Dragon Rush → egg move
	db 48, ENDURE
	db 51, REVERSAL ; Flail → similar move
	db 53, HURRICANE
	db 56, VOICE_BIND ; Boomburst → similar move
	db 58, FLAME_HIT ; new move
	db -1 ; no more level-up moves

ClodsireEvosAttacks:
	db -1 ; no more evolutions
	db 1, CURSE_THORN ; evolution move
	db 1, POISON_GAS ; Mud Shot → similar move
	db 1, LEER ; Tail Whip → similar move
	db 5, TACKLE
	db 9, SEAL_NEEDLE ; Poison Tail → similar move
	db 15, HEADBUTT ; Slam → tutor move
	db 19, RECOVER ; Mud Bomb → egg move
	db 24, AMNESIA
	db 31, BELLY_DRUM ; Yawn → event move
	db 36, EARTHQUAKE
	db 41, POISON_JAB
	db 48, POISON_NAIL
	db 53, GUNK_SHOT ; Sludge Wave → similar move
	db -1 ; no more level-up moves

AnnihilapeEvosAttacks:
	db -1 ; no more evolutions
	db 1, SHADOW_HIT ; Shadow Punch → similar move ; evolution move
	db 1, FLAME_HIT
	db 1, RAGE
	db 1, SCRATCH
	db 1, LOW_KICK
	db 1, LEER
	db 1, FOCUS_ENERGY
	db 5, FURY_STRIKES ; Fury Swipes → similar move
	db 8, KARATE_CHOP
	db 12, PURSUIT
	db 15, SEISMIC_TOSS
	db 19, SWAGGER
	db 22, CROSS_CHOP
	db 26, REVERSAL ; Assurance → egg move
	db 30, FEINT_ATTACK ; Punishment → new move
	db 35, THRASH
	db 39, COLOR_FIST
	db 44, SCREECH
	db 48, GUNK_SHOT ; Stomping Tantrum → HGSS tutor move
	db 53, FLAME_HIT
	db -1 ; no more level-up moves

EggEvosAttacks::
	db -1 ; no more evolutions
	db -1 ; no more level-up moves
