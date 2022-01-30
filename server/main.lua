local QBCore = exports['qbr-core']:GetCoreObject()

RegisterServerEvent("qbr-butcher:server:giveitem")
AddEventHandler("qbr-butcher:server:giveitem", function(item, amount)
	local src = source
	local Player = QBCore.Functions.GetPlayer(source)

	Player.Functions.AddItem(item, 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items[item], "add")
end)

RegisterServerEvent("qbr-butcher:server:reward")
AddEventHandler("qbr-butcher:server:reward", function(amount, xp)
	local _source = source
	local _amount = tonumber(string.format("%.2f", amount))
	local Player = QBCore.Functions.GetPlayer(source)
	
	Player.Functions.AddMoney("cash", _amount, "butcher-sellmeat")
	Player.Functions.AddXp("hunting", xp)
end)
