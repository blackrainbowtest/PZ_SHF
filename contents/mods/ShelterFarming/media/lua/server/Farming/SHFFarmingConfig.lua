-- Код повзаимствован у 2923439994 Мод на курение

require "BTSE_Farming_Server";

-- Дебаг
BTSE.Farming["debugMode"] = false;

PlantGrowthRate = {}
PlantGrowthRate.VeryFast = 0.24 -- 24
PlantGrowthRate.Fast = 0.48     -- 48
PlantGrowthRate.Moderate = 0.72 -- 72
PlantGrowthRate.Slow = 0.96     -- 96
PlantGrowthRate.VerySlow = 1.2  -- 120

function plantGrowthTime(rate, rand)
    return rand and (100 * rate + ZombRand(1, rand)) or (100 * rate);
end
-- name - Уникальное имя ["Avocado"]
-- group - Название группы
-- seedItemType - Тип семян
-- seedsPerPlot - Количество семян для посадки
-- seedsPerVegetable - Сколько семян получит игрок при сборе
-- waterOptimum - Оптимальное количество воды
-- waterMaximum - Максимальное количество воды
-- harvestItemType - Урожай Base.Avocado
-- normalHarvestMin - минимальное кол-во урожая
-- normalHarvestMax - максимальное кол-во урожая
-- abundantHarvestMin - с учетом изобилия
-- abundantHarvestMax - с учетом изобилия
-- growTimeHours - время роста в часах
-- rotTimeHours - время уведания в часах
-- growSprites - спрайты
-- infoPanelIcon - инфо иконка
-- tooltipSprite - Иконка на панели
-- drySprite    - Гнилое растение
-- destroyedSprite - Уничтоженное растение  vegetation_farming_01_14 / vegetation_farming_01_13
-- rottenSprite - Уведающее растение

