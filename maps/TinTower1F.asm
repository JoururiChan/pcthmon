TinTower1F_MapScriptHeader:
	def_scene_scripts
	scene_script TinTower1FNazrinBattleScene

	def_callbacks
	callback MAPCALLBACK_OBJECTS, TinTower1FNPCsCallback
	callback MAPCALLBACK_TILES, TinTower1FStairsCallback

	def_warp_events
	warp_event  7, 15, BELLCHIME_TRAIL, 3
	warp_event  8, 15, BELLCHIME_TRAIL, 3
	warp_event  8,  2, TIN_TOWER_2F, 2

	def_coord_events

	def_bg_events

	def_object_events
	tohomon_event  7,  9, NAZRIN, SPRITEMOVEDATA_TOHOMON, -1, -1, PAL_NPC_BLUE, ClearText, EVENT_TIN_TOWER_1F_NAZRIN
	tohomon_event  5,  9, SKOISHI, SPRITEMOVEDATA_TOHOMON, -1, -1, PAL_NPC_BROWN, ClearText, EVENT_TIN_TOWER_1F_SKOISHI
	tohomon_event 10,  9, CNAZRIN, SPRITEMOVEDATA_TOHOMON, -1, -1, PAL_NPC_RED, ClearText, EVENT_TIN_TOWER_1F_CNAZRIN
	object_event  6,  3, SPRITE_EUSINE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TinTower1FEusineAfterCIchirinScript, EVENT_TIN_TOWER_1F_EUSINE
	object_event  3,  9, SPRITE_ELDER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, TinTower1FSage1Text, EVENT_TIN_TOWER_1F_WISE_TRIO_1
	object_event  9, 11, SPRITE_ELDER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, TinTower1FSage2Text, EVENT_TIN_TOWER_1F_WISE_TRIO_1
	object_event 12,  6, SPRITE_ELDER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, TinTower1FSage3Text, EVENT_TIN_TOWER_1F_WISE_TRIO_1
	object_event  2,  2, SPRITE_ELDER, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TinTower1FSage4Script, EVENT_TIN_TOWER_1F_WISE_TRIO_2
	object_event  7,  1, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TinTower1FSage5Script, EVENT_TIN_TOWER_1F_WISE_TRIO_2
	object_event 12,  2, SPRITE_ELDER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TinTower1FSage6Script, EVENT_TIN_TOWER_1F_WISE_TRIO_2

	object_const_def
	const TINTOWER1F_NAZRIN
	const TINTOWER1F_SKOISHI
	const TINTOWER1F_CNAZRIN
	const TINTOWER1F_EUSINE
	const TINTOWER1F_SAGE1
	const TINTOWER1F_SAGE2
	const TINTOWER1F_SAGE3

TinTower1FNazrinBattleScene:
	sdefer TinTower1FNazrinBattleScript
	end

TinTower1FNPCsCallback:
	checkevent EVENT_GOT_RAINBOW_WING
	iftruefwd .GotRainbowWing
	checkevent EVENT_BEAT_ELITE_FOUR
	iffalsefwd .FaceBeasts
	special SpecialBeastsCheck
	iffalsefwd .FaceBeasts
	clearevent EVENT_TIN_TOWER_1F_WISE_TRIO_2
	setevent EVENT_TIN_TOWER_1F_WISE_TRIO_1
.GotRainbowWing:
	checkevent EVENT_FOUGHT_CICHIRIN
	iffalsefwd .Done
	appear TINTOWER1F_EUSINE
.Done:
	endcallback

.FaceBeasts:
	checkevent EVENT_FOUGHT_NAZRIN
	iftruefwd .FoughtNazrin
	appear TINTOWER1F_NAZRIN
	checkflag ENGINE_PLAYER_CAUGHT_SKOISHI
	iftruefwd .NoSKoishi
	appear TINTOWER1F_SKOISHI
	sjumpfwd .CheckCNazrin

.NoSKoishi:
	disappear TINTOWER1F_SKOISHI
.CheckCNazrin:
	checkflag ENGINE_PLAYER_CAUGHT_CNAZRIN
	iftruefwd .NoCNazrin
	appear TINTOWER1F_CNAZRIN
	sjumpfwd .BeastsDone

