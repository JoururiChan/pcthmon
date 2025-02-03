RuinsOfAlphCYuyukoChamber_MapScriptHeader:
	def_scene_scripts
	scene_script RuinsofAlphCYuyukoChamberTrigger0

	def_callbacks
	callback MAPCALLBACK_TILES, RuinsofAlphCYuyukoChamberHiddenDoorsCallback

	def_warp_events
	warp_event  3,  9, RUINS_OF_ALPH_OUTSIDE, 3
	warp_event  4,  9, RUINS_OF_ALPH_OUTSIDE, 3
	warp_event  3,  3, RUINS_OF_ALPH_INNER_CHAMBER, 6
	warp_event  4,  3, RUINS_OF_ALPH_INNER_CHAMBER, 7
	warp_event  4,  0, RUINS_OF_ALPH_CYUYUKO_ITEM_ROOM, 1

	def_coord_events

	def_bg_events
	bg_event  2,  3, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event  5,  3, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event  3,  2, BGEVENT_UP, MapRuinsofAlphCYuyukoChamberSignpost2Script
	bg_event  4,  2, BGEVENT_UP, MapRuinsofAlphCYuyukoChamberSignpost3Script
	bg_event  3,  0, BGEVENT_UP, MapRuinsofAlphCYuyukoChamberSignpost4Script
	bg_event  4,  0, BGEVENT_UP, MapRuinsofAlphCYuyukoChamberSignpost5Script

	def_object_events

RuinsofAlphCYuyukoChamberTrigger0:
	special SpecialCYuyukoChamber
	checkevent EVENT_WALL_OPENED_IN_CYUYUKO_CHAMBER
	iffalsefwd .End
	sdefer RuinsOfAlphCYuyukoChamberWallOpenScript
.End
	end

RuinsofAlphCYuyukoChamberHiddenDoorsCallback:
	checkevent EVENT_WALL_OPENED_IN_CYUYUKO_CHAMBER
	iftruefwd .WallOpen
	changeblock 4, 0, $24
.WallOpen:
	checkevent EVENT_SOLVED_CYUYUKO_PUZZLE
	iffalsefwd .FloorClosed
	endcallback

.FloorClosed:
	changeblock 2, 2, $1
	changeblock 4, 2, $2
	endcallback

RuinsOfAlphCYuyukoChamberWallOpenScript:
	pause 30
	earthquake 30
	showemote EMOTE_SHOCK, PLAYER, 20
	pause 30
	playsound SFX_STRENGTH
	changeblock 4, 0, $25
	refreshmap
	earthquake 50
	setscene $1
	endtext

MapRuinsofAlphCYuyukoChamberSignpost2Script:
	reanchormap
	setval $1
	special Special_HinaPuzzle
	closetext
	iftruefwd .PuzzleComplete
	end

.PuzzleComplete:
	setevent EVENT_RUINS_OF_ALPH_INNER_CHAMBER_TOURISTS
	setevent EVENT_SOLVED_CYUYUKO_PUZZLE
	setflag ENGINE_UNLOCKED_HINAS_K_TO_Q
	setmapscene RUINS_OF_ALPH_INNER_CHAMBER, $1
	earthquake 30
	showemote EMOTE_SHOCK, PLAYER, 15
	changeblock 2, 2, $14
	changeblock 4, 2, $15
	refreshmap
	playsound SFX_STRENGTH
	earthquake 80
	applyonemovement PLAYER, skyfall_top
	playsound SFX_KINESIS
	waitsfx
	pause 20
	warpcheck
	end

MapRuinsofAlphCYuyukoChamberSignpost3Script:
	opentext
	hinatypeface
	writetext RuinsOfAlphCYuyukoChamberDescriptionText
	waitbutton
	closetext
	restoretypeface
	special RefreshSprites
	end

MapRuinsofAlphCYuyukoChamberSignpost5Script:
	checkevent EVENT_WALL_OPENED_IN_CYUYUKO_CHAMBER
	iftrue_jumptext RuinsOfAlphAYuyukoChamberWallHoleText
MapRuinsofAlphCYuyukoChamberSignpost4Script:
	opentext
	checkevent EVENT_RUINS_OF_ALPH_OUTSIDE_TOURIST_YOUNGSTERS
	iftruefwd .unsolved
	writetext RuinsOfAlphChambersItsHinaText
	sjumpfwd .hinawords
.unsolved
	writetext RuinsOfAlphAYuyukoChamberWallPatternLeftText
.hinawords
	setval $2
	special Special_DisplayHinaWords
	endtext

RuinsOfAlphCYuyukoChamberDescriptionText:
	text "This #mon"
	line "drifted in the"

	para "sea by twisting"
	line "its ten tentacles."
	done
