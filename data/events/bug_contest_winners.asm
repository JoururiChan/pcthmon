BugContestantPointers:
	table_width 2, BugContestantPointers
	dw BugContestant_BugCatcherDon ; This reverts back to the player
	dw BugContestant_BugCatcherDon
	dw BugContestant_BugCatcherEd
	dw BugContestant_CooltrainerMNick
	dw BugContestant_PokefanMWilliam
	dw BugContestant_BugCatcherBenny
	dw BugContestant_CamperBarry
	dw BugContestant_PicnickerCindy
	dw BugContestant_BugCatcherJosh
	dw BugContestant_SchoolboyJohnny
	dw BugContestant_SchoolboyKipp
	assert_table_length NUM_BUG_CONTESTANTS + 1

MACRO contest_winner
; species, score
	dp \1
	dw \2
ENDM

BugContestant_BugCatcherDon:
	db BUG_CATCHER, DON
	contest_winner CMAGAN,     300
	contest_winner CRIKAKO,    285
	contest_winner CGYOKU,   226

BugContestant_BugCatcherEd:
	db BUG_CATCHER, ED
	contest_winner YANMA,      286
	contest_winner CRIKAKO, 251
	contest_winner CGYOKU,   237

BugContestant_CooltrainerMNick:
	db COOLTRAINERM, NICK
	contest_winner CCHEN,    357
	contest_winner CCHEN, 349
	contest_winner CLILYWHITE,     368

BugContestant_PokefanMWilliam:
	db POKEFANM, WILLIAM
	contest_winner CMAGAN,   332
	contest_winner CCHEN, 324
	contest_winner CRIKAKO,    321

BugContestant_BugCatcherBenny:
	db BUG_CATCHER, BENNY
	contest_winner CGYOKU, 318
	contest_winner CGYOKU,     295
	contest_winner CGYOKU,   285

BugContestant_CamperBarry:
	db CAMPER, BARRY
	contest_winner CLILYWHITE,     366
	contest_winner CRIKAKO,    329
	contest_winner CMAGAN,     314

BugContestant_PicnickerCindy:
	db PICNICKER, CINDY
	contest_winner CKANA, 341
	contest_winner CKANA,    301
	contest_winner CGYOKU,   264

BugContestant_BugCatcherJosh:
	db BUG_CATCHER, JOSH
	contest_winner CCHEN,    326
	contest_winner CMIMA, 292
	contest_winner CWRIGGLE,    282

BugContestant_SchoolboyJohnny:
	db SCHOOLBOY, JOHNNY
	contest_winner CLILYWHITE,     270
	contest_winner CLILYWHITE,     282
	contest_winner CGYOKU,   251

BugContestant_SchoolboyKipp:
	db SCHOOLBOY, KIPP
	contest_winner CRIKAKO,    267
	contest_winner CKANA,      254
	contest_winner CMAGAN,     259
