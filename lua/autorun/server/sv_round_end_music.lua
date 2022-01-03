AddCSLuaFile ("sv_cvars.lua")
AddCSLuaFile ("sv_locals.lua")

local function getI(i)
--	print ("Inno_back",i)
--	print (activateInnoSongs[i])
	a = activateInnoSongs[i]:GetInt()
--	print (i,". Song = ",a)
	return a 
end
local function getIT(i)
--	print ("Traitor_back",i)
	a = activateTraSongs[i]:GetInt()
--	print (i,". Song = ",a)
	return a 
end
local function getITO(i)
--	print ("Timeout_back",i)
	a = activateTOutSongs[i]:GetInt()
--	print (i,". Song = ",a)
	return a 
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------Konsolen-Übersicht------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
innoCount = 0																																								   					----
innoActivatedCount = 0																																											----
traCount = 0																																													----
traActivatedCount = 0 																																											----
tOutCount = 0																																													----
tOutActivatedCount = 0 																																											----
for k,v in pairs(innoWinSongs) do innoCount = innoCount + 1 if(getI(k) == 1) then innoActivatedCount = innoActivatedCount + 1 end end															----
for k,v in pairs(traitorWinSongs) do traCount = traCount + 1 if(getIT(k) == 1) then traActivatedCount = traActivatedCount + 1 end end															----
for k,v in pairs(timeoutSongs) do tOutCount = tOutCount + 1 if(getITO(k) == 1) then tOutActivatedCount = tOutActivatedCount + 1 end end															----
for k=1,innoCount,1 do activateInnoSongs[k] = getI(k) end																																		----
for k=1,traCount,1 do activateTraSongs[k] = getIT(k) end																																		----
for k=1,tOutCount,1 do activateTOutSongs[k] = getITO(k) end																																		----
print("///////////////////////////////////////////")																																			----
print("//	    Round Ending Songs	   	 //")																																					----
print("///////////////////////////////////////////")																																			----
print("// Number of Innocent Songs:",innoCount," //")																																			----
print("// Activated Innocent Songs:",innoActivatedCount," //")																																	----
for i, v in pairs(activateInnoSongs) do if(activateInnoSongs[i]) == 1 then print("// IS",i,"enabled 		 //") else print("// IS",i,"disabled  		 //") end end							----
print("///////////////////////////////////////////")																																			----
print("// Number of Traitor Songs:",traCount," //")																																				----
print("// Activated Traitor Songs:",traActivatedCount," //")																																	----
for i, v in pairs(activateTraSongs) do if(activateTraSongs[i]) == 1 then print("// TS",i,"enabled 		 //") else print("// TS",i,"disabled  		 //") end end								----
print("///////////////////////////////////////////")																																			----
print("// Number of Timeout Songs:",tOutCount," //")																																			----
print("// Activated Timeout Songs:",tOutActivatedCount," //")																																	----
for i, v in pairs(activateTOutSongs) do if(activateTOutSongs[i]) == 1 then print("// TOS",i,"enabled 		 //") else print("// TOS",i,"disabled  		 //") end end							----
print("///////////////////////////////////////////")																																			----
print("///////////////////////////////////////////")																																			----
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

local function getRandomSong( intActivatedSongsCount, aryActivatedSongs )
		local i
		repeat 
			i = math.random(1, intActivatedSongsCount)
		until ( aryActivatedSongs[i] == 1 )
		return i
	end
	
local function printSongInfo( strChosenText, i, arySongHelpText )
	local note = "You can see your current volume with: !volume and change it with: !volume x\nx is a number from 0 to 100\n"
	print( strChosenText, i, arySongHelpText[i])
	PrintMessage( 3, note.. strChosenText.." ".. i.. " -> ".. arySongHelpText[i] )
end

if ( SERVER )
then
	util.AddNetworkString( "WolffisRoundEndingMusic" )
		
	for k,v in pairs(innoWinSongs) do resource.AddFile( "innowin/" .. v ) end
	for k,v in pairs(traitorWinSongs) do resource.AddFile( "trawin/" .. v ) end
	for k,v in pairs(timeoutSongs) do resource.AddFile( "tout/" .. v ) end
	
	local function endOfRound( wintype )
		
		local endMusic = defaultSound
		local chosenInnoText = "Chosen Innocent Song:"
		local chosenTraText = "Chosen Traitor Song:"
		local chosenTOutText = "Chosen Timeout Song:"
		local i
		
--		for k=1,innoCount,1 do activateInnoSongs[k] = getI(k) end
--		for k=1,traCount,1 do activateTraSongs[k] = getIT(k) end
--		for k=1,tOutCount,1 do activateTOutSongs[k] = getITO(k) end	
		
		if (wintype == WIN_INNOCENT || wintype == "innocents") then 
			i = getRandomSong( innoCount, activateInnoSongs )
			printSongInfo( chosenInnoText, i, helpInnoSongs )
			endMusic = innoWinSongs[i]
			
		elseif (wintype == WIN_TRAITOR || wintype == "traitors") then
			i = getRandomSong( traCount, activateTraSongs )
			printSongInfo( chosenTraText, i, helpTraSongs )
			endMusic = traitorWinSongs[i]
			
		elseif (wintype == WIN_TIMELIMIT) then
			i = getRandomSong( tOutCount, activateTOutSongs )
			printSongInfo( chosenTOutText, i, helpTOutSongs )
			endMusic = timeoutSongs[i]
		end
		
		net.Start( "WolffisRoundEndingMusic" )
			net.WriteString( endMusic )
		net.Broadcast()
	end
	hook.Add( "TTTEndRound", "WolffisRoundEndingMusic", endOfRound )
end