fx_version 'adamant'
game 'gta5'
description 'VNS Lucky Wheel'
version '2.0.5'
lua54 'yes'

shared_script '@es_extended/imports.lua'


server_scripts {
	'@mysql-async/lib/MySQL.lua',
    '@es_extended/locale.lua',
    'locales/*.lua',
	'config.lua',
	'server.lua'
}

client_scripts {
    '@es_extended/locale.lua',
    'locales/*.lua',
	'config.lua',
	'client.lua',
}

escrow_ignore {
  '**/*',
  '*',
}

dependency 'es_extended'
dependency '/assetpacks'