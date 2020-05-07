ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
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
        addBlip(46.42, 2789.16, 57.88 - 1.0001, _U('biker_clubhouse'), 492)
        addBlip(2848.35, 4450.22, 48.51 - 1.0001, _U('document_forge'), 498)
        addBlip(-3032.14, 3333.76, 10.24 - 1.0001, _U('bunker'), 473)
        addBlip(1.90, 6832.18, 15.82 - 1.0001, _U('doomsday_facility'), 473)
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        local playerCoords = GetEntityCoords(PlayerPedId(), true)

        -- weed check
        DrawMarker(1, 1190.4223632812, -3329.8059082032, 5.6322560310364 - 1.0001, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 13, 232, 255, 155, 0, 0, 2, 0, 0, 0, 0)
        if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, 1190.4223632812, -3329.8059082032, 5.6322560310364, true) <= 3.0 then
            if IsControlPressed(0, 51) then
                TriggerServerEvent('weed:check')
            else
                ESX.ShowHelpNotification(_U('press_to_enter'))
            end
        end

        -- blanquear check
        DrawMarker(1, 639.78234863282, 2773.1804199218, 42.025310516358 - 1.0001, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 13, 232, 255, 155, 0, 0, 2, 0, 0, 0, 0)
        if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, 639.78234863282, 2773.1804199218, 42.025310516358, true) <= 3.0 then
            if IsControlPressed(0, 51) then
                TriggerServerEvent('counterfeit:check')
            else
                ESX.ShowHelpNotification(_U('press_to_enter'))
            end
        end

        -- documents check
        DrawMarker(1, 2848.35, 4450.22, 48.51 - 1.0001, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 13, 232, 255, 155, 0, 0, 2, 0, 0, 0, 0)
        if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, 2848.35, 4450.22, 48.51, true) <= 3.0 then
            if IsControlPressed(0, 51) then
                TriggerServerEvent('documents:check')
            else
                ESX.ShowHelpNotification(_U('press_to_enter'))
            end
        end

        -- meta check
        DrawMarker(1, 910.54754638672, -1065.3074951172, 37.943222045898 - 1.0001, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 13, 232, 255, 155, 0, 0, 2, 0, 0, 0, 0)
        if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, 910.54754638672, -1065.3074951172, 37.943222045898, true) <= 3.0 then
            if IsControlPressed(0, 51) then
                TriggerServerEvent('meth:check')
            else
                ESX.ShowHelpNotification(_U('press_to_enter'))
            end
        end

        -- coke check
        DrawMarker(1, 387.51754760742, 3584.7612304688, 33.29222869873 - 1.0001, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 13, 232, 255, 155, 0, 0, 2, 0, 0, 0, 0)
        if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, 387.51754760742, 3584.7612304688, 33.29222869873, true) <= 3.0 then
            if IsControlPressed(0, 51) then
                TriggerServerEvent('coke:check')
            else
                ESX.ShowHelpNotification(_U('press_to_enter'))
            end
        end

        -- motero check
        DrawMarker(1, 964.48321533204, -1027.0417480468, 40.847507476806 - 1.0001, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 13, 232, 255, 155, 0, 0, 2, 0, 0, 0, 0)
        if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, 964.48321533204, -1027.0417480468, 40.847507476806, true) <= 3.0 then
            if IsControlPressed(0, 51) then
                TriggerServerEvent('bike:check')
            else
                ESX.ShowHelpNotification(_U('press_to_enter'))
            end
        end

        -- motero2 check
        DrawMarker(1, 46.42, 2789.16, 57.88 - 1.0001, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 13, 232, 255, 155, 0, 0, 2, 0, 0, 0, 0)
        if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, 46.42, 2789.16, 57.88, true) <= 3.0 then
            if IsControlPressed(0, 51) then
                TriggerServerEvent('bike2:check')
            else
                ESX.ShowHelpNotification(_U('press_to_enter'))
            end
        end

        -- bunker check
        DrawMarker(1, -3032.14, 3333.76, 10.24 - 1.0001, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 13, 232, 255, 155, 0, 0, 2, 0, 0, 0, 0)
        if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, -3032.14, 3333.76, 10.24, true) <= 3.0 then
            if IsControlPressed(0, 51) then
                TriggerServerEvent('bunker:check')
            else
                ESX.ShowHelpNotification(_U('press_to_enter'))
            end
        end

        -- doomsday check
        DrawMarker(1, 1.90, 6832.18, 15.82 - 1.0001, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 13, 232, 255, 155, 0, 0, 2, 0, 0, 0, 0)
        if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, 10.45, -672.95, 33.45, true) <= 2.0 then
            if IsControlPressed(0, 51) then
                TriggerServerEvent('doomsday:check')
            else
                ESX.ShowHelpNotification(_U('press_to_enter'))
            end
        end
            
        -- union depository entry (no check)
        DrawMarker(1, 10.45, -672.95, 33.45 - 1.0001, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 13, 232, 255, 155, 0, 0, 2, 0, 0, 0, 0)
        if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, 10.45, -672.95, 33.45, true) <= 3.0 then
            if IsControlPressed(0, 51) then
                loadUD()
            else
                ESX.ShowHelpNotification(_U('press_to_enter'))
            end
        end
            
         -- union depository exit
        DrawMarker(1, -0.85, -707.82, 16.13 - 1.0001, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 13, 232, 255, 155, 0, 0, 2, 0, 0, 0, 0)
        if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, -0.85, -707.82, 16.13, true) <= 2.0 then
            -- TriggerEvent("fs_freemode:displayHelp", i18n.translate("exit_warehouse"))
            ESX.ShowHelpNotification(_U('press_to_exit'))
            if IsControlPressed(0, 51) then
                DoScreenFadeOut(1000)
                Citizen.Wait(1500)

                SetEntityCoords(GetPlayerPed(-1), 9.94, -667.52, 33.45, 15.32)
                Citizen.Wait(1000)
                DoScreenFadeIn(1000)
            end
        end

        -- weed exit
        if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, 1065.430, -3182.969, -39.163, true) <= 3.0 then
            -- TriggerEvent("fs_freemode:displayHelp", i18n.translate("exit_warehouse"))
            ESX.ShowHelpNotification(_U('press_to_exit'))
            if IsControlPressed(0, 51) then
                DoScreenFadeOut(1000)
                Citizen.Wait(1500)

                SetEntityCoords(PlayerPedId(), 1190.4223632812, -3329.8059082032, 5.6322560310364, 239.736)

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

                SetEntityCoords(PlayerPedId(), 387.51754760742, 3584.7612304688, 33.29222869873)
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

                SetEntityCoords(PlayerPedId(), 910.54754638672, -1065.3074951172, 37.943222045898)
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

                SetEntityCoords(PlayerPedId(), 639.16082763672, 2773.4375, 42.015407562256, 125.059)
                Citizen.Wait(1000)
                DoScreenFadeIn(1000)
            end
        end

        -- documents exit
        if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, 1173.54, -3196.63, -39.01, true) <= 2.0 then
            -- TriggerEvent("fs_freemode:displayHelp", i18n.translate("exit_warehouse"))
            ESX.ShowHelpNotification(_U('press_to_exit'))
            if IsControlPressed(0, 51) then
                DoScreenFadeOut(1000)
                Citizen.Wait(1500)

                SetEntityCoords(PlayerPedId(), 2847.09, 4449.52, 48.52, 106.62)
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

                SetEntityCoords(PlayerPedId(), 964.48321533204, -1027.0417480468, 40.847507476806, 125.059)
                Citizen.Wait(1000)
                DoScreenFadeIn(1000)
            end
        end

        -- motero2 exit 1
        if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, 1120.97, -3152.68, -37.06, true) <= 2.0 then
            -- TriggerEvent("fs_freemode:displayHelp", i18n.translate("exit_warehouse"))
            ESX.ShowHelpNotification(_U('press_to_exit'))
            if IsControlPressed(0, 51) then
                DoScreenFadeOut(1000)
                Citizen.Wait(1500)

                SetEntityCoords(PlayerPedId(), 46.42, 2789.16, 57.88, 125.059)
                Citizen.Wait(1000)
                DoScreenFadeIn(1000)
            end
        end

        -- motero2 exit 2 (garage door)
        if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, 1110.53, -3167.13, -37.52, true) <= 2.5 then
            -- TriggerEvent("fs_freemode:displayHelp", i18n.translate("exit_warehouse"))
            ESX.ShowHelpNotification(_U('press_to_exit'))
            if IsControlPressed(0, 51) then
                DoScreenFadeOut(1000)
                Citizen.Wait(1500)

                SetEntityCoords(PlayerPedId(), 52.64, 2787.01, 57.88, 140.62)
                Citizen.Wait(1000)
                DoScreenFadeIn(1000)
            end
        end

        -- bunker exit
        if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, 894.84, -3245.52, -98.26, true) <= 2.5 then
            -- TriggerEvent("fs_freemode:displayHelp", i18n.translate("exit_warehouse"))
            ESX.ShowHelpNotification(_U('press_to_exit'))
            if IsControlPressed(0, 51) then
                DoScreenFadeOut(1000)
                Citizen.Wait(1500)

                SetEntityCoords(PlayerPedId(), -3032.14, 3333.76, 10.24, 140.62)
                Citizen.Wait(1000)
                DoScreenFadeIn(1000)
            end
        end

        -- doomsday exit
        DrawMarker(1, 487.12, 4819.95, -58.38 - 1.0001, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 13, 232, 255, 155, 0, 0, 2, 0, 0, 0, 0)
        if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, 487.12, 4819.95, -58.38, true) <= 2.5 then
            -- TriggerEvent("fs_freemode:displayHelp", i18n.translate("exit_warehouse"))
            ESX.ShowHelpNotification(_U('press_to_exit'))
            if IsControlPressed(0, 51) then
                DoScreenFadeOut(1000)
                Citizen.Wait(1500)

                SetEntityCoords(PlayerPedId(), 1.90, 6832.18, 15.82)
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

