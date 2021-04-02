local carkill = { 133987706, -1553120962 }

function verif(a, val)
  for value in ipairs(a) do
    if value == val then
      return true 
      end
    end
    return false
end

RegisterCommand('carkill', function()
local ped = GetPlayerPed(-1)
local cd = GetPedCauseOfDeath(ped)
    if verif(carkill, cd) then
        TriggerEvent('esx_ambulancejob:revive')
        TriggerEvent('esx:showNotification', '~g~Vous avez été réanimé suite à une mort causé par un véhicule.')
    else
        TriggerEvent('esx:showNotification', '~r~Vous n\'avez pas été tué suite à un accident causé par un véhicule.')
    end
end, false)
