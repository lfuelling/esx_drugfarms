ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj)
            ESX = obj
        end)
        Citizen.Wait(0)
    end
end)

Citizen.CreateThread(function()
    if Config.DrawBlips then
        addBlip(1190.4223632812, -3329.8059082032, 5.6322560310364 - 1.0001, _U('weed_farm'), 496)
        addBlip(639.78234863282, 2773.1804199218, 42.025310516358 - 1.0001, _U('counterfeit'), 500)
        addBlip(910.54754638672, -1065.3074951172, 37.943222045898 - 1.0001, _U('meth_lab'), 499)
        addBlip(387.51754760742, 3584.7612304688, 33.29222869873 - 1.0001, _U('coke_lab'), 497)
        addBlip(964.48321533204, -1027.0417480468, 40.847507476806 - 1.0001, _U('biker_clubhouse'), 492)
    end
end)

Citizen.CreateThread(function()
    while true do

        Citizen.Wait(0)

        local playerCoords = GetEntityCoords(GetPlayerPed(-1), true)

        -- weed check
        DrawMarker(1, 1190.4223632812, -3329.8059082032, 5.6322560310364 - 1.0001, 0, 0, 0, 0, 0, 0, 2.0, 3.0, 2.0, 13, 232, 255, 155, 0, 0, 2, 0, 0, 0, 0)
        if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, 1190.4223632812, -3329.8059082032, 5.6322560310364, true) <= 3.0 then
            if IsControlPressed(0, 51) then
                TriggerServerEvent('weed:check')
            else
                ESX.ShowHelpNotification(_U('press_to_enter'))
            end
        end

        -- blanquear check
        DrawMarker(1, 639.78234863282, 2773.1804199218, 42.025310516358 - 1.0001, 0, 0, 0, 0, 0, 0, 2.0, 3.0, 2.0, 13, 232, 255, 155, 0, 0, 2, 0, 0, 0, 0)
        if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, 639.78234863282, 2773.1804199218, 42.025310516358, true) <= 3.0 then
            if IsControlPressed(0, 51) then
                TriggerServerEvent('counterfeit:check')
            else
                ESX.ShowHelpNotification(_U('press_to_enter'))
            end
        end

        -- meta check
        DrawMarker(1, 910.54754638672, -1065.3074951172, 37.943222045898 - 1.0001, 0, 0, 0, 0, 0, 0, 2.0, 3.0, 2.0, 13, 232, 255, 155, 0, 0, 2, 0, 0, 0, 0)
        if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, 910.54754638672, -1065.3074951172, 37.943222045898, true) <= 3.0 then
            if IsControlPressed(0, 51) then
                TriggerServerEvent('meth:check')
            else
                ESX.ShowHelpNotification(_U('press_to_enter'))
            end
        end

        -- coke check
        DrawMarker(1, 387.51754760742, 3584.7612304688, 33.29222869873 - 1.0001, 0, 0, 0, 0, 0, 0, 2.0, 3.0, 2.0, 13, 232, 255, 155, 0, 0, 2, 0, 0, 0, 0)
        if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, 387.51754760742, 3584.7612304688, 33.29222869873, true) <= 3.0 then
            if IsControlPressed(0, 51) then
                TriggerServerEvent('coke:check')
            else
                ESX.ShowHelpNotification(_U('press_to_enter'))
            end
        end

        -- motero check
        DrawMarker(1, 964.48321533204, -1027.0417480468, 40.847507476806 - 1.0001, 0, 0, 0, 0, 0, 0, 2.0, 3.0, 2.0, 13, 232, 255, 155, 0, 0, 2, 0, 0, 0, 0)
        if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, 964.48321533204, -1027.0417480468, 40.847507476806, true) <= 3.0 then
            if IsControlPressed(0, 51) then
                TriggerServerEvent('motero:permisos')
            else
                ESX.ShowHelpNotification(_U('press_to_enter'))
            end
        end

        -- salir weed
        if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, 1065.430, -3182.969, -39.163, true) <= 3.0 then
            -- TriggerEvent("fs_freemode:displayHelp", i18n.translate("exit_warehouse"))
            ESX.ShowHelpNotification(_U('press_to_exit'))
            if IsControlPressed(0, 51) then
                DoScreenFadeOut(1000)
                Citizen.Wait(1500)

                SetEntityCoords(GetPlayerPed(-1), 1190.4223632812, -3329.8059082032, 5.6322560310364, 239.736)

                Citizen.Wait(1000)
                DoScreenFadeIn(1000)
            end
        end

        -- coke exit
        if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, 1088.803, -3188.257, -38.993, true) <= 1.0 then
            -- TriggerEvent("fs_freemode:displayHelp", i18n.translate("exit_warehouse"))
            ESX.ShowHelpNotification(_U('press_to_exit'))
            if IsControlPressed(0, 51) then
                DoScreenFadeOut(1000)
                Citizen.Wait(1500)

                SetEntityCoords(GetPlayerPed(-1), 387.51754760742, 3584.7612304688, 33.29222869873)
                Citizen.Wait(1000)
                DoScreenFadeIn(1000)
            end
        end

        -- meth exit

        if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, 996.933, -3200.605, -36.394, true) <= 1.0 then
            -- TriggerEvent("fs_freemode:displayHelp", i18n.translate("exit_warehouse"))
            ESX.ShowHelpNotification(_U('press_to_exit'))
            if IsControlPressed(0, 51) then
                DoScreenFadeOut(1000)
                Citizen.Wait(1500)

                SetEntityCoords(GetPlayerPed(-1), 910.54754638672, -1065.3074951172, 37.943222045898)
                Citizen.Wait(1000)
                DoScreenFadeIn(1000)
            end
        end

        -- blanqueo exit
        if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, 1118.683, -3193.319, -40.391, true) <= 2.0 then
            -- TriggerEvent("fs_freemode:displayHelp", i18n.translate("exit_warehouse"))
            ESX.ShowHelpNotification(_U('press_to_exit'))
            if IsControlPressed(0, 51) then
                DoScreenFadeOut(1000)
                Citizen.Wait(1500)

                SetEntityCoords(GetPlayerPed(-1), 639.16082763672, 2773.4375, 42.015407562256, 125.059)
                Citizen.Wait(1000)
                DoScreenFadeIn(1000)
            end
        end
        -- motero exit
        if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, 996.88189697266, -3157.9697265625, -38.907146453858, true) <= 2.0 then
            -- TriggerEvent("fs_freemode:displayHelp", i18n.translate("exit_warehouse"))
            ESX.ShowHelpNotification(_U('press_to_exit'))
            if IsControlPressed(0, 51) then
                DoScreenFadeOut(1000)
                Citizen.Wait(1500)

                SetEntityCoords(GetPlayerPed(-1), 964.48321533204, -1027.0417480468, 40.847507476806, 125.059)
                Citizen.Wait(1000)
                DoScreenFadeIn(1000)
            end
        end
    end
