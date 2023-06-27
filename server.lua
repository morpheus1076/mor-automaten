local items = {}
local cash = {}
RegisterNetEvent('morauto:buy')
AddEventHandler('morauto:buy', function(args)
    items = args
    cash = exports.ox_inventory:GetItemCount(source, 'money')
    if cash > items[2] then
        exports.ox_inventory:AddItem(source, items[1], 1)
        exports.ox_inventory:RemoveItem(source, 'money', items[2])
        TriggerClientEvent('morauto:oknoti', source)
    else
        TriggerClientEvent('morauto:notoknoti', source)
    end
end)