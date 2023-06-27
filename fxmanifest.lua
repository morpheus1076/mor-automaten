-- Resource Metadata
fx_version   'cerulean'
use_experimental_fxv2_oal 'yes'
lua54        'yes'
games        { 'rdr3', 'gta5' }

name 'mor-automaten'
author 'morpheus1076'
description 'Automaten mit Bestand'
version '0.0.1'

client_script {	
			"client.lua",
			"config.lua"
			}

server_script {
			"server.lua",
			'@oxmysql/lib/MySQL.lua'
			}

shared_script {'@ox_lib/init.lua'}
