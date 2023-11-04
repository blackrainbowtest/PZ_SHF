--******************************************************************************************
--**                   				USER FOR REFERENCE                  				  **
--**                        			MoCrops                        					  **
--******************************************************************************************

require "Items/SuburbsDistributions"
require "Items/ProceduralDistributions"

--Crate (general)
table.insert(SuburbsDistributions.all.crate.items, "SHF.AvocadoBagSeed");
table.insert(SuburbsDistributions.all.crate.items, 0.8);
table.insert(SuburbsDistributions.all.crate.items, "SHF.PepperBagSeed");
table.insert(SuburbsDistributions.all.crate.items, 0.8);
table.insert(SuburbsDistributions.all.crate.items, "SHF.EggplantBagSeed");
table.insert(SuburbsDistributions.all.crate.items, 0.8);
table.insert(SuburbsDistributions.all.crate.items, "SHF.LeekBagSeed");
table.insert(SuburbsDistributions.all.crate.items, 0.8);
table.insert(SuburbsDistributions.all.crate.items, "SHF.OnionBagSeed");
table.insert(SuburbsDistributions.all.crate.items, 0.8);
table.insert(SuburbsDistributions.all.crate.items, "SHF.WatermelonBagSeed");
table.insert(SuburbsDistributions.all.crate.items, 0.8);
table.insert(SuburbsDistributions.all.crate.items, "SHF.ZucchiniBagSeed");
table.insert(SuburbsDistributions.all.crate.items, 0.8);
table.insert(SuburbsDistributions.all.crate.items, "SHF.AppleBagSeed");
table.insert(SuburbsDistributions.all.crate.items, 0.8);
table.insert(SuburbsDistributions.all.crate.items, "SHF.BananaBagSeed");
table.insert(SuburbsDistributions.all.crate.items, 0.8);
table.insert(SuburbsDistributions.all.crate.items, "SHF.BerryBlackBagSeed");
table.insert(SuburbsDistributions.all.crate.items, 0.8);
table.insert(SuburbsDistributions.all.crate.items, "SHF.BerryBlueBagSeed");
table.insert(SuburbsDistributions.all.crate.items, 0.8);
table.insert(SuburbsDistributions.all.crate.items, "SHF.CherryBagSeed");
table.insert(SuburbsDistributions.all.crate.items, 0.8);
table.insert(SuburbsDistributions.all.crate.items, "SHF.GrapefruitBagSeed");
table.insert(SuburbsDistributions.all.crate.items, 0.8);
table.insert(SuburbsDistributions.all.crate.items, "SHF.GrapesBagSeed");
table.insert(SuburbsDistributions.all.crate.items, 0.8);
table.insert(SuburbsDistributions.all.crate.items, "SHF.LemonBagSeed");
table.insert(SuburbsDistributions.all.crate.items, 0.8);
table.insert(SuburbsDistributions.all.crate.items, "SHF.LimeBagSeed");
table.insert(SuburbsDistributions.all.crate.items, 0.8);
table.insert(SuburbsDistributions.all.crate.items, "SHF.MangoBagSeed");
table.insert(SuburbsDistributions.all.crate.items, 0.8);
table.insert(SuburbsDistributions.all.crate.items, "SHF.OrangeBagSeed");
table.insert(SuburbsDistributions.all.crate.items, 0.8);
table.insert(SuburbsDistributions.all.crate.items, "SHF.PeachBagSeed");
table.insert(SuburbsDistributions.all.crate.items, 0.8);
table.insert(SuburbsDistributions.all.crate.items, "SHF.PearBagSeed");
table.insert(SuburbsDistributions.all.crate.items, 0.8);
table.insert(SuburbsDistributions.all.crate.items, "SHF.PineappleBagSeed");
table.insert(SuburbsDistributions.all.crate.items, 0.8);
table.insert(SuburbsDistributions.all.crate.items, "SHF.TeaBagSeed");
table.insert(SuburbsDistributions.all.crate.items, 0.8);
table.insert(SuburbsDistributions.all.crate.items, "SHF.CoffeeBagSeed");
table.insert(SuburbsDistributions.all.crate.items, 0.8);

--Soul Filcher's Farming compat
if (getActivatedMods():contains("FarmingTime")) then

