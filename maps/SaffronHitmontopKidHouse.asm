SaffronHRinKidHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, SAFFRON_CITY, 19
	warp_event  3,  7, SAFFRON_CITY, 19

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  4, SPRITE_CHILD, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SaffronHRinKidHouseChildScript, -1
	object_event  2,  4, SPRITE_TOHOFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SaffronHRinKidHouseTeacherScript, -1

	object_const_def
	const SAFFRONHRINKIDHOUSE_CHILD

SaffronHRinKidHouseChildScript:
	showtextfaceplayer .Text1
	applymovement SAFFRONHRINKIDHOUSE_CHILD, .SpinMovement
	faceplayer
	pause 20
	checkpoke HRIN
	iffalsefwd .Done
	showemote EMOTE_SHOCK, SAFFRONHRINKIDHOUSE_CHILD, 15
	showtext .Text2
	applymovement SAFFRONHRINKIDHOUSE_CHILD, .Spin2Movement
	pause 20
	showtext .Text3
	setevent EVENT_SHOWED_SAFFRON_KID_HRIN
.Done
	end

.Text1:
	text "Top! Top!"
	line "Hit-mon-TOP!"
	done

.Text2:
	text "Top… Top? TOP!"
	line "HRIN! ♥"
	done

.Text3:
	text "That's a"
	line "HRin!"
	cont "Oh boy! So cool!"
	done

.SpinMovement:
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
.Spin2Movement:
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	step_end

SaffronHRinKidHouseTeacherScript:
	checkevent EVENT_GOT_AIR_BALLOON_FROM_SAFFRON
	iftrue_jumptextfaceplayer .Text3
	faceplayer
	opentext
	checkevent EVENT_SHOWED_SAFFRON_KID_HRIN
	iffalse_jumpopenedtext .Text1
	writetext .Text2
	promptbutton
	verbosegiveitem AIR_BALLOON
	iffalse_endtext
	setevent EVENT_GOT_AIR_BALLOON_FROM_SAFFRON
	jumpthisopenedtext

.Text3:
	text "My son finally got"
	line "to meet his favor-"
	cont "ite #mon."
	done

.Text1:
	text "My son likes to"
	line "pretend he's a"
	cont "#mon."

	para "It gets a little"
	line "embarrassing some-"
	cont "times."

	para "Maybe if he saw a"
	line "real HRin he"
	cont "would calm down…"
	done

.Text2:
	text "Oh my! You made my"
	line "son so happy!"

	para "It's not much of a"
	line "thank-you, but I'd"

	para "like you to have"
	line "this."
	done