-- Овощи
-- Морковь
BTSE.Farming:addNewCrop({
    name = "Carrots",
    group = "IGUI_BTSE.Farming_Group_Vegetables",
    seedItemType = "farming.CarrotSeed",
    seedsPerPlot = 12,
    seedsPerVegetable = 3,
    waterOptimum = 35,
    waterMaximum = 85,
    harvestItemType = "Base.Carrots",
    normalHarvestMin = 3,
    normalHarvestMax = 6,
    abundantHarvestMin = 6,
    abundantHarvestMax = 7,
    growTimeHours = plantGrowthTime(PlantGrowthRate.Fast, 5),
    rotTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow),
    growSprites = {
        "vegetation_farming_01_32",
        "vegetation_farming_01_33",
        "vegetation_farming_01_34",
        "vegetation_farming_01_35",
        "vegetation_farming_01_36",
        "vegetation_farming_01_37",
        "vegetation_farming_01_38",
        "vegetation_farming_01_39"
    },
    infoPanelIcon = "Item_Carrots",
    tooltipSprite = "vegetation_farming_01_38",
    drySprite = "vegetation_farming_01_39",
    destroyedSprite = "vegetation_farming_01_13",
    rottenSprite = "vegetation_farming_01_39",
});
-- Броколи
BTSE.Farming:addNewCrop({
    name = "Broccoli",
    group = "IGUI_BTSE.Farming_Group_Vegetables",
    seedItemType = "farming.BroccoliSeed",
    seedsPerPlot = 6,
    seedsPerVegetable = 3,
    waterOptimum = 70,
    waterMaximum = 100,
    harvestItemType = "Base.Broccoli",
    normalHarvestMin = 2,
    normalHarvestMax = 4,
    abundantHarvestMin = 6,
    abundantHarvestMax = 8,
    growTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow, 3),
    rotTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow),
    growSprites = {
        "vegetation_farming_01_24",
        "vegetation_farming_01_25",
        "vegetation_farming_01_26",
        "vegetation_farming_01_27",
        "vegetation_farming_01_28",
        "vegetation_farming_01_30",
        "vegetation_farming_01_29",
        "vegetation_farming_01_31"
    },
    infoPanelIcon = "Item_Broccoli",
    tooltipSprite = "vegetation_farming_01_30",
    drySprite = "vegetation_farming_01_31",
    destroyedSprite = "vegetation_farming_01_13",
    rottenSprite = "vegetation_farming_01_31",
});
-- Редис
BTSE.Farming:addNewCrop({
    name = "Radishes",
    group = "IGUI_BTSE.Farming_Group_Vegetables",
    seedItemType = "farming.RedRadishSeed",
    seedsPerPlot = 6,
    seedsPerVegetable = 4,
    waterOptimum = 45,
    waterMaximum = 85,
    harvestItemType = "Base.RedRadish",
    normalHarvestMin = 4,
    normalHarvestMax = 9,
    abundantHarvestMin = 11,
    abundantHarvestMax = 15,
    growTimeHours = plantGrowthTime(PlantGrowthRate.Fast, 6),
    rotTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow),
    growSprites = {
        "vegetation_farming_01_48",
        "vegetation_farming_01_49",
        "vegetation_farming_01_50",
        "vegetation_farming_01_51",
        "vegetation_farming_01_52",
        "vegetation_farming_01_54",
        "vegetation_farming_01_53",
        "vegetation_farming_01_55"
    },
    infoPanelIcon = "Item_TZ_LRRadish",
    tooltipSprite = "vegetation_farming_01_53",
    drySprite = "vegetation_farming_01_55",
    destroyedSprite = "vegetation_farming_01_13",
    rottenSprite = "vegetation_farming_01_55",
});
-- Помидор
BTSE.Farming:addNewCrop({
    name = "Tomato",
    group = "IGUI_BTSE.Farming_Group_Vegetables",
    seedItemType = "farming.TomatoSeed",
    seedsPerPlot = 4,
    seedsPerVegetable = 2,
    waterOptimum = 75,
    waterMaximum = 100,
    harvestItemType = "farming.Tomato",
    normalHarvestMin = 4,
    normalHarvestMax = 5,
    abundantHarvestMin = 6,
    abundantHarvestMax = 10,
    growTimeHours = plantGrowthTime(PlantGrowthRate.Slow),
    rotTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow),
    growSprites = {
        "vegetation_farming_01_64",
        "vegetation_farming_01_65",
        "vegetation_farming_01_66",
        "vegetation_farming_01_67",
        "vegetation_farming_01_68",
        "vegetation_farming_01_69",
        "vegetation_farming_01_70",
        "vegetation_farming_01_71"
    },
    infoPanelIcon = "Item_TZ_Tomato",
    tooltipSprite = "vegetation_farming_01_70",
    drySprite = "vegetation_farming_01_71",
    destroyedSprite = "vegetation_farming_01_14",
    rottenSprite = "vegetation_farming_01_71",
});
-- Картошка
BTSE.Farming:addNewCrop({
    name = "Potatoes",
    group = "IGUI_BTSE.Farming_Group_Vegetables",
    seedItemType = "farming.PotatoSeed",
    seedsPerPlot = 4,
    seedsPerVegetable = 3,
    waterOptimum = 65,
    waterMaximum = 100,
    harvestItemType = "farming.Potato",
    normalHarvestMin = 3,
    normalHarvestMax = 4,
    abundantHarvestMin = 5,
    abundantHarvestMax = 9,
    growTimeHours = plantGrowthTime(PlantGrowthRate.Slow),
    rotTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow),
    growSprites = {
        "vegetation_farming_01_40",
        "vegetation_farming_01_41",
        "vegetation_farming_01_42",
        "vegetation_farming_01_43",
        "vegetation_farming_01_44",
        "vegetation_farming_01_46",
        "vegetation_farming_01_45",
        "vegetation_farming_01_47"
    },
    infoPanelIcon = "Item_TZ_Potato",
    tooltipSprite = "vegetation_farming_01_46",
    drySprite = "vegetation_farming_01_47",
    destroyedSprite = "vegetation_farming_01_13",
    rottenSprite = "vegetation_farming_01_47",
});
-- Капустный салат
BTSE.Farming:addNewCrop({
    name = "Cabbages",
    group = "IGUI_BTSE.Farming_Group_Vegetables",
    seedItemType = "farming.CabbageSeed",
    seedsPerPlot = 9,
    seedsPerVegetable = 3,
    waterOptimum = 85,
    waterMaximum = 100,
    harvestItemType = "farming.Cabbage",
    normalHarvestMin = 4,
    normalHarvestMax = 6,
    abundantHarvestMin = 9,
    abundantHarvestMax = 11,
    growTimeHours = plantGrowthTime(PlantGrowthRate.Fast),
    rotTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow),
    growSprites = {
        "vegetation_farming_01_16",
        "vegetation_farming_01_17",
        "vegetation_farming_01_18",
        "vegetation_farming_01_19",
        "vegetation_farming_01_20",
        "vegetation_farming_01_22",
        "vegetation_farming_01_21",
        "vegetation_farming_01_23"
    },
    infoPanelIcon = "Item_TZ_CabbageLettuce",
    tooltipSprite = "vegetation_farming_01_21",
    drySprite = "vegetation_farming_01_23",
    destroyedSprite = "vegetation_farming_01_13",
    rottenSprite = "vegetation_farming_01_23",
});
-- Кукуруза
BTSE.Farming:addNewCrop({
    name = "Corn",
    group = "IGUI_BTSE.Farming_Group_Vegetables",
    seedItemType = "SHF.Cornseed",
    seedsPerPlot = 10,
    seedsPerVegetable = 5,
    waterOptimum = 60,
    waterMaximum = 100,
    harvestItemType = "Base.Corn",
    normalHarvestMin = 4,
    normalHarvestMax = 5,
    abundantHarvestMin = 6,
    abundantHarvestMax = 7,
    growTimeHours = plantGrowthTime(PlantGrowthRate.Fast),
    rotTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow),
    growSprites = {
        "vegetation_farming_01_72", 
        "vegetation_farming_01_73",
        "vegetation_farming_01_74", 
        "vegetation_farming_01_75",
        "vegetation_farming_01_76", 
        "vegetation_farming_01_77",
        "vegetation_farming_01_78", 
        "vegetation_farming_01_79"
    },
    infoPanelIcon = "Item_Corn",
    tooltipSprite = "vegetation_farming_01_78",
    drySprite = "vegetation_farming_01_79",
    destroyedSprite = "vegetation_farming_01_79",
    rottenSprite = "vegetation_farming_01_79",
});
-- Баклажан
BTSE.Farming:addNewCrop({
    name = "Eggplant",
    group = "IGUI_BTSE.Farming_Group_Vegetables",
    seedItemType = "SHF.Eggplantseed",
    seedsPerPlot = 7,
    seedsPerVegetable = 3,
    waterOptimum = 75,
    waterMaximum = 100,
    harvestItemType = "Base.Eggplant",
    normalHarvestMin = 4,
    normalHarvestMax = 5,
    abundantHarvestMin = 6,
    abundantHarvestMax = 7,
    growTimeHours = plantGrowthTime(PlantGrowthRate.VeryFast, 8),
    rotTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow),
    growSprites = {
        "egg_0", 
        "egg_1", 
        "egg_2", 
        "egg_3", 
        "egg_4", 
        "egg_5", 
        "egg_6", 
        "egg_7"
    },
    infoPanelIcon = "Item_Eggplant",
    tooltipSprite = "egg_6",
    drySprite = "egg_7",
    destroyedSprite = "egg_7",
    rottenSprite = "egg_7",
});
-- лук-порей
BTSE.Farming:addNewCrop({
    name = "Leek",
    group = "IGUI_BTSE.Farming_Group_Vegetables",
    seedItemType = "SHF.Leekseed",
    seedsPerPlot = 9,
    seedsPerVegetable = 2,
    waterOptimum = 85,
    waterMaximum = 100,
    harvestItemType = "Base.Leek",
    normalHarvestMin = 3,
    normalHarvestMax = 5,
    abundantHarvestMin = 5,
    abundantHarvestMax = 8,
    growTimeHours = plantGrowthTime(PlantGrowthRate.Fast, 4),
    rotTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow),
    growSprites = {
        "leek_0", 
        "leek_1", 
        "leek_2", 
        "leek_3", 
        "leek_4", 
        "leek_5", 
        "leek_6", 
        "leek_7"
    },
    infoPanelIcon = "Item_Leek",
    tooltipSprite = "leek_6",
    drySprite = "leek_7",
    destroyedSprite = "leek_7",
    rottenSprite = "leek_7",
});
-- Капуста
BTSE.Farming:addNewCrop({
    name = "Lettuce",
    group = "IGUI_BTSE.Farming_Group_Vegetables",
    seedItemType = "SHF.Lettuceseed",
    seedsPerPlot = 9,
    seedsPerVegetable = 3,
    waterOptimum = 65,
    waterMaximum = 100,
    harvestItemType = "Base.Leek",
    normalHarvestMin = 3,
    normalHarvestMax = 5,
    abundantHarvestMin = 5,
    abundantHarvestMax = 8,
    growTimeHours = plantGrowthTime(PlantGrowthRate.VeryFast, 3),
    rotTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow),
    growSprites = {
        "vegetation_farming_01_16", 
        "vegetation_farming_01_17",
        "vegetation_farming_01_18", 
        "vegetation_farming_01_19",
        "vegetation_farming_01_20", 
        "vegetation_farming_01_21",
        "vegetation_farming_01_22", 
        "vegetation_farming_01_23"
    },
    infoPanelIcon = "Item_Lettuce",
    tooltipSprite = "vegetation_farming_01_22",
    drySprite = "vegetation_farming_01_23",
    destroyedSprite = "vegetation_farming_01_23",
    rottenSprite = "vegetation_farming_01_23",
});
-- Лук
BTSE.Farming:addNewCrop({
    name = "Onion",
    group = "IGUI_BTSE.Farming_Group_Vegetables",
    seedItemType = "SHF.Onionseed",
    seedsPerPlot = 7,
    seedsPerVegetable = 2,
    waterOptimum = 45,
    waterMaximum = 100,
    harvestItemType = "Base.Onion",
    normalHarvestMin = 3,
    normalHarvestMax = 5,
    abundantHarvestMin = 5,
    abundantHarvestMax = 8,
    growTimeHours = plantGrowthTime(PlantGrowthRate.Moderate, 5),
    rotTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow),
    growSprites = {
        "onion_0",
        "onion_1",
        "onion_2",
        "onion_3",
        "onion_4",
        "onion_5",
        "onion_6",
        "onion_7"
    },
    infoPanelIcon = "Item_Onion",
    tooltipSprite = "onion_6",
    drySprite = "onion_7",
    destroyedSprite = "onion_7",
    rottenSprite = "onion_7",
});
-- Болгарский перец
BTSE.Farming:addNewCrop({
    name = "Pepper",
    group = "IGUI_BTSE.Farming_Group_Vegetables",
    seedItemType = "SHF.Pepperseed",
    seedsPerPlot = 6,
    seedsPerVegetable = 3,
    waterOptimum = 60,
    waterMaximum = 100,
    harvestItemType = "Base.BellPepper",
    normalHarvestMin = 4,
    normalHarvestMax = 5,
    abundantHarvestMin = 6,
    abundantHarvestMax = 7,
    growTimeHours = plantGrowthTime(PlantGrowthRate.Moderate, 5),
    rotTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow),
    growSprites = {
        "pepper_0", 
        "pepper_1", 
        "pepper_2", 
        "pepper_3", 
        "pepper_4", 
        "pepper_5",
        "pepper_6", 
        "pepper_7"
    },
    infoPanelIcon = "Item_BellPepper",
    tooltipSprite = "pepper_6",
    drySprite = "pepper_7",
    destroyedSprite = "pepper_7",
    rottenSprite = "pepper_7",
});
-- Цуккини
BTSE.Farming:addNewCrop({
    name = "Zucchini",
    group = "IGUI_BTSE.Farming_Group_Vegetables",
    seedItemType = "SHF.Zucchiniseed",
    seedsPerPlot = 6,
    seedsPerVegetable = 3,
    waterOptimum = 65,
    waterMaximum = 100,
    harvestItemType = "Base.Zucchini",
    normalHarvestMin = 4,
    normalHarvestMax = 5,
    abundantHarvestMin = 6,
    abundantHarvestMax = 7,
    growTimeHours = plantGrowthTime(PlantGrowthRate.Slow, 6),
    rotTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow),
    growSprites = {
        "zucc_0", 
        "zucc_1", 
        "zucc_2", 
        "zucc_3", 
        "zucc_4", 
        "zucc_5", 
        "zucc_6",
        "zucc_7"
    },
    infoPanelIcon = "Item_Zucchini",
    tooltipSprite = "zucc_6",
    drySprite = "zucc_7",
    destroyedSprite = "zucc_7",
    rottenSprite = "zucc_7",
});

