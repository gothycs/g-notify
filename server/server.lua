RegisterCommand('notify', function(source, args, rawCommand)
    local playerId = source
    local type = args[1] or "info"
    local position = args[2] or "top-right" 
    local message = table.concat(args, " ", 3) or "Default message"

    TriggerClientEvent('notification-system:showNotification', playerId, type, message, position)
end, false)