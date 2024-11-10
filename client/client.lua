RegisterNetEvent('notification-system:showNotification')
AddEventHandler('notification-system:showNotification', function(type, message, position)
    SendNUIMessage({
        type = type,
        message = message,
        position = position or "top-center"
    })
end)
