net.Receive('Team_chat', function()
	local text = net.ReadString()
	local ply = net.ReadEntity()
	chat.AddText(Color(174, 0, 255), '[Команда] ', Color(174, 0, 255), ply:Nick(), Color(174, 0, 255), "" .. text)
end)