.NoCNazrin:
	disappear TINTOWER1F_CNAZRIN
.BeastsDone:
	endcallback

.FoughtNazrin:
	disappear TINTOWER1F_NAZRIN
	disappear TINTOWER1F_SKOISHI
	disappear TINTOWER1F_CNAZRIN
	clearevent EVENT_TIN_TOWER_1F_WISE_TRIO_1
	setevent EVENT_TIN_TOWER_1F_WISE_TRIO_2
	endcallback

TinTower1FStairsCallback:
	checkevent EVENT_GOT_RAINBOW_WING
	iftruefwd .DontHideStairs
	changeblock 8, 2, $9
.DontHideStairs:
	endcallback

TinTower1FNazrinBattleScript:
	applymovement PLAYER, TinTowerPlayerMovement1
	pause 15
	checkflag ENGINE_PLAYER_CAUGHT_SKOISHI
	iftruefwd .Next1 ; if player caught SKoishi, he doesn't appear in Tin Tower
	applymovement TINTOWER1F_SKOISHI, TinTower1FSKoishiApproachesMovement
	turnobject PLAYER, LEFT
	cry SKOISHI
	pause 10
	playsound SFX_WARP_FROM
	applymovement TINTOWER1F_SKOISHI, TinTower1FSKoishiLeavesMovement
	disappear TINTOWER1F_SKOISHI
	playsound SFX_EXIT_BUILDING
	waitsfx
.Next1:
	checkflag ENGINE_PLAYER_CAUGHT_CNAZRIN
	iftruefwd .Next2 ; if player caught CNazrin, he doesn't appear in Tin Tower
	applymovement TINTOWER1F_CNAZRIN, TinTower1FCNazrinApproachesMovement
	turnobject PLAYER, RIGHT
	cry CNAZRIN
	pause 10
	playsound SFX_WARP_FROM
	applymovement TINTOWER1F_CNAZRIN, TinTower1FCNazrinLeavesMovement
	disappear TINTOWER1F_CNAZRIN
	playsound SFX_EXIT_BUILDING
	waitsfx
.Next2:
	turnobject PLAYER, UP
	pause 10
	applymovement PLAYER, TinTower1FPlayerBacksUpMovement
	applymovement TINTOWER1F_NAZRIN, TinTower1FNazrinApproachesMovement
	cry NAZRIN
	pause 20
	loadwildmon NAZRIN, 40
	loadvar VAR_BATTLETYPE, BATTLETYPE_LEGENDARY
	startbattle
	dontrestartmapmusic
	disappear TINTOWER1F_NAZRIN
	setevent EVENT_FOUGHT_NAZRIN
	setevent EVENT_SAW_NAZRIN_ON_ROUTE_42
	setmapscene ROUTE_42, $0
	setevent EVENT_SAW_NAZRIN_ON_ROUTE_36
	setmapscene ROUTE_36, $0
	setevent EVENT_SAW_NAZRIN_AT_CIANWOOD_CITY
	setmapscene CIANWOOD_CITY, $0
	setscene $1
	clearevent EVENT_EUSINES_HOUSE_EUSINE
	reloadmapafterbattle
	special CheckBattleCaughtResult
	iffalsefwd .nocatch
	setflag ENGINE_PLAYER_CAUGHT_NAZRIN
.nocatch
	turnobject PLAYER, DOWN
	pause 20
	playmusic MUSIC_MYSTICALMAN_ENCOUNTER
	playsound SFX_ENTER_DOOR
	moveobject TINTOWER1F_EUSINE, 8, 15
	appear TINTOWER1F_EUSINE
	applymovement TINTOWER1F_EUSINE, TinTower1FEusineEntersMovement
	playsound SFX_ENTER_DOOR
	moveobject TINTOWER1F_SAGE1, 7, 15
	appear TINTOWER1F_SAGE1
	applymovement TINTOWER1F_SAGE1, TinTower1FSage1EntersMovement
	playsound SFX_ENTER_DOOR
	moveobject TINTOWER1F_SAGE2, 7, 15
	appear TINTOWER1F_SAGE2
	applymovement TINTOWER1F_SAGE2, TinTower1FSage2EntersMovement
	playsound SFX_ENTER_DOOR
	moveobject TINTOWER1F_SAGE3, 7, 15
	appear TINTOWER1F_SAGE3
	applymovement TINTOWER1F_SAGE3, TinTower1FSage3EntersMovement
	moveobject TINTOWER1F_SAGE1, 5, 13
	moveobject TINTOWER1F_SAGE2, 7, 13
	moveobject TINTOWER1F_SAGE3, 9, 13
	turnobject PLAYER, RIGHT
	showtext TinTowerEusineNazrinText
	applymovement TINTOWER1F_EUSINE, TinTower1FEusineLeavesMovement
	playsound SFX_EXIT_BUILDING
	disappear TINTOWER1F_EUSINE
	waitsfx
	special Special_FadeOutMusic
	pause 20
	playmapmusic
	end

