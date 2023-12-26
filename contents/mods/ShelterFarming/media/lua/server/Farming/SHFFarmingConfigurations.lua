-- Подключение модуля для конфигурации растений
require "Farming/farming_vegetableconf"

-- Инициализация конфигурации для растений мода
SHFFarmingConfigurations = {}

-- Функция для роста нового урожая
SHFFarmingConfigurations.growNewCrop = function(planting, nextGrowing, updateNbOfGrow)
    local nbOfGrow = planting.nbOfGrow;
    local water = farming_vegetableconf.calcWater(planting.waterNeeded, planting.waterLvl);
    local diseaseLvl = farming_vegetableconf.calcDisease(planting.mildewLvl);

    if (nbOfGrow <= 0) then -- Молодое растение
        nbOfGrow = 0
        planting.nbOfGrow = 0
        -- Рост растения на следующий этап с учетом времени, воды и уровня болезни
        planting = growNext(planting, farming_vegetableconf.getSpriteName(planting),
            farming_vegetableconf.getObjectName(planting), nextGrowing,
            farming_vegetableconf.props[planting.typeOfSeed].timeToGrow + water + diseaseLvl);
        -- Количество требуемого воды
        planting.waterNeeded = 60
    elseif (nbOfGrow <= 4) then -- Молодое растение (другие этапы)
        if (water >= 0 and diseaseLvl >= 0) then
            -- Рост растения на следующий этап с учетом времени, воды и уровня болезни
            planting = growNext(planting, farming_vegetableconf.getSpriteName(planting),
                farming_vegetableconf.getObjectName(planting), nextGrowing,
                farming_vegetableconf.props[planting.typeOfSeed].timeToGrow + water + diseaseLvl)
            planting.waterNeeded = farming_vegetableconf.props[planting.typeOfSeed].waterLvl
        else
            -- Растение повреждено из-за недостатка воды или болезни
            badPlant(water, nil, diseaseLvl, planting, nextGrowing, updateNbOfGrow)
        end
    elseif (nbOfGrow == 5) then -- Зрелое растение
        if (water >= 0 and diseaseLvl >= 0) then
            -- Вычисление времени следующего этапа роста
            planting.nextGrowing = calcNextGrowing(nextGrowing, farming_vegetableconf.props[planting.typeOfSeed]
                .timeToGrow + water + diseaseLvl)
            planting:setObjectName(farming_vegetableconf.getObjectName(planting))
            planting:setSpriteName(farming_vegetableconf.getSpriteName(planting))
            planting.hasVegetable = true
        else
            -- Растение повреждено из-за недостатка воды или болезни
            badPlant(water, nil, diseaseLvl, planting, nextGrowing, updateNbOfGrow)
        end
    elseif (nbOfGrow == 6) then -- Зрелое растение с семенами
        if (water >= 0 and diseaseLvl >= 0) then
            -- Вычисление времени следующего этапа роста
            planting.nextGrowing = calcNextGrowing(nextGrowing, 168)
            planting:setObjectName(farming_vegetableconf.getObjectName(planting))
            planting:setSpriteName(farming_vegetableconf.getSpriteName(planting))
            planting.hasVegetable = true
            planting.hasSeed = true
        else
            -- Растение повреждено из-за недостатка воды или болезни
            badPlant(water, nil, diseaseLvl, planting, nextGrowing, updateNbOfGrow)
        end
    elseif (planting.state ~= "rotten") then -- Исчезло
        planting:rottenThis()
    end
    return planting
end

-- Иконки для всех растений
farming_vegetableconf.icons["Avocado"] = "media/textures/WorldItems/Vegetable/item_Avocado.png"
farming_vegetableconf.icons["Pepper"] = "media/textures/WorldItems/Vegetable/item_BellPepper.png"
farming_vegetableconf.icons["Corn"] = "media/textures/WorldItems/Vegetable/item_Corn.png"
farming_vegetableconf.icons["Eggplant"] = "media/textures/WorldItems/Vegetable/item_Eggplant.png"
farming_vegetableconf.icons["Leek"] = "media/textures/WorldItems/Vegetable/item_Leek.png"
farming_vegetableconf.icons["Lettuce"] = "media/textures/WorldItems/Vegetable/item_Lettuce.png"
farming_vegetableconf.icons["Onion"] = "media/textures/WorldItems/Vegetable/item_Onion.png"
farming_vegetableconf.icons["Watermelon"] = "media/textures/WorldItems/Vegetable/item_Watermelon.png"
farming_vegetableconf.icons["Zucchini"] = "media/textures/WorldItems/Vegetable/item_Zucchini.png"
farming_vegetableconf.icons["Apple"] = "media/textures/WorldItems/Fruit/item_Apple.png"
farming_vegetableconf.icons["Banana"] = "media/textures/WorldItems/Fruit/item_Banana.png"
farming_vegetableconf.icons["BerryBlack"] = "media/textures/WorldItems/Fruit/item_BerryBlack.png"
farming_vegetableconf.icons["BerryBlue"] = "media/textures/WorldItems/Fruit/item_BerryBlue.png"
farming_vegetableconf.icons["Cherry"] = "media/textures/WorldItems/Fruit/item_Cherry.png"
farming_vegetableconf.icons["Grapefruit"] = "media/textures/WorldItems/Fruit/item_Grapefruit.png"
farming_vegetableconf.icons["Grapes"] = "media/textures/WorldItems/Fruit/item_Grapes.png"
farming_vegetableconf.icons["Lemon"] = "media/textures/WorldItems/Fruit/item_Lemon.png"
farming_vegetableconf.icons["Lime"] = "media/textures/WorldItems/Fruit/item_Lime.png"
farming_vegetableconf.icons["Mango"] = "media/textures/WorldItems/Fruit/item_Mango.png"
farming_vegetableconf.icons["Orange"] = "media/textures/WorldItems/Fruit/item_Orange.png"
farming_vegetableconf.icons["Peach"] = "media/textures/WorldItems/Fruit/item_Peach.png"
farming_vegetableconf.icons["Pear"] = "media/textures/WorldItems/Fruit/item_Pear.png"
farming_vegetableconf.icons["Pineapple"] = "media/textures/WorldItems/Fruit/item_Pineapple.png"

