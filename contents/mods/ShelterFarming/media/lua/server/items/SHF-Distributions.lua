require 'Items/SuburbsDistributions'
require 'Items/ProceduralDistributions'

LootRarity = {}
LootRarity.Common = 15
LootRarity.Uncommon = 8
LootRarity.Rare = 3
LootRarity.Elite = 1
LootRarity.VeryRare = 0.5
LootRarity.ExtraRare = 0.01

local suburbsDistribution = {
    -- общее
    all = {
        -- Crate контейнеры
        crate = {
            items = {
                "SHF.AvocadoBagSeed", LootRarity.VeryRare,
                "SHF.PepperBagSeed", LootRarity.VeryRare,
                "SHF.EggplantBagSeed", LootRarity.VeryRare,
                "SHF.LeekBagSeed", LootRarity.VeryRare,
                "SHF.OnionBagSeed", LootRarity.VeryRare,
                "SHF.WatermelonBagSeed", LootRarity.VeryRare,
                "SHF.ZucchiniBagSeed", LootRarity.VeryRare,
                "SHF.AppleBagSeed", LootRarity.VeryRare,
                "SHF.BananaBagSeed", LootRarity.VeryRare,
                "SHF.BerryBlackBagSeed", LootRarity.VeryRare,
                "SHF.BerryBlueBagSeed", LootRarity.VeryRare,
                "SHF.CherryBagSeed", LootRarity.VeryRare,
                "SHF.GrapefruitBagSeed", LootRarity.VeryRare,
                "SHF.GrapesBagSeed", LootRarity.VeryRare,
                "SHF.LemonBagSeed", LootRarity.VeryRare,
                "SHF.LimeBagSeed", LootRarity.VeryRare,
                "SHF.MangoBagSeed", LootRarity.VeryRare,
                "SHF.OrangeBagSeed", LootRarity.VeryRare,
                "SHF.PeachBagSeed", LootRarity.VeryRare,
                "SHF.PearBagSeed", LootRarity.VeryRare,
                "SHF.PineappleBagSeed", LootRarity.VeryRare,
                "SHF.CornBagSeed", LootRarity.VeryRare,
                "SHF.LettuceBagSeed", LootRarity.VeryRare,
                "SHF.TeaBagSeed", LootRarity.VeryRare,
                "SHF.CoffeeBagSeed", LootRarity.VeryRare,
                "SHF.WheatBagSeed", LootRarity.VeryRare,
            }
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
            items = {
                "SHF.AvocadoBagSeed", LootRarity.Rare,
                "SHF.PepperBagSeed", LootRarity.Rare,
                "SHF.EggplantBagSeed", LootRarity.Rare,
                "SHF.LeekBagSeed", LootRarity.Rare,
                "SHF.OnionBagSeed", LootRarity.Rare,
                "SHF.WatermelonBagSeed", LootRarity.Rare,
                "SHF.ZucchiniBagSeed", LootRarity.Rare,
                "SHF.AppleBagSeed", LootRarity.Rare,
                "SHF.BananaBagSeed", LootRarity.Rare,
                "SHF.BerryBlackBagSeed", LootRarity.Rare,
                "SHF.BerryBlueBagSeed", LootRarity.Rare,
                "SHF.CherryBagSeed", LootRarity.Rare,
                "SHF.GrapefruitBagSeed", LootRarity.Rare,
                "SHF.GrapesBagSeed", LootRarity.Rare,
                "SHF.LemonBagSeed", LootRarity.Rare,
                "SHF.LimeBagSeed", LootRarity.Rare,
                "SHF.MangoBagSeed", LootRarity.Rare,
                "SHF.OrangeBagSeed", LootRarity.Rare,
                "SHF.PeachBagSeed", LootRarity.Rare,
                "SHF.PearBagSeed", LootRarity.Rare,
                "SHF.PineappleBagSeed", LootRarity.Rare,
                "SHF.CornBagSeed", LootRarity.Rare,
                "SHF.LettuceBagSeed", LootRarity.Rare,
                "SHF.TeaBagSeed", LootRarity.Rare,
                "SHF.CoffeeBagSeed", LootRarity.Rare,
                "SHF.WheatBagSeed", LootRarity.Rare,
            }
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
        items = {
            "SHF.AvocadoBagSeed", LootRarity.Rare,
            "SHF.PepperBagSeed", LootRarity.Rare,
            "SHF.EggplantBagSeed", LootRarity.Rare,
            "SHF.LeekBagSeed", LootRarity.Rare,
            "SHF.OnionBagSeed", LootRarity.Rare,
            "SHF.WatermelonBagSeed", LootRarity.Rare,
            "SHF.ZucchiniBagSeed", LootRarity.Rare,
            "SHF.AppleBagSeed", LootRarity.Rare,
            "SHF.BananaBagSeed", LootRarity.Rare,
            "SHF.BerryBlackBagSeed", LootRarity.Rare,
            "SHF.BerryBlueBagSeed", LootRarity.Rare,
            "SHF.CherryBagSeed", LootRarity.Rare,
            "SHF.GrapefruitBagSeed", LootRarity.Rare,
            "SHF.GrapesBagSeed", LootRarity.Rare,
            "SHF.LemonBagSeed", LootRarity.Rare,
            "SHF.LimeBagSeed", LootRarity.Rare,
            "SHF.MangoBagSeed", LootRarity.Rare,
            "SHF.OrangeBagSeed", LootRarity.Rare,
            "SHF.PeachBagSeed", LootRarity.Rare,
            "SHF.PearBagSeed", LootRarity.Rare,
            "SHF.PineappleBagSeed", LootRarity.Rare,
            "SHF.CornBagSeed", LootRarity.Rare,
            "SHF.LettuceBagSeed", LootRarity.Rare,
            "SHF.TeaBagSeed", LootRarity.Rare,
            "SHF.CoffeeBagSeed", LootRarity.Rare,
            "SHF.WheatBagSeed", LootRarity.Rare,
        }
    },
    -- Сумка с семенами
    SeedBag = {
        items = {
            "SHF.AvocadoBagSeed", LootRarity.Common,
            "SHF.PepperBagSeed", LootRarity.Common,
            "SHF.EggplantBagSeed", LootRarity.Common,
            "SHF.LeekBagSeed", LootRarity.Common,
            "SHF.OnionBagSeed", LootRarity.Common,
            "SHF.WatermelonBagSeed", LootRarity.Common,
            "SHF.ZucchiniBagSeed", LootRarity.Common,
            "SHF.AppleBagSeed", LootRarity.Common,
            "SHF.BananaBagSeed", LootRarity.Common,
            "SHF.BerryBlackBagSeed", LootRarity.Common,
            "SHF.BerryBlueBagSeed", LootRarity.Common,
            "SHF.CherryBagSeed", LootRarity.Common,
            "SHF.GrapefruitBagSeed", LootRarity.Common,
            "SHF.GrapesBagSeed", LootRarity.Common,
            "SHF.LemonBagSeed", LootRarity.Common,
            "SHF.LimeBagSeed", LootRarity.Common,
            "SHF.MangoBagSeed", LootRarity.Common,
            "SHF.OrangeBagSeed", LootRarity.Common,
            "SHF.PeachBagSeed", LootRarity.Common,
            "SHF.PearBagSeed", LootRarity.Common,
            "SHF.PineappleBagSeed", LootRarity.Common,
            "SHF.CornBagSeed", LootRarity.Common,
            "SHF.LettuceBagSeed", LootRarity.Common,
            "SHF.TeaBagSeed", LootRarity.Common,
            "SHF.CoffeeBagSeed", LootRarity.Common,
            "SHF.WheatBagSeed", LootRarity.Common,
        }
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
            items = {
                "SHF.AvocadoBagSeed", LootRarity.Uncommon,
                "SHF.PepperBagSeed", LootRarity.Uncommon,
                "SHF.EggplantBagSeed", LootRarity.Uncommon,
                "SHF.LeekBagSeed", LootRarity.Uncommon,
                "SHF.OnionBagSeed", LootRarity.Uncommon,
                "SHF.WatermelonBagSeed", LootRarity.Uncommon,
                "SHF.ZucchiniBagSeed", LootRarity.Uncommon,
                "SHF.AppleBagSeed", LootRarity.Uncommon,
                "SHF.BananaBagSeed", LootRarity.Uncommon,
                "SHF.BerryBlackBagSeed", LootRarity.Uncommon,
                "SHF.BerryBlueBagSeed", LootRarity.Uncommon,
                "SHF.CherryBagSeed", LootRarity.Uncommon,
                "SHF.GrapefruitBagSeed", LootRarity.Uncommon,
                "SHF.GrapesBagSeed", LootRarity.Uncommon,
                "SHF.LemonBagSeed", LootRarity.Uncommon,
                "SHF.LimeBagSeed", LootRarity.Uncommon,
                "SHF.MangoBagSeed", LootRarity.Uncommon,
                "SHF.OrangeBagSeed", LootRarity.Uncommon,
                "SHF.PeachBagSeed", LootRarity.Uncommon,
                "SHF.PearBagSeed", LootRarity.Uncommon,
                "SHF.PineappleBagSeed", LootRarity.Uncommon,
                "SHF.CornBagSeed", LootRarity.Uncommon,
                "SHF.LettuceBagSeed", LootRarity.Uncommon,
                "SHF.TeaBagSeed", LootRarity.Uncommon,
                "SHF.CoffeeBagSeed", LootRarity.Uncommon,
                "SHF.WheatBagSeed", LootRarity.Uncommon,
            }
        },
        -- Магазин садоводства
        GardenStoreMisc = {
            items = {
                "SHF.AvocadoBagSeed", LootRarity.Common,
                "SHF.PepperBagSeed", LootRarity.Common,
                "SHF.EggplantBagSeed", LootRarity.Common,
                "SHF.LeekBagSeed", LootRarity.Common,
                "SHF.OnionBagSeed", LootRarity.Common,
                "SHF.WatermelonBagSeed", LootRarity.Common,
                "SHF.ZucchiniBagSeed", LootRarity.Common,
                "SHF.AppleBagSeed", LootRarity.Common,
                "SHF.BananaBagSeed", LootRarity.Common,
                "SHF.BerryBlackBagSeed", LootRarity.Common,
                "SHF.BerryBlueBagSeed", LootRarity.Common,
                "SHF.CherryBagSeed", LootRarity.Common,
                "SHF.GrapefruitBagSeed", LootRarity.Common,
                "SHF.GrapesBagSeed", LootRarity.Common,
                "SHF.LemonBagSeed", LootRarity.Common,
                "SHF.LimeBagSeed", LootRarity.Common,
                "SHF.MangoBagSeed", LootRarity.Common,
                "SHF.OrangeBagSeed", LootRarity.Common,
                "SHF.PeachBagSeed", LootRarity.Common,
                "SHF.PearBagSeed", LootRarity.Common,
                "SHF.PineappleBagSeed", LootRarity.Common,
                "SHF.CornBagSeed", LootRarity.Common,
                "SHF.LettuceBagSeed", LootRarity.Common,
                "SHF.TeaBagSeed", LootRarity.Common,
                "SHF.CoffeeBagSeed", LootRarity.Common,
                "SHF.WheatBagSeed", LootRarity.Common,
            }
        },
        -- Гигамаркеты садоводства
        GigamartFarming = {
            items = {
                "SHF.AvocadoBagSeed", LootRarity.Common,
                "SHF.PepperBagSeed", LootRarity.Common,
                "SHF.EggplantBagSeed", LootRarity.Common,
                "SHF.LeekBagSeed", LootRarity.Common,
                "SHF.OnionBagSeed", LootRarity.Common,
                "SHF.WatermelonBagSeed", LootRarity.Common,
                "SHF.ZucchiniBagSeed", LootRarity.Common,
                "SHF.AppleBagSeed", LootRarity.Common,
                "SHF.BananaBagSeed", LootRarity.Common,
                "SHF.BerryBlackBagSeed", LootRarity.Common,
                "SHF.BerryBlueBagSeed", LootRarity.Common,
                "SHF.CherryBagSeed", LootRarity.Common,
                "SHF.GrapefruitBagSeed", LootRarity.Common,
                "SHF.GrapesBagSeed", LootRarity.Common,
                "SHF.LemonBagSeed", LootRarity.Common,
                "SHF.LimeBagSeed", LootRarity.Common,
                "SHF.MangoBagSeed", LootRarity.Common,
                "SHF.OrangeBagSeed", LootRarity.Common,
                "SHF.PeachBagSeed", LootRarity.Common,
                "SHF.PearBagSeed", LootRarity.Common,
                "SHF.PineappleBagSeed", LootRarity.Common,
                "SHF.CornBagSeed", LootRarity.Common,
                "SHF.LettuceBagSeed", LootRarity.Common,
                "SHF.TeaBagSeed", LootRarity.Common,
                "SHF.CoffeeBagSeed", LootRarity.Common,
                "SHF.WheatBagSeed", LootRarity.Common,
            }
        },
        -- Усадьбы
        Homesteading = {
            items = {
                "SHF.AvocadoBagSeed", LootRarity.Rare,
                "SHF.PepperBagSeed", LootRarity.Rare,
                "SHF.EggplantBagSeed", LootRarity.Rare,
                "SHF.LeekBagSeed", LootRarity.Rare,
                "SHF.OnionBagSeed", LootRarity.Rare,
                "SHF.WatermelonBagSeed", LootRarity.Rare,
                "SHF.ZucchiniBagSeed", LootRarity.Rare,
                "SHF.AppleBagSeed", LootRarity.Rare,
                "SHF.BananaBagSeed", LootRarity.Rare,
                "SHF.BerryBlackBagSeed", LootRarity.Rare,
                "SHF.BerryBlueBagSeed", LootRarity.Rare,
                "SHF.CherryBagSeed", LootRarity.Rare,
                "SHF.GrapefruitBagSeed", LootRarity.Rare,
                "SHF.GrapesBagSeed", LootRarity.Rare,
                "SHF.LemonBagSeed", LootRarity.Rare,
                "SHF.LimeBagSeed", LootRarity.Rare,
                "SHF.MangoBagSeed", LootRarity.Rare,
                "SHF.OrangeBagSeed", LootRarity.Rare,
                "SHF.PeachBagSeed", LootRarity.Rare,
                "SHF.PearBagSeed", LootRarity.Rare,
                "SHF.PineappleBagSeed", LootRarity.Rare,
                "SHF.CornBagSeed", LootRarity.Rare,
                "SHF.LettuceBagSeed", LootRarity.Rare,
                "SHF.TeaBagSeed", LootRarity.Rare,
                "SHF.CoffeeBagSeed", LootRarity.Rare,
                "SHF.WheatBagSeed", LootRarity.Rare,
            }
        },
        -- Магазин инструментов
        ToolStoreFarming = {
            items = {
                "SHF.AvocadoBagSeed", LootRarity.Uncommon,
                "SHF.PepperBagSeed", LootRarity.Uncommon,
                "SHF.EggplantBagSeed", LootRarity.Uncommon,
                "SHF.LeekBagSeed", LootRarity.Uncommon,
                "SHF.OnionBagSeed", LootRarity.Uncommon,
                "SHF.WatermelonBagSeed", LootRarity.Uncommon,
                "SHF.ZucchiniBagSeed", LootRarity.Uncommon,
                "SHF.AppleBagSeed", LootRarity.Uncommon,
                "SHF.BananaBagSeed", LootRarity.Uncommon,
                "SHF.BerryBlackBagSeed", LootRarity.Uncommon,
                "SHF.BerryBlueBagSeed", LootRarity.Uncommon,
                "SHF.CherryBagSeed", LootRarity.Uncommon,
                "SHF.GrapefruitBagSeed", LootRarity.Uncommon,
                "SHF.GrapesBagSeed", LootRarity.Uncommon,
                "SHF.LemonBagSeed", LootRarity.Uncommon,
                "SHF.LimeBagSeed", LootRarity.Uncommon,
                "SHF.MangoBagSeed", LootRarity.Uncommon,
                "SHF.OrangeBagSeed", LootRarity.Uncommon,
                "SHF.PeachBagSeed", LootRarity.Uncommon,
                "SHF.PearBagSeed", LootRarity.Uncommon,
                "SHF.PineappleBagSeed", LootRarity.Uncommon,
                "SHF.CornBagSeed", LootRarity.Uncommon,
                "SHF.LettuceBagSeed", LootRarity.Uncommon,
                "SHF.TeaBagSeed", LootRarity.Uncommon,
                "SHF.CoffeeBagSeed", LootRarity.Uncommon,
                "SHF.WheatBagSeed", LootRarity.Uncommon,
            }
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
