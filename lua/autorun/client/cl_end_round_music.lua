if (CLIENT) then
	CreateClientConVar("ttt_WREM_volume", "0.7", true, false, "The volume of the songs which will be played")

	local VOLUME_FACTOR = 0.01
	local MAX_VISIBLE = 2
	local WREMVolume = GetConVar( "ttt_WREM_volume" )
	local volume = WREMVolume:GetFloat()
	
	hook.Add( "OnPlayerChat", "volumeCmd", function( ply, cmd, bTeam, bDead )
		if ( ply != LocalPlayer() ) then return end
			cmd = string.lower( cmd )
			if ( cmd == "!volume" || cmd == "/volume" ) then 
				ply:ChatPrint("Your current volume is: ".. string.sub( volume * 100, 0, MAX_VISIBLE ))
				return true
			end
			if ( string.sub(cmd, 0, 7) == "!volume" || string.sub(cmd, 0, 7) == "/volume" ) then
				local inputValue = tonumber(string.sub(cmd, 9, nil))
				if( inputValue != nil) then
					if ( inputValue < 0 ) then inputValue = 0
					elseif ( inputValue > 100 ) then inputValue = 100 end
					local newVolume = VOLUME_FACTOR * math.Round(inputValue)
					volume = newVolume
					if ( volume < 1 ) then MAX_VISIBLE = 2
					else MAX_VISIBLE = 3 end
					ply:ChatPrint("Your new volume for the round ending music is: ".. string.sub( volume * 100, 0, MAX_VISIBLE ))
					WREMVolume:SetFloat(volume)
					return true
				else
					ply:ChatPrint("Invalid input")
					return true
				end
			end
	end )
		
	net.Receive( "WolffisRoundEndingMusic", function( byte, Player )
		local endMusic = net.ReadString()
		EmitSound( endMusic, Vector(0,0,0), -2, CHAN_AUTO, volume, SNDLVL_NONE, SND_NOFLAGS, 100 )
	end )
end