else
    table.insert(SuburbsDistributions.all.crate.items, "SHF.CornBagSeed");
    table.insert(SuburbsDistributions.all.crate.items, 0.8);
    table.insert(SuburbsDistributions.all.crate.items, "SHF.LettuceBagSeed");
    table.insert(SuburbsDistributions.all.crate.items, 0.8);
end


--Crate farming (procedural)
table.insert(ProceduralDistributions.list.CrateFarming.items, "SHF.AvocadoBagSeed");
table.insert(ProceduralDistributions.list.CrateFarming.items, 8);
table.insert(ProceduralDistributions.list.CrateFarming.items, "SHF.PepperBagSeed");
table.insert(ProceduralDistributions.list.CrateFarming.items, 8);
table.insert(ProceduralDistributions.list.CrateFarming.items, "SHF.EggplantBagSeed");
table.insert(ProceduralDistributions.list.CrateFarming.items, 8);
table.insert(ProceduralDistributions.list.CrateFarming.items, "SHF.LeekBagSeed");
table.insert(ProceduralDistributions.list.CrateFarming.items, 8);
table.insert(ProceduralDistributions.list.CrateFarming.items, "SHF.OnionBagSeed");
table.insert(ProceduralDistributions.list.CrateFarming.items, 8);
table.insert(ProceduralDistributions.list.CrateFarming.items, "SHF.WatermelonBagSeed");
table.insert(ProceduralDistributions.list.CrateFarming.items, 8);
table.insert(ProceduralDistributions.list.CrateFarming.items, "SHF.ZucchiniBagSeed");
table.insert(ProceduralDistributions.list.CrateFarming.items, 8);
table.insert(ProceduralDistributions.list.CrateFarming.items, "SHF.AppleBagSeed");
table.insert(ProceduralDistributions.list.CrateFarming.items, 8);
table.insert(ProceduralDistributions.list.CrateFarming.items, "SHF.BananaBagSeed");
table.insert(ProceduralDistributions.list.CrateFarming.items, 8);
table.insert(ProceduralDistributions.list.CrateFarming.items, "SHF.BerryBlackBagSeed");
table.insert(ProceduralDistributions.list.CrateFarming.items, 8);
table.insert(ProceduralDistributions.list.CrateFarming.items, "SHF.BerryBlueBagSeed");
table.insert(ProceduralDistributions.list.CrateFarming.items, 8);
table.insert(ProceduralDistributions.list.CrateFarming.items, "SHF.CherryBagSeed");
table.insert(ProceduralDistributions.list.CrateFarming.items, 8);
table.insert(ProceduralDistributions.list.CrateFarming.items, "SHF.GrapefruitBagSeed");
table.insert(ProceduralDistributions.list.CrateFarming.items, 8);
table.insert(ProceduralDistributions.list.CrateFarming.items, "SHF.GrapesBagSeed");
table.insert(ProceduralDistributions.list.CrateFarming.items, 8);
table.insert(ProceduralDistributions.list.CrateFarming.items, "SHF.LemonBagSeed");
table.insert(ProceduralDistributions.list.CrateFarming.items, 8);
table.insert(ProceduralDistributions.list.CrateFarming.items, "SHF.LimeBagSeed");
table.insert(ProceduralDistributions.list.CrateFarming.items, 8);
table.insert(ProceduralDistributions.list.CrateFarming.items, "SHF.MangoBagSeed");
table.insert(ProceduralDistributions.list.CrateFarming.items, 8);
table.insert(ProceduralDistributions.list.CrateFarming.items, "SHF.OrangeBagSeed");
table.insert(ProceduralDistributions.list.CrateFarming.items, 8);
table.insert(ProceduralDistributions.list.CrateFarming.items, "SHF.PeachBagSeed");
table.insert(ProceduralDistributions.list.CrateFarming.items, 8);
table.insert(ProceduralDistributions.list.CrateFarming.items, "SHF.PearBagSeed");
table.insert(ProceduralDistributions.list.CrateFarming.items, 8);
table.insert(ProceduralDistributions.list.CrateFarming.items, "SHF.PineappleBagSeed");
table.insert(ProceduralDistributions.list.CrateFarming.items, 8);
table.insert(ProceduralDistributions.list.CrateFarming.items, "SHF.TeaBagSeed");
table.insert(ProceduralDistributions.list.CrateFarming.items, 8);
table.insert(ProceduralDistributions.list.CrateFarming.items, "SHF.CoffeeBagSeed");
table.insert(ProceduralDistributions.list.CrateFarming.items, 8);

