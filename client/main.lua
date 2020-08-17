--==================================
--====    CLEAN GUN SCRIPT      ====
--====      Le Bookmaker        ====
--====        Alphatule         ====
--====         ENJOY            ====
--==================================

-- for cleaning your gun with animation ENJOY
RegisterNetEvent('cleaning:startcleaningshort')
AddEventHandler('cleaning:startcleaningshort', function()
    local ped = PlayerPedId()
    local Cloth= CreateObject(GetHashKey('s_balledragcloth01x'), GetEntityCoords(PlayerPedId()), false, true, false, false, true)
    local PropId = GetHashKey("CLOTH")
    local actshort = GetHashKey("SHORTARM_CLEAN_ENTER")
    local actlong = GetHashKey("LONGARM_CLEAN_ENTER")
    local retval, weaponHash = GetCurrentPedWeapon(PlayerPedId(), false, weaponHash, false)
    local model = GetWeapontypeGroup(weaponHash)
    local weaponName = Citizen.InvokeNative(0x89CF5FF3D363311E, weaponName)
    local degradation = Citizen.InvokeNative(0x0D78E1097F89E637, "WEAPON_PISTOL_MAUSER")
    print("Degradation -->"..GetWeaponDegradation(weaponName))
    print("Model --> "..model)
    print("Weapon hash --> "..weaponHash)
    if model == 416676503 or model == -1101297303 then
        TriggerEvent("vorp_inventory:CloseInv");
        Citizen.InvokeNative(0x72F52AA2D2B172CC,  PlayerPedId(), 1242464081, Cloth, PropId, actshort, 1, 0, -1.0)   
        Wait(15000)
        TriggerEvent("vorp:NotifyLeft", Language.translate[Config.lang]['word'], Language.translate[Config.lang]['notif'], "generic_textures", "tick", 5000)
        SetWeaponDegradation(weaponHash, 0.0)
        print("Degradation -->"..degradation)
    else
        TriggerEvent("vorp_inventory:CloseInv");
        Citizen.InvokeNative(0x72F52AA2D2B172CC,  PlayerPedId(), 1242464081, Cloth, PropId, actlong, 1, 0, -1.0)   
        Wait(15000)
        TriggerEvent("vorp:NotifyLeft", Language.translate[Config.lang]['word'], Language.translate[Config.lang]['notif'], "generic_textures", "tick", 5000)
        SetWeaponDegradation(weaponHash, 0.0)
        print("Degradation -->"..degradation)
    end
end)


RegisterCommand('weapon', function(source, args, rawCommand)
    local retval --[[ boolean ]], weaponHash = GetCurrentPedWeapon(PlayerPedId(), false, weaponHash , false)
    local weaponName = Citizen.InvokeNative(0x89CF5FF3D363311E, weaponHash)
    --print("Weapon name --> "..weaponName)
    print("Weapon hash --> "..weaponHash)
    --print("Weappon hash --> "..GetHashKey(weaponHash))
end)