end)

RegisterNetEvent('weed:enter')
AddEventHandler('weed:enter', function()
    loadWeed()
end)

RegisterNetEvent('counterfeit:enter')
AddEventHandler('counterfeit:enter', function()
    loadBlanqueo()
end)

RegisterNetEvent('meth:enter')
AddEventHandler('meth:enter', function()
    loadMeta()
end)

RegisterNetEvent('coke:enter')
AddEventHandler('coke:enter', function()
    loadCoke()
end)

RegisterNetEvent('bike:enter')
AddEventHandler('bike:enter', function()
    loadMotero()
end)

RegisterNetEvent('jobfail:notify')
AddEventHandler('jobfail:notify', function()
    ESX.ShowNotification(_U('no_access'))
end)

function loadWeed()
    DoScreenFadeOut(1000)
    Citizen.Wait(1500)
    SetEntityCoords(GetPlayerPed(-1), 1063.445, -3183.618, -39.164)
    DoScreenFadeIn(1000)
end

function loadBlanqueo()
    DoScreenFadeOut(1000)
    Citizen.Wait(1500)
    SetEntityCoords(GetPlayerPed(-1), 1118.683, -3193.319, -40.391)
    DoScreenFadeIn(1000)
end

function loadMeta()
    DoScreenFadeOut(1000)
    Citizen.Wait(1500)
    SetEntityCoords(GetPlayerPed(-1), 996.8969116211, -3200.6459960938, -36.39372253418)
    DoScreenFadeIn(1000)
end

function loadCoke()
    DoScreenFadeOut(1000)
    Citizen.Wait(1500)
    SetEntityCoords(GetPlayerPed(-1), 1088.803, -3188.257, -38.993)
    DoScreenFadeIn(1000)
end

function loadMotero()
    DoScreenFadeOut(1000)
    Citizen.Wait(1500)
    SetEntityCoords(GetPlayerPed(-1), 996.97509765625, -3157.9213867188, -38.907146453858)
    DoScreenFadeIn(1000)
end

function addBlip(blipX, blipY, blipZ, blipName, blipSprite)
    local blip = AddBlipForCoord(blipX, blipY, blipZ)
    SetBlipSprite(blip, blipSprite)
    SetBlipScale(blip, 1.0)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(blipName)
    EndTextCommandSetBlipName(blip)
end
