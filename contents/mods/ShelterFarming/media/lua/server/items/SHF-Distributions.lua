require 'Items/SuburbsDistributions'
require 'Items/ProceduralDistributions'

LootRarity = {}
LootRarity.Common = 15
LootRarity.Uncommon = 8
LootRarity.Rare = 3
LootRarity.Elite = 1
LootRarity.VeryRare = 0.5
LootRarity.ExtraRare = 0.01

function getItems(rarity)
    local items = {
        {"SHF.AvocadoBagSeed", rarity},
        {"SHF.PepperBagSeed", rarity},
        {"SHF.EggplantBagSeed", rarity},
        {"SHF.LeekBagSeed", rarity},
        {"SHF.OnionBagSeed", rarity},
        {"SHF.WatermelonBagSeed", rarity},
        {"SHF.ZucchiniBagSeed", rarity},
        {"SHF.AppleBagSeed", rarity},
        {"SHF.BananaBagSeed", rarity},
        {"SHF.BerryBlackBagSeed", rarity},
        {"SHF.BerryBlueBagSeed", rarity},
        {"SHF.CherryBagSeed", rarity},
        {"SHF.GrapefruitBagSeed", rarity},
        {"SHF.GrapesBagSeed", rarity},
        {"SHF.LemonBagSeed", rarity},
        {"SHF.LimeBagSeed", rarity},
        {"SHF.MangoBagSeed", rarity},
        {"SHF.OrangeBagSeed", rarity},
        {"SHF.PeachBagSeed", rarity},
        {"SHF.PearBagSeed", rarity},
        {"SHF.PineappleBagSeed", rarity},
        {"SHF.CornBagSeed", rarity},
        {"SHF.LettuceBagSeed", rarity},
        {"SHF.TeaBagSeed", rarity},
        {"SHF.CoffeeBagSeed", rarity},
        {"SHF.WheatBagSeed", rarity},
        {"SHF.SunFlowerBagSeed", rarity}
    }
    return items
end

local suburbsDistribution = {
    -- общее
    all = {
        -- Crate контейнеры
        crate = {
            items = getItems(LootRarity.VeryRare)
        },
        -- Zombie female inventory
        inventoryfemale = {
            items = {
                "SHF.CoffeeBeansRoasted", LootRarity.ExtraRare,
            }
        },
        -- Zombie male inventory
        inventorymale = {
            items = {
                "SHF.CoffeeBeansRoasted", LootRarity.ExtraRare,
            }
        },
        Outfit_Farmer = {
            items = getItems(LootRarity.Rare)
        }
    },
    -- большая походная сумка
    Bag_BigHikingBag = {
        items = {
        },
    },
    -- обычная походная сумка
    Bag_NormalHikingBag = {
        items = {
        },
    },
    -- сумка выжившего
    Bag_SurvivorBag = {
        items = getItems(LootRarity.Rare)
    },
    -- Сумка с семенами
    SeedBag = {
        items = getItems(LootRarity.Common)
    }
}

local proceduralDistribution = {
    list = {
        ArmyStorageMedical = {
            items = {
                -- "Base.HeartRateMonitorLeft", LootRarity.ExtraRare,
            },
        },
        -- Фермерские ящики
        CrateFarming = {
            items = getItems(LootRarity.Uncommon)
        },
        -- Магазин садоводства
        GardenStoreMisc = {
            items = getItems(LootRarity.Common)
        },
        -- Гигамаркеты садоводства
        GigamartFarming = {
            items = getItems(LootRarity.Common)
        },
        -- Усадьбы
        Homesteading = {
            items = getItems(LootRarity.Rare)
        },
        -- Магазин инструментов
        ToolStoreFarming = {
            items = getItems(LootRarity.Uncommon)
        },
        BakeryKitchenFridge = {
            items = {
                "SHF.TeaLeaves", LootRarity.Uncommon,
                "SHF.CoffeeBeans", LootRarity.Uncommon,
                "SHF.CoffeeBeansRoasted", LootRarity.Uncommon,
            }
        },
        BandPracticeFridge = {
            items = {
                "SHF.TeaLeaves", LootRarity.Rare,
                "SHF.CoffeeBeans", LootRarity.Rare,
                "SHF.CoffeeBeansRoasted", LootRarity.Rare,
            }
        },
        BurgerKitchenFridge = {
            items = {
                "SHF.TeaLeaves", LootRarity.Rare,
                "SHF.CoffeeBeans", LootRarity.Rare,
                "SHF.CoffeeBeansRoasted", LootRarity.Uncommon,
            }
        },
        CafeKitchenFridge = {
            items = {
                "SHF.TeaLeaves", LootRarity.Rare,
                "SHF.CoffeeBeans", LootRarity.Uncommon,
                "SHF.CoffeeBeansRoasted", LootRarity.Common,
            }
        },
        CrateTea = {
            items = {
                "SHF.TeaLeaves", LootRarity.Common,
                "SHF.CoffeeBeans", LootRarity.Rare,
                "SHF.CoffeeBeansRoasted", LootRarity.Rare,
            }
        },
        FridgeBreakRoom = {
            items = {
                "SHF.TeaLeaves", LootRarity.Rare,
                "SHF.CoffeeBeans", LootRarity.Rare,
                "SHF.CoffeeBeansRoasted", LootRarity.Rare,
            }
        },
        FridgeGeneric = {
            items = {
                "SHF.TeaLeaves", LootRarity.Rare,
                "SHF.CoffeeBeans", LootRarity.Rare,
                "SHF.CoffeeBeansRoasted", LootRarity.Rare,
            }
        },
        FridgeOffice = {
            items = {
                "SHF.TeaLeaves", LootRarity.VeryRare,
                "SHF.CoffeeBeans", LootRarity.VeryRare,
                "SHF.CoffeeBeansRoasted", LootRarity.VeryRare,
            }
        },
        FridgeOther = {
            items = {
                "SHF.TeaLeaves", LootRarity.VeryRare,
                "SHF.CoffeeBeans", LootRarity.VeryRare,
                "SHF.CoffeeBeansRoasted", LootRarity.VeryRare,
            }
        },
        FridgeRich = {
            items = {
                "SHF.TeaLeaves", LootRarity.ExtraRare,
                "SHF.CoffeeBeans", LootRarity.ExtraRare,
                "SHF.CoffeeBeansRoasted", LootRarity.ExtraRare,
            }
        },
        SpiffosKitchenFridge = {
            items = {
                "SHF.TeaLeaves", LootRarity.Common,
                "SHF.CoffeeBeans", LootRarity.Common,
                "SHF.CoffeeBeansRoasted", LootRarity.Common,
            }
        },
        SushiKitchenFridge = {
            items = {
                "SHF.TeaLeaves", LootRarity.Uncommon,
                "SHF.CoffeeBeans", LootRarity.Uncommon,
                "SHF.CoffeeBeansRoasted", LootRarity.Uncommon,
            }
        },
        WesternKitchenFridge = {
            items = {
                "SHF.TeaLeaves", LootRarity.Uncommon,
                "SHF.CoffeeBeans", LootRarity.Uncommon,
                "SHF.CoffeeBeansRoasted", LootRarity.Uncommon,
            }
        },
    }
}

for location, data in pairs(suburbsDistribution.all) do
    for _, value in ipairs(data.items) do
        table.insert(SuburbsDistributions['all'][location].items, value);
    end
end

for location, data in pairs(proceduralDistribution.list) do
    for _, value in ipairs(data.items) do
        table.insert(ProceduralDistributions['list'][location].items, value);
    end
end