-- Ягоды
-- Клюбника
BTSE.Farming:addNewCrop({
    name = "Strawberry plant",
    group = "IGUI_BTSE.Farming_Group_Berries",
    seedItemType = "farming.StrewberrieSeed",
    seedsPerPlot = 12,
    seedsPerVegetable = 3,
    waterOptimum = 85,
    waterMaximum = 100,
    harvestItemType = "farming.Strewberrie",
    normalHarvestMin = 4,
    normalHarvestMax = 6,
    abundantHarvestMin = 8,
    abundantHarvestMax = 14,
    growTimeHours = plantGrowthTime(PlantGrowthRate.Moderate, 5),
    rotTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow),
    growSprites = {
        "vegetation_farming_01_56",
        "vegetation_farming_01_57",
        "vegetation_farming_01_58",
        "vegetation_farming_01_59",
        "vegetation_farming_01_60",
        "vegetation_farming_01_61",
        "vegetation_farming_01_62",
        "vegetation_farming_01_63"
    },
    infoPanelIcon = "Item_TZ_Strewberry",
    tooltipSprite = "vegetation_farming_01_62",
    drySprite = "vegetation_farming_01_63",
    destroyedSprite = "vegetation_farming_01_13",
    rottenSprite = "vegetation_farming_01_63",
    revertAfterHarvest = 3,
});
-- Черника
BTSE.Farming:addNewCrop({
    name = "BerryBlack",
    group = "IGUI_BTSE.Farming_Group_Berries",
    seedItemType = "SHF.BerryBlackseed",
    seedsPerPlot = 8,
    seedsPerVegetable = 1,
    waterOptimum = 65,
    waterMaximum = 100,
    harvestItemType = "Base.BerryBlack",
    normalHarvestMin = 7,
    normalHarvestMax = 9,
    abundantHarvestMin = 9,
    abundantHarvestMax = 11,
    growTimeHours = plantGrowthTime(PlantGrowthRate.Fast, 4),
    rotTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow),
    growSprites = {
        "shf_berryblack_01",
        "shf_berryblack_02",
        "shf_berryblack_03",
        "shf_berryblack_04", 
        "shf_berryblack_05", 
        "shf_berryblack_06",
        "shf_berryblack_07",
        "shf_berryblack_08"
    },
    infoPanelIcon = "Item_BerryBlack",
    tooltipSprite = "shf_berryblack_07",
    drySprite = "shf_berryblack_08",
    destroyedSprite = "shf_berryblack_08",
    rottenSprite = "shf_berryblack_08",
});
-- Смародина
BTSE.Farming:addNewCrop({
    name = "BerryBlue",
    group = "IGUI_BTSE.Farming_Group_Berries",
    seedItemType = "SHF.BerryBlueseed",
    seedsPerPlot = 8,
    seedsPerVegetable = 1,
    waterOptimum = 65,
    waterMaximum = 100,
    harvestItemType = "Base.BerryBlue",
    normalHarvestMin = 7,
    normalHarvestMax = 9,
    abundantHarvestMin = 9,
    abundantHarvestMax = 11,
    growTimeHours = plantGrowthTime(PlantGrowthRate.Fast, 4),
    rotTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow),
    growSprites = {
        "shf_berryblue_01", 
        "shf_berryblue_02", 
        "shf_berryblue_03",
        "shf_berryblue_04", 
        "shf_berryblue_05", 
        "shf_berryblue_06",
        "shf_berryblue_07", 
        "shf_berryblue_08"
    },
    infoPanelIcon = "Item_BerryBlue",
    tooltipSprite = "shf_berryblue_07",
    drySprite = "shf_berryblue_08",
    destroyedSprite = "shf_berryblue_08",
    rottenSprite = "shf_berryblue_08",
});

