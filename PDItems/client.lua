local QBCore = exports['qb-core']:GetCoreObject()

-- exports
exports['qb-target']:AddBoxZone("PDCoffie", vector3(460.26, -982.94, 30.69), 0.6, 0.6, { name = "PDCoffie", heading = 0.0, debugPoly = false, minZ = 29.69, maxZ = 31.49 }, {
	options = {
		{
            type = "client",
            event = "pdcoffee",
			icon = "fas fa-coffee",
			label = "Buy Coffee",
			job = "police",
		},
	},
	distance = 1.5
})

exports['qb-target']:AddBoxZone("PDDonut", vector3(461.07, -983.15, 30.69), 1, 1, { name = "PDDonut", heading = 0.0, debugPoly = false, minZ = 29.69, maxZ = 31.69 }, {
	options = {
		{
            type = "client",
            event = "pddonut",
			icon = "fas fa-hand-paper",
			label = "Buy Donut",
			job = "police",
		},
	},
	distance = 1.5
})

RegisterNetEvent('pdcoffee', function()
	TriggerServerEvent('pdcoffee:buy')
	QBCore.Functions.Notify("You purchased a coffee", 'success')
end)

RegisterNetEvent('pddonut', function()
	TriggerServerEvent('pddonut:buy')
	QBCore.Functions.Notify("You purchased a donut", 'success')
end)