farming_vegetableconf.icons["TeaLeaves"] = "media/textures/item_TeaLeaves.png"
farming_vegetableconf.icons["CoffeeBeans"] = "media/textures/item_CoffeeBeans.png"
farming_vegetableconf.icons["SunFlower"] = "media/textures/item_SunFlower.png"
farming_vegetableconf.icons["Wheat"] = "media/textures/item_Wheat.png"

-- Конфигурация для растения Авокадо (16 to 20 weeks to grow)
farming_vegetableconf.props["Avocado"] = farming_vegetableconf.props["Avocado"] or {}
farming_vegetableconf.props["Avocado"].seedsRequired = 12;
farming_vegetableconf.props["Avocado"].texture = "shf_avocado_07";
farming_vegetableconf.props["Avocado"].waterLvl = 45;
farming_vegetableconf.props["Avocado"].waterLvlMax = 85;
farming_vegetableconf.props["Avocado"].timeToGrow = ZombRand(89,103);
farming_vegetableconf.props["Avocado"].minVegAutorized = 15;
farming_vegetableconf.props["Avocado"].maxVegAutorized = 25;
farming_vegetableconf.props["Avocado"].vegetableName = "Base.Avocado";
farming_vegetableconf.props["Avocado"].seedName = "SHF.Avocadoseed";
farming_vegetableconf.props["Avocado"].seedPerVeg = 3;

farming_vegetableconf.props["Avocado"].growCode = "SHFFarmingConfigurations.growNewCrop";
farming_vegetableconf.props["Avocado"].minVeg = 4;
farming_vegetableconf.props["Avocado"].maxVeg = 8;
farming_vegetableconf.props["Avocado"].retainOnHarvest = 3;

-- Конфигурация для растения кукуруза (12 to 16 weeks to grow)
farming_vegetableconf.props["Corn"] = farming_vegetableconf.props["Corn"] or {}
farming_vegetableconf.props["Corn"].seedsRequired = 8;
farming_vegetableconf.props["Corn"].texture = "vegetation_farming_01_78";
farming_vegetableconf.props["Corn"].waterLvl = 55;
farming_vegetableconf.props["Corn"].timeToGrow = ZombRand(50,55);
farming_vegetableconf.props["Corn"].minVegAutorized = 10;
farming_vegetableconf.props["Corn"].maxVegAutorized = 15;
farming_vegetableconf.props["Corn"].vegetableName = "Base.Corn";
farming_vegetableconf.props["Corn"].seedName = "SHF.Cornseed";
farming_vegetableconf.props["Corn"].seedPerVeg = 4;

farming_vegetableconf.props["Corn"].growCode = "SHFFarmingConfigurations.growNewCrop";
farming_vegetableconf.props["Corn"].minVeg = 5;
farming_vegetableconf.props["Corn"].maxVeg = 8;

-- Конфигурация для растения баклажан (6 to 8 weeks to grow)
farming_vegetableconf.props["Eggplant"] = farming_vegetableconf.props["Eggplant"] or {}
farming_vegetableconf.props["Eggplant"].seedsRequired = 7;
farming_vegetableconf.props["Eggplant"].texture = "egg_6";
farming_vegetableconf.props["Eggplant"].waterLvl = 75;
farming_vegetableconf.props["Eggplant"].timeToGrow = ZombRand(46, 52);
farming_vegetableconf.props["Eggplant"].minVegAutorized = 9;
farming_vegetableconf.props["Eggplant"].maxVegAutorized = 11;
farming_vegetableconf.props["Eggplant"].vegetableName = "Base.Eggplant";
farming_vegetableconf.props["Eggplant"].seedName = "SHF.Eggplantseed";
farming_vegetableconf.props["Eggplant"].seedPerVeg = 3;

farming_vegetableconf.props["Eggplant"].growCode = "SHFFarmingConfigurations.growNewCrop";
farming_vegetableconf.props["Eggplant"].minVeg = 4;
farming_vegetableconf.props["Eggplant"].maxVeg = 6;

-- Конфигурация для растения лука-порей (6 to 8 weeks to grow)
farming_vegetableconf.props["Leek"] = farming_vegetableconf.props["Leek"] or {}
farming_vegetableconf.props["Leek"].seedsRequired = 9;
farming_vegetableconf.props["Leek"].texture = "leek_6";
farming_vegetableconf.props["Leek"].waterLvl = 85;
farming_vegetableconf.props["Leek"].timeToGrow = ZombRand(46, 52);
farming_vegetableconf.props["Leek"].minVegAutorized = 9;
farming_vegetableconf.props["Leek"].maxVegAutorized = 11;
farming_vegetableconf.props["Leek"].vegetableName = "Base.Leek";
farming_vegetableconf.props["Leek"].seedName = "SHF.Leekseed";
farming_vegetableconf.props["Leek"].seedPerVeg = 2;

farming_vegetableconf.props["Leek"].growCode = "SHFFarmingConfigurations.growNewCrop";
farming_vegetableconf.props["Leek"].minVeg = 3;
farming_vegetableconf.props["Leek"].maxVeg = 5;

-- Конфигурация для растения салат (12 to 16 weeks to grow)
farming_vegetableconf.props["Lettuce"] = farming_vegetableconf.props["Lettuce"] or {}
farming_vegetableconf.props["Lettuce"].seedsRequired = 9;
farming_vegetableconf.props["Lettuce"].texture = "vegetation_farming_01_22";
farming_vegetableconf.props["Lettuce"].waterLvl = 65;
farming_vegetableconf.props["Lettuce"].timeToGrow = ZombRand(50,55);
farming_vegetableconf.props["Lettuce"].minVegAutorized = 9;
farming_vegetableconf.props["Lettuce"].maxVegAutorized = 14;
farming_vegetableconf.props["Lettuce"].vegetableName = "Base.Lettuce";
farming_vegetableconf.props["Lettuce"].seedName = "SHF.Lettuceseed";
farming_vegetableconf.props["Lettuce"].seedPerVeg = 3;