-- Фрукты
-- Авокадо
BTSE.Farming:addNewCrop({
    name = "Avocado",
    group = "IGUI_BTSE.Farming_Group_Fruits",
    seedItemType = "SHF.Avocadoseed",
    seedsPerPlot = 8,
    seedsPerVegetable = 4,
    waterOptimum = 45,
    waterMaximum = 100,
    harvestItemType = "Base.Avocado",
    normalHarvestMin = 4,
    normalHarvestMax = 5,
    abundantHarvestMin = 6,
    abundantHarvestMax = 7,
    growTimeHours = plantGrowthTime(PlantGrowthRate.Moderate, 4),
    rotTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow),
    growSprites = {
        "shf_avocado_01", 
        "shf_avocado_02", 
        "shf_avocado_03", 
        "shf_avocado_04",
        "shf_avocado_05", 
        "shf_avocado_06", 
        "shf_avocado_07", 
        "shf_avocado_08"
    },
    infoPanelIcon = "Item_Avocado",
    tooltipSprite = "shf_avocado_07",
    drySprite = "shf_avocado_08",
    destroyedSprite = "shf_avocado_08",
    rottenSprite = "shf_avocado_08",
    revertAfterHarvest = 3,
});
-- Арбуз
BTSE.Farming:addNewCrop({
    name = "Watermelon",
    group = "IGUI_BTSE.Farming_Group_Fruits",
    seedItemType = "SHF.Watermelonseed",
    seedsPerPlot = 8,
    seedsPerVegetable = 3,
    waterOptimum = 85,
    waterMaximum = 100,
    harvestItemType = "Base.Watermelon",
    normalHarvestMin = 4,
    normalHarvestMax = 5,
    abundantHarvestMin = 6,
    abundantHarvestMax = 7,
    growTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow, 4),
    rotTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow),
    growSprites = {
        "melon_0",
        "melon_1",
        "melon_2",
        "melon_3",
        "melon_4",
        "melon_5",
        "melon_6",
        "melon_7"
    },
    infoPanelIcon = "Item_Watermelon.png",
    tooltipSprite = "melon_6",
    drySprite = "melon_7",
    destroyedSprite = "melon_7",
    rottenSprite = "melon_7",
    revertAfterHarvest = 3,
});
-- Яблоко
BTSE.Farming:addNewCrop({
    name = "Apple",
    group = "IGUI_BTSE.Farming_Group_Fruits",
    seedItemType = "SHF.Appleseed",
    seedsPerPlot = 8,
    seedsPerVegetable = 2,
    waterOptimum = 65,
    waterMaximum = 100,
    harvestItemType = "Base.Apple",
    normalHarvestMin = 4,
    normalHarvestMax = 5,
    abundantHarvestMin = 6,
    abundantHarvestMax = 7,
    growTimeHours = plantGrowthTime(PlantGrowthRate.Slow, 4),
    rotTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow),
    growSprites = {
        "shf_apple_01",
        "shf_apple_02",
        "shf_apple_03",
        "shf_apple_04",
        "shf_apple_05",
        "shf_apple_06",
        "shf_apple_07",
        "shf_apple_08"
    },
    infoPanelIcon = "Item_Apple",
    tooltipSprite = "shf_apple_07",
    drySprite = "shf_apple_08",
    destroyedSprite = "shf_apple_08",
    rottenSprite = "shf_apple_08",
    revertAfterHarvest = 3,
});
-- Банан
BTSE.Farming:addNewCrop({
    name = "Banana",
    group = "IGUI_BTSE.Farming_Group_Fruits",
    seedItemType = "SHF.Bananaseed",
    seedsPerPlot = 8,
    seedsPerVegetable = 2,
    waterOptimum = 75,
    waterMaximum = 100,
    harvestItemType = "Base.Banana",
    normalHarvestMin = 4,
    normalHarvestMax = 5,
    abundantHarvestMin = 6,
    abundantHarvestMax = 7,
    growTimeHours = plantGrowthTime(PlantGrowthRate.Slow, 4),
    rotTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow),
    growSprites = {
        "shf_farm_01_16",
        "shf_farm_01_17",
        "shf_farm_01_18",
        "shf_farm_01_19",
        "shf_farm_01_20",
        "shf_farm_01_21",
        "shf_farm_01_22",
        "shf_farm_01_23"
    },
    infoPanelIcon = "Item_Banana",
    tooltipSprite = "shf_farm_01_22",
    drySprite = "shf_farm_01_23",
    destroyedSprite = "shf_farm_01_23",
    rottenSprite = "shf_farm_01_23",
    revertAfterHarvest = 3,
});
-- Вишня
BTSE.Farming:addNewCrop({
    name = "Cherry",
    group = "IGUI_BTSE.Farming_Group_Fruits",
    seedItemType = "SHF.Cherryseed",
    seedsPerPlot = 7,
    seedsPerVegetable = 2,
    waterOptimum = 75,
    waterMaximum = 100,
    harvestItemType = "Base.Cherry",
    normalHarvestMin = 4,
    normalHarvestMax = 5,
    abundantHarvestMin = 6,
    abundantHarvestMax = 7,
    growTimeHours = plantGrowthTime(PlantGrowthRate.Slow, 4),
    rotTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow),
    growSprites = {
        "shf_cherry_01", 
        "shf_cherry_02", 
        "shf_cherry_03", 
        "shf_cherry_04",
        "shf_cherry_05", 
        "shf_cherry_06", 
        "shf_cherry_07", 
        "shf_cherry_08"
    },
    infoPanelIcon = "Item_Cherry",
    tooltipSprite = "shf_cherry_07",
    drySprite = "shf_cherry_08",
    destroyedSprite = "shf_cherry_08",
    rottenSprite = "shf_cherry_08",
    revertAfterHarvest = 3,
});
-- Грейфрут
BTSE.Farming:addNewCrop({
    name = "Grapefruit",
    group = "IGUI_BTSE.Farming_Group_Fruits",
    seedItemType = "SHF.Grapefruitseed",
    seedsPerPlot = 6,
    seedsPerVegetable = 2,
    waterOptimum = 85,
    waterMaximum = 100,
    harvestItemType = "Base.Grapefruit",
    normalHarvestMin = 4,
    normalHarvestMax = 5,
    abundantHarvestMin = 6,
    abundantHarvestMax = 7,
    growTimeHours = plantGrowthTime(PlantGrowthRate.Slow, 4),
    rotTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow),
    growSprites = {
        "shf_grapefruit_01",
        "shf_grapefruit_02",
        "shf_grapefruit_03",
        "shf_grapefruit_04", 
        "shf_grapefruit_05", 
        "shf_grapefruit_06",
        "shf_grapefruit_07", 
        "shf_grapefruit_08"
    },
    infoPanelIcon = "Item_Grapefruit",
    tooltipSprite = "shf_grapefruit_07",
    drySprite = "shf_grapefruit_08",
    destroyedSprite = "shf_grapefruit_08",
    rottenSprite = "shf_grapefruit_08",
    revertAfterHarvest = 3,
});
-- Виноград
BTSE.Farming:addNewCrop({
    name = "Grapes",
    group = "IGUI_BTSE.Farming_Group_Fruits",
    seedItemType = "SHF.Grapesseed",
    seedsPerPlot = 7,
    seedsPerVegetable = 2,
    waterOptimum = 85,
    waterMaximum = 100,
    harvestItemType = "Base.Grapes",
    normalHarvestMin = 3,
    normalHarvestMax = 5,
    abundantHarvestMin = 5,
    abundantHarvestMax = 7,
    growTimeHours = plantGrowthTime(PlantGrowthRate.Fast, 4),
    rotTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow),
    growSprites = {
        "shf_grapes_01", 
        "shf_grapes_02", 
        "shf_grapes_03", 
        "shf_grapes_04",
        "shf_grapes_05", 
        "shf_grapes_06", 
        "shf_grapes_07", 
        "shf_grapes_08"
    },
    infoPanelIcon = "Item_Grapes",
    tooltipSprite = "shf_grapes_07",
    drySprite = "shf_grapes_08",
    destroyedSprite = "shf_grapes_08",
    rottenSprite = "shf_grapes_08",
    revertAfterHarvest = 3,
});
-- Лимон
BTSE.Farming:addNewCrop({
    name = "Lemon",
    group = "IGUI_BTSE.Farming_Group_Fruits",
    seedItemType = "SHF.Lemonseed",
    seedsPerPlot = 7,
    seedsPerVegetable = 2,
    waterOptimum = 85,
    waterMaximum = 100,
    harvestItemType = "Base.Lemon",
    normalHarvestMin = 3,
    normalHarvestMax = 5,
    abundantHarvestMin = 5,
    abundantHarvestMax = 7,
    growTimeHours = plantGrowthTime(PlantGrowthRate.Slow, 4),
    rotTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow),
    growSprites = {
        "shf_lemon_01", 
        "shf_lemon_02", 
        "shf_lemon_03", 
        "shf_lemon_04", 
        "shf_lemon_05",
        "shf_lemon_06", 
        "shf_lemon_07", 
        "shf_lemon_08"
    },
    infoPanelIcon = "Item_Lemon",
    tooltipSprite = "shf_lemon_07",
    drySprite = "shf_lemon_08",
    destroyedSprite = "shf_lemon_08",
    rottenSprite = "shf_lemon_08",
    revertAfterHarvest = 3,
});
-- Лайм
BTSE.Farming:addNewCrop({
    name = "Lime",
    group = "IGUI_BTSE.Farming_Group_Fruits",
    seedItemType = "SHF.Limeseed",
    seedsPerPlot = 7,
    seedsPerVegetable = 2,
    waterOptimum = 85,
    waterMaximum = 100,
    harvestItemType = "Base.Lime",
    normalHarvestMin = 3,
    normalHarvestMax = 5,
    abundantHarvestMin = 5,
    abundantHarvestMax = 7,
    growTimeHours = plantGrowthTime(PlantGrowthRate.Slow, 4),
    rotTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow),
    growSprites = {
        "shf_lime_01",
        "shf_lime_02",
        "shf_lime_03",
        "shf_lime_04",
        "shf_lime_05",
        "shf_lime_06",
        "shf_lime_07",
        "shf_lime_08"
    },
    infoPanelIcon = "Item_Lime",
    tooltipSprite = "shf_lime_07",
    drySprite = "shf_lime_08",
    destroyedSprite = "shf_lime_08",
    rottenSprite = "shf_lime_08",
    revertAfterHarvest = 3,
});
-- Манго
BTSE.Farming:addNewCrop({
    name = "Mango",
    group = "IGUI_BTSE.Farming_Group_Fruits",
    seedItemType = "SHF.Mangoseed",
    seedsPerPlot = 7,
    seedsPerVegetable = 2,
    waterOptimum = 85,
    waterMaximum = 100,
    harvestItemType = "Base.Mango",
    normalHarvestMin = 5,
    normalHarvestMax = 8,
    abundantHarvestMin = 8,
    abundantHarvestMax = 12,
    growTimeHours = plantGrowthTime(PlantGrowthRate.Slow, 4),
    rotTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow),
    growSprites = {
        "shf_mango_01", 
        "shf_mango_02", 
        "shf_mango_03", 
        "shf_mango_04", 
        "shf_mango_05",
        "shf_mango_06",
        "shf_mango_07", 
        "shf_mango_08"
    },
    infoPanelIcon = "Item_Mango",
    tooltipSprite = "shf_mango_07",
    drySprite = "shf_mango_08",
    destroyedSprite = "shf_mango_08",
    rottenSprite = "shf_mango_08",
    revertAfterHarvest = 3,
});
-- Апельсин
BTSE.Farming:addNewCrop({
    name = "Orange",
    group = "IGUI_BTSE.Farming_Group_Fruits",
    seedItemType = "SHF.Orangeseed",
    seedsPerPlot = 6,
    seedsPerVegetable = 2,
    waterOptimum = 85,
    waterMaximum = 100,
    harvestItemType = "Base.Orange",
    normalHarvestMin = 5,
    normalHarvestMax = 8,
    abundantHarvestMin = 8,
    abundantHarvestMax = 12,
    growTimeHours = plantGrowthTime(PlantGrowthRate.Slow, 4),
    rotTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow),
    growSprites = {
        "shf_orange_01", 
        "shf_orange_02", 
        "shf_orange_03", 
        "shf_orange_04",
        "shf_orange_05", 
        "shf_orange_06", 
        "shf_orange_07", 
        "shf_orange_08"
    },
    infoPanelIcon = "Item_Orange",
    tooltipSprite = "shf_orange_07",
    drySprite = "shf_orange_08",
    destroyedSprite = "shf_orange_08",
    rottenSprite = "shf_orange_08",
    revertAfterHarvest = 3,
});
-- Персик
BTSE.Farming:addNewCrop({
    name = "Peach",
    group = "IGUI_BTSE.Farming_Group_Fruits",
    seedItemType = "SHF.Peachseed",
    seedsPerPlot = 7,
    seedsPerVegetable = 2,
    waterOptimum = 85,
    waterMaximum = 100,
    harvestItemType = "Base.Peach",
    normalHarvestMin = 3,
    normalHarvestMax = 5,
    abundantHarvestMin = 5,
    abundantHarvestMax = 7,
    growTimeHours = plantGrowthTime(PlantGrowthRate.Slow, 4),
    rotTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow),
    growSprites = {
        "shf_peach_01", 
        "shf_peach_02", 
        "shf_peach_03", 
        "shf_peach_04", 
        "shf_peach_05",
        "shf_peach_06", 
        "shf_peach_07", 
        "shf_peach_08"
    },
    infoPanelIcon = "Item_Peach",
    tooltipSprite = "shf_peach_07",
    drySprite = "shf_peach_08",
    destroyedSprite = "shf_peach_08",
    rottenSprite = "shf_peach_08",
    revertAfterHarvest = 3,
});
-- Груша
BTSE.Farming:addNewCrop({
    name = "Pear",
    group = "IGUI_BTSE.Farming_Group_Fruits",
    seedItemType = "SHF.Pearseed",
    seedsPerPlot = 7,
    seedsPerVegetable = 3,
    waterOptimum = 85,
    waterMaximum = 100,
    harvestItemType = "Base.Pear",
    normalHarvestMin = 3,
    normalHarvestMax = 5,
    abundantHarvestMin = 5,
    abundantHarvestMax = 7,
    growTimeHours = plantGrowthTime(PlantGrowthRate.Slow, 4),
    rotTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow),
    growSprites = {
        "shf_pear_01", 
        "shf_pear_02", 
        "shf_pear_03", 
        "shf_pear_04", 
        "shf_pear_05",
        "shf_pear_06", 
        "shf_pear_07", 
        "shf_pear_08"
    },
    infoPanelIcon = "Item_Pear",
    tooltipSprite = "shf_pear_07",
    drySprite = "shf_pear_08",
    destroyedSprite = "shf_pear_08",
    rottenSprite = "shf_pear_08",
    revertAfterHarvest = 3,
});
-- Ананас
BTSE.Farming:addNewCrop({
    name = "Pineapple",
    group = "IGUI_BTSE.Farming_Group_Fruits",
    seedItemType = "SHF.Pineappleseed",
    seedsPerPlot = 3,
    seedsPerVegetable = 2,
    waterOptimum = 85,
    waterMaximum = 100,
    harvestItemType = "Base.Pineapple",
    normalHarvestMin = 3,
    normalHarvestMax = 4,
    abundantHarvestMin = 4,
    abundantHarvestMax = 7,
    growTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow, 5),
    rotTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow),
    growSprites = {
        "shf_pineapple_01", 
        "shf_pineapple_02", 
        "shf_pineapple_03",
        "shf_pineapple_04", 
        "shf_pineapple_05", 
        "shf_pineapple_06",
        "shf_pineapple_07", 
        "shf_pineapple_08"
    },
    infoPanelIcon = "Item_Pineapple",
    tooltipSprite = "shf_pineapple_07",
    drySprite = "shf_pineapple_08",
    destroyedSprite = "shf_pineapple_08",
    rottenSprite = "shf_pineapple_08",
    revertAfterHarvest = 3,
});

