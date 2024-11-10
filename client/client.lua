RegisterNetEvent('g-notify:showNotification')
AddEventHandler('g-notify:showNotification', function(type, message, position)
    SendNUIMessage({
        type = type,
        message = message,
        position = position or "top-center"
    })
end)