farming_vegetableconf.props["Lettuce"].growCode = "SHFFarmingConfigurations.growNewCrop";
farming_vegetableconf.props["Lettuce"].minVeg = 5;
farming_vegetableconf.props["Lettuce"].maxVeg = 7;

-- Конфигурация для растения лука (20 to 24 weeks to grow)
farming_vegetableconf.props["Onion"] = farming_vegetableconf.props["Onion"] or {}
farming_vegetableconf.props["Onion"].seedsRequired = 7;
farming_vegetableconf.props["Onion"].texture = "onion_6";
farming_vegetableconf.props["Onion"].waterLvl = 45;
farming_vegetableconf.props["Onion"].timeToGrow = ZombRand(103, 117);
farming_vegetableconf.props["Onion"].minVegAutorized = 7;
farming_vegetableconf.props["Onion"].maxVegAutorized = 12;
farming_vegetableconf.props["Onion"].vegetableName = "Base.Onion";
farming_vegetableconf.props["Onion"].seedName = "SHF.Onionseed";
farming_vegetableconf.props["Onion"].seedPerVeg = 2;

farming_vegetableconf.props["Onion"].growCode = "SHFFarmingConfigurations.growNewCrop";
farming_vegetableconf.props["Onion"].minVeg = 3;
farming_vegetableconf.props["Onion"].maxVeg = 4;

-- Конфигурация для растения Перца (20 to 24 weeks to grow)
farming_vegetableconf.props["Pepper"] = farming_vegetableconf.props["Pepper"] or {}
farming_vegetableconf.props["Pepper"].seedsRequired = 6;
farming_vegetableconf.props["Pepper"].texture = "pepper_6";
farming_vegetableconf.props["Pepper"].waterLvl = 45;
farming_vegetableconf.props["Pepper"].waterLvlMax = 75;
farming_vegetableconf.props["Pepper"].timeToGrow = ZombRand(103, 117);
farming_vegetableconf.props["Pepper"].minVegAutorized = 9;
farming_vegetableconf.props["Pepper"].maxVegAutorized = 14;
farming_vegetableconf.props["Pepper"].vegetableName = "Base.BellPepper";
farming_vegetableconf.props["Pepper"].seedName = "SHF.Pepperseed";
farming_vegetableconf.props["Pepper"].seedPerVeg = 2;

farming_vegetableconf.props["Pepper"].growCode = "SHFFarmingConfigurations.growNewCrop";
farming_vegetableconf.props["Pepper"].minVeg = 4;
farming_vegetableconf.props["Pepper"].maxVeg = 5;

-- Конфигурация для растения Арбуза (14 to 20 weeks to grow)
farming_vegetableconf.props["Watermelon"] = farming_vegetableconf.props["Watermelon"] or {}
farming_vegetableconf.props["Watermelon"].seedsRequired = 8;
farming_vegetableconf.props["Watermelon"].texture = "melon_6";
farming_vegetableconf.props["Watermelon"].waterLvl = 85;
farming_vegetableconf.props["Watermelon"].timeToGrow = ZombRand(56, 62);
farming_vegetableconf.props["Watermelon"].minVegAutorized = 9;
farming_vegetableconf.props["Watermelon"].maxVegAutorized = 11;
farming_vegetableconf.props["Watermelon"].vegetableName = "Base.Watermelon";
farming_vegetableconf.props["Watermelon"].seedName = "SHF.Watermelonseed";
farming_vegetableconf.props["Watermelon"].seedPerVeg = 3;

farming_vegetableconf.props["Watermelon"].growCode = "SHFFarmingConfigurations.growNewCrop";
farming_vegetableconf.props["Watermelon"].minVeg = 3;
farming_vegetableconf.props["Watermelon"].maxVeg = 5;

-- Конфигурация для растения кабачков (20 to 24 weeks to grow)
farming_vegetableconf.props["Zucchini"] = farming_vegetableconf.props["Zucchini"] or {}
farming_vegetableconf.props["Zucchini"].seedsRequired = 6;
farming_vegetableconf.props["Zucchini"].texture = "zucc_6";
farming_vegetableconf.props["Zucchini"].waterLvl = 65;
farming_vegetableconf.props["Zucchini"].waterLvlMax = 95;
farming_vegetableconf.props["Zucchini"].timeToGrow = ZombRand(103, 117);
farming_vegetableconf.props["Zucchini"].minVegAutorized = 8;
farming_vegetableconf.props["Zucchini"].maxVegAutorized = 14;
farming_vegetableconf.props["Zucchini"].vegetableName = "Base.Zucchini";
farming_vegetableconf.props["Zucchini"].seedName = "SHF.Zucchiniseed";
farming_vegetableconf.props["Zucchini"].seedPerVeg = 4;

farming_vegetableconf.props["Zucchini"].growCode = "SHFFarmingConfigurations.growNewCrop";
farming_vegetableconf.props["Zucchini"].minVeg = 4;
farming_vegetableconf.props["Zucchini"].maxVeg = 6;

-- Конфигурация для растения Яблоко (15 to 20 weeks to grow)
farming_vegetableconf.props["Apple"] = farming_vegetableconf.props["Apple"] or {}
farming_vegetableconf.props["Apple"].seedsRequired = 8;
farming_vegetableconf.props["Apple"].texture = "shf_apple_07";
farming_vegetableconf.props["Apple"].waterLvl = 65;
farming_vegetableconf.props["Apple"].waterLvlMax = 95;
farming_vegetableconf.props["Apple"].timeToGrow = ZombRand(89, 103);
farming_vegetableconf.props["Apple"].minVegAutorized = 7;
farming_vegetableconf.props["Apple"].maxVegAutorized = 12;
farming_vegetableconf.props["Apple"].vegetableName = "Base.Apple";
farming_vegetableconf.props["Apple"].seedName = "SHF.Appleseed";
farming_vegetableconf.props["Apple"].seedPerVeg = 2;