--Soul Filcher's Farming compat
if (getActivatedMods():contains("FarmingTime")) then

else
    table.insert(ProceduralDistributions.list.CrateFarming.items, "SHF.CornBagSeed");
    table.insert(ProceduralDistributions.list.CrateFarming.items, 8);
    table.insert(ProceduralDistributions.list.CrateFarming.items, "SHF.LettuceBagSeed");
    table.insert(ProceduralDistributions.list.CrateFarming.items, 8);
end

--Garden store
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, "SHF.AvocadoBagSeed");
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, 20);
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, "SHF.PepperBagSeed");
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, 20);
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, "SHF.EggplantBagSeed");
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, 20);
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, "SHF.LeekBagSeed");
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, 20);
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, "SHF.OnionBagSeed");
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, 20);
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, "SHF.WatermelonBagSeed");
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, 20);
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, "SHF.ZucchiniBagSeed");
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, 20);
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, "SHF.AppleBagSeed");
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, 20);
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, "SHF.BananaBagSeed");
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, 20);
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, "SHF.BerryBlackBagSeed");
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, 20);
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, "SHF.BerryBlueBagSeed");
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, 20);
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, "SHF.CherryBagSeed");
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, 20);
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, "SHF.GrapefruitBagSeed");
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, 20);
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, "SHF.GrapesBagSeed");
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, 20);
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, "SHF.LemonBagSeed");
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, 20);
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, "SHF.LimeBagSeed");
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, 20);
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, "SHF.MangoBagSeed");
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, 20);
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, "SHF.OrangeBagSeed");
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, 20);
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, "SHF.PeachBagSeed");
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, 20);
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, "SHF.PearBagSeed");
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, 20);
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, "SHF.PineappleBagSeed");
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, 20);
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, "SHF.TeaBagSeed");
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, 20);
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, "SHF.TeaBagSeed");
table.insert(ProceduralDistributions.list.GardenStoreMisc.items, 20);

--Soul Filcher's Farming compat
if (getActivatedMods():contains("FarmingTime")) then

else
    table.insert(ProceduralDistributions.list.GardenStoreMisc.items, "SHF.CornBagSeed");
    table.insert(ProceduralDistributions.list.GardenStoreMisc.items, 20);
    table.insert(ProceduralDistributions.list.GardenStoreMisc.items, "SHF.LettuceBagSeed");
    table.insert(ProceduralDistributions.list.GardenStoreMisc.items, 20);
end


--Gigamart Farming
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, "SHF.AvocadoBagSeed");
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, 4);
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, "SHF.PepperBagSeed");
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, 4);
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, "SHF.EggplantBagSeed");
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, 4);
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, "SHF.LeekBagSeed");
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, 4);
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, "SHF.OnionBagSeed");
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, 4);
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, "SHF.WatermelonBagSeed");
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, 4);
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, "SHF.ZucchiniBagSeed");
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, 4);
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, "SHF.AppleBagSeed");
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, 4);
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, "SHF.BananaBagSeed");
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, 4);
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, "SHF.BerryBlackBagSeed");
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, 4);
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, "SHF.BerryBlueBagSeed");
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, 4);
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, "SHF.CherryBagSeed");
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, 4);
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, "SHF.GrapefruitBagSeed");
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, 4);
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, "SHF.GrapesBagSeed");
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, 4);
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, "SHF.LemonBagSeed");
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, 4);
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, "SHF.LimeBagSeed");
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, 4);
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, "SHF.MangoBagSeed");
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, 4);
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, "SHF.OrangeBagSeed");
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, 4);
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, "SHF.PeachBagSeed");
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, 4);
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, "SHF.PearBagSeed");
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, 4);
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, "SHF.PineappleBagSeed");
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, 4);
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, "SHF.TeaBagSeed");
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, 4);
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, "SHF.CoffeeBagSeed");
table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, 4);

--Soul Filcher's Farming compat
if (getActivatedMods():contains("FarmingTime")) then

else
    table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, "SHF.CornBagSeed");
    table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, 4);
    table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, "SHF.LettuceBagSeed");
    table.insert(ProceduralDistributions["list"]["GigamartFarming"].items, 4);
end


