ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
    ESX = obj
end)

RegisterServerEvent('probar:permisos')
AddEventHandler('probar:permisos', function(_)
    local player = ESX.GetPlayerFromId(_source)
    if not player.job.name == Config.JobId then
        TriggerClientEvent('tiene:permisos', player)
    else
        TriggerClientEvent('notiene:permisos', player)
    end
end)

RegisterServerEvent('blanqueo:permisos')
AddEventHandler('blanqueo:permisos', function(_)
    local player = ESX.GetPlayerFromId(_source)
    if not player.job.name == Config.JobId then
        TriggerClientEvent('blanqueo:permisos', player)
    else
        TriggerClientEvent('notiene:permisos', player)
    end
end)

RegisterServerEvent('meta:permisos')
AddEventHandler('meta:permisos', function(_)
    local player = ESX.GetPlayerFromId(_source)
    if not player.job.name == Config.JobId then
        TriggerClientEvent('meta:permisos', player)
    else
        TriggerClientEvent('notiene:permisos', player)
    end
end)

RegisterServerEvent('coke:permisos')
AddEventHandler('coke:permisos', function(_)
    local player = ESX.GetPlayerFromId(_source)
    if not player.job.name == Config.JobId then
        TriggerClientEvent('coke:permisos', player)
    else
        TriggerClientEvent('notiene:permisos', player)
    end
end)

RegisterServerEvent('motero:permisos')
AddEventHandler('motero:permisos', function(_)
    local player = ESX.GetPlayerFromId(_source)
    if not player.job.name == Config.JobId then
        TriggerClientEvent('motero:permisos', player)
    else
        TriggerClientEvent('notiene:permisos', player)
    end
end)