farming_vegetableconf.props["Apple"].growCode = "SHFFarmingConfigurations.growNewCrop";
farming_vegetableconf.props["Apple"].minVeg = 4;
farming_vegetableconf.props["Apple"].maxVeg = 5;
farming_vegetableconf.props["Apple"].retainOnHarvest = 3;

-- Конфигурация для растения Банана (20 to 24 weeks to grow)
farming_vegetableconf.props["Banana"] = farming_vegetableconf.props["Banana"] or {}
farming_vegetableconf.props["Banana"].seedsRequired = 7;
farming_vegetableconf.props["Banana"].texture = "shf_banana_07";
farming_vegetableconf.props["Banana"].waterLvl = 45;
farming_vegetableconf.props["Banana"].timeToGrow = ZombRand(103, 117);
farming_vegetableconf.props["Banana"].minVegAutorized = 5;
farming_vegetableconf.props["Banana"].maxVegAutorized = 8;
farming_vegetableconf.props["Banana"].vegetableName = "Base.Banana";
farming_vegetableconf.props["Banana"].seedName = "SHF.Bananaseed";
farming_vegetableconf.props["Banana"].seedPerVeg = 4;

farming_vegetableconf.props["Banana"].growCode = "SHFFarmingConfigurations.growNewCrop";
farming_vegetableconf.props["Banana"].minVeg = 4;
farming_vegetableconf.props["Banana"].maxVeg = 5;
farming_vegetableconf.props["Banana"].retainOnHarvest = 3;

-- Конфигурация для растения черники (6 to 8 weeks to grow)
farming_vegetableconf.props["BerryBlack"] = farming_vegetableconf.props["BerryBlack"] or {}
farming_vegetableconf.props["BerryBlack"].seedsRequired = 8;
farming_vegetableconf.props["BerryBlack"].texture = "shf_berryblack_07";
farming_vegetableconf.props["BerryBlack"].waterLvl = 45;
farming_vegetableconf.props["BerryBlack"].timeToGrow = ZombRand(46, 52);
farming_vegetableconf.props["BerryBlack"].minVegAutorized = 9;
farming_vegetableconf.props["BerryBlack"].maxVegAutorized = 16;
farming_vegetableconf.props["BerryBlack"].vegetableName = "Base.BerryBlack";
farming_vegetableconf.props["BerryBlack"].seedName = "SHF.BerryBlackseed";
farming_vegetableconf.props["BerryBlack"].seedPerVeg = 2;

farming_vegetableconf.props["BerryBlack"].growCode = "SHFFarmingConfigurations.growNewCrop";
farming_vegetableconf.props["BerryBlack"].minVeg = 8;
farming_vegetableconf.props["BerryBlack"].maxVeg = 10;
farming_vegetableconf.props["BerryBlack"].retainOnHarvest = 3;

-- Конфигурация для растения смородины (6 to 8 weeks to grow)
farming_vegetableconf.props["BerryBlue"] = farming_vegetableconf.props["BerryBlue"] or {}
farming_vegetableconf.props["BerryBlue"].seedsRequired = 8
farming_vegetableconf.props["BerryBlue"].texture = "shf_berryblue_07"
farming_vegetableconf.props["BerryBlue"].waterLvl = 65
farming_vegetableconf.props["BerryBlue"].timeToGrow = ZombRand(46, 52);
farming_vegetableconf.props["BerryBlue"].minVegAutorized = 9;
farming_vegetableconf.props["BerryBlue"].maxVegAutorized = 16;
farming_vegetableconf.props["BerryBlue"].vegetableName = "Base.BerryBlue";
farming_vegetableconf.props["BerryBlue"].seedName = "SHF.BerryBlueseed";
farming_vegetableconf.props["BerryBlue"].seedPerVeg = 2;

farming_vegetableconf.props["BerryBlue"].growCode = "SHFFarmingConfigurations.growNewCrop";
farming_vegetableconf.props["BerryBlue"].minVeg = 8;
farming_vegetableconf.props["BerryBlue"].maxVeg = 10;
farming_vegetableconf.props["BerryBlue"].retainOnHarvest = 3;

-- Конфигурация для растения вишни (16 to 20 weeks to grow)
farming_vegetableconf.props["Cherry"] = farming_vegetableconf.props["Cherry"] or {}
farming_vegetableconf.props["Cherry"].seedsRequired = 7;
farming_vegetableconf.props["Cherry"].texture = "shf_cherry_07";
farming_vegetableconf.props["Cherry"].waterLvl = 75;
farming_vegetableconf.props["Cherry"].timeToGrow = ZombRand(89, 103);
farming_vegetableconf.props["Cherry"].minVegAutorized = 8;
farming_vegetableconf.props["Cherry"].maxVegAutorized = 14;
farming_vegetableconf.props["Cherry"].vegetableName = "Base.Cherry";
farming_vegetableconf.props["Cherry"].seedName = "SHF.Cherryseed";
farming_vegetableconf.props["Cherry"].seedPerVeg = 4;

farming_vegetableconf.props["Cherry"].growCode = "SHFFarmingConfigurations.growNewCrop";
farming_vegetableconf.props["Cherry"].minVeg = 5;
farming_vegetableconf.props["Cherry"].maxVeg = 6;
farming_vegetableconf.props["Cherry"].retainOnHarvest = 3;

