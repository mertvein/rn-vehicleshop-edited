Config = {}
Config.Core = {
  name = "QBCore",
  gettingCoreObject = "export", -- event/export
  gettingObjectName = "GetCoreObject", -- the event name / export name for getting the core object.
  core_resource_name = "qb-core" -- the core resource name.
}

Config.Location = vector3(-33.07752, -1102.078, 26.422332) -- The location of the vehicleshop.
Config.BoughtVehicleSpawnLocation = {coords= vector3(-53.75075, -1111.026, 25.828771),heading = 72.2} -- The location where the purchased vehicle will be spawned.
Config.TestVehicleSpawnLocation = {coords= vector3(-997.56, -3341.85, 13.94),heading = 63.87} -- The location where the testdrive vehicle will be spawned.

Config.Blip = {
  id = 326,
  color = 3,
  scale = 0.8,
  label = "Galeri",
  showBlip = true
}

------------------------------------------------------------------------------------------------------------------------
-- Vehicle Stock
------------------------------------------------------------------------------------------------------------------------

Config.Hour = 20 -- The time when new vehicles will be added to the stock.
Config.NumOfVehicles = 5 -- The amount of vehicles that will be added to the stock.

-- Every day the stock renewing itself with 5 (Config.NumOfVehicles = 5) new vehicles at 12:00 p.m. (Config.Hour = 12).
-- In order for the stock to work you need to call the Config.SetDefaultStockEvent function, Otherwise the stock will be UNLIMITED. 

------------------------------------------------------------------------------------------------------------------------
-- Test Drive
------------------------------------------------------------------------------------------------------------------------

Config.TestDrive = {
    testDriveTimer = 120, -- Duration of the test drive (seconds).
    testDriveCost = 5000, -- The price of the test drive.
}

------------------------------------------------------------------------------------------------------------------------
-- Categories And Vehicles
------------------------------------------------------------------------------------------------------------------------

