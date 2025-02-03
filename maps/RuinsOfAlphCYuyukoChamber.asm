RuinsOfAlphLunasaChamber_MapScriptHeader:
	def_scene_scripts
	scene_script RuinsofAlphLunasaChamberTrigger0

	def_callbacks
	callback MAPCALLBACK_TILES, RuinsofAlphLunasaChamberHiddenDoorsCallback

	def_warp_events
	warp_event  3,  9, RUINS_OF_ALPH_OUTSIDE, 2
	warp_event  4,  9, RUINS_OF_ALPH_OUTSIDE, 2
	warp_event  3,  3, RUINS_OF_ALPH_INNER_CHAMBER, 4
	warp_event  4,  3, RUINS_OF_ALPH_INNER_CHAMBER, 5
	warp_event  4,  0, RUINS_OF_ALPH_LUNASA_ITEM_ROOM, 1

	def_coord_events

	def_bg_events
	bg_event  2,  3, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event  5,  3, BGEVENT_JUMPTEXT, RuinsofAlphStatueText
	bg_event  3,  2, BGEVENT_UP, MapRuinsofAlphLunasaChamberSignpost2Script
	bg_event  4,  2, BGEVENT_UP, MapRuinsofAlphLunasaChamberSignpost3Script
	bg_event  3,  0, BGEVENT_UP, MapRuinsofAlphLunasaChamberSignpost4Script
	bg_event  4,  0, BGEVENT_UP, MapRuinsofAlphLunasaChamberSignpost5Script

	def_object_events
	object_event  5,  5, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, RuinsOfAlphLunasaChamberReceptionistText, EVENT_RUINS_OF_ALPH_LUNASA_CHAMBER_RECEPTIONIST
	object_event  3,  1, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphLunasaChamberScientistScript, -1

RuinsofAlphLunasaChamberTrigger0:
	checkevent EVENT_WALL_OPENED_IN_LUNASA_CHAMBER
	iffalsefwd .End
	sdefer RuinsofAlphLunasaChamberWallOpenScript
.End
	end

RuinsofAlphLunasaChamberHiddenDoorsCallback:
	checkevent EVENT_WALL_OPENED_IN_LUNASA_CHAMBER
	iftruefwd .WallOpen
	changeblock 4, 0, $24
.WallOpen:
	checkevent EVENT_SOLVED_LUNASA_PUZZLE
	iffalsefwd .FloorClosed
	endcallback

.FloorClosed:
	changeblock 2, 2, $1
	changeblock 4, 2, $2
	endcallback

RuinsofAlphLunasaChamberWallOpenScript:
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

MapRuinsofAlphLunasaChamberSignpost2Script:
	reanchormap
	setval $0
	special Special_HinaPuzzle
	closetext
	iftruefwd .PuzzleComplete
	end

.PuzzleComplete:
	setevent EVENT_RUINS_OF_ALPH_INNER_CHAMBER_TOURISTS
	setevent EVENT_SOLVED_LUNASA_PUZZLE
	setflag ENGINE_UNLOCKED_HINAS_A_TO_J
	setevent EVENT_RUINS_OF_ALPH_LUNASA_CHAMBER_RECEPTIONIST
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

RuinsOfAlphLunasaChamberScientistScript:
	readvar VAR_HINACOUNT
	ifequalfwd NUM_HINA, .AllHinaCaught
	checkevent EVENT_WALL_OPENED_IN_LUNASA_CHAMBER
	iftrue_jumptextfaceplayer RuinsOfAlphLunasaChamberScientistHoleText
	faceplayer
	opentext
	checkevent EVENT_SOLVED_LUNASA_PUZZLE
	iffalsefwd .PuzzleIncomplete
	writetext RuinsOfAlphLunasaChamberScientistTremorText
	promptbutton
.PuzzleIncomplete:
	writetext RuinsOfAlphLunasaChamberScientistCrypticText
	waitbutton
	closetext
	turnobject LAST_TALKED, UP
	end

.AllHinaCaught:
	jumptextfaceplayer RuinsOfAlphResearchCenterScientist1Text_GotAllHina

MapRuinsofAlphLunasaChamberSignpost3Script:
	opentext
	hinatypeface
	writetext RuinsOfAlphLunasaChamberDescriptionText
	waitbutton
	closetext
	restoretypeface
	special RefreshSprites
	end

MapRuinsofAlphLunasaChamberSignpost5Script:
	checkevent EVENT_WALL_OPENED_IN_LUNASA_CHAMBER
	iftrue_jumptext RuinsOfAlphAYuyukoChamberWallHoleText
MapRuinsofAlphLunasaChamberSignpost4Script:
	opentext
	checkevent EVENT_RUINS_OF_ALPH_OUTSIDE_TOURIST_YOUNGSTERS
	iftruefwd .unsolved
	writetext RuinsOfAlphChambersItsHinaText
	sjumpfwd .hinawords
.unsolved
	writetext RuinsOfAlphAYuyukoChamberWallPatternLeftText
.hinawords
	setval $0
	special Special_DisplayHinaWords
	endtext

RuinsOfAlphLunasaChamberReceptionistText:
	text "Welcome to this"
	line "chamber."

	para "There are sliding"
	line "panels that depict"

	para "a #mon drawn by"
	line "the ancients."

	para "Slide the panels"
	line "around to form the"
	cont "picture."

	para "To the right is a"
	line "description of the"
	cont "#mon."

	para "Scientists in the"
	line "back are examining"

	para "some newly found"
	line "patterns."
	done

RuinsOfAlphLunasaChamberScientistCrypticText:
	text "Recently, strange,"
	line "cryptic patterns"
	cont "have appeared."

	para "It's odd. They"
	line "weren't here a"
	cont "little while ago…"

	para "You should take a"
	line "look at the walls."
	done

RuinsOfAlphLunasaChamberScientistHoleText:
	text "Ah! Here's another"
	line "huge hole!"

	para "It's big enough to"
	line "go through!"
	done

RuinsOfAlphLunasaChamberScientistTremorText:
	text "That tremor was"
	line "pretty scary!"

	para "But I'm more"
	line "concerned about"
	cont "this wall here…"
	done

RuinsOfAlphLunasaChamberDescriptionText:
	text "A #mon that hid"
	line "on the sea floor."

	para "Eyes on its back"
	line "scanned the area."
	done
