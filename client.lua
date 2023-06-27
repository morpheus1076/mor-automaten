ESX = exports['es_extended']:getSharedObject()
--print(json.encode(input))
--local PlayerData = ESX.GetPlayerData()
--local job = PlayerData.job.name

local Options = {}
CreateThread(function()
    if Config.Enabled.soda then
        local mashine = {'prop_vend_soda_01'}
        local options = {{name = 'sodakaufen', label = 'Kaufen', event = 'morauto:sodamenu', icon = 'fas fa-can'}}
        exports.ox_target:addModel(mashine, options)
    end
end)

RegisterNetEvent('morauto:sodamenu')
AddEventHandler('morauto:sodamenu', function()
    local data = Config.Soda
    for i=1, #data do
        table.insert(Options, {title = data[i].label, description = 'Preis: '..data[i].price, serverEvent = 'morauto:buy',
        args = {data[i].name, data[i].price}, arrow = true})
    end
    lib.registerContext({id = 'sodakaufen', title = 'Kaufen', options = Options})
    lib.showContext('sodakaufen')
    Options = {}
end)

CreateThread(function()
    if Config.Enabled.soda2 then
        local mashine = {'prop_vend_soda_02'}
        local options = {{name = 'sodakaufen2', label = 'Kaufen', event = 'morauto:sodamenu2', icon = 'fas fa-can'}}
        exports.ox_target:addModel(mashine, options)
    end
end)

RegisterNetEvent('morauto:sodamenu2')
AddEventHandler('morauto:sodamenu2', function()
    local data = Config.Soda2
    for i=1, #data do
        table.insert(Options, {title = data[i].label, description = 'Preis: '..data[i].price, serverEvent = 'morauto:buy',
        args = {data[i].name, data[i].price}, arrow = true})
    end
    lib.registerContext({
        id = 'sodakaufen2',
        title = 'Kaufen',
        options = Options,
    })
    lib.showContext('sodakaufen2')
    Options = {}
end)

CreateThread(function()
    if Config.Enabled.snack then
        local mashine = {'prop_vend_snak_01'}
        local options = {{name = 'snackkaufen', label = 'Kaufen', event = 'morauto:snack', icon = 'fas fa-can'}}
        exports.ox_target:addModel(mashine, options)
    end
end)

RegisterNetEvent('morauto:snack')
AddEventHandler('morauto:snack', function()
    local data = Config.Snack
    for i=1, #data do
        table.insert(Options, {title = data[i].label, description = 'Preis: '..data[i].price, serverEvent = 'morauto:buy',
        args = {data[i].name, data[i].price}, arrow = true})
    end
    lib.registerContext({
        id = 'snackkaufen',
        title = 'Kaufen',
        options = Options,
    })
    lib.showContext('snackkaufen')
    Options = {}
end)

CreateThread(function()
    if Config.Enabled.water then
        local mashine = {'prop_vend_water_01'}
        local options = {{name = 'wasserkaufen', label = 'Kaufen', event = 'morauto:water', icon = 'fas fa-can'}}
        exports.ox_target:addModel(mashine, options)
    end
end)

RegisterNetEvent('morauto:water')
AddEventHandler('morauto:water', function()
    local data = Config.Water
    for i=1, #data do
        table.insert(Options, {title = data[i].label, description = 'Preis: '..data[i].price, serverEvent = 'morauto:buy',
        args = {data[i].name, data[i].price}, arrow = true})
    end
    lib.registerContext({
        id = 'wasserkaufen',
        title = 'Kaufen',
        options = Options,
    })
    lib.showContext('wasserkaufen')
    Options = {}
end)

CreateThread(function()
    if Config.Enabled.water then
        local mashine = {'prop_vend_water_01'}
        local options = {{name = 'wasserkaufen', label = 'Kaufen', event = 'morauto:water', icon = 'fas fa-can'}}
        exports.ox_target:addModel(mashine, options)
    end
end)

RegisterNetEvent('morauto:water')
AddEventHandler('morauto:water', function()
    local data = Config.Water
    for i=1, #data do
        table.insert(Options, {title = data[i].label, description = 'Preis: '..data[i].price, serverEvent = 'morauto:buy',
        args = {data[i].name, data[i].price}, arrow = true})
    end
    lib.registerContext({
        id = 'wasserkaufen',
        title = 'Kaufen',
        options = Options,
    })
    lib.showContext('wasserkaufen')
    Options = {}
end)

CreateThread(function()
    if Config.Enabled.cig then
        local mashine = {'prop_vend_fags_01'}
        local options = {{name = 'cigkaufen', label = 'Kaufen', event = 'morauto:cig', icon = 'fas fa-can'}}
        exports.ox_target:addModel(mashine, options)
    end
end)

RegisterNetEvent('morauto:cig')
AddEventHandler('morauto:cig', function()
    local data = Config.Cig
    for i=1, #data do
        table.insert(Options, {title = data[i].label, description = 'Preis: '..data[i].price, serverEvent = 'morauto:buy',
        args = {data[i].name, data[i].price}, arrow = true})
    end
    lib.registerContext({
        id = 'cigkaufen',
        title = 'Kaufen',
        options = Options,
    })
    lib.showContext('cigkaufen')
    Options = {}
end)

RegisterNetEvent('morauto:oknoti')
AddEventHandler('morauto:oknoti', function()
    lib.notify({title = 'Kauf',description = 'Erfolgreich',type = 'success', position = 'top-right', duration = 5000})
end)
RegisterNetEvent('morauto:notoknoti')
AddEventHandler('morauto:notoknoti', function()
    lib.notify({title = 'Kauf',description = 'Dir fehlt das Geld dazu.',type = 'error', position = 'top-right', duration = 5000})
end)