-- Культурные растения
-- Чай
BTSE.Farming:addNewCrop({
    name = "TeaLeaves",
    group = "IGUI_BTSE.Farming_Group_Cultivated",
    seedItemType = "SHF.Teaseed",
    seedsPerPlot = 6,
    seedsPerVegetable = 1,
    waterOptimum = 85,
    waterMaximum = 100,
    harvestItemType = "SHF.TeaLeaves",
    normalHarvestMin = 4,
    normalHarvestMax = 6,
    abundantHarvestMin = 6,
    abundantHarvestMax = 8,
    growTimeHours = plantGrowthTime(PlantGrowthRate.Slow, 4),
    rotTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow),
    growSprites = {
        "shf_tealeaves_01", 
        "shf_tealeaves_02", 
        "shf_tealeaves_03", 
        "shf_tealeaves_04", 
        "shf_tealeaves_05",
        "shf_tealeaves_06", 
        "shf_tealeaves_07", 
        "shf_tealeaves_08"
    },
    infoPanelIcon = "media/textures/item_TeaLeaves.png",
    tooltipSprite = "shf_tealeaves_07",
    drySprite = "shf_tealeaves_08",
    destroyedSprite = "shf_tealeaves_08",
    rottenSprite = "shf_tealeaves_08",
    revertAfterHarvest = 3,
});
-- Кофе
BTSE.Farming:addNewCrop({
    name = "CoffeeBeans",
    group = "IGUI_BTSE.Farming_Group_Cultivated",
    seedItemType = "SHF.Coffeeseed",
    seedsPerPlot = 6,
    seedsPerVegetable = 1,
    waterOptimum = 85,
    waterMaximum = 100,
    harvestItemType = "SHF.CoffeeBeans",
    normalHarvestMin = 4,
    normalHarvestMax = 6,
    abundantHarvestMin = 6,
    abundantHarvestMax = 8,
    growTimeHours = plantGrowthTime(PlantGrowthRate.Slow, 4),
    rotTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow),
    growSprites = {
        "shf_coffeebeans_01", 
        "shf_coffeebeans_02", 
        "shf_coffeebeans_03", 
        "shf_coffeebeans_04", 
        "shf_coffeebeans_05",
        "shf_coffeebeans_06", 
        "shf_coffeebeans_07", 
        "shf_coffeebeans_08"
    },
    infoPanelIcon = "media/textures/item_CoffeeBeans.png",
    tooltipSprite = "shf_coffeebeans_07",
    drySprite = "shf_coffeebeans_08",
    destroyedSprite = "shf_coffeebeans_08",
    rottenSprite = "shf_coffeebeans_08",
    revertAfterHarvest = 3,
});

