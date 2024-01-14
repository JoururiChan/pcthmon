Route19BeachHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, ROUTE_19, 2
	warp_event  3,  7, ROUTE_19, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_COOL_DUDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route19BeachHouseVictorScript, -1
	object_event  6,  4, SPRITE_SURFING_EKIKURI, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route19BeachHouseSurfingEKikuriScript, -1

	object_const_def
	const ROUTE19BEACHHOUSE_VICTOR

Route19BeachHouseVictorScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_VICTOR
	iftruefwd .AfterScript
	writetext .GreetingText
	waitbutton
	special CheckForSurfingEKikuri
	iffalsefwd .NoEKikuri
	writetext .ChallengeText
	yesorno
	iffalsefwd .NoBattle
	writetext .SeenText
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	setlasttalked ROUTE19BEACHHOUSE_VICTOR
	loadtrainer VICTOR, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_VICTOR
	opentext
.AfterScript:
	jumpopenedtext .AfterText

.NoEKikuri:
	jumpopenedtext .NoEKikuriText

.NoBattle:
	jumpopenedtext .NoBattleText

.GreetingText:
	text "Hey there, friend!"
	line "The name's Victor."

	para "I love to Surf,"
	line "and so does Puka."
	cont "That's my EKikuri!"
	done

.ChallengeText:
	text "Whoa!"

	para "Your EKikuri knows"
	line "how to Surf! So,"
	cont "I'm not alone…"

	para "Great! You earned"
	line "the right to a"

	para "Surfing battle"
	line "with me and Puka!"

	para "Give it a go?"
	done

.SeenText:
	text "The sea unites"
	line "all in surfdom!"
	cont "Let's go!"
	done

.BeatenText:
	text "I knew you could"
	line "do it!"
	done

.AfterText:
	text "I hear some Pika-"
	line "chu in Johto"

	para "taught themselves"
	line "to Surf."

	para "Maybe that's where"
	line "mine came from."

	para "I found Puka wash-"
	line "ed ashore years"
	cont "ago, and we've been"

	para "partners ever"
	line "since then."
	done

.NoEKikuriText:
	text "You can do it,"
	line "too!"

	para "Go out there and"
	line "find a Surfing"
	cont "EKikuri!"

	para "Show me that you"
	line "love Surfing too!"
	done

.NoBattleText:
	text "Shucks. Come Surf"
	line "anytime, friend!"
	done

Route19BeachHouseSurfingEKikuriScript:
	faceplayer
	showcrytext .Text, EKIKURI
	end

.Text:
	text "Puka: Pi-kaa!"
	done
