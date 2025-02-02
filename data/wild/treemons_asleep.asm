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
	dp CCIRNO
	dp CMYSTIA
	db 0 ; end

.Morn
.Day
	dp CRIKAKO
	dp CWRIGGLE
	dp CMYSTIA
	dp CKEINE
	dp CIKU
	db 0 ; end