-- Злаковые растения
-- Подсолнух
BTSE.Farming:addNewCrop({
    name = "SunFlower",
    group = "IGUI_BTSE.Farming_Group_Cereal",
    seedItemType = "Base.SunflowerSeeds",
    seedsPerPlot = 7,
    seedsPerVegetable = 3,
    waterOptimum = 85,
    waterMaximum = 100,
    harvestItemType = "SHF.SunFlower",
    normalHarvestMin = 5,
    normalHarvestMax = 7,
    abundantHarvestMin = 7,
    abundantHarvestMax = 9,
    growTimeHours = plantGrowthTime(PlantGrowthRate.Slow, 4),
    rotTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow),
    growSprites = {
        "shf_farm_01_8", 
        "shf_farm_01_9", 
        "shf_farm_01_10", 
        "shf_farm_01_11", 
        "shf_farm_01_12",
        "shf_farm_01_13", 
        "shf_farm_01_14", 
        "shf_farm_01_15"
    },
    infoPanelIcon = "media/textures/item_SunFlower.png",
    tooltipSprite = "shf_farm_01_14",
    drySprite = "shf_farm_01_15",
    destroyedSprite = "shf_farm_01_15",
    rottenSprite = "shf_farm_01_15",
});
-- Пшеница
BTSE.Farming:addNewCrop({
    name = "Wheat",
    group = "IGUI_BTSE.Farming_Group_Cereal",
    seedItemType = "SHF.WheatGrain",
    seedsPerPlot = 5,
    seedsPerVegetable = 3,
    waterOptimum = 85,
    waterMaximum = 100,
    harvestItemType = "SHF.Wheat",
    normalHarvestMin = 5,
    normalHarvestMax = 7,
    abundantHarvestMin = 7,
    abundantHarvestMax = 9,
    growTimeHours = plantGrowthTime(PlantGrowthRate.Slow, 4),
    rotTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow),
    growSprites = {
        "shf_farm_01_0", 
        "shf_farm_01_1", 
        "shf_farm_01_2", 
        "shf_farm_01_3", 
        "shf_farm_01_4",
        "shf_farm_01_5", 
        "shf_farm_01_6", 
        "shf_farm_01_7"
    },
    infoPanelIcon = "media/textures/item_Wheat.png",
    tooltipSprite = "shf_farm_01_6",
    drySprite = "shf_farm_01_7",
    destroyedSprite = "shf_farm_01_7",
    rottenSprite = "shf_farm_01_7",
});

