ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
    ESX = obj
end)

RegisterServerEvent('weed:check')
AddEventHandler('weed:check', function(_)
    local player = ESX.GetPlayerFromId(source)
    if not player.job.name or player.job.name ~= Config.JobId then
        TriggerClientEvent('weed:enter', source)
    else
        TriggerClientEvent('jobfail:notify', source)
    end
end)

RegisterServerEvent('counterfeit:check')
AddEventHandler('counterfeit:check', function(_)
    local player = ESX.GetPlayerFromId(source)
    if not player.job.name or player.job.name ~= Config.JobId then
        TriggerClientEvent('counterfeit:enter', source)
    else
        TriggerClientEvent('jobfail:notify', source)
    end
end)

RegisterServerEvent('meth:check')
AddEventHandler('meth:check', function(_)
    local player = ESX.GetPlayerFromId(source)
    if not player.job.name or player.job.name ~= Config.JobId then
        TriggerClientEvent('meth:enter', source)
    else
        TriggerClientEvent('jobfail:notify', source)
    end
end)

RegisterServerEvent('coke:check')
AddEventHandler('coke:check', function(_)
    local player = ESX.GetPlayerFromId(source)
    if not player.job.name or player.job.name ~= Config.JobId then
        TriggerClientEvent('coke:enter', source)
    else
        TriggerClientEvent('jobfail:notify', source)
    end
end)

RegisterServerEvent('bike:check')
AddEventHandler('bike:check', function(_)
    local player = ESX.GetPlayerFromId(source)
    if not player.job.name or player.job.name ~= Config.JobId then
        TriggerClientEvent('bike:enter', source)
    else
        TriggerClientEvent('jobfail:notify', source)
    end
end)