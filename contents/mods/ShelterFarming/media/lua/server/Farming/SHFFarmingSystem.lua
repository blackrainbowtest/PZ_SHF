-- Проверка наличия модуля ProceduralDistributions и отсутствия клиентской части
if isClient() and not isServer() then return end

require "Farming/SFarmingSystem"
require "Farming/farming_vegetableconf"
require "Farming/SPlantGlobalObject"

if (getActivatedMods():contains("Hydrocraft")) then
    require "Farming/HCFarmingSystem"
end

-- grow the plant
function SFarmingSystem:growPlant(luaObject, nextGrowing, updateNbOfGrow)
    if (luaObject.state == "seeded") then
        local new = luaObject.nbOfGrow <= 0
        if (getActivatedMods():contains("FarmingNeverRot")) then
            -- NeverRot is this if statement.
            if (luaObject.nbOfGrow > 6) then
                luaObject.nbOfGrow = 6
            end
        end
        if (luaObject.typeOfSeed == "Carrots") then
            luaObject = farming_vegetableconf.growCarrots(luaObject, nextGrowing, updateNbOfGrow)
        elseif (luaObject.typeOfSeed == "Broccoli") then
            luaObject = farming_vegetableconf.growBroccoli(luaObject, nextGrowing, updateNbOfGrow)
        elseif (luaObject.typeOfSeed == "Strawberry plant") then
            luaObject = farming_vegetableconf.growStrewberries(luaObject, nextGrowing, updateNbOfGrow)
        elseif (luaObject.typeOfSeed == "Radishes") then
            luaObject = farming_vegetableconf.growRedRadish(luaObject, nextGrowing, updateNbOfGrow)
        elseif (luaObject.typeOfSeed == "Tomato") then
            luaObject = farming_vegetableconf.growTomato(luaObject, nextGrowing, updateNbOfGrow)
        elseif (luaObject.typeOfSeed == "Potatoes") then
            luaObject = farming_vegetableconf.growPotato(luaObject, nextGrowing, updateNbOfGrow)
        elseif (luaObject.typeOfSeed == "Cabbages") then
            luaObject = farming_vegetableconf.growCabbage(luaObject, nextGrowing, updateNbOfGrow)
        elseif luaObject.typeOfSeed then
            if farming_vegetableconf.props[luaObject.typeOfSeed].growCode ~= nil then
                local growCode = farming_vegetableconf.props[luaObject.typeOfSeed].growCode
                luaObject = assert(loadstring('return ' .. growCode .. '(...)'))(luaObject, nextGrowing, updateNbOfGrow)
            end
        end
        -- maybe this plant gonna be disease
        if not new and luaObject.nbOfGrow > 0 then
            self:diseaseThis(luaObject, true)
        end
        luaObject.nbOfGrow = luaObject.nbOfGrow + 1
    end
end

-- harvest the plant
function SFarmingSystem:harvest(luaObject, player)
    local props = farming_vegetableconf.props[luaObject.typeOfSeed]
    local numberOfVeg = getVegetablesNumber(props.minVeg, props.maxVeg, props.minVegAutorized, props.maxVegAutorized,
        luaObject)
    if player then
        player:sendObjectChange('addItemOfType', {
            type = props.vegetableName,
            count = numberOfVeg
        })
    end

    if luaObject.hasSeed and player then
        player:sendObjectChange('addItemOfType', {
            type = props.seedName,
            count = (props.seedPerVeg * numberOfVeg)
        })
    end

    luaObject.hasVegetable = false
    luaObject.hasSeed = false

    -- the strawberrie don't disapear, it goes on phase 2 again
    if luaObject.typeOfSeed == "Strawberry plant" then
        luaObject.nbOfGrow = 1
        luaObject.fertilizer = 0;
        self:growPlant(luaObject, nil, true)
        luaObject:saveData()
        -- if our object have rationOnHarvest
    elseif props.retainOnHarvest ~= nil then
        luaObject.nbOfGrow = props.retainOnHarvest
        luaObject.fertilizer = 0;
        self:growPlant(luaObject, nil, true)
        luaObject:saveData()
    else
        self:removePlant(luaObject)
    end
end

-- get the object name depending on his current phase
farming_vegetableconf.getObjectName = function(plant)
    if plant.state == "plow" then return getText("Farming_Plowed_Land") end

    local props = farming_vegetableconf.props[plant.typeOfSeed]
    
    if props then
        local textPrefix = props.textPrefix or "Farming_"

        if plant.state == "destroy" then return getText("Farming_Destroyed") .. " " .. getText(textPrefix .. plant.typeOfSeed) end
        if plant.state == "dry" then return getText("Farming_Receding") .. " " .. getText(textPrefix .. plant.typeOfSeed) end
        if plant.state == "rotten" then return getText("Farming_Rotten") .. " " .. getText(textPrefix .. plant.typeOfSeed) end
        
        local customPhaseText = props["phaseName"..plant.nbOfGrow]

        if plant.nbOfGrow <= 1 then
            return getText("Farming_Seedling") .. " " .. getText(textPrefix ..plant.typeOfSeed);
        elseif plant.nbOfGrow <= 4 then
            return getText("Farming_Young") .. " " .. getText(textPrefix ..plant.typeOfSeed);
        elseif plant.nbOfGrow == 5 then
            return getText("Farming_Ready_for_Harvest") .. " " .. getText(textPrefix ..plant.typeOfSeed);
        elseif plant.nbOfGrow == 6 then
            return getText("Farming_Seed-bearing") .. " " .. getText(textPrefix ..plant.typeOfSeed);
        end
    end
    return "Mystery Plant"
end

-- rotten the plant
function SPlantGlobalObject:rottenThis()
    local texture = nil
    if self.typeOfSeed == "Carrots" then
        texture = "vegetation_farming_01_13"
    elseif self.typeOfSeed == "Broccoli" then
        texture = "vegetation_farming_01_23"
    elseif self.typeOfSeed == "Strawberry plant" then
        texture = "vegetation_farming_01_63"
    elseif self.typeOfSeed == "Radishes" then
        texture = "vegetation_farming_01_39"
    elseif self.typeOfSeed == "Tomato" then
        texture = "vegetation_farming_01_71"
    elseif self.typeOfSeed == "Potatoes" then
        texture = "vegetation_farming_01_47"
    elseif self.typeOfSeed == "Cabbages" then
        texture = "vegetation_farming_01_31"
    elseif self.typeOfSeed then
        if farming_vegetableconf.sprite[self.typeOfSeed][8] ~= nil then
            texture = farming_vegetableconf.sprite[self.typeOfSeed][8]
        else
            print("GAME_WARNING: SHF Rotten object, '" .. self.typeOfSeed .. ",' was not found!");
        end
    end
    if texture ~= nil then
        self:setSpriteName(texture)
    end
    self.state = "rotten"
    self:setObjectName(farming_vegetableconf.getObjectName(self))
    self:deadPlant()
end
