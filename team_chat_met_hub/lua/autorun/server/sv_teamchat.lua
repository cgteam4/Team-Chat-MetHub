-- проверено на сборке MetHub
print('Team_chat')
util.AddNetworkString('Team_chat')

hook.Add( "PlayerSay", "ChatTeam", function(ply, text, team)
	if not team then return
	for k,v in pairs(player.GetAll()) do 
		local team_p = ply:Team()
		local team_v = v:Team()

		if mopp.FindJob(team_v).jobID != mopp.FindJob(team_p).jobID then continue end

		net.Start('Team_chat')
			net.WriteEntity(ply)
			net.WriteString(text)
		net.Send(v)
	end
	return ""
end)