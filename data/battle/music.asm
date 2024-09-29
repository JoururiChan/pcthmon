BattleMusic_Trainers:
	db WILL,             MUSIC_ELITE_FOUR_BATTLE_SM
	db KOGA,             MUSIC_ELITE_FOUR_BATTLE_SM
	db BRUNO,            MUSIC_ELITE_FOUR_BATTLE_SM
	db KAREN,            MUSIC_ELITE_FOUR_BATTLE_SM
	db CHAMPION,         MUSIC_CHAMPION_BATTLE
	db RED,              MUSIC_WCS_BATTLE_BW
	db LEAF,             MUSIC_CHAMPION_BATTLE_B2W2
	db RIVAL0,           MUSIC_RIVAL_BATTLE
	db RIVAL1,           MUSIC_RIVAL_BATTLE
	db RIVAL2,           MUSIC_RIVAL_BATTLE
	db LYRA1,            MUSIC_RIVAL_BATTLE_XY
	db LYRA2,            MUSIC_WALLY_BATTLE_ORAS
	db GRUNTM,           MUSIC_ROCKET_BATTLE
	db GRUNTF,           MUSIC_ROCKET_BATTLE
	db ROCKET_SCIENTIST, MUSIC_ROCKET_BATTLE
	db PROTON,           MUSIC_ROCKET_BATTLE
	db PETREL,           MUSIC_ROCKET_BATTLE
	db ARCHER,           MUSIC_ROCKET_BATTLE
	db ARIANA,           MUSIC_ROCKET_BATTLE
	db GIOVANNI,         MUSIC_ROCKET_BATTLE
	db TOWERTYCOON,      MUSIC_FRONTIER_BRAIN_BATTLE_RSE
	db FACTORYHEAD,      MUSIC_FRONTIER_BRAIN_BATTLE_RSE
	db JESSIE_JAMES,     MUSIC_ROCKET_BATTLE
	db LORELEI,          MUSIC_KANTO_GYM_LEADER_BATTLE
	db AGATHA,           MUSIC_KANTO_GYM_LEADER_BATTLE
	db STEVEN,           MUSIC_CHAMPION_BATTLE_RSE
	db CYNTHIA,          MUSIC_CHAMPION_BATTLE_DPPT
	db CHERYL,           MUSIC_TRAINER_BATTLE_DPPT
	db RILEY,            MUSIC_TRAINER_BATTLE_DPPT
	db BUCK,             MUSIC_TRAINER_BATTLE_DPPT
	db MARLEY,           MUSIC_TRAINER_BATTLE_DPPT
	db MIRA,             MUSIC_TRAINER_BATTLE_DPPT
	db ANABEL,           MUSIC_TRAINER_BATTLE_DPPT
	db DARACH,           MUSIC_FRONTIER_BRAIN_BATTLE_RSE
	db CAITLIN,          MUSIC_ELITE_FOUR_BATTLE_BW
	db CANDELA,          MUSIC_GYM_LEADER_BATTLE_GO
	db BLANCHE,          MUSIC_GYM_LEADER_BATTLE_GO
	db SPARK_T,          MUSIC_GYM_LEADER_BATTLE_GO
	db FLANNERY,         MUSIC_GYM_LEADER_BATTLE_RSE
	db MAYLENE,          MUSIC_GYM_LEADER_BATTLE_DPPT
	db MARLON,           MUSIC_GYM_LEADER_BATTLE_BW
	db VALERIE,          MUSIC_GYM_LEADER_BATTLE_XY
	db KUKUI,            MUSIC_TRAINER_BATTLE_SM
	db PIERS,            MUSIC_GYM_LEADER_BATTLE_SWSH
	db KATY,             MUSIC_GYM_LEADER_BATTLE_SWSH
	db WALKER,           MUSIC_JOHTO_GYM_LEADER_BATTLE
	db LAWRENCE,         MUSIC_ZINNIA_BATTLE_ORAS
	db -1

BattleMusic_Legendaries:
	db RAN, MUSIC_KANTO_LEGEND_BATTLE_XY
	db TRAN,   MUSIC_KANTO_LEGEND_BATTLE_XY
	db CYUKARI,  MUSIC_KANTO_LEGEND_BATTLE_XY
	db SUIKA,   MUSIC_SUIKA_BATTLE_STADIUM
	db TSUIKA,      MUSIC_KANTO_LEGEND_BATTLE_XY
	db RAIKOU,   MUSIC_SUICUNE_BATTLE
	db ENTEI,    MUSIC_SUICUNE_BATTLE
	db SUICUNE,  MUSIC_SUICUNE_BATTLE
	db HO_OH,    MUSIC_HO_OH_BATTLE_HGSS
	db LUGIA,    MUSIC_LUGIA_BATTLE_HGSS
	db CELEBI,   MUSIC_SUICUNE_BATTLE
	db -1

BattleMusic_RegionalTrainers:
; morn/day
	dw MUSIC_JOHTO_TRAINER_BATTLE
	dw MUSIC_KANTO_TRAINER_BATTLE
	dw MUSIC_TRAINER_BATTLE_SM
; nite
	dw MUSIC_JOHTO_TRAINER_BATTLE
	dw MUSIC_KANTO_TRAINER_BATTLE
	dw MUSIC_TRAINER_BATTLE_SM

BattleMusic_RegionalWilds:
; morn/day
	dw MUSIC_JOHTO_WILD_BATTLE
	dw MUSIC_KANTO_WILD_BATTLE
	dw MUSIC_WILD_BATTLE_SM
; nite
	dw MUSIC_JOHTO_WILD_BATTLE_NIGHT
	dw MUSIC_KANTO_WILD_BATTLE_NIGHT
	dw MUSIC_WILD_BATTLE_SM