-- Конфигурация для растения грейфрута (16 to 20 weeks to grow)
farming_vegetableconf.props["Grapefruit"] = farming_vegetableconf.props["Grapefruit"] or {}
farming_vegetableconf.props["Grapefruit"].seedsRequired = 6;
farming_vegetableconf.props["Grapefruit"].texture = "shf_grapefruit_07";
farming_vegetableconf.props["Grapefruit"].waterLvl = 85;
farming_vegetableconf.props["Grapefruit"].timeToGrow = ZombRand(89, 103);
farming_vegetableconf.props["Grapefruit"].minVegAutorized = 7;
farming_vegetableconf.props["Grapefruit"].maxVegAutorized = 12;
farming_vegetableconf.props["Grapefruit"].vegetableName = "Base.Grapefruit";
farming_vegetableconf.props["Grapefruit"].seedName = "SHF.Grapefruitseed";
farming_vegetableconf.props["Grapefruit"].seedPerVeg = 3;

farming_vegetableconf.props["Grapefruit"].growCode = "SHFFarmingConfigurations.growNewCrop";
farming_vegetableconf.props["Grapefruit"].minVeg = 2;
farming_vegetableconf.props["Grapefruit"].maxVeg = 3;
farming_vegetableconf.props["Grapefruit"].retainOnHarvest = 3;

-- Конфигурация для растения винограда (20 to 24 weeks to grow)
farming_vegetableconf.props["Grapes"] = farming_vegetableconf.props["Grapes"] or {}
farming_vegetableconf.props["Grapes"].seedsRequired = 7;
farming_vegetableconf.props["Grapes"].texture = "shf_grapes_07";
farming_vegetableconf.props["Grapes"].waterLvl = 75;
farming_vegetableconf.props["Grapes"].timeToGrow = ZombRand(103, 117);
farming_vegetableconf.props["Grapes"].minVegAutorized = 6;
farming_vegetableconf.props["Grapes"].maxVegAutorized = 10;
farming_vegetableconf.props["Grapes"].vegetableName = "Base.Grapes";
farming_vegetableconf.props["Grapes"].seedName = "SHF.Grapesseed";
farming_vegetableconf.props["Grapes"].seedPerVeg = 5;

farming_vegetableconf.props["Grapes"].growCode = "SHFFarmingConfigurations.growNewCrop";
farming_vegetableconf.props["Grapes"].minVeg = 3;
farming_vegetableconf.props["Grapes"].maxVeg = 5;
farming_vegetableconf.props["Grapes"].retainOnHarvest = 3;

-- Конфигурация для растения лимона (16 to 20 weeks to grow)
farming_vegetableconf.props["Lemon"] = farming_vegetableconf.props["Lemon"] or {}
farming_vegetableconf.props["Lemon"].seedsRequired = 8;
farming_vegetableconf.props["Lemon"].texture = "shf_lemon_07";
farming_vegetableconf.props["Lemon"].waterLvl = 85;
farming_vegetableconf.props["Lemon"].timeToGrow = ZombRand(89, 103);
farming_vegetableconf.props["Lemon"].minVegAutorized = 8;
farming_vegetableconf.props["Lemon"].maxVegAutorized = 14;
farming_vegetableconf.props["Lemon"].vegetableName = "Base.Lemon";
farming_vegetableconf.props["Lemon"].seedName = "SHF.Lemonseed";
farming_vegetableconf.props["Lemon"].seedPerVeg = 3;

farming_vegetableconf.props["Lemon"].growCode = "SHFFarmingConfigurations.growNewCrop";
farming_vegetableconf.props["Lemon"].minVeg = 5;
farming_vegetableconf.props["Lemon"].maxVeg = 7;
farming_vegetableconf.props["Lemon"].retainOnHarvest = 3;

-- Конфигурация для растения лайма (16 to 20 weeks to grow)
farming_vegetableconf.props["Lime"] = farming_vegetableconf.props["Lime"] or {}
farming_vegetableconf.props["Lime"].seedsRequired = 8;
farming_vegetableconf.props["Lime"].texture = "shf_lime_07";
farming_vegetableconf.props["Lime"].waterLvl = 85;
farming_vegetableconf.props["Lime"].timeToGrow = ZombRand(89, 103);
farming_vegetableconf.props["Lime"].minVegAutorized = 8;
farming_vegetableconf.props["Lime"].maxVegAutorized = 14;
farming_vegetableconf.props["Lime"].vegetableName = "Base.Lime";
farming_vegetableconf.props["Lime"].seedName = "SHF.Limeseed";
farming_vegetableconf.props["Lime"].seedPerVeg = 3;

farming_vegetableconf.props["Lime"].growCode = "SHFFarmingConfigurations.growNewCrop";
farming_vegetableconf.props["Lime"].minVeg = 5;
farming_vegetableconf.props["Lime"].maxVeg = 7;
farming_vegetableconf.props["Lime"].retainOnHarvest = 3;

-- Конфигурация для растения манго (16 to 20 weeks to grow)
farming_vegetableconf.props["Mango"] = farming_vegetableconf.props["Mango"] or {}
farming_vegetableconf.props["Mango"].seedsRequired = 4;
farming_vegetableconf.props["Mango"].texture = "shf_mango_07";
farming_vegetableconf.props["Mango"].waterLvl = 85;
farming_vegetableconf.props["Mango"].timeToGrow = ZombRand(89, 103);
farming_vegetableconf.props["Mango"].minVegAutorized = 5;
farming_vegetableconf.props["Mango"].maxVegAutorized = 9;
farming_vegetableconf.props["Mango"].vegetableName = "Base.Mango";
farming_vegetableconf.props["Mango"].seedName = "SHF.Mangoseed";
farming_vegetableconf.props["Mango"].seedPerVeg = 2;

farming_vegetableconf.props["Mango"].growCode = "SHFFarmingConfigurations.growNewCrop";
farming_vegetableconf.props["Mango"].minVeg = 3;
farming_vegetableconf.props["Mango"].maxVeg = 5;
farming_vegetableconf.props["Mango"].retainOnHarvest = 3;

