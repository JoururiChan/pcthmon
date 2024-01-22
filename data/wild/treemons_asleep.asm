; Used by CheckSleepingTreeMon

AsleepTreeMons:
	table_width 1, AsleepTreeMons
	dr .Morn
	dr .Day
	dr .Nite
	dr .Eve
	assert_table_length NUM_DAYTIMES
.Nite
.Eve
	dp CGYOKU
	dp CREIMU
	dp CMARISA
	dp CSAKUYA
	dp CMAGAN
	dp CMAGAN
	dp CELIS
	dp CKIKURI
	dp EXEGGCUTE
	dp LEDYBA
	db 0 ; end

.Morn
.Day
	dp RIKAKO
	dp HOOTHOOT
	dp NOCTOWL
	dp SPINARAK
	dp HERACROSS
	db 0 ; end