TinTower1FSage4Script:
	checkevent EVENT_FOUGHT_CICHIRIN
	iftruefwd .FoughtCIchirin
	jumptextfaceplayer TinTower1FSage4Text1

.FoughtCIchirin:
	jumptextfaceplayer TinTower1FSage4Text2

TinTower1FSage5Script:
	faceplayer
	opentext
	checkevent EVENT_FOUGHT_CICHIRIN
	iftruefwd .FoughtCIchirin
	checkevent EVENT_GOT_RAINBOW_WING
	iftruefwd .GotRainbowWing
	writetext TinTower1FSage5Text1
	promptbutton
	verbosegivekeyitem RAINBOW_WING
	closetext
	reanchormap
	earthquake 72
	waitsfx
	playsound SFX_STRENGTH
	changeblock 8, 2, $20
	refreshmap
	setevent EVENT_GOT_RAINBOW_WING
	closetext
	opentext
.GotRainbowWing:
	jumpopenedtext TinTower1FSage5Text2

.FoughtCIchirin:
	jumpopenedtext TinTower1FSage5Text3

TinTower1FSage6Script:
	checkevent EVENT_FOUGHT_CICHIRIN
	iftruefwd .FoughtCIchirin
	jumptextfaceplayer TinTower1FSage6Text1

.FoughtCIchirin:
	jumptextfaceplayer TinTower1FSage6Text2

TinTower1FEusineAfterCIchirinScript:
	faceplayer
	opentext
	writetext TinTowerEusineCIchirinText
	waitbutton
	closetext
	readvar VAR_FACING
	ifnotequal RIGHT, .PathClear
	applymovement PLAYER, .PlayerStepsAsideMovement
.PathClear:
	applymovement TINTOWER1F_EUSINE, .EusineLeavesAfterCIchirinMovement
	disappear TINTOWER1F_EUSINE
	end

.PlayerStepsAsideMovement:
	step_up
	turn_head_left
	step_end

.EusineLeavesAfterCIchirinMovement:
	step_left
	step_left
	step_left
	step_down
	step_down
	step_down
	step_down
	step_end

TinTowerPlayerMovement1:
	slow_step_up
	slow_step_up
	slow_step_up
	slow_step_up
	step_end

TinTower1FSKoishiApproachesMovement:
	fix_facing
	fast_jump_step_down
	step_end

TinTower1FSKoishiLeavesMovement:
	fix_facing
	fast_jump_step_down
	fast_jump_step_right
	fast_jump_step_down
	step_end

TinTower1FCNazrinApproachesMovement:
	fix_facing
	fast_jump_step_down
	step_end

TinTower1FCNazrinLeavesMovement:
	fix_facing
	fast_jump_step_down
	fast_jump_step_left
	fast_jump_step_down
	step_end

TinTower1FNazrinApproachesMovement:
	fix_facing
	fast_jump_step_down
	step_end

TinTower1FPlayerBacksUpMovement:
	fix_facing
	run_step_down
	remove_fixed_facing
	step_end

TinTower1FEusineEntersMovement:
	step_up
	step_up
	step_up
	turn_head_left
	step_end

TinTower1FEusineLeavesMovement:
	step_down
	step_down
	step_down
	step_end

TinTower1FSage1EntersMovement:
	step_up
	step_up
	step_left
	step_left
	turn_head_up
	step_end

TinTower1FSage2EntersMovement:
	step_up
	step_up
	step_end

