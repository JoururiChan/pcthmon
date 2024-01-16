MountMoonSquare_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, MountMoonSquareDisappearMoonStoneCallback
	callback MAPCALLBACK_OBJECTS, MountMoonSquareDisappearRockCallback

	def_warp_events
	warp_event 21, 11, ROUTE_4, 2
	warp_event 13,  7, MOUNT_MOON_GIFT_SHOP, 1

	def_coord_events
	coord_event  7, 11, 0, CMeiraDance

	def_bg_events
	bg_event  7,  7, BGEVENT_ITEM + MOON_STONE, EVENT_MOUNT_MOON_SQUARE_HIDDEN_MOON_STONE
	bg_event 17,  7, BGEVENT_JUMPTEXT, DontLitterSignText

	def_object_events
	object_event  6,  6, SPRITE_CMEIRA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MT_MOON_SQUARE_CMEIRA
	object_event  7,  6, SPRITE_CMEIRA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MT_MOON_SQUARE_CMEIRA
	object_event  7,  7, SPRITE_N64, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, PAL_NPC_COPY_BG_GRAY, OBJECTTYPE_COMMAND, jumpstd, smashrock, 0, EVENT_MT_MOON_SQUARE_ROCK

	object_const_def
	const MOUNTMOONSQUARE_CMEIRA1
	const MOUNTMOONSQUARE_CMEIRA2
	const MOUNTMOONSQUARE_ROCK

MountMoonSquareDisappearMoonStoneCallback:
	setevent EVENT_MOUNT_MOON_SQUARE_HIDDEN_MOON_STONE
	endcallback

MountMoonSquareDisappearRockCallback:
	disappear MOUNTMOONSQUARE_ROCK
	endcallback

CMeiraDance:
	checkflag ENGINE_MT_MOON_SQUARE_CMEIRA
	iftrue DoNothingScript
	readvar VAR_WEEKDAY
	ifnotequal MONDAY, DoNothingScript
	checktime 1 << NITE
	iffalse DoNothingScript
	appear MOUNTMOONSQUARE_CMEIRA1
	appear MOUNTMOONSQUARE_CMEIRA2
	applyonemovement PLAYER, step_up
	pause 15
	appear MOUNTMOONSQUARE_ROCK
	turnobject MOUNTMOONSQUARE_CMEIRA1, RIGHT
	cry CMEIRA
	waitsfx
	pause 30
	follow MOUNTMOONSQUARE_CMEIRA1, MOUNTMOONSQUARE_CMEIRA2
	cry CMEIRA
	applymovement MOUNTMOONSQUARE_CMEIRA1, CMeiraDanceStep1
	cry CMEIRA
	applyonemovement MOUNTMOONSQUARE_CMEIRA1, slow_jump_step_right
	cry CMEIRA
	applymovement MOUNTMOONSQUARE_CMEIRA1, CMeiraDanceStep3
	cry CMEIRA
	applyonemovement MOUNTMOONSQUARE_CMEIRA1, slow_jump_step_left
	cry CMEIRA
	applymovement MOUNTMOONSQUARE_CMEIRA1, CMeiraDanceStep1
	stopfollow
	applyonemovement MOUNTMOONSQUARE_CMEIRA2, slow_step_down
	follow MOUNTMOONSQUARE_CMEIRA1, MOUNTMOONSQUARE_CMEIRA2
	applyonemovement MOUNTMOONSQUARE_CMEIRA1, slow_step_right
	stopfollow
	turnobject MOUNTMOONSQUARE_CMEIRA1, DOWN
	pause 10
	showemote EMOTE_SHOCK, MOUNTMOONSQUARE_CMEIRA1, 15
	turnobject MOUNTMOONSQUARE_CMEIRA1, DOWN
	cry CMEIRA
	pause 15
	follow MOUNTMOONSQUARE_CMEIRA1, MOUNTMOONSQUARE_CMEIRA2
	applymovement MOUNTMOONSQUARE_CMEIRA1, CMeiraFleeMovement
	disappear MOUNTMOONSQUARE_CMEIRA1
	disappear MOUNTMOONSQUARE_CMEIRA2
	stopfollow
	clearevent EVENT_MOUNT_MOON_SQUARE_HIDDEN_MOON_STONE
	setflag ENGINE_MT_MOON_SQUARE_CMEIRA
	end

CMeiraDanceStep1:
	slow_step_down
	slow_jump_step_down
	step_end

CMeiraDanceStep3:
	slow_step_up
	slow_jump_step_up
	step_end

CMeiraFleeMovement:
	step_right
	step_right
	step_right
	jump_step_right
	step_right
	step_right
	step_end

DontLitterSignText:
	text "Mt.Moon Square"
	line "Don't Litter"
	done
