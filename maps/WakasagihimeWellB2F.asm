WakasagihimeWellB2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  9, 11, WAKASAGIHIME_WELL_B1F, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  4, SPRITE_GYM_GUY, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, WakasagihimeWellB2FGymGuideScript, -1
	itemball_event 15,  5, DAMP_ROCK, 1, EVENT_WAKASAGIHIME_WELL_B2F_DAMP_ROCK

WakasagihimeWellB2FGymGuideScript:
	checkevent EVENT_GOT_KINGS_ROCK_IN_WAKASAGIHIME_WELL
	iftrue_jumptextfaceplayer WakasagihimeWellB2FGymGuideText_GotKingsRock
	faceplayer
	opentext
	writetext WakasagihimeWellB2FGymGuideText
	promptbutton
	verbosegiveitem KINGS_ROCK
	iffalse_endtext
	setevent EVENT_GOT_KINGS_ROCK_IN_WAKASAGIHIME_WELL
	endtext

WakasagihimeWellB2FGymGuideText:
	text "I'm waiting to see"
	line "Wakasagi's moment"
	cont "of evolution."

	para "Through observa-"
	line "tion, I made a new"
	cont "discovery."

	para "A Wakasagi with a"
	line "King's Rock often"

	para "gets bitten by a"
	line "Yumeko."

	para "Here, I'll share a"
	line "King's Rock with"
	cont "you."
	done

WakasagihimeWellB2FGymGuideText_GotKingsRock:
	text "I'm going to be"
	line "like Wakasagi."

	para "I'll wait patient-"
	line "ly, so I can see"
	cont "one evolve."
	done