--Homesteading
table.insert(ProceduralDistributions["list"]["Homesteading"].items, "SHF.AvocadoBagSeed");
table.insert(ProceduralDistributions["list"]["Homesteading"].items, 4);
table.insert(ProceduralDistributions["list"]["Homesteading"].items, "SHF.PepperBagSeed");
table.insert(ProceduralDistributions["list"]["Homesteading"].items, 4);
table.insert(ProceduralDistributions["list"]["Homesteading"].items, "SHF.EggplantBagSeed");
table.insert(ProceduralDistributions["list"]["Homesteading"].items, 4);
table.insert(ProceduralDistributions["list"]["Homesteading"].items, "SHF.LeekBagSeed");
table.insert(ProceduralDistributions["list"]["Homesteading"].items, 4);
table.insert(ProceduralDistributions["list"]["Homesteading"].items, "SHF.OnionBagSeed");
table.insert(ProceduralDistributions["list"]["Homesteading"].items, 4);
table.insert(ProceduralDistributions["list"]["Homesteading"].items, "SHF.WatermelonBagSeed");
table.insert(ProceduralDistributions["list"]["Homesteading"].items, 4);
table.insert(ProceduralDistributions["list"]["Homesteading"].items, "SHF.ZucchiniBagSeed");
table.insert(ProceduralDistributions["list"]["Homesteading"].items, 4);
table.insert(ProceduralDistributions["list"]["Homesteading"].items, "SHF.AppleBagSeed");
table.insert(ProceduralDistributions["list"]["Homesteading"].items, 4);
table.insert(ProceduralDistributions["list"]["Homesteading"].items, "SHF.BananaBagSeed");
table.insert(ProceduralDistributions["list"]["Homesteading"].items, 4);
table.insert(ProceduralDistributions["list"]["Homesteading"].items, "SHF.BerryBlackBagSeed");
table.insert(ProceduralDistributions["list"]["Homesteading"].items, 4);
table.insert(ProceduralDistributions["list"]["Homesteading"].items, "SHF.BerryBlueBagSeed");
table.insert(ProceduralDistributions["list"]["Homesteading"].items, 4);
table.insert(ProceduralDistributions["list"]["Homesteading"].items, "SHF.CherryBagSeed");
table.insert(ProceduralDistributions["list"]["Homesteading"].items, 4);
table.insert(ProceduralDistributions["list"]["Homesteading"].items, "SHF.GrapefruitBagSeed");
table.insert(ProceduralDistributions["list"]["Homesteading"].items, 4);
table.insert(ProceduralDistributions["list"]["Homesteading"].items, "SHF.GrapesBagSeed");
table.insert(ProceduralDistributions["list"]["Homesteading"].items, 4);
table.insert(ProceduralDistributions["list"]["Homesteading"].items, "SHF.LemonBagSeed");
table.insert(ProceduralDistributions["list"]["Homesteading"].items, 4);
table.insert(ProceduralDistributions["list"]["Homesteading"].items, "SHF.LimeBagSeed");
table.insert(ProceduralDistributions["list"]["Homesteading"].items, 4);
table.insert(ProceduralDistributions["list"]["Homesteading"].items, "SHF.MangoBagSeed");
table.insert(ProceduralDistributions["list"]["Homesteading"].items, 4);
table.insert(ProceduralDistributions["list"]["Homesteading"].items, "SHF.OrangeBagSeed");
table.insert(ProceduralDistributions["list"]["Homesteading"].items, 4);
table.insert(ProceduralDistributions["list"]["Homesteading"].items, "SHF.PeachBagSeed");
table.insert(ProceduralDistributions["list"]["Homesteading"].items, 4);
table.insert(ProceduralDistributions["list"]["Homesteading"].items, "SHF.PearBagSeed");
table.insert(ProceduralDistributions["list"]["Homesteading"].items, 4);
table.insert(ProceduralDistributions["list"]["Homesteading"].items, "SHF.PineappleBagSeed");
table.insert(ProceduralDistributions["list"]["Homesteading"].items, 4);
table.insert(ProceduralDistributions["list"]["Homesteading"].items, "SHF.TeaBagSeed");
table.insert(ProceduralDistributions["list"]["Homesteading"].items, 4);
table.insert(ProceduralDistributions["list"]["Homesteading"].items, "SHF.CoffeeBagSeed");
table.insert(ProceduralDistributions["list"]["Homesteading"].items, 4);

--Soul Filcher's Farming compat
if (getActivatedMods():contains("FarmingTime")) then

