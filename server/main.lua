VORP = exports.vorp_inventory:vorp_inventoryApi()

-- item for short weapon
Citizen.CreateThread(function()
	Citizen.Wait(2000)
	VORP.RegisterUsableItem("cleanshort", function(data)
	local _source = source
		TriggerClientEvent('cleaning:startcleaningshort', data.source)
		VORP.subItem(data.source,"clean", 1)
	end)
end)

-- item for long weapon
Citizen.CreateThread(function()
	Citizen.Wait(2000)
	VORP.RegisterUsableItem("cleanlong", function(data)
	local _source = source
		TriggerClientEvent('cleaning:startcleaninglong', data.source)
		VORP.subItem(data.source,"clean", 1)
	end)
end)


