local innoWin1 = GetConVar( "ttt_iWin1" )
local innoWin2 = GetConVar( "ttt_iWin2" )
local innoWin3 = GetConVar( "ttt_iWin3" )
local innoWin4 = GetConVar( "ttt_iWin4" )
local innoWin5 = GetConVar( "ttt_iWin5" )
local innoWin6 = GetConVar( "ttt_iWin6" )
local innoWin7 = GetConVar( "ttt_iWin7" )
local innoWin8 = GetConVar( "ttt_iWin8" )
local innoWin9 = GetConVar( "ttt_iWin9" )
local innoWin10 = GetConVar( "ttt_iWin10" )
local innoWin11 = GetConVar( "ttt_iWin11" )
local innoWin12 = GetConVar( "ttt_iWin12" )
local innoWin13 = GetConVar( "ttt_iWin13" )
local innoWin14 = GetConVar( "ttt_iWin14" )
local innoWin15 = GetConVar( "ttt_iWin15" )
local innoWin16 = GetConVar( "ttt_iWin16" )
local innoWin17 = GetConVar( "ttt_iWin17" )
local innoWin18 = GetConVar( "ttt_iWin18" )
local innoWin19 = GetConVar( "ttt_iWin19" )
local innoWin20 = GetConVar( "ttt_iWin20" )
local innoWin21 = GetConVar( "ttt_iWin21" )
local innoWin22 = GetConVar( "ttt_iWin22" )
local innoWin23 = GetConVar( "ttt_iWin23" )
local innoWin24 = GetConVar( "ttt_iWin24" )
local innoWin25 = GetConVar( "ttt_iWin25" )
local innoWin26 = GetConVar( "ttt_iWin26" )
local innoWin27 = GetConVar( "ttt_iWin27" )
local innoWin28 = GetConVar( "ttt_iWin28" )

local traWin1 = GetConVar( "ttt_traWin1" )
local traWin2 = GetConVar( "ttt_traWin2" )
local traWin3 = GetConVar( "ttt_traWin3" )
local traWin4 = GetConVar( "ttt_traWin4" )
local traWin5 = GetConVar( "ttt_traWin5" )
local traWin6 = GetConVar( "ttt_traWin6" )
local traWin7 = GetConVar( "ttt_traWin7" )
local traWin8 = GetConVar( "ttt_traWin8" )
local traWin9 = GetConVar( "ttt_traWin9" )
local traWin10 = GetConVar( "ttt_traWin10" )
local traWin11 = GetConVar( "ttt_traWin11" )
local traWin12 = GetConVar( "ttt_traWin12" )
local traWin13 = GetConVar( "ttt_traWin13" )
local traWin14 = GetConVar( "ttt_traWin14" )
local traWin15 = GetConVar( "ttt_traWin15" )
local traWin16 = GetConVar( "ttt_traWin16" )
local traWin17 = GetConVar( "ttt_traWin17" )
local traWin18 = GetConVar( "ttt_traWin18" )
local traWin19 = GetConVar( "ttt_traWin19" )
local traWin20 = GetConVar( "ttt_traWin20" )
local traWin21 = GetConVar( "ttt_traWin21" )
local traWin22 = GetConVar( "ttt_traWin22" )
local traWin23 = GetConVar( "ttt_traWin23" )

local tOut1 = GetConVar( "ttt_tOut1" )
local tOut2 = GetConVar( "ttt_tOut2" )
local tOut3 = GetConVar( "ttt_tOut3" )
local tOut4 = GetConVar( "ttt_tOut4" )
local tOut5 = GetConVar( "ttt_tOut5" )
local tOut6 = GetConVar( "ttt_tOut6" )
local tOut7 = GetConVar( "ttt_tOut7" )
local tOut8 = GetConVar( "ttt_tOut8" )
local tOut9 = GetConVar( "ttt_tOut9" )
local tOut10 = GetConVar( "ttt_tOut10" )
local tOut11 = GetConVar( "ttt_tOut11" )

activateInnoSongs = {innoWin1,innoWin2,innoWin3,innoWin4,innoWin5,innoWin6,innoWin7,innoWin8,innoWin9,innoWin10,innoWin11,innoWin12,innoWin13,innoWin14,innoWin15,innoWin16,innoWin17,innoWin18,innoWin19,innoWin20,innoWin21,innoWin22,innoWin23,innoWin24,innoWin25,innoWin26,innoWin27,innoWin28}
activateTraSongs = {traWin1,traWin2,traWin3,traWin4,traWin5,traWin6,traWin7,traWin8,traWin9,traWin10,traWin11,traWin12,traWin13,traWin14,traWin15,traWin16,traWin17,traWin18,traWin19,traWin20,traWin21,traWin22,traWin23}
activateTOutSongs = {tOut1,tOut2,tOut3,tOut4,tOut5,tOut6,tOut7,tOut8,tOut9,tOut10,tOut11}