-- Орехи
-- Арахис
BTSE.Farming:addNewCrop({
    name = "Peanuts",
    group = "IGUI_BTSE.Farming_Group_Nuts",
    seedItemType = "SHF.Peanutseed",
    seedsPerPlot = 5,
    seedsPerVegetable = 1,
    waterOptimum = 85,
    waterMaximum = 100,
    harvestItemType = "Base.Peanuts",
    normalHarvestMin = 5,
    normalHarvestMax = 7,
    abundantHarvestMin = 7,
    abundantHarvestMax = 9,
    growTimeHours = plantGrowthTime(PlantGrowthRate.Slow, 4),
    rotTimeHours = plantGrowthTime(PlantGrowthRate.VerySlow),
    growSprites = {
        "vegetation_farming_01_56",
        "vegetation_farming_01_57",
        "vegetation_farming_01_58",
        "vegetation_farming_01_59",
        "vegetation_farming_01_60",
        "vegetation_farming_01_61",
        "vegetation_farming_01_62",
        "vegetation_farming_01_63"
    },
    infoPanelIcon = "Item_Peanut",
    tooltipSprite = "vegetation_farming_01_62",
    drySprite = "vegetation_farming_01_63",
    destroyedSprite = "vegetation_farming_01_13",
    rottenSprite = "vegetation_farming_01_63",
});