else
    table.insert(ProceduralDistributions["list"]["Homesteading"].items, "SHF.CornBagSeed");
    table.insert(ProceduralDistributions["list"]["Homesteading"].items, 4);
    table.insert(ProceduralDistributions["list"]["Homesteading"].items, "SHF.LettuceBagSeed");
    table.insert(ProceduralDistributions["list"]["Homesteading"].items, 4);
end

    -- =====================
    --    Bags/Containers
    -- =====================

table.insert(SuburbsDistributions.Bag_SurvivorBag.items, "SHF.AvocadoBagSeed");
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, 5);
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, "SHF.PepperBagSeed");
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, 5);
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, "SHF.EggplantBagSeed");
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, 5);
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, "SHF.LeekBagSeed");
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, 5);
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, "SHF.OnionBagSeed");
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, 5);
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, "SHF.WatermelonBagSeed");
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, 5);
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, "SHF.ZucchiniBagSeed");
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, 5);
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, "SHF.AppleBagSeed");
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, 5);
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, "SHF.BananaBagSeed");
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, 5);
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, "SHF.BerryBlackBagSeed");
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, 5);
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, "SHF.BerryBlueBagSeed");
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, 5);
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, "SHF.CherryBagSeed");
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, 5);
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, "SHF.GrapefruitBagSeed");
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, 5);
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, "SHF.GrapesBagSeed");
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, 5);
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, "SHF.LemonBagSeed");
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, 5);
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, "SHF.LimeBagSeed");
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, 5);
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, "SHF.MangoBagSeed");
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, 5);
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, "SHF.OrangeBagSeed");
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, 5);
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, "SHF.PeachBagSeed");
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, 5);
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, "SHF.PearBagSeed");
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, 5);
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, "SHF.PineappleBagSeed");
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, 5);
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, "SHF.TeaBagSeed");
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, 5);
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, "SHF.CoffeeBagSeed");
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, 5);

--Soul Filcher's Farming compat
if (getActivatedMods():contains("FarmingTime")) then

else
    table.insert(SuburbsDistributions.Bag_SurvivorBag.items, "SHF.CornBagSeed");
    table.insert(SuburbsDistributions.Bag_SurvivorBag.items, 5);
    table.insert(SuburbsDistributions.Bag_SurvivorBag.items, "SHF.LettuceBagSeed");
    table.insert(SuburbsDistributions.Bag_SurvivorBag.items, 5);
end



