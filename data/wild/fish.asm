MACRO fishgroup
; mon chance, mon+item chance, old rod, good rod, super rod
	db \1, \2
	dw \3, \4, \5
ENDM

FishGroups:
; entries correspond to FISHGROUP_* constants
	table_width FISHGROUP_DATA_LENGTH, FishGroups
	fishgroup 65 percent, (65 + 5) percent, .Shore_Old,            .Shore_Good,            .Shore_Super
	fishgroup 75 percent, (75 + 1) percent, .Ocean_Old,            .Ocean_Good,            .Ocean_Super
	fishgroup 70 percent, (70 + 5) percent, .Lake_Old,             .Lake_Good,             .Lake_Super
	fishgroup 70 percent, (70 + 5) percent, .Well_Old,             .Well_Good,             .Well_Super
	fishgroup 70 percent, (70 + 3) percent, .River_Old,            .River_Good,            .River_Super
	fishgroup 55 percent, (55 + 5) percent, .Pond_Old,             .Pond_Good,             .Pond_Super
	fishgroup 60 percent, (60 + 3) percent, .Yukari_Old,          .Yukari_Good,          .Yukari_Super
	fishgroup 60 percent, (65 + 5) percent, .Qwilfish_Swarm_Old,   .Qwilfish_Swarm_Good,   .Qwilfish_Swarm_Super
	fishgroup 60 percent, (60 + 3) percent, .Remoraid_Swarm_Old,   .Remoraid_Swarm_Good,   .Remoraid_Swarm_Super
	fishgroup 60 percent, (60 + 3) percent, .SLilyBlack_Old,         .SLilyBlack_Good,         .SLilyBlack_Super
	fishgroup 55 percent, (55 + 1) percent, .Yukari_2_Old,        .Yukari_2_Good,        .Yukari_2_Super
	fishgroup 60 percent, (60 + 3) percent, .WhirlIslands_Old,     .WhirlIslands_Good,     .WhirlIslands_Super
	fishgroup 60 percent, (60 + 3) percent, .Qwilfish_Old,         .Qwilfish_Good,         .Qwilfish_Super
	fishgroup 60 percent, (60 + 3) percent, .Remoraid_Old,         .Remoraid_Good,         .Remoraid_Super
	assert_table_length NUM_FISHGROUPS

MACRO fishentry
; % chance, species, level
	db \1
	if _NARG == 4
		dp \2, \3
		shift
	else
		dp \2
	endc
	db \3
ENDM

.Shore_Old:
	fishentry  70 percent + 1, CCHIYURI,   10
	fishentry  85 percent + 1, CCHIYURI,   10
	fishentry 100 percent,     CMAI,     10
.Shore_Good:
	fishentry  35 percent,     CCHIYURI,   20
	fishentry  70 percent,     CDAICHAN,     20
	fishentry  90 percent + 1, CDAICHAN,     20
	fishentry 100 percent,     0,          20 ; corsola morn/day, letty eve/night
.Shore_Super:
	fishentry  40 percent,     CDAICHAN,     40
	fishentry  70 percent,     0,          40 ; corsola morn/day, letty eve/night
	fishentry  90 percent + 1, CDAICHAN,     40
	fishentry 100 percent,     DAICHAN,    40

.Ocean_Old:
	fishentry  70 percent + 1, CCHIYURI,   10
	fishentry  85 percent + 1, CCHIYURI,   10
	fishentry 100 percent,     CSANAE,  10
.Ocean_Good:
	fishentry  35 percent,     LILYBLACK,   20
	fishentry  70 percent,     GENGETSU,  20
	fishentry  90 percent + 1, CTEI,   20
	fishentry 100 percent,     YUMEKO,   20
.Ocean_Super:
	fishentry  40 percent,     CTEI,   40
	fishentry  70 percent,     YUMEKO,   40
	fishentry  90 percent + 1, GENGETSU, 40
	fishentry 100 percent,     TEI,    40

.Lake_Old:
.River_Old:
.Well_Old:
	fishentry  70 percent + 1, LILYBLACK,   10
	fishentry  85 percent + 1, LILYBLACK,   10
	fishentry 100 percent,     CSANAE,    10
.Lake_Good:
.River_Good:
.Well_Good:
	fishentry  35 percent,     LILYBLACK,   20
	fishentry  70 percent,     AFLANDRE,    20
	fishentry  90 percent + 1, AFLANDRE,    20
	fishentry 100 percent,     AFLANDRE,    20
.Lake_Super:
.River_Super:
	fishentry  40 percent,     AFLANDRE,    40
	fishentry  70 percent,     AFLANDRE,    40
	fishentry  90 percent + 1, LILYBLACK,   40
	fishentry 100 percent,     CLETTY,    40

.Well_Super:
	fishentry  40 percent,     AFLANDRE,    40
	fishentry  70 percent,     AFLANDRE,    40
	fishentry  90 percent + 1, YUMEKO,   40
	fishentry 100 percent,     CLETTY,    40

.Pond_Old:
	fishentry  70 percent + 1, CCHIYURI,   10
	fishentry  85 percent + 1, CCHIYURI,   10
	fishentry 100 percent,     CMAI,    10
.Pond_Good:
	fishentry  35 percent,     LILYBLACK,   20
	fishentry  70 percent,     KURUMI,    20
	fishentry  90 percent + 1, KURUMI,    20
	fishentry 100 percent,     KURUMI,    20
.Pond_Super:
	fishentry  40 percent,     KURUMI,    40
	fishentry  70 percent,     KURUMI,    40
	fishentry  90 percent + 1, LILYBLACK,   40
	fishentry 100 percent,     KURUMI,    40

.Yukari_Old:
	fishentry  70 percent + 1, LILYBLACK,   10
	fishentry  85 percent + 1, LILYBLACK,   10
	fishentry 100 percent,     LILYBLACK,   10
