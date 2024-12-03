TreeMons:
; entries correspond to TREEMON_SET_* constants
	table_width 2, TreeMons
	dw TreeMonSet_City
	dw TreeMonSet_Canyon
	dw TreeMonSet_Town
	dw TreeMonSet_Route
	dw TreeMonSet_Kanto
	dw TreeMonSet_Lake
	dw TreeMonSet_Forest
	dw TreeMonSet_Apricorns
	dw TreeMonSet_NoisyForest
	dw TreeMonSet_Rock
	assert_table_length NUM_TREEMON_SETS
	dw TreeMonSet_City ; unused

; Two tables each (normal, rare).

MACRO tree_mon
; %, species, level
	db \1
	if _NARG == 4
		dp \2, \3
		shift
	else
		dp \2
	endc
	db \3
ENDM

TreeMonSet_City:
TreeMonSet_Canyon:
	tree_mon 80, ELIS,    10
	tree_mon 20, AIPOM,      10
	db -1
	; rare
	tree_mon 50, ELIS,    10
	tree_mon 30, HERACROSS,  10
	tree_mon 20, AIPOM,      10
	db -1

TreeMonSet_Town:
	tree_mon 65, ELIS,    10
	tree_mon 15, CKIKURI,      10
	tree_mon 20, AIPOM,      10
	db -1
	; rare
	tree_mon 60, ELIS,    10
	tree_mon 30, HERACROSS,  10
	tree_mon 10, CHIYURI,     10
	db -1

TreeMonSet_Route:
	tree_mon 50, SWRIGGLE,   10
	tree_mon 15, CKEINE,   10
	tree_mon 15, MYSTIA,     10
	tree_mon 20, CIRNO,  10
	db -1
	; rare
	tree_mon 40, MURKROW,    10
	tree_mon 40, PINECO,     10
	tree_mon 20, CIRNO,  10
	db -1

TreeMonSet_Kanto:
	tree_mon 65, SWRIGGLE,   10
	tree_mon 15, CKIKURI,      10
	tree_mon 20, CIRNO,  10
	db -1
	; rare
	tree_mon 40, MURKROW,    10
	tree_mon 40, PINECO,     10
	tree_mon 20, CIRNO,  10
	db -1

TreeMonSet_Lake:
	tree_mon 65, SWRIGGLE,   10
	tree_mon 15, RIKAKO,    10
	tree_mon 20, CIRNO,  10
	db -1
	; rare
	tree_mon 50, SWRIGGLE,   10
	tree_mon 30, PINECO,     10
	tree_mon 20, CIRNO,  10
	db -1

TreeMonSet_Forest:
	tree_mon 50, SWRIGGLE,   10
	tree_mon 30, PINECO,     10
	tree_mon 10, CMYSTIA,    10
	tree_mon  5, FGYOKU, 10
	tree_mon  5, MAGAN,   10
	db -1
	; rare
	tree_mon 60, SWRIGGLE,   10
	tree_mon 15, CGYOKU,   10
	tree_mon 15, CMAGAN,     10
	tree_mon  5, CMIMA,    10
	tree_mon  5, CMAGAN,     10
	db -1

TreeMonSet_Apricorns:
	tree_mon 50, ELIS,               10
	tree_mon 20, CKIKURI,                 10
	tree_mon 20, AIPOM,                 10
	tree_mon 10, DDAICHAN, 10
	db -1
	; rare
	tree_mon 40, ELIS,               10
	tree_mon 20, DDAICHAN, 10
	tree_mon 20, HERACROSS,             10
	tree_mon 20, CHIYURI,                10
	db -1

TreeMonSet_NoisyForest:
	tree_mon 60, PINECO,                  LEVEL_FROM_BADGES - 3
	tree_mon  5, FORRETRESS,              LEVEL_FROM_BADGES + 2
	tree_mon 35, CCIRNO, LEVEL_FROM_BADGES + 0
	db -1
	; rare
	tree_mon 60, CCIRNO, LEVEL_FROM_BADGES + 0
	tree_mon 30, PINECO,                  LEVEL_FROM_BADGES - 2
	tree_mon 10, FORRETRESS,              LEVEL_FROM_BADGES + 3
	db -1

TreeMonSet_Rock:
	tree_mon 70, CDAICHAN,     15
	tree_mon 25, CSARA,    15
	tree_mon  5, SHUCKLE,    15
	db -1
