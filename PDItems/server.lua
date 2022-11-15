local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('pdcoffee:buy',function(data)
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem("pdcoffee", 1)
    Player.Functions.RemoveMoney('cash', 6, 'pdcoffee')
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["cash"], "remove", 6)
    Wait(1000)
	TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["pdcoffee"], "add", 1)
end)

RegisterNetEvent('pddonut:buy',function(data)
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem("rimjob", 1)
    Player.Functions.RemoveMoney('cash', 3, 'rimjob')
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["cash"], "remove", 3)

    Wait(1000)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["rimjob"], "add", 1)
end)

QBCore.Functions.CreateUseableItem("pdcoffee", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent('consumables:client:pdcoffee', source, item.name)
end)