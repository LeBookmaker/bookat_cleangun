--==================================
--==== CLEAN GUN SCRIPT V1 BETA ====
--====      Le Bookmaker        ====
--====        Alphatule         ====
--====         ENJOY            ====
--==================================

-- V2 in the future :)

--pistol and revolver
--local GunType = {
--    [1] =  {["name"] = "WEAPON_PISTOL_M1899",       ["weaponhash"] = 7706131, ["weapontype"] = "group_pistol"},
--    [2] =  {["name"] = "WEAPON_PISTOL_MAUSER",        ["weaponhash"] = 5175315, ["weapontype"] = "group_pistol"},
--    [3] =  {["name"] = "WEAPON_PISTOL_SEMIAUTO",        ["weaponhash"] = 2796563, ["weapontype"] = "group_pistol"},
--    [4] =  {["name"] = "WEAPON_PISTOL_VOLCANIC",        ["weaponhash"] = 6570259, ["weapontype"] = "group_pistol"},
--    [5] =  {["name"] = "WEAPON_REVOLVER_CATTLEMAN",        ["weaponhash"] = 1845780, ["weapontype"] = "group_revolver"},
--    [6] =  {["name"] = "WEAPON_REVOLVER_DOUBLEACTION",        ["weaponhash"] = 880148, ["weapontype"] = "group_revolver"},
--    [7] =  {["name"] = "WEAPON_REVOLVER_LEMAT",        ["weaponhash"] = 10020371, ["weapontype"] = "group_revolver"},
--    [8] =  {["name"] = "WEAPON_REVOLVER_SCHOFIELD",        ["weaponhash"] = 8539923, ["weapontype"] = "group_revolver"},
--}

-- for cleaning gun short arm like pistol and revolver
RegisterNetEvent('cleaning:startcleaningshort')
AddEventHandler('cleaning:startcleaningshort', function()
    local ped = PlayerPedId()
    local Cloth= CreateObject(GetHashKey('s_balledragcloth01x'), GetEntityCoords(PlayerPedId()), false, true, false, false, true)
    local PropId = GetHashKey("CLOTH")
    local act = GetHashKey("SHORTARM_CLEAN_ENTER")
    TriggerEvent("vorp_inventory:CloseInv");
    Citizen.InvokeNative(0x72F52AA2D2B172CC,  PlayerPedId(), 1242464081, Cloth, PropId, act, 1, 0, -1.0)   
    Wait(15000)
    TriggerEvent("vorp:NotifyLeft", Language.translate[Config.lang]['word'], Language.translate[Config.lang]['notif'], "generic_textures", "tick", 5000)       
end)

-- for cleaning gun long arm like sniper.....
RegisterNetEvent('cleaning:startcleaninglong')
AddEventHandler('cleaning:startcleaninglong', function()
    local ped = PlayerPedId()
    local Cloth= CreateObject(GetHashKey('s_balledragcloth01x'), GetEntityCoords(PlayerPedId()), false, true, false, false, true)
    local PropId = GetHashKey("CLOTH")
    local act = GetHashKey("LONGARM_CLEAN_ENTER")
    TriggerEvent("vorp_inventory:CloseInv");
    Citizen.InvokeNative(0x72F52AA2D2B172CC,  PlayerPedId(), 1242464081, Cloth, PropId, act, 1, 0, -1.0)   
    Wait(15000)
    TriggerEvent("vorp:NotifyLeft", Language.translate[Config.lang]['word'], Language.translate[Config.lang]['notif'], "generic_textures", "tick", 5000)       
end)

-- this is in one script but is not working for one items 
-- will make a V2 in the future :)
--RegisterNetEvent('cleaning:startcleaning')
--AddEventHandler('cleaning:startcleaning', function()
--    local ped = PlayerPedId()
--    local Cloth= CreateObject(GetHashKey('s_balledragcloth01x'), GetEntityCoords(PlayerPedId()), false, true, false, false, true)
--    local PropId = GetHashKey("CLOTH")
--    if GetWeapontypeGroup(0xBE5B8969) or GetWeapontypeGroup(0x18D5FA97) then 
--        local act = GetHashKey("SHORTARM_CLEAN_ENTER")
--        TriggerEvent("vorp_inventory:CloseInv");
--        Citizen.InvokeNative(0x72F52AA2D2B172CC,  PlayerPedId(), 1242464081, Cloth, PropId, act, 1, 0, -1.0)   
--        Wait(15000)
--        TriggerEvent("vorp:NotifyLeft", Language.translate[Config.lang]['word'], Language.translate[Config.lang]['notif'] , "generic_textures", "tick", 5000)        
--    else 
--        local act = GetHashKey("LONGARM_CLEAN_ENTER")
--        TriggerEvent("vorp_inventory:CloseInv");
--        Citizen.InvokeNative(0x72F52AA2D2B172CC,  PlayerPedId(), 1242464081, Cloth, PropId, act, 1, 0, -1.0)   
--        Wait(15000)
--        TriggerEvent("vorp:NotifyLeft", Language.translate[Config.lang]['word'], Language.translate[Config.lang]['notif'], "generic_textures", "tick", 5000)
--        break
--    end
--end)