-- Конфигурация для растения апельсина (16 to 20 weeks to grow)
farming_vegetableconf.props["Orange"] = farming_vegetableconf.props["Orange"] or {}
farming_vegetableconf.props["Orange"].seedsRequired = 6;
farming_vegetableconf.props["Orange"].texture = "shf_orange_07";
farming_vegetableconf.props["Orange"].waterLvl = 85;
farming_vegetableconf.props["Orange"].timeToGrow =  ZombRand(89, 103);
farming_vegetableconf.props["Orange"].minVegAutorized = 6;
farming_vegetableconf.props["Orange"].maxVegAutorized = 10;
farming_vegetableconf.props["Orange"].vegetableName = "Base.Orange";
farming_vegetableconf.props["Orange"].seedName = "SHF.Orangeseed";
farming_vegetableconf.props["Orange"].seedPerVeg = 3;

farming_vegetableconf.props["Orange"].growCode = "SHFFarmingConfigurations.growNewCrop";
farming_vegetableconf.props["Orange"].minVeg = 4;
farming_vegetableconf.props["Orange"].maxVeg = 7;
farming_vegetableconf.props["Orange"].retainOnHarvest = 3;

-- Конфигурация для растения персика (20 to 24 weeks to grow)
farming_vegetableconf.props["Peach"] = farming_vegetableconf.props["Peach"] or {}
farming_vegetableconf.props["Peach"].seedsRequired = 5;
farming_vegetableconf.props["Peach"].texture = "shf_peach_07";
farming_vegetableconf.props["Peach"].waterLvl = 45;
farming_vegetableconf.props["Peach"].waterLvlMax = 75;
farming_vegetableconf.props["Peach"].timeToGrow = ZombRand(103, 117);
farming_vegetableconf.props["Peach"].minVegAutorized = 5;
farming_vegetableconf.props["Peach"].maxVegAutorized = 10;
farming_vegetableconf.props["Peach"].vegetableName = "Base.Peach";
farming_vegetableconf.props["Peach"].seedName = "SHF.Peachseed";
farming_vegetableconf.props["Peach"].seedPerVeg = 2;

farming_vegetableconf.props["Peach"].growCode = "SHFFarmingConfigurations.growNewCrop";
farming_vegetableconf.props["Peach"].minVeg = 4;
farming_vegetableconf.props["Peach"].maxVeg = 5;
farming_vegetableconf.props["Peach"].retainOnHarvest = 3;

-- Конфигурация для растения груши (20 to 24 weeks to grow)
farming_vegetableconf.props["Pear"] = farming_vegetableconf.props["Pear"] or {}
farming_vegetableconf.props["Pear"].seedsRequired = 6;
farming_vegetableconf.props["Pear"].texture = "shf_pear_07";
farming_vegetableconf.props["Pear"].waterLvl = 85;
farming_vegetableconf.props["Pear"].timeToGrow = ZombRand(103, 117);
farming_vegetableconf.props["Pear"].minVegAutorized = 6;
farming_vegetableconf.props["Pear"].maxVegAutorized = 12;
farming_vegetableconf.props["Pear"].vegetableName = "Base.Pear";
farming_vegetableconf.props["Pear"].seedName = "SHF.Pearseed";
farming_vegetableconf.props["Pear"].seedPerVeg = 2;

farming_vegetableconf.props["Pear"].growCode = "SHFFarmingConfigurations.growNewCrop";
farming_vegetableconf.props["Pear"].minVeg = 5;
farming_vegetableconf.props["Pear"].maxVeg = 7;
farming_vegetableconf.props["Pear"].retainOnHarvest = 3;

-- Конфигурация для растения ананаса (4 to 8 weeks to grow)
farming_vegetableconf.props["Pineapple"] = farming_vegetableconf.props["Pineapple"] or {}
farming_vegetableconf.props["Pineapple"].seedsRequired = 3;
farming_vegetableconf.props["Pineapple"].texture = "shf_pineapple_07";
farming_vegetableconf.props["Pineapple"].waterLvl = 85;
farming_vegetableconf.props["Pineapple"].timeToGrow = ZombRand(45, 62);
farming_vegetableconf.props["Pineapple"].minVegAutorized = 3;
farming_vegetableconf.props["Pineapple"].maxVegAutorized = 7;
farming_vegetableconf.props["Pineapple"].vegetableName = "Base.Pineapple";
farming_vegetableconf.props["Pineapple"].seedName = "SHF.Pineappleseed";
farming_vegetableconf.props["Pineapple"].seedPerVeg = 2;

farming_vegetableconf.props["Pineapple"].growCode = "SHFFarmingConfigurations.growNewCrop";
farming_vegetableconf.props["Pineapple"].minVeg = 3;
farming_vegetableconf.props["Pineapple"].maxVeg = 4;
farming_vegetableconf.props["Pineapple"].retainOnHarvest = 3;

-- Конфигурация для растения чайное дерево (20 to 24 weeks to grow)
farming_vegetableconf.props["TeaLeaves"] = farming_vegetableconf.props["TeaLeaves"] or {}
farming_vegetableconf.props["TeaLeaves"].seedsRequired = 6;
farming_vegetableconf.props["TeaLeaves"].texture = "shf_tealeaves_07";
farming_vegetableconf.props["TeaLeaves"].waterLvl = 85;
farming_vegetableconf.props["TeaLeaves"].timeToGrow = ZombRand(103, 117);
farming_vegetableconf.props["TeaLeaves"].minVegAutorized = 6;
farming_vegetableconf.props["TeaLeaves"].maxVegAutorized = 12;
farming_vegetableconf.props["TeaLeaves"].vegetableName = "SHF.TeaLeaves";
farming_vegetableconf.props["TeaLeaves"].seedName = "SHF.Teaseed";
farming_vegetableconf.props["TeaLeaves"].seedPerVeg = 1;

