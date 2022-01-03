if ( SERVER ) then
	hook.Add("PlayerSay", "volumeCmd", function( ply, cmd)
		cmd = string.sub( string.lower( cmd ), 0, 7)
		if ( cmd == "!volume" || cmd == "/volume" ) then 
			return "" 
		end
	end)
end