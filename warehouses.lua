vRP = Proxy.getInterface("vRP")

Citizen.CreateThread(function()
	while true do
		Wait(0)
		
		local playerCoords = GetEntityCoords(GetPlayerPed(-1), true)
		-- weed check

		DrawMarker(1, 1190.4223632812,-3329.8059082032,5.6322560310364-1.0001, 0, 0, 0, 0, 0, 0, 2.0, 3.0, 2.0, 13, 232, 255, 155, 0, 0, 2, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, 1190.4223632812,-3329.8059082032,5.6322560310364, true) <= 5.0 then
			if IsControlJustPressed(0, 38) then
			TriggerServerEvent('probar:permisos')
			end
		end	

		-- blanquear check
		DrawMarker(1, 639.78234863282,2773.1804199218,42.025310516358-1.0001, 0, 0, 0, 0, 0, 0, 2.0, 3.0, 2.0, 13, 232, 255, 155, 0, 0, 2, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, 639.78234863282,2773.1804199218,42.025310516358, true) <= 5.0 then
			if IsControlJustPressed(0, 38) then
			TriggerServerEvent('blanqueo:permisos')
			end
		end	

		-- meta check
		DrawMarker(1, 910.54754638672,-1065.3074951172,37.943222045898-1.0001, 0, 0, 0, 0, 0, 0, 2.0, 3.0, 2.0, 13, 232, 255, 155, 0, 0, 2, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, 910.54754638672,-1065.3074951172,37.943222045898, true) <= 5.0 then
			if IsControlJustPressed(0, 38) then
			TriggerServerEvent('meta:permisos')
			end
		end	

		-- coke check
		DrawMarker(1, 387.51754760742,3584.7612304688,33.29222869873-1.0001, 0, 0, 0, 0, 0, 0, 2.0, 3.0, 2.0, 13, 232, 255, 155, 0, 0, 2, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, 387.51754760742,3584.7612304688,33.29222869873, true) <= 5.0 then
			if IsControlJustPressed(0, 38) then
			TriggerServerEvent('coke:permisos')
			end
		end	

		-- motero check
		DrawMarker(1, 964.48321533204,-1027.0417480468,40.847507476806-1.0001, 0, 0, 0, 0, 0, 0, 2.0, 3.0, 2.0, 13, 232, 255, 155, 0, 0, 2, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, 964.48321533204,-1027.0417480468,40.847507476806, true) <= 5.0 then
			if IsControlJustPressed(0, 38) then
			TriggerServerEvent('motero:permisos')
			end
		end	

		-- salir weed
		if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, 1065.430, -3182.969, -39.163, true) <= 5.0 then
			-- TriggerEvent("fs_freemode:displayHelp", i18n.translate("exit_warehouse"))
			if IsControlJustPressed(0, 38) then
				DoScreenFadeOut(1000)
				Citizen.Wait(1500)
				
				SetEntityCoords(GetPlayerPed(-1), 1190.4223632812,-3329.8059082032,5.6322560310364, 239.736)
				
				Citizen.Wait(1000)
				DoScreenFadeIn(1000)
			end
		end
		
		-- coke exit
		if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, 1088.803, -3188.257, -38.993, true) <= 1.0 then
			-- TriggerEvent("fs_freemode:displayHelp", i18n.translate("exit_warehouse"))
			if IsControlJustPressed(0, 38) then
				DoScreenFadeOut(1000)
				Citizen.Wait(1500)

				SetEntityCoords(GetPlayerPed(-1), 387.51754760742,3584.7612304688,33.29222869873)
				Citizen.Wait(1000)
				DoScreenFadeIn(1000)
			end
		end
		
		-- meth exit
		
		if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, 996.933, -3200.605, -36.394, true) <= 1.0 then
			-- TriggerEvent("fs_freemode:displayHelp", i18n.translate("exit_warehouse"))
			if IsControlJustPressed(0, 38) then
				DoScreenFadeOut(1000)
				Citizen.Wait(1500)
				
				SetEntityCoords(GetPlayerPed(-1), 910.54754638672,-1065.3074951172,37.943222045898)
				Citizen.Wait(1000)
				DoScreenFadeIn(1000)
			end
		end	
		
		-- blanqueo exit
	if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, 1118.683, -3193.319, -40.391, true) <= 2.0 then
		-- TriggerEvent("fs_freemode:displayHelp", i18n.translate("exit_warehouse"))
			if IsControlJustPressed(0, 38) then
				DoScreenFadeOut(1000)
				Citizen.Wait(1500)

				SetEntityCoords(GetPlayerPed(-1), 639.16082763672,2773.4375,42.015407562256, 125.059)
				Citizen.Wait(1000)
				DoScreenFadeIn(1000)				
			end
		end	
		-- motero exit
	if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, 996.88189697266,-3157.9697265625,-38.907146453858, true) <= 2.0 then
		-- TriggerEvent("fs_freemode:displayHelp", i18n.translate("exit_warehouse"))
			if IsControlJustPressed(0, 38) then
				DoScreenFadeOut(1000)
				Citizen.Wait(1500)

				SetEntityCoords(GetPlayerPed(-1), 964.48321533204,-1027.0417480468,40.847507476806, 125.059)
				Citizen.Wait(1000)
				DoScreenFadeIn(1000)				
			end
		end
	end
