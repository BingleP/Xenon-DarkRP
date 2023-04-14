-- Set the coordinates of the teleport destination
local destination = Vector(100, 0, 0)

-- Add a console command that will be used to trigger the teleport
concommand.Add("jailtp", function(ply, cmd, args)
    -- Check if the player is valid and alive
    if not IsValid(ply) or not ply:Alive() then return end

    -- Teleport the player to the destination
    ply:SetPos(destination)
end)

-- Add a chat command that will be used to trigger the teleport
hook.Add("PlayerSay", "TeleportChatCommand", function(ply, text, public)
    -- Check if the chat message is the teleport command
    if string.lower(text) == "!jailtp" then
        -- Teleport the player to the destination
        ply:SetPos(destination)
        
        -- Return true to prevent the message from being displayed in chat
        return true
    end
end)