Config.Vehicles = {
    --[[ { -- A category that shows the vehicles that added into stock today. DONT TOUCH IF YOU WANT THIS OPTION/CATEGORY.
      title = "daily vehicles", -- Title of category.
      buttons = {} -- DONT TOUCH!
    }, ]]

    -- Examples:
    {
      title = "Compacts", -- Title of category.
      buttons = {
        {name = "Maxwell Asbo", costs = 4000, model = "Asbo", maxStock = 10},
        {name = "Dinka Blista", costs = 13000, model = "blista", maxStock = 10},
        {name = "Brioso R/A", costs = 20000, model = "brioso", maxStock = 10},
        {name = "Club BF", costs = 8000, model = "club", maxStock = 10},
        {name = "Karin Dilettante", costs = 9000, model = "dilettante", maxStock = 10},
        {name = "Karin Dilettante Patrol", costs = 12000, model = "dilettante2", maxStock = 10},
        {name = "Dinka Blista Kanjo", costs = 12000, model = "kanjo", maxStock = 10},
        {name = "Weeny Issi", costs = 7000, model = "issi2", maxStock = 10},
        {name = "Weeny Issi Classic", costs = 5000, model = "issi3", maxStock = 10},
        {name = "Benefactor Panto", costs = 3200, model = "panto", maxStock = 10},
        {name = "Bollokan Prairie", costs = 30000, model = "prairie", maxStock = 10},
        {name = "Declasse Rhapsody", costs = 10000, model = "rhapsody", maxStock = 10},
        {name = "Grotti Brioso 300", costs = 12000, model = "brioso2", maxStock = 10},
        {name = "BF Weevil", costs = 9000, model = "weevil", maxStock = 10},
      }
    },
    {
      title = "Coupes", -- Title of category.
      buttons = {
        {name = "Cognoscenti Cabrio Enus", costs = 30000, model = "cogcabrio", maxStock = 10},
        {name = "Exemplar Dewbauchee", costs = 40000, model = "exemplar", maxStock = 10},
        {name = "Ocelot F620", costs = 32500, model = "f620", maxStock = 10},
        {name = "Lampadati Felon", costs = 31000, model = "felon", maxStock = 10},
        {name = "Lampadati Felon GT", costs = 37000, model = "felon2", maxStock = 10},
        {name = "Ocelot Jackal", costs = 19000, model = "jackal", maxStock = 10},
        {name = "Übermacht Oracle", costs = 22000, model = "oracle", maxStock = 10},
        {name = "Übermacht Oracle XS", costs = 28000, model = "oracle2", maxStock = 10},
        {name = "Übermacht Sentinel", costs = 30000, model = "sentinel", maxStock = 10},
        {name = "Übermacht Sentinel XS", costs = 33000, model = "sentinel2", maxStock = 10},
        {name = "Enus Windsor", costs = 27000, model = "windsor", maxStock = 10},
        {name = "Enus Windsor Drop", costs = 34000, model = "windsor2", maxStock = 10},
        {name = "Übermacht Zion", costs = 22000, model = "zion", maxStock = 10},
        {name = "Übermacht Zion Cabrio", costs = 28000, model = "zion2", maxStock = 10},
        {name = "Karin Previon", costs = 149000, model = "previon", maxStock = 10},
        {name = "Dewbauchee Champion", costs = 205000, model = "champion", maxStock = 10},
        {name = "Pegassi Ignus", costs = 1120000, model = "ignus", maxStock = 10},
        {name = "Överflöd Zeno", costs = 1350000, model = "zeno", maxStock = 10},
        {name = "Karin Sultan CR", costs = 55000, model = "sultan2", maxStock = 10},
        {name = "Dinka Sugoi", costs = 85000, model = "sugoi", maxStock = 10},
      }
    },
    {
      title = "Sedans", -- Title of category.
      buttons = {
        {name = "Enus Cognoscenti 55", costs = 30000, model = "cog55", maxStock = 10},
        {name = "Cheval Fugitive", costs = 20000, model = "fugitive", maxStock = 10},
        {name = "Cinquemila Lampadati", costs = 125000, model = "cinquemila", maxStock = 10},
        {name = "Obey I-Wagen", costs = 225000, model = "iwagen", maxStock = 10},
        {name = "Enus Deity", costs = 505000, model = "deity", maxStock = 10},
        {name = "Enus Jubilee", costs = 485000, model = "jubilee", maxStock = 10},
        {name = "Albany V-STR", costs = 80000, model = "vstr", maxStock = 10},
        {name = "Albany V-STR", costs = 80000, model = "vstr", maxStock = 10},
      }
    },
    {
      title = "Sports", -- Title of category.
      buttons = {
        {name = "Grotti Bestia GTS", costs = 37000, model = "bestiagts", maxStock = 10},
        {name = "Bravado Buffalo S", costs = 24500, model = "buffalo2", maxStock = 10},
        {name = "Pfister Comet S2 Cabrio", costs = 250000, model = "comet7", maxStock = 10},
        {name = "Pfister Comet", costs = 250000, model = "comet2", maxStock = 10},
        {name = "Pfister Comet Retro", costs = 175000, model = "comet3", maxStock = 10},
        {name = "Pfister Comet SR", costs = 155000, model = "comet5", maxStock = 10},
        {name = "Invetero Coquette", costs = 145000, model = "coquette", maxStock = 10},
        {name = "Invetero Coquette D10", costs = 220000, model = "coquette4", maxStock = 10},
        {name = "Obey 8F Drafter", costs = 80000, model = "drafter", maxStock = 10},
        {name = "Annis Elegy Retro Custom", costs = 145000, model = "elegy", maxStock = 10},
        {name = "Annis Elegy RH8", costs = 150000, model = "elegy2", maxStock = 10},
        {name = "Benefactor Feltzer", costs = 97000, model = "feltzer2", maxStock = 10},
        {name = "Vapid Flash GT", costs = 48000, model = "flashgt", maxStock = 10},
        {name = "Lampadati Furore GT", costs = 78000, model = "furoregt", maxStock = 10},
        {name = "Lampadati Komoda", costs = 105000, model = "komoda", maxStock = 10},
        {name = "Överflöd Imorgon", costs = 120000, model = "imorgon", maxStock = 10},
        {name = "Progen Itali GTO", costs = 260000, model = "italigto", maxStock = 10},
        {name = "Ocelot Jugular", costs = 100000, model = "jugular", maxStock = 10},
        {name = "Dinka Jester", costs = 132250, model = "jester", maxStock = 10},
        {name = "Dinka Jester Classic", costs = 115000, model = "jester3", maxStock = 10},
        {name = "Ocelot Locust", costs = 200000, model = "locust", maxStock = 10},
        {name = "Ocelot Lynx", costs = 150000, model = "lynx", maxStock = 10},
        {name = "Dewbauchee Massacro", costs = 110000, model = "massacro", maxStock = 10},
        {name = "Vysser Neo", costs = 230000, model = "neo", maxStock = 10},
        {name = "Pfister Neon", costs = 220000, model = "neon", maxStock = 10},
        {name = "Obey 9F Cabrio", costs = 105000, model = "ninef2", maxStock = 10},
        {name = "Enus Paragon", costs = 135000, model = "paragon", maxStock = 10},
        {name = "Maibatsu Penumbra FF", costs = 89000, model = "penumbra2", maxStock = 10},
        {name = "Dewbauchee Rapid GT Convertible", costs = 92000, model = "rapidgt2", maxStock = 10},
        {name = "Übermacht Revolter", costs = 95000, model = "revolter", maxStock = 10},
        {name = "Hijak Ruston", costs = 130000, model = "ruston", maxStock = 10},
        {name = "Benefactor Schlagen GT", costs = 160000, model = "schlagen", maxStock = 10},
        {name = "Dewbauchee Seven-70", costs = 140000, model = "seven70", maxStock = 10},
        {name = "Dewbauchee Specter", costs = 160000, model = "specter", maxStock = 10},
        {name = "Progen Itali RSX", costs = 260000, model = "italirsx", maxStock = 10},
      }
    },
    {
      title = "Sports Classic", -- Title of category.
      buttons = {
        {name = "Invetero Coquette Classic", costs = 165000, model = "coquette2", maxStock = 10},
      }
    },
    {
      title = "Super", -- Title of category.
      buttons = {
        {name = "Enus Cognoscenti Cabrio", costs = 30000, model = "cogcabrio", maxStock = 10},
        {name = "Dewbauchee Exemplar", costs = 40000, model = "exemplar", maxStock = 10},
        {name = "Ocelot F620", costs = 32500, model = "f620", maxStock = 10},
        {name = "Lampadati Felon", costs = 31000, model = "felon", maxStock = 10},
        {name = "Lampadati Felon GT", costs = 37000, model = "felon2", maxStock = 10},
        {name = "Ocelot Jackal", costs = 19000, model = "jackal", maxStock = 10},
        {name = "Übermacht Oracle", costs = 22000, model = "oracle", maxStock = 10},
        {name = "Übermacht Oracle XS", costs = 28000, model = "oracle2", maxStock = 10},
        {name = "Übermacht Sentinel", costs = 30000, model = "sentinel", maxStock = 10},
        {name = "Übermacht Sentinel XS", costs = 33000, model = "sentinel2", maxStock = 10},
        {name = "Enus Windsor", costs = 27000, model = "windsor", maxStock = 10},
        {name = "Enus Windsor Drop", costs = 34000, model = "windsor2", maxStock = 10},
        {name = "Übermacht Zion", costs = 22000, model = "zion", maxStock = 10},
        {name = "Übermacht Zion Cabrio", costs = 28000, model = "zion2", maxStock = 10},
        {name = "Karin Previon", costs = 149000, model = "previon", maxStock = 10},
        {name = "Dewbauchee Champion", costs = 205000, model = "champion", maxStock = 10},
        {name = "Pegassi Ignus", costs = 1120000, model = "ignus", maxStock = 10},
        {name = "Överflöd Zeno", costs = 1350000, model = "zeno", maxStock = 10},
        {name = "Principe Deveste", costs = 234000, model = "deveste", maxStock = 10},
      }
    },
    {
      title = "Muscle", -- Title of category.
      buttons = {
        {name = "Vapid Blade", costs = 23500, model = "blade", maxStock = 10},
        {name = "Albany Buccaneer Lux", costs = 24500, model = "buccaneer2", maxStock = 10},
        {name = "Vapid Chino Lux", costs = 28500, model = "chino2", maxStock = 10},
        {name = "Schyster Deviant", costs = 70000, model = "deviant", maxStock = 10},
        {name = "Invetero Coquette BlackFin", costs = 80000, model = "coquette3", maxStock = 10},
        {name = "Vapid Dominator GTX", costs = 70000, model = "dominator3", maxStock = 10},
        {name = "Vapid Dominator ASP", costs = 110000, model = "dominator7", maxStock = 10},
        {name = "Vapid Dominator GTT", costs = 80000, model = "dominator8", maxStock = 10},
        {name = "Willard Faction GT", costs = 70000, model = "faction2", maxStock = 10},
        {name = "Bravado Gauntlet Hellfire", costs = 80000, model = "gauntlet4", maxStock = 10},
        {name = "Bravado Gauntlet Classic Custom", costs = 120000, model = "gauntlet5", maxStock = 10},
        {name = "Vapid Hotknife", costs = 90000, model = "hotknife", maxStock = 10},
        {name = "Vapid Impaler", costs = 95000, model = "impaler", maxStock = 10},
        {name = "Declasse Moonbeam", costs = 130000, model = "moonbeam2", maxStock = 10},
        {name = "Imponte Nightshade", costs = 70000, model = "nightshade", maxStock = 10},
        {name = "Declasse Sabre GT Turbo", costs = 95000, model = "sabregt2", maxStock = 10},
        {name = "Vapid Slam Van", costs = 47000, model = "slamvan3", maxStock = 10},
        {name = "Dundreary Virgo Custom", costs = 39800, model = "virgo2", maxStock = 10},
        {name = "Bravado Buffalo STX", costs = 345000, model = "buffalo4", maxStock = 10},
        {name = "Annis Bf Injection", costs = 9000, model = "bfinjection", maxStock = 10},
      }
    },
    {
      title = "SUV", -- Title of category.
      buttons = {
        {name = "Gallivanter Baller LE LWB", costs = 98000, model = "baller4", maxStock = 10},
        {name = "Gallivanter Baller ST", costs = 145000, model = "baller7", maxStock = 10},
        {name = "Karin BeeJay XL", costs = 39000, model = "bjxl", maxStock = 10},
        {name = "Albany Cavalcade", costs = 24000, model = "cavalcade2", maxStock = 10},
        {name = "Vapid Contender", costs = 35000, model = "contender", maxStock = 10},
        {name = "Benefactor Dubsta", costs = 32000, model = "dubsta2", maxStock = 10},
        {name = "Fathom FQ2", costs = 32000, model = "fq2", maxStock = 10},
        {name = "Declasse Granger", costs = 29000, model = "granger", maxStock = 10},
        {name = "Bravado Gresley", costs = 25000, model = "gresley", maxStock = 10},
        {name = "Emperor Habanero", costs = 25000, model = "habanero", maxStock = 10},
        {name = "Enus Huntley", costs = 25000, model = "huntley", maxStock = 10},
        {name = "Dundreary Landstalker XL", costs = 25000, model = "landstalker2", maxStock = 10},
        {name = "Lampadati Novak", costs = 70000, model = "novak", maxStock = 10},
        {name = "Mammoth Patriot Stretch", costs = 21000, model = "patriot2", maxStock = 10},
        {name = "Übermacht Rebla GTS", costs = 21000, model = "rebla", maxStock = 10},
        {name = "Obey Rocoto", costs = 13000, model = "rocoto", maxStock = 10},
        {name = "Canis Seminole", costs = 20000, model = "seminole", maxStock = 10},
        {name = "Canis Seminole Frontier", costs = 20000, model = "seminole2", maxStock = 10},
        {name = "Pegassi Toros", costs = 75000, model = "toros", maxStock = 10},
        {name = "Benefactor XLS", costs = 68000, model = "xls", maxStock = 10},
        {name = "Declasse Granger 3600LX", costs = 221000, model = "granger2", maxStock = 10},
        {name = "Pfister Astron", costs = 150000, model = "astron", maxStock = 10},
      }
    },
    {
      title = "Off Road", -- Title of category.
      buttons = {
        {name = "Annis Bifta", costs = 15500, model = "bifta", maxStock = 10},
        {name = "Vapid Caracara", costs = 60000, model = "caracara", maxStock = 10},
        {name = "Vapid Caracara 4x4", costs = 80000, model = "caracara2", maxStock = 10},
        {name = "Annis Dubsta 6x6", costs = 54000, model = "dubsta3", maxStock = 10},
        {name = "Karin Everon", costs = 60000, model = "everon", maxStock = 10},
        {name = "Canis Freecrawler", costs = 75000, model = "freecrawler", maxStock = 10},
        {name = "Annis Hellion", costs = 38000, model = "hellion", maxStock = 10},
        {name = "Canis Kamacho", costs = 50000, model = "kamacho", maxStock = 10},
        {name = "Vapid Riata", costs = 80000, model = "riata", maxStock = 10},
        {name = "Vapid Sandking XL", costs = 57000, model = "sandking", maxStock = 10},
        {name = "Vapid Sandking SWB", costs = 47000, model = "sandking2", maxStock = 10},
        {name = "Vapid Trophy", costs = 47000, model = "trophytruck", maxStock = 10},
        {name = "Vapid Desert Raid", costs = 47000, model = "trophytruck2", maxStock = 10},
        {name = "Maxwell Vagrant", costs = 50000, model = "vagrant", maxStock = 10},
        {name = "Dinka Verus", costs = 20000, model = "verus", maxStock = 10},
      }
    },
    {
      title = "Motorcycles", -- Title of category.
      buttons = {
        {name = "Dinka Akuma", costs = 55000, model = "akuma", maxStock = 10},
        {name = "LCC Avarus", costs = 20000, model = "avarus", maxStock = 10},
        {name = "WMC Bagger", costs = 13500, model = "bagger", maxStock = 10},
        {name = "Pegassi Bati 801", costs = 19000, model = "bati", maxStock = 10},
        {name = "Pegassi Bati 801RR", costs = 24000, model = "bati2", maxStock = 10},
        {name = "Nagasaki BF400", costs = 22000, model = "bf400", maxStock = 10},
        {name = "Nagasaki Carbon RS", costs = 22000, model = "carbonrs", maxStock = 10},
        {name = "Nagasaki Chimera", costs = 21000, model = "chimera", maxStock = 10},
        {name = "Western Cliffhanger", costs = 28500, model = "cliffhanger", maxStock = 10},
        {name = "WMC Daemon", costs = 14000, model = "daemon", maxStock = 10},
        {name = "Western Daemon Custom", costs = 23000, model = "daemon2", maxStock = 10},
        {name = "Shitzu Defiler", costs = 30000, model = "defiler", maxStock = 10},
        {name = "Principe Diablous", costs = 30000, model = "diablous", maxStock = 10},
        {name = "Principe Diablous Custom", costs = 38000, model = "diablous2", maxStock = 10},
        {name = "Dinka Double-T", costs = 28000, model = "double", maxStock = 10},
        {name = "Pegassi Esskey", costs = 12000, model = "esskey", maxStock = 10},
        {name = "Pegassi FCR 1000", costs = 15000, model = "fcr", maxStock = 10},
        {name = "Pegassi FCR 1000 Custom", costs = 19000, model = "fcr2", maxStock = 10},
        {name = "Shitzu Hakuchou", costs = 17000, model = "hakuchou", maxStock = 10},
        {name = "LLC Innovation", costs = 33500, model = "innovation", maxStock = 10},
        {name = "Principe Lectro", costs = 28000, model = "lectro", maxStock = 10},
        {name = "WMC Nightblade", costs = 23000, model = "nightblade", maxStock = 10},
        {name = "Nagasaki Stryder", costs = 50000, model = "stryder", maxStock = 10},
        {name = "Dinka Vindicator", costs = 39000, model = "vindicator", maxStock = 10},
        {name = "Nagasaki Shinobi", costs = 35000, model = "shinobi", maxStock = 10},
        {name = "Western Reever", costs = 25000, model = "reever", maxStock = 10},
      }
    },
}
-- Explanation of the buttons:
--[[
    name = vehicle's label (The name which is displayed in the vehicle menu).
    costs = vehicle's price.
    model = vehicle's model.
    stock = The maximum stock a vehicle can reach (Explanation from above).
]]