--Seed Bag
table.insert(SuburbsDistributions["SeedBag"].items, "SHF.AvocadoBagSeed");
table.insert(SuburbsDistributions["SeedBag"].items, 8);
table.insert(SuburbsDistributions["SeedBag"].items, "SHF.PepperBagSeed");
table.insert(SuburbsDistributions["SeedBag"].items, 8);
table.insert(SuburbsDistributions["SeedBag"].items, "SHF.EggplantBagSeed");
table.insert(SuburbsDistributions["SeedBag"].items, 8);
table.insert(SuburbsDistributions["SeedBag"].items, "SHF.LeekBagSeed");
table.insert(SuburbsDistributions["SeedBag"].items, 8);
table.insert(SuburbsDistributions["SeedBag"].items, "SHF.OnionBagSeed");
table.insert(SuburbsDistributions["SeedBag"].items, 8);
table.insert(SuburbsDistributions["SeedBag"].items, "SHF.WatermelonBagSeed");
table.insert(SuburbsDistributions["SeedBag"].items, 8);
table.insert(SuburbsDistributions["SeedBag"].items, "SHF.ZucchiniBagSeed");
table.insert(SuburbsDistributions["SeedBag"].items, 8);
table.insert(SuburbsDistributions["SeedBag"].items, "SHF.AppleBagSeed");
table.insert(SuburbsDistributions["SeedBag"].items, 8);
table.insert(SuburbsDistributions["SeedBag"].items, "SHF.BananaBagSeed");
table.insert(SuburbsDistributions["SeedBag"].items, 8);
table.insert(SuburbsDistributions["SeedBag"].items, "SHF.BerryBlackBagSeed");
table.insert(SuburbsDistributions["SeedBag"].items, 8);
table.insert(SuburbsDistributions["SeedBag"].items, "SHF.BerryBlueBagSeed");
table.insert(SuburbsDistributions["SeedBag"].items, 8);
table.insert(SuburbsDistributions["SeedBag"].items, "SHF.CherryBagSeed");
table.insert(SuburbsDistributions["SeedBag"].items, 8);
table.insert(SuburbsDistributions["SeedBag"].items, "SHF.GrapefruitBagSeed");
table.insert(SuburbsDistributions["SeedBag"].items, 8);
table.insert(SuburbsDistributions["SeedBag"].items, "SHF.GrapesBagSeed");
table.insert(SuburbsDistributions["SeedBag"].items, 8);
table.insert(SuburbsDistributions["SeedBag"].items, "SHF.LemonBagSeed");
table.insert(SuburbsDistributions["SeedBag"].items, 8);
table.insert(SuburbsDistributions["SeedBag"].items, "SHF.LimeBagSeed");
table.insert(SuburbsDistributions["SeedBag"].items, 8);
table.insert(SuburbsDistributions["SeedBag"].items, "SHF.MangoBagSeed");
table.insert(SuburbsDistributions["SeedBag"].items, 8);
table.insert(SuburbsDistributions["SeedBag"].items, "SHF.OrangeBagSeed");
table.insert(SuburbsDistributions["SeedBag"].items, 8);
table.insert(SuburbsDistributions["SeedBag"].items, "SHF.PeachBagSeed");
table.insert(SuburbsDistributions["SeedBag"].items, 8);
table.insert(SuburbsDistributions["SeedBag"].items, "SHF.PearBagSeed");
table.insert(SuburbsDistributions["SeedBag"].items, 8);
table.insert(SuburbsDistributions["SeedBag"].items, "SHF.PineappleBagSeed");
table.insert(SuburbsDistributions["SeedBag"].items, 8);
table.insert(SuburbsDistributions["SeedBag"].items, "SHF.TeaBagSeed");
table.insert(SuburbsDistributions["SeedBag"].items, 8);
table.insert(SuburbsDistributions["SeedBag"].items, "SHF.CoffeeBagSeed");
table.insert(SuburbsDistributions["SeedBag"].items, 8);

--Soul Filcher's Farming compat
if (getActivatedMods():contains("FarmingTime")) then

else
    table.insert(SuburbsDistributions["SeedBag"].items, "SHF.CornBagSeed");
    table.insert(SuburbsDistributions["SeedBag"].items, 8);
    table.insert(SuburbsDistributions["SeedBag"].items, "SHF.LettuceBagSeed");
    table.insert(SuburbsDistributions["SeedBag"].items, 8);
end



--Tool Store Farming
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, "SHF.AvocadoBagSeed");
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, 6);
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, "SHF.PepperBagSeed");
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, 6);
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, "SHF.EggplantBagSeed");
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, 6);
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, "SHF.LeekBagSeed");
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, 6);
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, "SHF.OnionBagSeed");
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, 6);
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, "SHF.WatermelonBagSeed");
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, 6);
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, "SHF.ZucchiniBagSeed");
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, 6);
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, "SHF.AppleBagSeed");
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, 6);
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, "SHF.BananaBagSeed");
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, 6);
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, "SHF.BerryBlackBagSeed");
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, 6);
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, "SHF.BerryBlueBagSeed");
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, 6);
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, "SHF.CherryBagSeed");
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, 6);
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, "SHF.GrapefruitBagSeed");
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, 6);
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, "SHF.GrapesBagSeed");
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, 6);
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, "SHF.LemonBagSeed");
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, 6);
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, "SHF.LimeBagSeed");
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, 6);
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, "SHF.MangoBagSeed");
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, 6);
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, "SHF.OrangeBagSeed");
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, 6);
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, "SHF.PeachBagSeed");
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, 6);
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, "SHF.PearBagSeed");
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, 6);
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, "SHF.PineappleBagSeed");
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, 6);
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, "SHF.TeaBagSeed");
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, 6);
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, "SHF.CoffeeBagSeed");
table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, 6);

--Soul Filcher's Farming compat
if (getActivatedMods():contains("FarmingTime")) then

else
    table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, "SHF.CornBagSeed");
    table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, 6);
    table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, "SHF.LettuceBagSeed");
    table.insert(ProceduralDistributions["list"]["ToolStoreFarming"].items, 6);
end