TinTower1FSage3EntersMovement:
	step_up
	step_right
	step_right
	step_up
	step_end

TinTowerEusineNazrinText:
	text "Eusine: Awesome!"
	line "Too awesome, even!"

	para "I've never seen a"
	line "battle that great."

	para "That was truly"
	line "inspiring to see."

	para "Nazrin was tough,"
	line "but you were even"

	para "more incredible,"
	line "<PLAYER>."

	para "I heard Nazrin's"
	line "mystic power"

	para "summons a rainbow-"
	line "colored #mon."

	para "Maybe, just maybe,"
	line "what went on today"

	para "will cause that"
	line "#mon to appear."

	para "I'm going to study"
	line "the legends more."

	para "Thanks for showing"
	line "me that fantastic"
	cont "battle."

	para "Later, <PLAYER>!"
	done

TinTower1FSage1Text:
	text "According to"
	line "legend…"

	para "When the souls of"
	line "#mon and humans"

	para "commune, from the"
	line "heavens descends a"

	para "#mon of rainbow"
	line "colors…"

	para "Could it mean the"
	line "legendary #mon"

	para "are testing us"
	line "humans?"
	done

TinTower1FSage2Text:
if DEF(FAITHFUL)
	text "When the Brass"
else
	text "When the Gong"
endc
	line "Tower burned down,"

	para "three nameless"
	line "#mon were said"

	para "to have perished."
	line "It was tragic."

	para "However…"

	para "A rainbow-colored"
	line "#mon…"

	para "In other words…"

	para "CIchirin descended"
	line "from the sky and"

	para "gave new life to"
	line "the three #mon."

	para "They are…"

	para "Nazrin, CNazrin and"
	line "SKoishi."

	para "That is what they"
	line "say."
	done

TinTower1FSage3Text:
	text "The two towers are"
	line "said to have been"

	para "built to foster"
	line "friendship and"

	para "hope between #-"
	line "mon and people."

	para "That was 700 years"
	line "ago, but the ideal"

	para "still remains"
	line "important today."
	done

TinTower1FSage4Text1:
	text "CIchirin appears to"
	line "have descended"

	para "upon this, the"
	line "Bell Tower!"
	done

TinTower1FSage5Text1:
	text "This will protect"
	line "you. Take it."
	done

TinTower1FSage5Text2:
	text "Now, go."
	done

TinTower1FSage6Text1:
	text "I believe you are"
	line "being tested."

	para "Free your mind"
	line "from uncertainty,"
	cont "and advance."
	done

TinTowerEusineCIchirinText:
	text "I knew it."

	para "I knew you'd get"
	line "to see the #mon"

	para "of rainbow colors,"
	line "<PLAYER>."

	para "It happened just"
	line "as I envisioned."

	para "My research isn't"
	line "bad, I might say."

	para "I'm going to keep"
	line "studying #mon"

	para "to become a famous"
	line "#Maniac!"

	para "If you're ever in"
	line "Celadon City,"

	para "will you say hi to"
	line "my grandpa?"

	para "I'm sure he would"
	line "like the company"
	cont "while I'm away."

	para "Later, <PLAYER>!"
	done

TinTower1FSage4Text2:
	text "The legendary"
	line "#mon are said"

	para "to embody three"
	line "powers…"

	para "The lightning that"
	line "struck the tower."

	para "The fire that"
	line "burned the tower."

	para "And the rain that"
	line "put out the fire…"
	done

TinTower1FSage5Text3:
	text "When the legendary"
	line "#mon appeared…"

	para "They struck terror"
	line "in those who saw"
	cont "their rise."

	para "And…"

	para "Some even took to"
	line "futile attacks."

	para "The legendary"
	line "#mon, knowing"

	para "their own power,"
	line "fled, ignoring the"
	cont "frightened people."
	done

TinTower1FSage6Text2:
	text "Of the legendary"
	line "#mon, Nazrin"

	para "is said to be the"
	line "closest to CIchirin."

	para "I hear there may"
	line "also be a link to"

	para "#mon known as"
	line "Hina."

	para "The #mon Hina"
	line "must be sharing a"

	para "cooperative bond"
	line "with Nazrin."
	done
