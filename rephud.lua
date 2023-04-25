PLUGIN.name = "UNIONHUD"
PLUGIN.author = "JSC"
PLUGIN.description = "A very simple HUD made for combine factions."

if not ( CLIENT ) then return end

function PLUGIN:ShouldHideBars()
    return true
end

function PLUGIN:HUDPaint()
    local ply = LocalPlayer()
    local char = ply:GetCharacter()

    if not ( IsValid(ply) and char ) then return end
    if not ( ply:IsCombine()) then return end


        draw.DrawText("HEALTH", "CHud2", 5, -5, Color(136, 49, 49))
        draw.DrawText(ply:Health(), "CHud", 5, 5, Color(136, 49, 49))
        draw.DrawText("ARMOUR", "CHud2", 105, -5, Color(49, 84, 136))
        draw.DrawText(ply:Armor(), "CHud", 105, 5, Color(49, 84, 136))
        draw.DrawText("ACTIVE ("..ply:Nick()..")", "CHud3", 5, ScrH() - 40, Color(238, 238, 238))
        draw.DrawText("BRAIN:", "CHud4", 5, ScrH() - 100, Color(238, 238, 238))
        draw.DrawText("+", "CHud4", 100, ScrH() - 100, Color(63, 167, 63, 180))
        draw.DrawText("COMMS:", "CHud4", 5, ScrH() - 70, Color(238, 238, 238))
        draw.DrawText("STATUS:", "CHud4", 5, ScrH() - 130, Color(238, 238, 238))
        draw.DrawText("+", "CHud4", 130, ScrH() - 130, Color(63, 167, 63, 180))
        draw.DrawText("+", "CHud4", 120, ScrH() - 70, Color(63, 167, 63, 180))
    end