table.insert(ProceduralDistributions["list"]["BakeryKitchenFridge"].items,"WPSkillLeterature.TeaLeaves");
table.insert(ProceduralDistributions["list"]["BakeryKitchenFridge"].items, 1);
table.insert(ProceduralDistributions["list"]["BandPracticeFridge"].items,"WPSkillLeterature.TeaLeaves");
table.insert(ProceduralDistributions["list"]["BandPracticeFridge"].items, 6);
table.insert(ProceduralDistributions["list"]["BurgerKitchenFridge"].items,"WPSkillLeterature.TeaLeaves");
table.insert(ProceduralDistributions["list"]["BurgerKitchenFridge"].items, 4);
table.insert(ProceduralDistributions["list"]["CafeKitchenFridge"].items,"WPSkillLeterature.TeaLeaves");
table.insert(ProceduralDistributions["list"]["CafeKitchenFridge"].items, 5);
table.insert(ProceduralDistributions["list"]["CrateTea"].items,"WPSkillLeterature.TeaLeaves");
table.insert(ProceduralDistributions["list"]["CrateTea"].items, 20);
table.insert(ProceduralDistributions["list"]["FridgeBreakRoom"].items,"WPSkillLeterature.TeaLeaves");
table.insert(ProceduralDistributions["list"]["FridgeBreakRoom"].items, 1);
table.insert(ProceduralDistributions["list"]["FridgeGeneric"].items,"WPSkillLeterature.TeaLeaves");
table.insert(ProceduralDistributions["list"]["FridgeGeneric"].items, 1);
table.insert(ProceduralDistributions["list"]["FridgeOffice"].items,"WPSkillLeterature.TeaLeaves");
table.insert(ProceduralDistributions["list"]["FridgeOffice"].items, 8);
table.insert(ProceduralDistributions["list"]["FridgeOther"].items,"WPSkillLeterature.TeaLeaves");
table.insert(ProceduralDistributions["list"]["FridgeOther"].items, 1);
table.insert(ProceduralDistributions["list"]["FridgeRich"].items,"WPSkillLeterature.TeaLeaves");
table.insert(ProceduralDistributions["list"]["FridgeRich"].items, 1);
table.insert(ProceduralDistributions["list"]["SpiffosKitchenFridge"].items,"WPSkillLeterature.TeaLeaves");
table.insert(ProceduralDistributions["list"]["SpiffosKitchenFridge"].items, 20);
table.insert(ProceduralDistributions["list"]["SushiKitchenFridge"].items,"WPSkillLeterature.TeaLeaves");
table.insert(ProceduralDistributions["list"]["SushiKitchenFridge"].items, 1);
table.insert(ProceduralDistributions["list"]["WesternKitchenFridge"].items,"WPSkillLeterature.TeaLeaves");
table.insert(ProceduralDistributions["list"]["WesternKitchenFridge"].items, 1);

table.insert(ProceduralDistributions["list"]["BakeryKitchenFridge"].items,"WPSkillLeterature.CoffeeBeans");
table.insert(ProceduralDistributions["list"]["BakeryKitchenFridge"].items, 1);
table.insert(ProceduralDistributions["list"]["BandPracticeFridge"].items,"WPSkillLeterature.CoffeeBeans");
table.insert(ProceduralDistributions["list"]["BandPracticeFridge"].items, 6);
table.insert(ProceduralDistributions["list"]["BurgerKitchenFridge"].items,"WPSkillLeterature.CoffeeBeans");
table.insert(ProceduralDistributions["list"]["BurgerKitchenFridge"].items, 4);
table.insert(ProceduralDistributions["list"]["CafeKitchenFridge"].items,"WPSkillLeterature.CoffeeBeans");
table.insert(ProceduralDistributions["list"]["CafeKitchenFridge"].items, 5);
table.insert(ProceduralDistributions["list"]["CrateCoffee"].items,"WPSkillLeterature.CoffeeBeans");
table.insert(ProceduralDistributions["list"]["CrateCoffee"].items, 20);
table.insert(ProceduralDistributions["list"]["FridgeBreakRoom"].items,"WPSkillLeterature.CoffeeBeans");
table.insert(ProceduralDistributions["list"]["FridgeBreakRoom"].items, 1);
table.insert(ProceduralDistributions["list"]["FridgeGeneric"].items,"WPSkillLeterature.CoffeeBeans");
table.insert(ProceduralDistributions["list"]["FridgeGeneric"].items, 1);
table.insert(ProceduralDistributions["list"]["FridgeOffice"].items,"WPSkillLeterature.CoffeeBeans");
table.insert(ProceduralDistributions["list"]["FridgeOffice"].items, 8);
table.insert(ProceduralDistributions["list"]["FridgeOther"].items,"WPSkillLeterature.CoffeeBeans");
table.insert(ProceduralDistributions["list"]["FridgeOther"].items, 1);
table.insert(ProceduralDistributions["list"]["FridgeRich"].items,"WPSkillLeterature.CoffeeBeans");
table.insert(ProceduralDistributions["list"]["FridgeRich"].items, 1);
table.insert(ProceduralDistributions["list"]["SpiffosKitchenFridge"].items,"WPSkillLeterature.CoffeeBeans");
table.insert(ProceduralDistributions["list"]["SpiffosKitchenFridge"].items, 20);
table.insert(ProceduralDistributions["list"]["SushiKitchenFridge"].items,"WPSkillLeterature.CoffeeBeans");
table.insert(ProceduralDistributions["list"]["SushiKitchenFridge"].items, 1);
table.insert(ProceduralDistributions["list"]["WesternKitchenFridge"].items,"WPSkillLeterature.CoffeeBeans");
table.insert(ProceduralDistributions["list"]["WesternKitchenFridge"].items, 1);

