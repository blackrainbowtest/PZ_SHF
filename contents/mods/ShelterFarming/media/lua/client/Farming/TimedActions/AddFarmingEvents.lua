--***********************************************************
--**                    ROBERT JOHNSON                     **
--***********************************************************


-- ISSHFSpriteUpdateAction = ISBaseTimedAction:derive("ISSHFSpriteUpdateAction");

-- function ISSHFSpriteUpdateAction:isValid()
-- 	self.plant:updateFromIsoObject()
-- 	return self.plant:getIsoObject() ~= nil
-- end

-- function ISSHFSpriteUpdateAction:waitToStart()
-- 	self.character:faceThisObject(self.plant:getObject())
-- 	return self.character:shouldBeTurning()
-- end

-- function ISSHFSpriteUpdateAction:update()
-- 	self.character:faceThisObject(self.plant:getObject())
-- end

-- function ISSHFSpriteUpdateAction:start()
-- 	self:setActionAnim(CharacterActionAnims.Pour)
-- 	self:setOverrideHandModels(self.item, nil)
-- end

-- function ISSHFSpriteUpdateAction:stop()
--     ISBaseTimedAction.stop(self);
-- end

-- function ISCureMildewAction:perform()
    
-- end


-- function ISSHFSpriteUpdateAction:new(character, item, uses, plant, time)
-- 	local o = {}
-- 	setmetatable(o, self)
-- 	self.__index = self
-- 	o.character = character;
-- 	o.item = item;
-- 	o.uses = uses;
-- 	o.stopOnWalk = true;
-- 	o.stopOnRun = true;
-- 	o.maxTime = time;
-- 	if character:isTimedActionInstant() then
-- 		o.maxTime = 1;
-- 	end
--     o.plant = plant;
-- 	return o;
-- end

-- require "Map/CGlobalObject"
-- require "TimedActions/ISBaseTimedAction"

-- require "Farming/SFarmingSystem"


-- function isSHFeveryTenMinutes()
-- 	print("Farming System:")

-- 	-- Печать самой таблицы
-- 	print("CFarmingSystem Table:", CFarmingSystem)

-- 	-- Печать всех ключей и значений в таблице
-- 	print("All Keys and Values:")
-- 	print("")
-- 	print("Type: ", CFarmingSystem.Type)
-- 	print("")
-- 	print("Type: ", CFarmingSystem.Type)


-- 	for key, value in pairs(CFarmingSystem) do
-- 		print("  Key:", key, ", Value:", value)
-- 	end
-- --     local myObject = SPlantGlobalObject
-- --     local result = SPlantGlobalObject:getIsoObject()
-- --     print(result)
-- --     -- debuging
-- --     -- print("Minute tick: " .. getSpecificPlayer(0):getModData().SHALCOTimeSinceLastDrink);
-- end


-- -- Events.OnCreatePlayer.Add(isSHALCOmainInit);
-- -- Events.OnPlayerUpdate.Add(isSHALCOmainUpdate);
-- -- Events.EveryHours.Add(isSHALCOeveryHours);
-- Events.EveryTenMinutes.Add(isSHFeveryTenMinutes);
-- Events.EveryOneMinute.Add(isSHALCOeveryMinutes);

-- if isClient() then Events.EveryOneMinute.Add(ISPerkLog.init); end;