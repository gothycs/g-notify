fx_version 'cerulean'
game 'gta5'

description 'Custom Notification System for ESX/QBCore'

client_scripts {
    'client/client.lua'
}

server_scripts {
    'server/server.lua'
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
    'html/script.js'
}

shared_script '@es_extended/imports.lua' -- or '@qb-core/imports.lua' 