end)

RegisterNetEvent('tiene:permisos')
AddEventHandler('tiene:permisos', function()
loadWeed()
end)

RegisterNetEvent('blanqueo:permisos')
AddEventHandler('blanqueo:permisos', function()
loadBlanqueo()
end)

RegisterNetEvent('meta:permisos')
AddEventHandler('meta:permisos', function()
loadMeta()
end)

RegisterNetEvent('coke:permisos')
AddEventHandler('coke:permisos', function()
loadCoke()
end)

RegisterNetEvent('motero:permisos')
AddEventHandler('motero:permisos', function()
loadMotero()
end)

RegisterNetEvent('notiene:permisos')
AddEventHandler('notiene:permisos', function()
	vRP.notify({"~r~No puedes entrar."})
end)

function loadWeed()
		local ped = GetPlayerPed(-1)
		local playerCoords = GetEntityCoords(GetPlayerPed(-1), true)
		DoScreenFadeOut(1000)
		Citizen.Wait(1500)
		SetEntityCoords(GetPlayerPed(-1), 1063.445, -3183.618, -39.164)
		DoScreenFadeIn(1000)
end


function loadBlanqueo()
		local ped = GetPlayerPed(-1)
		local playerCoords = GetEntityCoords(GetPlayerPed(-1), true)
		DoScreenFadeOut(1000)
		Citizen.Wait(1500)
		SetEntityCoords(GetPlayerPed(-1), 1118.683, -3193.319, -40.391)
		DoScreenFadeIn(1000)
end

function loadMeta()
		local ped = GetPlayerPed(-1)
		local playerCoords = GetEntityCoords(GetPlayerPed(-1), true)
		DoScreenFadeOut(1000)
		Citizen.Wait(1500)
		SetEntityCoords(GetPlayerPed(-1), 996.8969116211,-3200.6459960938,-36.39372253418)
		DoScreenFadeIn(1000)
end

function loadCoke()
		local ped = GetPlayerPed(-1)
		local playerCoords = GetEntityCoords(GetPlayerPed(-1), true)
		DoScreenFadeOut(1000)
		Citizen.Wait(1500)
		SetEntityCoords(GetPlayerPed(-1), 1088.803, -3188.257, -38.993)
		DoScreenFadeIn(1000)
end

function loadMotero()
		local ped = GetPlayerPed(-1)
		local playerCoords = GetEntityCoords(GetPlayerPed(-1), true)
		DoScreenFadeOut(1000)
		Citizen.Wait(1500)
		SetEntityCoords(GetPlayerPed(-1), 996.97509765625,-3157.9213867188,-38.907146453858)
		DoScreenFadeIn(1000)
end