farming_vegetableconf.props["TeaLeaves"].growCode = "SHFFarmingConfigurations.growNewCrop";
farming_vegetableconf.props["TeaLeaves"].minVeg = 5;
farming_vegetableconf.props["TeaLeaves"].maxVeg = 7;
farming_vegetableconf.props["TeaLeaves"].retainOnHarvest = 3;

-- Конфигурация для растения кофейное дерево (20 to 24 weeks to grow)
farming_vegetableconf.props["CoffeeBeans"] = farming_vegetableconf.props["CoffeeBeans"] or {}
farming_vegetableconf.props["CoffeeBeans"].seedsRequired = 6;
farming_vegetableconf.props["CoffeeBeans"].texture = "shf_coffeebeans_07";
farming_vegetableconf.props["CoffeeBeans"].waterLvl = 85;
farming_vegetableconf.props["CoffeeBeans"].timeToGrow = ZombRand(103, 117);
farming_vegetableconf.props["CoffeeBeans"].minVegAutorized = 6;
farming_vegetableconf.props["CoffeeBeans"].maxVegAutorized = 12;
farming_vegetableconf.props["CoffeeBeans"].vegetableName = "SHF.CoffeeBeans";
farming_vegetableconf.props["CoffeeBeans"].seedName = "SHF.Coffeeseed";
farming_vegetableconf.props["CoffeeBeans"].seedPerVeg = 1;

farming_vegetableconf.props["CoffeeBeans"].growCode = "SHFFarmingConfigurations.growNewCrop";
farming_vegetableconf.props["CoffeeBeans"].minVeg = 5;
farming_vegetableconf.props["CoffeeBeans"].maxVeg = 7;
farming_vegetableconf.props["CoffeeBeans"].retainOnHarvest = 3;

-- Конфигурация для растения подсолнух (20 to 24 weeks to grow)
farming_vegetableconf.props["SunFlower"] = farming_vegetableconf.props["SunFlower"] or {}
farming_vegetableconf.props["SunFlower"].seedsRequired = 5;
farming_vegetableconf.props["SunFlower"].texture = "shf_sunflower_07";
farming_vegetableconf.props["SunFlower"].waterLvl = 85;
farming_vegetableconf.props["SunFlower"].timeToGrow = ZombRand(103, 117);
farming_vegetableconf.props["SunFlower"].minVegAutorized = 4;
farming_vegetableconf.props["SunFlower"].maxVegAutorized = 8;
farming_vegetableconf.props["SunFlower"].vegetableName = "SHF.SunFlower";
farming_vegetableconf.props["SunFlower"].seedName = "Base.SunflowerSeeds";
farming_vegetableconf.props["SunFlower"].seedPerVeg = 1;

farming_vegetableconf.props["SunFlower"].growCode = "SHFFarmingConfigurations.growNewCrop";
farming_vegetableconf.props["SunFlower"].minVeg = 5;
farming_vegetableconf.props["SunFlower"].maxVeg = 7;

-- Конфигурация для растения пшеница (20 to 24 weeks to grow)
farming_vegetableconf.props["Wheat"] = farming_vegetableconf.props["Wheat"] or {}
farming_vegetableconf.props["Wheat"].seedsRequired = 5;
farming_vegetableconf.props["Wheat"].texture = "shf_wheat_07";
farming_vegetableconf.props["Wheat"].waterLvl = 100;
farming_vegetableconf.props["Wheat"].timeToGrow = ZombRand(103, 117);
farming_vegetableconf.props["Wheat"].minVegAutorized = 5;
farming_vegetableconf.props["Wheat"].maxVegAutorized = 9;
farming_vegetableconf.props["Wheat"].vegetableName = "SHF.Wheat";
farming_vegetableconf.props["Wheat"].seedName = "SHF.WheatGrain";
farming_vegetableconf.props["Wheat"].seedPerVeg = 1;

farming_vegetableconf.props["Wheat"].growCode = "SHFFarmingConfigurations.growNewCrop";
farming_vegetableconf.props["Wheat"].minVeg = 5;
farming_vegetableconf.props["Wheat"].maxVeg = 7;

