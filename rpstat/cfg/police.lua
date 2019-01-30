
local handcuffed = false
local cop = false

function trST.setCop(flag)
  cop = flag
  SetPedAsCop(GetPlayerPed(-1),flag)
end


function trST.toggleHandcuff()
  handcuffed = not handcuffed

  SetEnableHandcuffs(GetPlayerPed(-1), handcuffed)
  if handcuffed then
    tvRP.playAnim(true,{{"mp_arresting","idle",1}},true)
  else
    tvRP.stopAnim(true)
    SetPedStealthMovement(GetPlayerPed(-1),false,"") 
  end
end

function trST.setHandcuffed(flag)
  if handcuffed ~= flag then
    tvRP.toggleHandcuff()
  end
end

function trST.isHandcuffed()
  return handcuffed
end