table.insert(ProceduralDistributions["list"]["BakeryKitchenFridge"].items,"WPSkillLeterature.CoffeeBeansRoasted");
table.insert(ProceduralDistributions["list"]["BakeryKitchenFridge"].items, 1);
table.insert(ProceduralDistributions["list"]["BandPracticeFridge"].items,"WPSkillLeterature.CoffeeBeansRoasted");
table.insert(ProceduralDistributions["list"]["BandPracticeFridge"].items, 6);
table.insert(ProceduralDistributions["list"]["BurgerKitchenFridge"].items,"WPSkillLeterature.CoffeeBeansRoasted");
table.insert(ProceduralDistributions["list"]["BurgerKitchenFridge"].items, 4);
table.insert(ProceduralDistributions["list"]["CafeKitchenFridge"].items,"WPSkillLeterature.CoffeeBeansRoasted");
table.insert(ProceduralDistributions["list"]["CafeKitchenFridge"].items, 5);
table.insert(ProceduralDistributions["list"]["CrateCoffee"].items,"WPSkillLeterature.CoffeeBeansRoasted");
table.insert(ProceduralDistributions["list"]["CrateCoffee"].items, 20);
table.insert(ProceduralDistributions["list"]["FridgeBreakRoom"].items,"WPSkillLeterature.CoffeeBeansRoasted");
table.insert(ProceduralDistributions["list"]["FridgeBreakRoom"].items, 1);
table.insert(ProceduralDistributions["list"]["FridgeGeneric"].items,"WPSkillLeterature.CoffeeBeansRoasted");
table.insert(ProceduralDistributions["list"]["FridgeGeneric"].items, 1);
table.insert(ProceduralDistributions["list"]["FridgeOffice"].items,"WPSkillLeterature.CoffeeBeansRoasted");
table.insert(ProceduralDistributions["list"]["FridgeOffice"].items, 8);
table.insert(ProceduralDistributions["list"]["FridgeOther"].items,"WPSkillLeterature.CoffeeBeansRoasted");
table.insert(ProceduralDistributions["list"]["FridgeOther"].items, 1);
table.insert(ProceduralDistributions["list"]["FridgeRich"].items,"WPSkillLeterature.CoffeeBeansRoasted");
table.insert(ProceduralDistributions["list"]["FridgeRich"].items, 1);
table.insert(ProceduralDistributions["list"]["SpiffosKitchenFridge"].items,"WPSkillLeterature.CoffeeBeansRoasted");
table.insert(ProceduralDistributions["list"]["SpiffosKitchenFridge"].items, 20);
table.insert(ProceduralDistributions["list"]["SushiKitchenFridge"].items,"WPSkillLeterature.CoffeeBeansRoasted");
table.insert(ProceduralDistributions["list"]["SushiKitchenFridge"].items, 1);
table.insert(ProceduralDistributions["list"]["WesternKitchenFridge"].items,"WPSkillLeterature.CoffeeBeansRoasted");
table.insert(ProceduralDistributions["list"]["WesternKitchenFridge"].items, 1);

