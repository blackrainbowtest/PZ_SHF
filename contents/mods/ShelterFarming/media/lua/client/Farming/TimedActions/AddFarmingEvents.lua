-- require "Farming/SPlantGlobalObject"

-- function isSHFeveryTenMinutes()
--     local myObject = SPlantGlobalObject
--     local result = SPlantGlobalObject:getIsoObject()
--     print(result)
--     -- debuging
--     -- print("Minute tick: " .. getSpecificPlayer(0):getModData().SHALCOTimeSinceLastDrink);
-- end


-- Events.OnCreatePlayer.Add(isSHALCOmainInit);
-- Events.OnPlayerUpdate.Add(isSHALCOmainUpdate);
-- Events.EveryHours.Add(isSHALCOeveryHours);
-- Events.EveryTenMinutes.Add(isSHFeveryTenMinutes);
-- Events.EveryOneMinute.Add(isSHALCOeveryMinutes);

-- if isClient() then Events.EveryOneMinute.Add(ISPerkLog.init); end;