.Yukari_Good:
	fishentry  35 percent,     LILYBLACK,   20
	fishentry  70 percent,     LILYBLACK,   20
	fishentry  90 percent + 1, LILYBLACK,   20
	fishentry 100 percent,     YUKARI,    20
.Yukari_Super:
	fishentry  40 percent,     LILYBLACK,   40
	fishentry  70 percent,     YUKARI,    40
	fishentry  90 percent + 1, LILYBLACK,   40
	fishentry 100 percent,     TYUKARI,  40

.Qwilfish_Swarm_Old:
	fishentry  70 percent + 1, LILYBLACK,   5
	fishentry  85 percent + 1, LILYBLACK,   5
	fishentry 100 percent,     QWILFISH,   5
.Qwilfish_Swarm_Good:
	fishentry  35 percent,     LILYBLACK,   20
	fishentry  70 percent,     QWILFISH,   20
	fishentry  90 percent + 1, QWILFISH,   20
	fishentry 100 percent,     QWILFISH,   20
.Qwilfish_Swarm_Super:
	fishentry  40 percent,     QWILFISH,   40
	fishentry  70 percent,     QWILFISH,   40
	fishentry  90 percent + 1, QWILFISH,   40
	fishentry 100 percent,     QWILFISH,   40

.Remoraid_Swarm_Old:
	fishentry  70 percent + 1, LILYBLACK,   10
	fishentry  85 percent + 1, LILYBLACK,   10
	fishentry 100 percent,     REMORAID,   10
.Remoraid_Swarm_Good:
	fishentry  35 percent,     LILYBLACK,   20
	fishentry  70 percent,     REMORAID,   20
	fishentry  90 percent + 1, REMORAID,   20
	fishentry 100 percent,     REMORAID,   20
.Remoraid_Swarm_Super:
	fishentry  40 percent,     REMORAID,   40
	fishentry  70 percent,     REMORAID,   40
	fishentry  90 percent + 1, REMORAID,   40
	fishentry 100 percent,     REMORAID,   40

.SLilyBlack_Old:
	fishentry  70 percent + 1, LILYBLACK,   10
	fishentry  85 percent + 1, LILYBLACK,   10
	fishentry 100 percent,     LILYBLACK,   10
.SLilyBlack_Good:
	fishentry  35 percent,     LILYBLACK,   20
	fishentry  70 percent,     LILYBLACK,   20
	fishentry  90 percent + 1, LILYBLACK,   20
	fishentry 100 percent,     SLILYBLACK,   20
.SLilyBlack_Super:
	fishentry  40 percent,     LILYBLACK,   40
	fishentry  70 percent,     SLILYBLACK,   40
	fishentry  90 percent + 1, LILYBLACK,   40
	fishentry 100 percent,     LILYBLACK,   40

.Yukari_2_Old:
	fishentry  70 percent + 1, LILYBLACK,   10
	fishentry  85 percent + 1, LILYBLACK,   10
	fishentry 100 percent,     LILYBLACK,   10
.Yukari_2_Good:
	fishentry  35 percent,     LILYBLACK,   10
	fishentry  70 percent,     LILYBLACK,   10
	fishentry  90 percent + 1, LILYBLACK,   10
	fishentry 100 percent,     YUKARI,    10
.Yukari_2_Super:
	fishentry  40 percent,     LILYBLACK,   10
	fishentry  70 percent,     YUKARI,    10
	fishentry  90 percent + 1, LILYBLACK,   10
	fishentry 100 percent,     TYUKARI,  10

.WhirlIslands_Old:
	fishentry  70 percent + 1, LILYBLACK,   10
	fishentry  85 percent + 1, LILYBLACK,   10
	fishentry 100 percent,     CDAICHAN,     10
.WhirlIslands_Good:
	fishentry  35 percent,     LILYBLACK,   20
	fishentry  70 percent,     CDAICHAN,     20
	fishentry  90 percent + 1, CDAICHAN,     20
	fishentry 100 percent,     CFLANDRE,     20
.WhirlIslands_Super:
	fishentry  40 percent,     CDAICHAN,     40
	fishentry  70 percent,     CFLANDRE,     40
	fishentry  90 percent + 1, DAICHAN,    40
	fishentry 100 percent,     FLANDRE,     40

.Qwilfish_Old:
	fishentry  70 percent + 1, LILYBLACK,   10
	fishentry  85 percent + 1, LILYBLACK,   10
	fishentry 100 percent,     GENGETSU,  10
.Qwilfish_Good:
	fishentry  35 percent,     LILYBLACK,   20
	fishentry  70 percent,     GENGETSU,  20
	fishentry  90 percent + 1, GENGETSU,  20
	fishentry 100 percent,     GENGETSU,  20
.Qwilfish_Super:
	fishentry  40 percent,     GENGETSU,  40
	fishentry  70 percent,     GENGETSU,  40
	fishentry  90 percent + 1, LILYBLACK,   40
	fishentry 100 percent,     QWILFISH,   40

.Remoraid_Old:
	fishentry  70 percent + 1, LILYBLACK,   10
	fishentry  85 percent + 1, LILYBLACK,   10
	fishentry 100 percent,     KURUMI,    10
.Remoraid_Good:
	fishentry  35 percent,     LILYBLACK,   20
	fishentry  70 percent,     KURUMI,    20
	fishentry  90 percent + 1, KURUMI,    20
	fishentry 100 percent,     KURUMI,    20
.Remoraid_Super:
	fishentry  40 percent,     KURUMI,    40
	fishentry  70 percent,     KURUMI,    40
	fishentry  90 percent + 1, LILYBLACK,   40
	fishentry 100 percent,     REMORAID,   40

