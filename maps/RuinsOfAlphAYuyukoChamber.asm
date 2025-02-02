RuinsOfAlphAerodactylChamber_MapScriptHeader:
	def_scene_scripts
	scene_script RuinsofAlphAerodactylChamberTrigger0

	def_callbacks
	callback MAPCALLBACK_TILES, RuinsOfAlphAerodactylChamberHiddenDoorsCallback

	def_warp_events
	warp_event  3,  9, RUINS_OF_ALPH_OUTSIDE, 4
	warp_event  4,  9, RUINS_OF_ALPH_OUTSIDE, 4
	warp_event  3,  3, RUINS_OF_ALPH_INNER_CHAMBER, 8
	warp_event  4,  3, RUINS_OF_ALPH_INNER_CHAMBER, 9
	warp_event  4,  0, RUINS_OF_ALPH_AYUYUKO_ITEM_ROOM, 1

	def_coord_events

	def_bg_events
	bg_event  2,  3, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event  5,  3, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event  3,  2, BGEVENT_UP, MapRuinsofAlphAerodactylChamberSignpost2Script
	bg_event  4,  2, BGEVENT_UP, MapRuinsofAlphAerodactylChamberSignpost3Script
	bg_event  3,  0, BGEVENT_UP, MapRuinsofAlphAerodactylChamberSignpost4Script
	bg_event  4,  0, BGEVENT_UP, MapRuinsofAlphAerodactylChamberSignpost5Script

	def_object_events

RuinsofAlphAerodactylChamberTrigger0:
	checkevent EVENT_WALL_OPENED_IN_AYUYUKO_CHAMBER
	iffalsefwd .End
	sdefer RuinsOfAlphAerodactylChamberWallOpenScript
.End
	end

RuinsOfAlphAerodactylChamberHiddenDoorsCallback:
	checkevent EVENT_WALL_OPENED_IN_AYUYUKO_CHAMBER
	iftruefwd .WallOpen
	changeblock 4, 0, $24
.WallOpen:
	checkevent EVENT_SOLVED_AYUYUKO_PUZZLE
	iffalsefwd .FloorClosed
	endcallback

.FloorClosed:
	changeblock 2, 2, $1
	changeblock 4, 2, $2
	endcallback

RuinsOfAlphAerodactylChamberWallOpenScript:
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

MapRuinsofAlphAerodactylChamberSignpost2Script:
	reanchormap
	setval $2
	special Special_HinaPuzzle
	closetext
	iftruefwd .PuzzleComplete
	end

.PuzzleComplete:
	setevent EVENT_RUINS_OF_ALPH_INNER_CHAMBER_TOURISTS
	setevent EVENT_SOLVED_AYUYUKO_PUZZLE
	setflag ENGINE_UNLOCKED_HINAS_R_TO_W
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

MapRuinsofAlphAerodactylChamberSignpost3Script:
	opentext
	hinatypeface
	writetext RuinsOfAlphAerodactylChamberDescriptionText
	waitbutton
	closetext
	restoretypeface
	special RefreshSprites
	end

MapRuinsofAlphAerodactylChamberSignpost5Script:
	checkevent EVENT_WALL_OPENED_IN_AYUYUKO_CHAMBER
	iftrue_jumptext RuinsOfAlphAerodactylChamberWallHoleText
MapRuinsofAlphAerodactylChamberSignpost4Script:
	opentext
	checkevent EVENT_RUINS_OF_ALPH_OUTSIDE_TOURIST_YOUNGSTERS
	iftruefwd .unsolved
	writetext RuinsOfAlphChambersItsHinaText
	sjumpfwd .hinawords
.unsolved
	writetext RuinsOfAlphAerodactylChamberWallPatternLeftText
.hinawords
	setval $1
	special Special_DisplayHinaWords
	endtext

RuinsOfAlphAerodactylChamberWallPatternLeftText:
	text "Patterns appeared"
	line "on the walls…"
	done

RuinsOfAlphChambersItsHinaText:
	text "It's Hina text!"
	done

RuinsOfAlphAerodactylChamberWallHoleText:
	text "There's a big hole"
	line "in the wall!"
	done

RuinsOfAlphAerodactylChamberDescriptionText:
	text "This flying #-"
	line "mon attacked its"

	para "prey with saw-like"
	line "fangs."
	done