-- спрайты
farming_vegetableconf.sprite["Avocado"] = {
"shf_avocado_01", 
"shf_avocado_02", 
"shf_avocado_03", 
"shf_avocado_04",
"shf_avocado_05", 
"shf_avocado_06", 
"shf_avocado_07", 
"shf_avocado_08"
}
farming_vegetableconf.sprite["Pepper"] = {
"pepper_0", 
"pepper_1", 
"pepper_2", 
"pepper_3", 
"pepper_4", 
"pepper_5",
"pepper_6", 
"pepper_7"
}
farming_vegetableconf.sprite["Corn"] = {
"vegetation_farming_01_72", 
"vegetation_farming_01_73",
"vegetation_farming_01_74", 
"vegetation_farming_01_75",
"vegetation_farming_01_76", 
"vegetation_farming_01_77",
"vegetation_farming_01_78", 
"vegetation_farming_01_79"
}
farming_vegetableconf.sprite["Eggplant"] = {
"egg_0", 
"egg_1", 
"egg_2", 
"egg_3", 
"egg_4", 
"egg_5", 
"egg_6", 
"egg_7"
}
farming_vegetableconf.sprite["Leek"] = {
"leek_0", 
"leek_1", 
"leek_2", 
"leek_3", 
"leek_4", 
"leek_5", 
"leek_6", 
"leek_7"
}
farming_vegetableconf.sprite["Lettuce"] = {
"vegetation_farming_01_16", 
"vegetation_farming_01_17",
"vegetation_farming_01_18", 
"vegetation_farming_01_19",
"vegetation_farming_01_20", 
"vegetation_farming_01_21",
"vegetation_farming_01_22", 
"vegetation_farming_01_23"
}
farming_vegetableconf.sprite["Onion"] = {
"onion_0",
"onion_1",
"onion_2",
"onion_3",
"onion_4",
"onion_5",
"onion_6",
"onion_7"
}
farming_vegetableconf.sprite["Watermelon"] = {
"melon_0",
"melon_1",
"melon_2",
"melon_3",
"melon_4",
"melon_5",
"melon_6",
"melon_7"
}
farming_vegetableconf.sprite["Zucchini"] = {
"zucc_0", 
"zucc_1", 
"zucc_2", 
"zucc_3", 
"zucc_4", 
"zucc_5", 
"zucc_6",
"zucc_7"
}
farming_vegetableconf.sprite["Apple"] = {
"shf_apple_01",
"shf_apple_02",
"shf_apple_03",
"shf_apple_04",
"shf_apple_05",
"shf_apple_06",
"shf_apple_07",
"shf_apple_08"
}
farming_vegetableconf.sprite["Banana"] = {
"shf_banana_01",
"shf_banana_02",
"shf_banana_03",
"shf_banana_04",
"shf_banana_05",
"shf_banana_06",
"shf_banana_07",
"shf_banana_08"
}
farming_vegetableconf.sprite["BerryBlack"] = {
"shf_berryblack_01",
"shf_berryblack_02",
"shf_berryblack_03",
"shf_berryblack_04", 
"shf_berryblack_05", 
"shf_berryblack_06",
"shf_berryblack_07",
"shf_berryblack_08"
}
farming_vegetableconf.sprite["BerryBlue"] = {
"shf_berryblue_01", 
"shf_berryblue_02", 
"shf_berryblue_03",
"shf_berryblue_04", 
"shf_berryblue_05", 
"shf_berryblue_06",
"shf_berryblue_07", 
"shf_berryblue_08"
}
farming_vegetableconf.sprite["Cherry"] = {
"shf_cherry_01", 
"shf_cherry_02", 
"shf_cherry_03", 
"shf_cherry_04",
"shf_cherry_05", 
"shf_cherry_06", 
"shf_cherry_07", 
"shf_cherry_08"
}
farming_vegetableconf.sprite["Grapefruit"] = {
"shf_grapefruit_01",
"shf_grapefruit_02",
"shf_grapefruit_03",
"shf_grapefruit_04", 
"shf_grapefruit_05", 
"shf_grapefruit_06",
"shf_grapefruit_07", 
"shf_grapefruit_08"
}
farming_vegetableconf.sprite["Grapes"] = {
"shf_grapes_01", 
"shf_grapes_02", 
"shf_grapes_03", 
"shf_grapes_04",
"shf_grapes_05", 
"shf_grapes_06", 
"shf_grapes_07", 
"shf_grapes_08"
}
farming_vegetableconf.sprite["Lemon"] = {
"shf_lemon_01", 
"shf_lemon_02", 
"shf_lemon_03", 
"shf_lemon_04", 
"shf_lemon_05",
"shf_lemon_06", 
"shf_lemon_07", 
"shf_lemon_08"
}
farming_vegetableconf.sprite["Lime"] = {
"shf_lime_01",
"shf_lime_02",
"shf_lime_03",
"shf_lime_04",
"shf_lime_05",
"shf_lime_06",
"shf_lime_07",
"shf_lime_08"
}
farming_vegetableconf.sprite["Mango"] = {
"shf_mango_01", 
"shf_mango_02", 
"shf_mango_03", 
"shf_mango_04", 
"shf_mango_05",
"shf_mango_06",
"shf_mango_07", 
"shf_mango_08"
}
farming_vegetableconf.sprite["Orange"] = {
"shf_orange_01", 
"shf_orange_02", 
"shf_orange_03", 
"shf_orange_04",
"shf_orange_05", 
"shf_orange_06", 
"shf_orange_07", 
"shf_orange_08"
}
farming_vegetableconf.sprite["Peach"] = {
"shf_peach_01", 
"shf_peach_02", 
"shf_peach_03", 
"shf_peach_04", 
"shf_peach_05",
"shf_peach_06", 
"shf_peach_07", 
"shf_peach_08"
}
farming_vegetableconf.sprite["Pear"] = {
"shf_pear_01", 
"shf_pear_02", 
"shf_pear_03", 
"shf_pear_04", 
"shf_pear_05",
"shf_pear_06", 
"shf_pear_07", 
"shf_pear_08"
}
farming_vegetableconf.sprite["Pineapple"] = {
"shf_pineapple_01", 
"shf_pineapple_02", 
"shf_pineapple_03",
"shf_pineapple_04", 
"shf_pineapple_05", 
"shf_pineapple_06",
"shf_pineapple_07", 
"shf_pineapple_08"
}
farming_vegetableconf.sprite["TeaLeaves"] = {
"shf_tealeaves_01", 
"shf_tealeaves_02", 
"shf_tealeaves_03", 
"shf_tealeaves_04", 
"shf_tealeaves_05",
"shf_tealeaves_06", 
"shf_tealeaves_07", 
"shf_tealeaves_08"
}
farming_vegetableconf.sprite["CoffeeBeans"] = {
"shf_coffeebeans_01", 
"shf_coffeebeans_02", 
"shf_coffeebeans_03", 
"shf_coffeebeans_04", 
"shf_coffeebeans_05",
"shf_coffeebeans_06", 
"shf_coffeebeans_07", 
"shf_coffeebeans_08"
}
farming_vegetableconf.sprite["SunFlower"] = {
"shf_sunflower_01", 
"shf_sunflower_02", 
"shf_sunflower_03", 
"shf_sunflower_04", 
"shf_sunflower_05",
"shf_sunflower_06", 
"shf_sunflower_07", 
"shf_sunflower_08"
}
farming_vegetableconf.sprite["Wheat"] = {
"shf_wheat_01", 
"shf_wheat_02", 
"shf_wheat_03", 
"shf_wheat_04", 
"shf_wheat_05",
"shf_wheat_06", 
"shf_wheat_07", 
"shf_wheat_08"
}
