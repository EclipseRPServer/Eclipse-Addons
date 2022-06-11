local crosshair = false
local aiming = true

CreateThread(
    function()
        while true do
            Wait(100)
            if crosshair then
                if aiming then
                    SendNUIMessage({display = "crosshairShow"})
                else
                    SendNUIMessage({display = "crosshairHide"})
                end
            else
                SendNUIMessage({display = "crosshairHide"})
            end
        end
    end
)

CreateThread(
    function()
        while true do
            Wait(100)
            if IsPedArmed(PlayerPedId(), 6) then
                if (IsPlayerFreeAiming(PlayerId())) then
                    aiming = true
                    crosshair = true
                    wait = 100
                else
                    aiming = false
                end
            else
                aiming = false
                SendNUIMessage({display = "crosshairHide"})
            end
        end
    end
)
