Citizen.CreateThread(function()
    while true do
        Wait(1000)
        local ped = PlayerPedId()
        if IsPedOnFoot(ped) then goto loopend end
        local veh = GetVehiclePedIsIn(ped, false)
        local class = GetVehicleClass(veh)
        while IsPedInAnyPoliceVehicle(ped) or (IsPedInAnyVehicle(ped) and (class == 18 or class == 20)) do
            Wait(1000)
            SetAudioFlag('PoliceScannerDisabled', true)
        end
        ::loopend::
    end
end)


