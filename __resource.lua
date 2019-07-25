resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ESX Drugfarms'

version '1.0.0'

client_scripts {
    '@es_extended/locale.lua',
    'locales/en.lua',
    'locales/es.lua',
    'config.lua',
    'warehouses.lua'
}

server_scripts {
    '@es_extended/locale.lua',
    'locales/en.lua',
    'locales/es.lua',
    'config.lua',
    'server.lua'
}