RegisterNetEvent('documents:enter')
AddEventHandler('documents:enter', function()
    loadDocuments()
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

RegisterNetEvent('bike2:enter')
AddEventHandler('bike2:enter', function()
    loadMotero2()
end)

RegisterNetEvent('bunker:enter')
AddEventHandler('bunker:enter', function()
    loadBunker()
end)

RegisterNetEvent('doomsday:enter')
AddEventHandler('doomsday:enter', function()
    loadDoomsday()
end)

RegisterNetEvent('jobfail:notify')
AddEventHandler('jobfail:notify', function()
    ESX.ShowNotification(_U('no_access'))
end)

function loadWeed()
    DoScreenFadeOut(1000)
    Citizen.Wait(1500)
    SetEntityCoords(PlayerPedId(), 1063.445, -3183.618, -39.164)
    DoScreenFadeIn(1000)
end

function loadBlanqueo()
    DoScreenFadeOut(1000)
    Citizen.Wait(1500)
    SetEntityCoords(PlayerPedId(), 1118.683, -3193.319, -40.391)
    DoScreenFadeIn(1000)
end

function loadDocuments()
    DoScreenFadeOut(1000)
    Citizen.Wait(1500)
    SetEntityCoords(PlayerPedId(), 1173.54, -3196.63, -39.01, 100.64)
    DoScreenFadeIn(1000)
end

function loadMeta()
    DoScreenFadeOut(1000)
    Citizen.Wait(1500)
    SetEntityCoords(PlayerPedId(), 996.8969116211, -3200.6459960938, -36.39372253418)
    DoScreenFadeIn(1000)
end

function loadCoke()
    DoScreenFadeOut(1000)
    Citizen.Wait(1500)
    SetEntityCoords(PlayerPedId(), 1088.803, -3188.257, -38.993)
    DoScreenFadeIn(1000)
end

function loadMotero()
    DoScreenFadeOut(1000)
    Citizen.Wait(1500)
    SetEntityCoords(PlayerPedId(), 998.4809, -3164.711, -38.90733)
    DoScreenFadeIn(1000)
end

function loadMotero2()
    DoScreenFadeOut(1000)
    Citizen.Wait(1500)
    SetEntityCoords(PlayerPedId(), 1107.04, -3157.399, -37.51859)
    DoScreenFadeIn(1000)
end

function loadBunker()
    DoScreenFadeOut(1000)
    Citizen.Wait(1500)
    SetEntityCoords(PlayerPedId(), 892.6384, -3245.8664, -98.2645)
    DoScreenFadeIn(1000)
end

function loadDoomsday()
    DoScreenFadeOut(1000)
    Citizen.Wait(1500)
    SetEntityCoords(PlayerPedId(), 483.73, 4812.65, -58.38, 97.16)
    DoScreenFadeIn(1000)
end

function loadUD()
    DoScreenFadeOut(1000)
    Citizen.Wait(1500)
    SetEntityCoords(GetPlayerPed(-1), 0.85, -703.07, 16.13, 312.99)
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
