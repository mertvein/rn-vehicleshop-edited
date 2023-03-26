local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("vehicleshop:testdrive",function(netID)
    local entity = NetworkGetEntityFromNetworkId(netID)
    DeleteEntity(entity)
end)

local arr = {}
local vehicles = {}
local data = json.decode(LoadResourceFile(GetCurrentResourceName(), "./stock.json"))
local daily = json.decode(LoadResourceFile(GetCurrentResourceName(), "./daily.json"))

RegisterNetEvent("vehicles:server:openUI",function()
    local already = {}
    local dailyVehicles = {}
    local src = source
    local name = Config.GetPlayerNameFunc(src,QBCore)
    TriggerClientEvent('vehicles:client:openUI', src, data, daily,name)
end)

CreateThread(function()
    local when = tonumber(LoadResourceFile(GetCurrentResourceName(), "./time.txt"))
    if not when then
        local date = os.date("*t")
        when = os.time({year = date.year, month = date.month, day = date.day, hour = Config.Hour})+86400
        SaveResourceFile(GetCurrentResourceName(), "./time.txt", when)
    end
    local lasthour = tonumber(os.date("%H", when))
    if lasthour ~= Config.Hour then
        when = when + 3600*(Config.Hour-lasthour)
        SaveResourceFile(GetCurrentResourceName(), "./time.txt", when)
    end
    while true do
        local time = os.time()
        Wait((when-time)*1000)
        time = os.time()
        daily = {}
        local already = {}
        for i = 1, Config.NumOfVehicles do
            local rand = math.random(#data-#daily)
            while already[rand] and not checkMax(data[rand]) do
                rand = rand+1
            end
            already[rand] = true
            daily[#daily+1] = data[rand]
        end
        while when <= time do
            when = when + 86400
        end
        SaveResourceFile(GetCurrentResourceName(), "./daily.json", json.encode(daily))
        SaveResourceFile(GetCurrentResourceName(), "./stock.json", json.encode(data))
        SaveResourceFile(GetCurrentResourceName(), "./time.txt", when)
    end
end)

function checkMax(veh)
    return veh.stock < veh.maxStock 
end

if Config.ResetStockEvent.safe_for_net then
    RegisterNetEvent(Config.ResetStockEvent.name, function()
        for i=1,#data do 
            local vehicle = data[i]
            vehicle.stock = 0
            daily = {}
        end
        SaveResourceFile(GetCurrentResourceName(), "./daily.json", json.encode(daily))
        SaveResourceFile(GetCurrentResourceName(), "./stock.json", json.encode(data))
    end)
else
    AddEventHandler(Config.ResetStockEvent.name, function()
        for i=1,#data do 
            local vehicle = data[i]
            vehicle.stock = 0
            daily = {}
        end
        SaveResourceFile(GetCurrentResourceName(), "./daily.json", json.encode(daily))
        SaveResourceFile(GetCurrentResourceName(), "./stock.json", json.encode(data))
    end)
end

if Config.SetDefaultStockEvent.safe_for_net then
    RegisterNetEvent(Config.SetDefaultStockEvent.name, function()
        local newtable = {}
        for cat,veh in next,Config.Vehicles do
            for i=1,#veh.buttons do
                local currentVehicle = veh.buttons[i]
				local currentStock = 0
				if currentVehicle.maxStock == nil then 
					currentStock = "unlimited"
					currentVehicle.maxStock = "unlimited"
				end
                table.insert(newtable,{
                    name=currentVehicle.name,
                    stock=currentStock,
                    model=currentVehicle.model,
                    costs =currentVehicle.costs,
                    maxStock=currentVehicle.maxStock
                })
            end
        end
        SaveResourceFile(GetCurrentResourceName(), "./stock.json", json.encode(newtable))
    end)
else
    AddEventHandler(Config.SetDefaultStockEvent.name, function()
        local newtable = {}
        for cat,veh in next,Config.Vehicles do
            for i=1,#veh.buttons do
                local currentVehicle = veh.buttons[i]
				local currentStock = 0
				if currentVehicle.maxStock == nil then 
					currentStock = "unlimited"
					currentVehicle.maxStock = "unlimited"
				end
                table.insert(newtable,{
                    name=currentVehicle.name,
                    stock=currentStock,
                    model=currentVehicle.model,
                    costs =currentVehicle.costs,
                    maxStock=currentVehicle.maxStock
                })
            end
        end
        SaveResourceFile(GetCurrentResourceName(), "./stock.json", json.encode(newtable))
    end)
end

QBCore.Functions.CreateCallback("vehicleshop:getMoney", function(src,cb,price)
    if Config.GetPlayerMoney(src,QBCore) >= tonumber(price) then 
        Config.RemovePlayerMoney(src,price,QBCore)
        cb(true)
    end
    cb(false)
end)

RegisterNetEvent("rn-vehicleshop:removeStock",function(model)
    for i=1,#data do
        if data[i].model == model then
          if data[i].stock > 0 then
            data[i].stock = data[i].stock - 1
          end
        end
    end
    SaveResourceFile(GetCurrentResourceName(), "./stock.json", json.encode(data))
end)



RegisterNetEvent('rn-vehicleshop:setVehicleOwned', function(vehicleData)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    MySQL.Async.insert(
        'INSERT INTO player_vehicles (license, citizenid, vehicle, hash, mods, plate, state) VALUES (?, ?, ?, ?, ?, ?, ?)',
                {Player.PlayerData.license, Player.PlayerData.citizenid, vehicleData.displayName,
                 GetHashKey(vehicleData["model"]), vehicleData["mods"], vehicleData["plate"], 0})
end)