helpInnoSongs = {innoWin1:GetHelpText(),innoWin2:GetHelpText(),innoWin3:GetHelpText(),innoWin4:GetHelpText(),innoWin5:GetHelpText(),innoWin6:GetHelpText(),innoWin7:GetHelpText(),innoWin8:GetHelpText(),innoWin9:GetHelpText(),innoWin10:GetHelpText(),innoWin11:GetHelpText(),innoWin12:GetHelpText(),innoWin13:GetHelpText(),innoWin14:GetHelpText(),innoWin15:GetHelpText(),innoWin16:GetHelpText(),innoWin17:GetHelpText(),innoWin18:GetHelpText(),innoWin19:GetHelpText(),innoWin20:GetHelpText(),innoWin21:GetHelpText(),innoWin22:GetHelpText(),innoWin23:GetHelpText(),innoWin24:GetHelpText(),innoWin25:GetHelpText(),innoWin26:GetHelpText(),innoWin27:GetHelpText(),innoWin28:GetHelpText()}
helpTraSongs = {traWin1:GetHelpText(),traWin2:GetHelpText(),traWin3:GetHelpText(),traWin4:GetHelpText(),traWin5:GetHelpText(),traWin6:GetHelpText(),traWin7:GetHelpText(),traWin8:GetHelpText(),traWin9:GetHelpText(),traWin10:GetHelpText(),traWin11:GetHelpText(),traWin12:GetHelpText(),traWin13:GetHelpText(),traWin14:GetHelpText(),traWin15:GetHelpText(),traWin16:GetHelpText(),traWin17:GetHelpText(),traWin18:GetHelpText(),traWin19:GetHelpText(),traWin20:GetHelpText(),traWin21:GetHelpText(),traWin22:GetHelpText(),traWin23:GetHelpText()}
helpTOutSongs = {tOut1:GetHelpText(),tOut2:GetHelpText(),tOut3:GetHelpText(),tOut4:GetHelpText(),tOut5:GetHelpText(),tOut6:GetHelpText(),tOut7:GetHelpText(),tOut8:GetHelpText(),tOut9:GetHelpText(),tOut10:GetHelpText(),tOut11:GetHelpText()}

innoWinSongs = {
	"wolsround/innowin01.mp3",
	"wolsround/innowin02.mp3",
	"wolsround/innowin03.mp3",
	"wolsround/innowin04.mp3",
	"wolsround/innowin05.mp3",
	"wolsround/innowin06.mp3",
	"wolsround/innowin07.mp3",
	"wolsround/innowin08.mp3",
	"wolsround/innowin09.mp3",
	"wolsround/innowin10.mp3",
	"wolsround/innowin11.mp3",
	"wolsround/innowin12.mp3",
	"wolsround/innowin13.mp3",
	"wolsround/innowin14.mp3",
	"wolsround/innowin15.mp3",
	"wolsround/innowin16.mp3",
	"wolsround/innowin17.mp3",
	"wolsround/innowin18.mp3",
	"wolsround/innowin19.mp3",
	"wolsround/innowin20.mp3",
	"wolsround/innowin21.mp3",
	"wolsround/innowin22.mp3",
	"wolsround/innowin23.mp3",
	"wolsround/innowin24.mp3",
	"wolsround/innowin25.mp3",
	"wolsround/innowin26.mp3",
	"wolsround/innowin27.mp3",
	"wolsround/innowin28.mp3"
}

traitorWinSongs = {
	"wolsround/trawin01.mp3",
	"wolsround/trawin02.mp3",
	"wolsround/trawin03.mp3",
	"wolsround/trawin04.mp3",
	"wolsround/trawin05.mp3",
	"wolsround/trawin06.mp3",
	"wolsround/trawin07.mp3",
	"wolsround/trawin08.mp3",
	"wolsround/trawin09.mp3",
	"wolsround/trawin10.mp3",
	"wolsround/trawin11.mp3",
	"wolsround/trawin12.mp3",
	"wolsround/trawin13.mp3",
	"wolsround/trawin14.mp3",
	"wolsround/trawin15.mp3",
	"wolsround/trawin16.mp3",
	"wolsround/trawin17.mp3",
	"wolsround/trawin18.mp3",
	"wolsround/trawin19.mp3",
	"wolsround/trawin20.mp3",
	"wolsround/trawin21.mp3",
	"wolsround/trawin22.mp3",
	"wolsround/trawin23.mp3"
}

timeoutSongs = {
	"wolsround/tout01.mp3",
	"wolsround/tout02.mp3",
	"wolsround/tout03.mp3",
	"wolsround/tout04.mp3",
	"wolsround/tout05.mp3",
	"wolsround/tout06.mp3",
	"wolsround/tout07.mp3",
	"wolsround/tout08.mp3",
	"wolsround/tout09.mp3",
	"wolsround/tout10.mp3",
	"wolsround/tout11.mp3"
}
defaultSound = "wolsround/tout08.mp3"
