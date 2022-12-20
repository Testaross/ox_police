fx_version 'cerulean'
game 'gta5'
use_experimental_fxv2_oal 'yes'
lua54 'yes'


shared_script '@ox_lib/init.lua'
shared_script 'config.lua'

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    '@ox_core/imports/server.lua',
    'server/main.lua',
    'config.lua'
}

client_scripts {
    '@ox_core/imports/client.lua',
    'client/main.lua',
    'client/cuff.lua',
    'client/escort.lua',
    'client/spikes.lua',
    'client/jail.lua',
    'client/fines.lua',
    'client/gsr.lua',
    'client/evidence.lua',
    'client/alpr.lua',
}