------------------------------------------------------------------------------------------------------------------------
-- Color selection:
------------------------------------------------------------------------------------------------------------------------

-- Full list of colors - https://wiki.rage.mp/index.php?title=Vehicle_Colors
Config.Colors = {
  {r = 13, g = 17, b = 22, colorName = "Metallic Black", gtaColor = 0},
  {r = 28, g = 29, b = 33, colorName = "Metallic Graphite Black", gtaColor = 1},
  {r = 50, g = 56, b = 61, colorName = "Metallic Black Steal", gtaColor = 2},
  {r = 69, g = 75, b = 79, colorName = "Metallic Dark Silver", gtaColor = 3},
  {r = 153, g = 157, b = 160, colorName = "Metallic Silver", gtaColor = 4},
  {r = 194, g = 196, b = 198, colorName = "Metallic Blue Silver", gtaColor = 5},
  {r = 151, g = 154, b = 151, colorName = "Metallic Steel Gray", gtaColor = 6},
  {r = 99, g = 115, b = 128, colorName = "Metallic Shadow Silver", gtaColor = 7},
  {r = 99, g = 98, b = 92, colorName = "Metallic Stone Silver", gtaColor = 8},
  {r = 60, g = 63, b = 71, colorName = "Metallic Midnight Silver", gtaColor = 9},
  {r = 68, g = 78, b = 84, colorName = "Metallic Gun Metal", gtaColor = 10},
  {r = 29, g = 33, b = 41, colorName = "Metallic Anthracite Grey", gtaColor = 11},
  {r = 99, g = 98, b = 92, colorName = "Matte Black", gtaColor = 12},
  {r = 38, g = 40, b = 42, colorName = "Matte Gray", gtaColor = 13},
  {r = 81, g = 85, b = 84, colorName = "Matte Light Grey", gtaColor = 14},
  {r = 21, g = 25, b = 33, colorName = "Util Black", gtaColor = 15},
  {r = 30, g = 36, b = 41, colorName = "Util Black Poly", gtaColor = 16},
  {r = 51, g = 58, b = 60, colorName = "Util Dark Silver", gtaColor = 17},
  {r = 140, g = 144, b = 149, colorName = "Util Silver", gtaColor = 18},
  {r = 57, g = 67, b = 77, colorName = "Util Gun Metal", gtaColor = 19},
  {r = 80, g = 98, b = 114, colorName = "Util Shadow Silver", gtaColor = 20},
  {r = 30, g = 35, b = 47, colorName = "Worn Black", gtaColor = 21},
  {r = 54, g = 58, b = 63, colorName = "Worn Graphite", gtaColor = 22},
  {r = 160, g = 161, b = 153, colorName = "Worn Silver Grey", gtaColor = 23},
  {r = 211, g = 211, b = 211, colorName = "Worn Silver", gtaColor = 24},
  {r = 183, g = 191, b = 202, colorName = "Worn Blue Silver", gtaColor = 25},
  {r = 119, g = 135, b = 148, colorName = "Worn Shadow Silver", gtaColor = 26},
  {r = 192, g = 14, b = 26, colorName = "Metallic Red", gtaColor = 27},
  {r = 218, g = 25, b = 24, colorName = "Metallic Torino Red", gtaColor = 28},
  {r = 182, g = 17, b = 27, colorName = "Metallic Formula Red", gtaColor = 29},
  {r = 165, g = 30, b = 35, colorName = "Metallic Blaze Red", gtaColor = 30},
  {r = 123, g = 26, b = 34, colorName = "Metallic Graceful Red", gtaColor = 31},
  {r = 142, g = 27, b = 31, colorName = "Metallic Garnet Red", gtaColor = 32},
  {r = 111, g = 24, b = 24, colorName = "Metallic Desert Red", gtaColor = 33},
  {r = 73, g = 17, b = 29, colorName = "Metallic Cabernet Red", gtaColor = 34},
  {r = 99, g = 98, b = 92, colorName = "Metallic Candy Red", gtaColor = 35},
  {r = 212, g = 74, b = 23, colorName = "Metallic Sunrise Orange", gtaColor = 36},
  {r = 194, g = 148, b = 79, colorName = "Metallic Classic Gold", gtaColor = 37},
  {r = 247, g = 134, b = 22, colorName = "Metallic Orange", gtaColor = 38},
  {r = 207, g = 31, b = 33, colorName = "Matte Red", gtaColor = 39},
  {r = 115, g = 32, b = 33, colorName = "Matte Dark Red", gtaColor = 40},
  {r = 242, g = 125, b = 32, colorName = "Matte Orange", gtaColor = 41},
  {r = 255, g = 201, b = 31, colorName = "Matte Yellow", gtaColor = 42},
  {r = 156, g = 16, b = 22, colorName = "Util Red", gtaColor = 43},
  {r = 222, g = 15, b = 24, colorName = "Util Bright Red", gtaColor = 44},
  {r = 143, g = 30, b = 23, colorName = "Util Garnet Red", gtaColor = 45},
  {r = 169, g = 71, b = 68, colorName = "Worn Red", gtaColor = 46},
  {r = 177, g = 108, b = 81, colorName = "Worn Golden Red", gtaColor = 47},
  {r = 55, g = 28, b = 37, colorName = "Worn Dark Red", gtaColor = 48},
  {r = 19, g = 36, b = 40, colorName = "Metallic Dark Green", gtaColor = 49},
  {r = 18, g = 46, b = 43, colorName = "Metallic Racing Green", gtaColor = 50},
  {r = 18, g = 56, b = 60, colorName = "Metallic Sea Green", gtaColor = 51},
  {r = 49, g = 66, b = 63, colorName = "Metallic Olive Green", gtaColor = 52},
  {r = 21, g = 92, b = 45, colorName = "Metallic Green", gtaColor = 53},
  {r = 27, g = 103, b = 112, colorName = "Metallic Gasoline Blue Green", gtaColor = 54},
  {r = 102, g = 184, b = 31, colorName = "Matte Lime Green", gtaColor = 55},
  {r = 34, g = 56, b = 62, colorName = "Util Dark Green", gtaColor = 56},
  {r = 29, g = 90, b = 63, colorName = "Util Green", gtaColor = 57},
  {r = 45, g = 66, b = 63, colorName = "Worn Dark Green", gtaColor = 58},
  {r = 69, g = 89, b = 75, colorName = "Worn Green", gtaColor = 59},
  {r = 101, g = 134, b = 127, colorName = "Worn Sea Wash", gtaColor = 60},
  {r = 34, g = 46, b = 70, colorName = "Metallic Midnight Blue", gtaColor = 61},
  {r = 35, g = 49, b = 85, colorName = "Metallic Dark Blue", gtaColor = 62},
  {r = 48, g = 76, b = 126, colorName = "Metallic Saxony Blue", gtaColor = 63},
  {r = 71, g = 87, b = 143, colorName = "Metallic Blue", gtaColor = 64},
  {r = 99, g = 123, b = 167, colorName = "Metallic Mariner Blue", gtaColor = 65},
  {r = 57, g = 71, b = 98, colorName = "Metallic Harbor Blue", gtaColor = 66},
  {r = 214, g = 231, b = 241, colorName = "Metallic Diamond Blue", gtaColor = 67},
  {r = 118, g = 175, b = 190, colorName = "Metallic Surf Blue", gtaColor = 68},
  {r = 39, g = 81, b = 144, colorName = "Util Blue", gtaColor = 77},
  {r = 66, g = 113, b = 225, colorName = "Util Maui Blue Poly", gtaColor = 80},
  {r = 37, g = 58, b = 167, colorName = "Matte Blue", gtaColor = 83},
  {r = 255, g = 207, b = 32, colorName = "Metallic Taxi Yellow", gtaColor = 88},
  {r = 251, g = 226, b = 18, colorName = "Metallic Race Yellow", gtaColor = 89},
  {r = 80, g = 50, b = 24, colorName = "Metallic Pueblo Beige", gtaColor = 94},
  {r = 34, g = 27, b = 25, colorName = "Metallic Choco Brown", gtaColor = 96},
  {r = 172, g = 153, b = 117, colorName = "Metallic Straw Beige", gtaColor = 99},
  {r = 117, g = 43, b = 25, colorName = "Metallic Choco Orange", gtaColor = 104},
  {r = 223, g = 213, b = 178, colorName = "Metallic Sun Bleeched Sand", gtaColor = 106},
  {r = 247, g = 237, b = 213, colorName = "Metallic Cream", gtaColor = 107},
  {r = 120, g = 95, b = 51, colorName = "Util Medium Brown", gtaColor = 109},
  {r = 255, g = 255, b = 246, colorName = "Metallic White", gtaColor = 111},
  {r = 234, g = 234, b = 234, colorName = "Metallic Frost White", gtaColor = 112},
  {r = 176, g = 171, b = 148, colorName = "Worn Honey Beige", gtaColor = 113},
  {r = 53, g = 65, b = 88, colorName = "Brushed Black steel", gtaColor = 118},
  {r = 234, g = 230, b = 222, colorName = "Worn Off White", gtaColor = 121},
  {r = 223, g = 221, b = 208, colorName = "Util Off White", gtaColor = 122},
  {r = 242, g = 173, b = 46, colorName = "Worn Orange", gtaColor = 123},
  {r = 249, g = 164, b = 88, colorName = "Worn Light Orange", gtaColor = 124},
  {r = 78, g = 100, b = 67, colorName = "Matte Green", gtaColor = 128},
  {r = 246, g = 174, b = 32, colorName = "Orange", gtaColor = 138},
  {r = 176, g = 238, b = 110, colorName = "Green", gtaColor = 139},
  {r = 105, g = 103, b = 72, colorName = "Matte Olive Drab", gtaColor = 152},
  {r = 122, g = 108, b = 85, colorName = "Matte Desert Brown", gtaColor = 153},
  {r = 195, g = 180, b = 146, colorName = "Matte Desert Tan", gtaColor = 154},
  {r = 90, g = 99, b = 82, colorName = "Matte Foilage Green", gtaColor = 155},
}
-- Explanation of color selection:
--[[
    r,g,b = (The color rgb values according to your gta color).
    colorName = color's name (put whatever you want).
    gtaColor = the color number from gta list.
]]

