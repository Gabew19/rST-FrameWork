local noclip = false
local noclip_speed = 6.0

function trST.toggleNoclip()
  noclip = not noclip
  local ped = GetPlayerPed(-1)
  if noclip then 
    SetEntityInvincible(ped, true)
    SetEntityVisible(ped, false, false)
  else 
    SetEntityInvincible(ped, false)
    SetEntityVisible(ped, true, false)
  end
end

function trST.isNoclip()
  return noclip
	end
end)
