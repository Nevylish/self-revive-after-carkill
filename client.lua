local carkill = { 133987706, -1553120962 }

function checkCauseOfDeath(a, b)
  for value in ipairs(a) do
    if value == b then
      return true 
      end
    end
    return false
end

RegisterCommand('carkill', function()
    if checkCauseOfDeath(carkill, GetPedCauseOfDeath(GetPlayerPed(-1))) then
        -- If your not using ESX framework, you can replace triggers
        TriggerEvent('esx_ambulancejob:revive')
        TriggerEvent('esx:showNotification', '~g~Vous avez été réanimé suite à une mort causé par un véhicule.')
    else
        TriggerEvent('esx:showNotification', '~r~Vous n\'avez pas été tué suite à un accident causé par un véhicule.')
    end
end, false)