------------------------------------------------------------------------------------------------------------------------
-- Functions:
------------------------------------------------------------------------------------------------------------------------

-- Client:
Config.BuyVehicleFunc = function(QBCore,vehicleEntity,vehicleName)
  --[[
    This function is called when the purchased vehicle's entity is created and after the player has paid for the vehicle. 
    Parameters:
      @Core: The current core object.
      @vehicleEntity: The purchased vehicle's entity after it's been created.
      @vehicleName: The model listed in Config.Vehicles.
    
    Example for implementation:
    ]]
    local vehicleProps = QBCore.Functions.GetVehicleProperties(vehicleEntity)
    local model = GetEntityModel(vehicleEntity)
    vehicleProps.displayName = vehicleName
    --TriggerEvent("vehiclekeys:client:SetOwner", GetVehicleNumberPlateText(vehicleEntity), vehicleEntity)
    TriggerServerEvent('nkoVehicle:server:BuyVehicle', GetVehicleNumberPlateText(vehicleEntity), GetLabelText(GetDisplayNameFromVehicleModel(model)))
    TriggerServerEvent('rn-vehicleshop:setVehicleOwned', vehicleProps)
end

Config.TestDriveFunc = function(QBCore,vehicleEntity)
  --[[
    This function is called when the test drive vehicle's entity is created and after the player has paid for the test drive. 
    Parameters:
      @Core: The current core object.
      @vehicleEntity: The purchased vehicle's entity after it's been created.
    
    Example for implementation (Probably for hotwire add keys event/export):
    ]]
    TriggerEvent("vehiclekeys:client:SetOwner", GetVehicleNumberPlateText(vehicleEntity), vehicleEntity)
end

-- Server:
Config.GetPlayerMoney = function(playerId,QBCore)
  --[[
    This function is used for getting the player's money.
    Parameters:
      @playerId: The player server id/source.
      @Core: The current core object.
    
    Example for Qbus implementation is down below.
    ]]
    if type(playerId) == "number" then
        local player = QBCore.Functions.GetPlayer(playerId)
        if player then
            return player.PlayerData.money["cash"]
        end
    end
end

Config.RemovePlayerMoney = function(playerId, amount, QBCore)
  --[[
    This function is used for paying for the vehicle/testdrive.
    Parameters:
      @playerId: The player server id/source.
      @amount: the amount to pay.
      @Core: The current core object.
    
    Example for Qbus implementation is down below.
    ]]
    local player = QBCore.Functions.GetPlayer(playerId)
    if player then
        player.Functions.RemoveMoney("cash", amount)
    end
end

Config.GetPlayerNameFunc = function(playerId,QBCore)
  --[[
    This function is used for getting the character's name.
    Parameters:
      @playerId: The player server id/source.
      @Core: The current core object.
    
    Example for Qbus implementation is down below.
    ]]
    local player = QBCore.Functions.GetPlayer(playerId)
    return player.PlayerData.charinfo.firstname .. " " .. player.PlayerData.charinfo.lastname 
end

Config.ResetStockEvent = {
    name = "rn-vehicleshop:resetstock", -- This event resets the vehicles' stock. [*Server Side*],
    safe_for_net = true --[[
        true = allows you to trigger the event from a client side script and from a server side script.
        false =  allows you to trigger the event from a server side script only.
    ]]
}
   
Config.SetDefaultStockEvent = {
  name = "rn-vehicleshop:setDefaultStock", -- This event generates the stock.json file with values from the config.lua [*It is recommended to do it on first launch.]
  safe_for_net = true --[[
    true = allows you to trigger the event from a client side script and from a server side script.
    false =  allows you to trigger the event from a server side script only.
  ]]
}