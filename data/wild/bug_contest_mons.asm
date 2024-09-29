MACRO contest_mon
	db \1
	dp \2
	db \3, \4
ENDM

ContestMons:
	;            %, species,   min, max
	contest_mon 15, CGYOKU,    7, 18
	contest_mon 15, CMIMA,      7, 18
	contest_mon 10, CMIMA,     9, 18
	contest_mon 10, CMAGAN,      9, 18
	contest_mon  5, CGYOKU, 12, 15
	contest_mon  5, CMAGAN,   12, 15
	contest_mon 10, RIKAKO,    10, 16
	contest_mon 10, KANA,      10, 17
	contest_mon  5, RIKAKO,   12, 15
	contest_mon  5, YANMA,      13, 14
	contest_mon  5, CHEN,    13, 14
	contest_mon  5, ELILYWHITE,     13, 14
ContestMonsEnd:
