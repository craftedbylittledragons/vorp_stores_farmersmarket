
Config = {}
Config.ScriptName = GetCurrentResourceName()
    -- TODO
    -- CAMERA FACE NPC
    -- NPC ANIMATION

    --menu position
    -- "center" / "top-left" / "top-right"
Config.Align = "top-left"

Config.defaultlang = "en_lang"

       -- open stores
Config.Key = 0x760A9C6F --[G]

--Webhook Section, description is in translation
Config.UseWebhook = false -- Use webhook

--Mandatory Webhook Parts
Config.WebhookTitle = ""
Config.Webhook = ""

--Optional Webhook Parts, if not filled will default vorp_core config
Config.WebhookColor = ""
Config.WebhookName = ""
Config.WebhookLogo = ""
Config.WebhookLogo2 = ""
Config.WebhookAvatar = ""

    --- STORES ---

Config.Stores = {
-----------------------------------------------------------------------------
--------------------------------------Valentine------------------------------
-----------------------------------------------------------------------------
    ValFarmersMarket = {
        blipAllowed = true,
        BlipName = "Farmers Market",
        storeName = "Valentine Farmers Market",
        PromptName = "Farmers Market",
        sprite = 819673798,
        x = -321.55, y = 793.57, z = 117.89, h= 210.85,
        distanceOpenStore = 3.0,
        NpcAllowed = true,
        NpcModel = "mp_u_m_m_nat_farmer_01",
        AllowedJobs = {}, -- jobs allowed
        JobGrade = 0,
        category = { "Vegetables","Fruits","Grains","Nuts","Roots","Aromatics","Dairy","Protein","Misc" }, -- you need to add the same words to the buyitems and buyitems category you can add new categories as long the items have the category names
        storeType = {  "Buy","Sell" }, -- choose the storetype if you translate this you must do the same in the client.lua file
        StoreHoursAllowed = false, -- if you want the stores to use opening and closed hours
        RandomPrices = false,
        StoreOpen = 7, -- am
        StoreClose = 21 -- pm
    }, 
}

-----------------------------------------------------------------------------
-------------------------------------ITEMS-----------------------------------
-----------------------------------------------------------------------------

    -- ItemLable = translate here
    -- itemName = same as in your databse
    -- curencytype = "cash" or "gold" only use one.
    -- price = numbers only
    -- desc = a description of the item
    -- category = where the item will be displayed at
 
FarmersMarketItems_SELL = {
    -- Vegetables
        { itemLabel = "Carrot", itemName = "carrot", currencyType = "cash", sellprice = 1, randomprice = math.random(30, 55), desc = "Sell Carrot", category = "Vegetables" },
        { itemLabel = "Chanterelles Mushroom", itemName = "Chanterelles", currencyType = "cash", sellprice = 1, randomprice = math.random(30, 55), desc = "Sell Chanterelles Mushroom", category = "Vegetables" },
        { itemLabel = "Parasol Mushroom", itemName = "Parasol_Mushroom", currencyType = "cash", sellprice = 1, randomprice = math.random(30, 55), desc = "Sell Parasol Mushroom", category = "Vegetables" }, 
    -- Fruits
        { itemLabel = "Wintergreen Berries", itemName = "Wintergreen_Berry", currencyType = "cash", sellprice = 1, randomprice = math.random(30, 55), desc = "Sell Wintergreen Berries", category = "Fruits" },
    -- Roots
        { itemLabel = "Burdock Root", itemName = "Burdock_Root", currencyType = "cash", sellprice = 1, randomprice = math.random(30, 55), desc = "Sell Burdock Root", category = "Roots" },
        { itemLabel = "Onion", itemName = "Onion", currencyType = "cash", sellprice = 1, randomprice = math.random(30, 55), desc = "Sell Onion", category = "Roots" },
        { itemLabel = "Potato", itemName = "potato", currencyType = "cash", sellprice = 1, randomprice = math.random(30, 55), desc = "Sell Potato", category = "Roots" },
    -- Aromatics
        { itemLabel = "Alaskan Ginseng", itemName = "Alaskan_Ginseng", currencyType = "cash", sellprice = 1, randomprice = math.random(30, 55), desc = "Sell Alaskan Ginseng", category = "Aromatics" },
        { itemLabel = "American Ginseng", itemName = "American_Ginseng", currencyType = "cash", sellprice = 1, randomprice = math.random(30, 55), desc = "Sell American Ginseng", category = "Aromatics" },
        { itemLabel = "Creeking Thyme", itemName = "Creeking_Thyme", currencyType = "cash", sellprice = 1, randomprice = math.random(30, 55), desc = "Sell Creeking Thyme", category = "Aromatics" },
        { itemLabel = "Crows Garlic", itemName = "Crows_Garlic", currencyType = "cash", sellprice = 1, randomprice = math.random(30, 55), desc = "Sell Crows Garlic", category = "Aromatics" },
        { itemLabel = "Mint", itemName = "Wild_Mint", currencyType = "cash", sellprice = 1, randomprice = math.random(30, 55), desc = "Sell Mint", category = "Aromatics" },
        
    -- Dairy 
        { itemLabel = "Milk", itemName = "milk", currencyType = "cash", sellprice = 1, randomprice = math.random(30, 55), desc = "Sell Milk", category = "Dairy" },  
    -- Protein 
        { itemLabel = "Eggs", itemName = "eggs", currencyType = "cash", sellprice = 1, randomprice = math.random(30, 55), desc = "Sell Eggs", category = "Protein" },
    -- Misc
        { itemLabel = "Indian Tobbaco", itemName = "Indian_Tobbaco", currencyType = "cash", sellprice = 1, randomprice = math.random(30, 55), desc = "Sell Indian Tobbaco", category = "Misc" },
}
 

-----------------------------------------------------------------------------
--------------------------------------SELL ITEMS ----------------------------
-----------------------------------------------------------------------------
Config.SellItems = {      
    -----------------------------------------------------------------------------
    --------------------------------------Armadillo------------------------------
    -----------------------------------------------------------------------------
 
    -----------------------------------------------------------------------------
    --------------------------------------Blackwater------------------------------
    ----------------------------------------------------------------------------- 
        BlackwaterFarmersMarket = FarmersMarketItems_SELL, 
    -----------------------------------------------------------------------------
    --------------------------------------Rhodes---------------------------------
    -----------------------------------------------------------------------------
        RhodesFarmersMarket = FarmersMarketItems_SELL,  
    -----------------------------------------------------------------------------
    --------------------------------------St-Denis-------------------------------
    -----------------------------------------------------------------------------  
        StDenisFarmersMarket = FarmersMarketItems_SELL, 
    -----------------------------------------------------------------------------
    --------------------------------------Strawberry-----------------------------
    -----------------------------------------------------------------------------   
        StrawbFarmersMarket = FarmersMarketItems_SELL, 
    -----------------------------------------------------------------------------
    --------------------------------------Tumbleweed-----------------------------
    ----------------------------------------------------------------------------- 
        TumbleFarmersMarket = FarmersMarketItems_SELL, 
    -----------------------------------------------------------------------------
    --------------------------------------Valentine------------------------------
    -----------------------------------------------------------------------------
         ValFarmersMarket = FarmersMarketItems_SELL, 
    -----------------------------------------------------------------------------
    --------------------------------------Vanhorn--------------------------------
    -----------------------------------------------------------------------------
         VanFarmersMarket = FarmersMarketItems_SELL, 
    -----------------------------------------------------------------------------      
}

-----------------------------------------------------------------------------
-------------------------------------ITEMS-----------------------------------
-----------------------------------------------------------------------------

    -- ItemLable = translate here
    -- itemName = same as in your databse
    -- curencytype = "cash" or "gold" only use one.
    -- price = numbers only
    -- desc = a description of the item
    -- category = where the item will be displayed at
 
    FarmersMarketItems_BUY = {
        -- Vegetables
            { itemLabel = "Carrot", itemName = "carrot", currencyType = "cash", buyprice = 2.50, randomprice = math.random(30, 55), desc = "Buy Carrot", category = "Vegetables" },
            { itemLabel = "Chanterelles Mushroom", itemName = "Chanterelles", currencyType = "cash", buyprice = 2.50, randomprice = math.random(30, 55), desc = "Buy Chanterelles Mushroom", category = "Vegetables" },
            { itemLabel = "Parasol Mushroom", itemName = "Parasol_Mushroom", currencyType = "cash", buyprice = 2.50, randomprice = math.random(30, 55), desc = "Buy Parasol Mushroom", category = "Vegetables" }, 
        -- Fruits
            { itemLabel = "Wintergreen Berries", itemName = "Wintergreen_Berry", currencyType = "cash", buyprice = 2.50, randomprice = math.random(30, 55), desc = "Buy Wintergreen Berries", category = "Fruits" },
        -- Roots
            { itemLabel = "Burdock Root", itemName = "Burdock_Root", currencyType = "cash", buyprice = 2.50, randomprice = math.random(30, 55), desc = "Buy Burdock Root", category = "Roots" },
            { itemLabel = "Onion", itemName = "Onion", currencyType = "cash", buyprice = 1, randomprice = math.random(30, 55), desc = "Buy Onion", category = "Roots" },
            { itemLabel = "Potato", itemName = "potato", currencyType = "cash", buyprice = 2.50, randomprice = math.random(30, 55), desc = "Buy Potato", category = "Roots" },
        -- Aromatics
            { itemLabel = "Alaskan Ginseng", itemName = "Alaskan_Ginseng", currencyType = "cash", buyprice = 2.50, randomprice = math.random(30, 55), desc = "Buy Alaskan Ginseng", category = "Aromatics" },
            { itemLabel = "American Ginseng", itemName = "American_Ginseng", currencyType = "cash", buyprice = 2.50, randomprice = math.random(30, 55), desc = "Buy American Ginseng", category = "Aromatics" },
            { itemLabel = "Creeking Thyme", itemName = "Creeking_Thyme", currencyType = "cash", buyprice = 2.50, randomprice = math.random(30, 55), desc = "Buy Creeking Thyme", category = "Aromatics" },
            { itemLabel = "Crows Garlic", itemName = "Crows_Garlic", currencyType = "cash", buyprice = 2.50, randomprice = math.random(30, 55), desc = "Buy Crows Garlic", category = "Aromatics" },
            { itemLabel = "Mint", itemName = "Wild_Mint", currencyType = "cash", buyprice = 2.50, randomprice = math.random(30, 55), desc = "Buy Mint", category = "Aromatics" },
            
        -- Dairy 
            { itemLabel = "Milk", itemName = "milk", currencyType = "cash", buyprice = 2.50, randomprice = math.random(30, 55), desc = "Buy Milk", category = "Dairy" },  
        -- Protein 
            { itemLabel = "Eggs", itemName = "eggs", currencyType = "cash", buyprice = 2.50, randomprice = math.random(30, 55), desc = "Buy Eggs", category = "Protein" },
        -- Misc
            { itemLabel = "Indian Tobbaco", itemName = "Indian_Tobbaco", currencyType = "cash", buyprice = 2.50, randomprice = math.random(30, 55), desc = "Buy Indian Tobbaco", category = "Misc" },
    }
    

-----------------------------------------------------------------------------
--------------------------------------BUY ITEMS ----------------------------
-----------------------------------------------------------------------------
Config.BuyItems = {
    
    -----------------------------------------------------------------------------
    --------------------------------------Armadillo- ----------------------------
    -----------------------------------------------------------------------------
 
    -----------------------------------------------------------------------------
    --------------------------------------Blackwater------------------------------
    ----------------------------------------------------------------------------- 
        BlackwaterFarmersMarket = FarmersMarketItems_BUY, 
    -----------------------------------------------------------------------------
    --------------------------------------Rhodes---------------------------------
    ----------------------------------------------------------------------------- 
        RhodesFarmersMarket = FarmersMarketItems_BUY, 
    -----------------------------------------------------------------------------
    --------------------------------------St-Denis-------------------------------
    ----------------------------------------------------------------------------- 
        StDenisFarmersMarket = FarmersMarketItems_BUY, 
    -----------------------------------------------------------------------------
    --------------------------------------Strawberry-----------------------------
    -----------------------------------------------------------------------------  
        StrawbFarmersMarket = FarmersMarketItems_BUY, 
    -----------------------------------------------------------------------------
    --------------------------------------Tumbleweed-----------------------------
    ----------------------------------------------------------------------------- 
        TumbleFarmersMarket = FarmersMarketItems_BUY, 
    -----------------------------------------------------------------------------
    --------------------------------------Valentine------------------------------
    ----------------------------------------------------------------------------- 
        ValFarmersMarket = FarmersMarketItems_BUY, 
    -----------------------------------------------------------------------------
    --------------------------------------Vanhorn--------------------------------
    ----------------------------------------------------------------------------- 
        VanFarmersMarket = FarmersMarketItems_BUY, 
    
    
}
