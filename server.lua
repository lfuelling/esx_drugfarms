--Settings--
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_drugfarms")

RegisterServerEvent('probar:permisos')
AddEventHandler('probar:permisos', function(loadWeed)
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
		if vRP.hasGroup({user_id,"marihuana"}) then
		  TriggerClientEvent('tiene:permisos', player)
		else
		  TriggerClientEvent('notiene:permisos', player)
	end
end)

RegisterServerEvent('blanqueo:permisos')
AddEventHandler('blanqueo:permisos', function(loadWeed)
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
		if vRP.hasGroup({user_id,"blanqueo"}) then
		  TriggerClientEvent('blanqueo:permisos', player)
		else
		  TriggerClientEvent('notiene:permisos', player)
	end
end)

RegisterServerEvent('meta:permisos')
AddEventHandler('meta:permisos', function(loadWeed)
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
		if vRP.hasGroup({user_id,"meta"}) then
		  TriggerClientEvent('meta:permisos', player)
		else
		  TriggerClientEvent('notiene:permisos', player)
	end
end)

RegisterServerEvent('coke:permisos')
AddEventHandler('coke:permisos', function(loadWeed)
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
		if vRP.hasGroup({user_id,"coke"}) then
		  TriggerClientEvent('coke:permisos', player)
		else
		  TriggerClientEvent('notiene:permisos', player)
	end
end)

RegisterServerEvent('motero:permisos')
AddEventHandler('motero:permisos', function(loadWeed)
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
		if vRP.hasGroup({user_id,"motero"}) then
		  TriggerClientEvent('motero:permisos', player)
		else
		  TriggerClientEvent('notiene:permisos', player)
	end
end)