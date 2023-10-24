--******************************************************************************************
--**                   				USER FOR REFERENCE                  				  **
--**                        			MoCrops                        					  **
--** https://steamcommunity.com/sharedfiles/filedetails/?id=2762018937&searchtext=MoCrops **
--**                                                                                      **
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

--Soul Filcher's Farming compat
if (getActivatedMods():contains("FarmingTime")) then

else
    table.insert(ProceduralDistributions.list.GardenStoreMisc.items, "SHF.CornBagSeed");
    table.insert(ProceduralDistributions.list.GardenStoreMisc.items, 20);
    table.insert(ProceduralDistributions.list.GardenStoreMisc.items, "SHF.LettuceBagSeed");
    table.insert(ProceduralDistributions.list.GardenStoreMisc.items, 20);
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

--Soul Filcher's Farming compat
if (getActivatedMods():contains("FarmingTime")) then

else
    table.insert(SuburbsDistributions.Bag_SurvivorBag.items, "SHF.CornBagSeed");
    table.insert(SuburbsDistributions.Bag_SurvivorBag.items, 5);
    table.insert(SuburbsDistributions.Bag_SurvivorBag.items, "SHF.LettuceBagSeed");
    table.insert(SuburbsDistributions.Bag_SurvivorBag.items, 5);
end


table.insert(SuburbsDistributions.SeedBag.items, "SHF.AvocadoBagSeed");
table.insert(SuburbsDistributions.SeedBag.items, 20);
table.insert(SuburbsDistributions.SeedBag.items, "SHF.PepperBagSeed");
table.insert(SuburbsDistributions.SeedBag.items, 20);
table.insert(SuburbsDistributions.SeedBag.items, "SHF.EggplantBagSeed");
table.insert(SuburbsDistributions.SeedBag.items, 20);
table.insert(SuburbsDistributions.SeedBag.items, "SHF.LeekBagSeed");
table.insert(SuburbsDistributions.SeedBag.items, 20);
table.insert(SuburbsDistributions.SeedBag.items, "SHF.OnionBagSeed");
table.insert(SuburbsDistributions.SeedBag.items, 20);
table.insert(SuburbsDistributions.SeedBag.items, "SHF.WatermelonBagSeed");
table.insert(SuburbsDistributions.SeedBag.items, 20);
table.insert(SuburbsDistributions.SeedBag.items, "SHF.ZucchiniBagSeed");
table.insert(SuburbsDistributions.SeedBag.items, 20);
table.insert(SuburbsDistributions.SeedBag.items, "SHF.AppleBagSeed");
table.insert(SuburbsDistributions.SeedBag.items, 20);
table.insert(SuburbsDistributions.SeedBag.items, "SHF.BananaBagSeed");
table.insert(SuburbsDistributions.SeedBag.items, 20);
table.insert(SuburbsDistributions.SeedBag.items, "SHF.BerryBlackBagSeed");
table.insert(SuburbsDistributions.SeedBag.items, 20);
table.insert(SuburbsDistributions.SeedBag.items, "SHF.BerryBlueBagSeed");
table.insert(SuburbsDistributions.SeedBag.items, 20);
table.insert(SuburbsDistributions.SeedBag.items, "SHF.CherryBagSeed");
table.insert(SuburbsDistributions.SeedBag.items, 20);
table.insert(SuburbsDistributions.SeedBag.items, "SHF.GrapefruitBagSeed");
table.insert(SuburbsDistributions.SeedBag.items, 20);
table.insert(SuburbsDistributions.SeedBag.items, "SHF.GrapesBagSeed");
table.insert(SuburbsDistributions.SeedBag.items, 20);
table.insert(SuburbsDistributions.SeedBag.items, "SHF.LemonBagSeed");
table.insert(SuburbsDistributions.SeedBag.items, 20);
table.insert(SuburbsDistributions.SeedBag.items, "SHF.LimeBagSeed");
table.insert(SuburbsDistributions.SeedBag.items, 20);
table.insert(SuburbsDistributions.SeedBag.items, "SHF.MangoBagSeed");
table.insert(SuburbsDistributions.SeedBag.items, 20);
table.insert(SuburbsDistributions.SeedBag.items, "SHF.OrangeBagSeed");
table.insert(SuburbsDistributions.SeedBag.items, 20);
table.insert(SuburbsDistributions.SeedBag.items, "SHF.PeachBagSeed");
table.insert(SuburbsDistributions.SeedBag.items, 20);
table.insert(SuburbsDistributions.SeedBag.items, "SHF.PearBagSeed");
table.insert(SuburbsDistributions.SeedBag.items, 20);
table.insert(SuburbsDistributions.SeedBag.items, "SHF.PineappleBagSeed");
table.insert(SuburbsDistributions.SeedBag.items, 20);

--Soul Filcher's Farming compat
if (getActivatedMods():contains("FarmingTime")) then

else
    table.insert(SuburbsDistributions.SeedBag.items, "SHF.CornBagSeed");
    table.insert(SuburbsDistributions.SeedBag.items, 20);
    table.insert(SuburbsDistributions.SeedBag.items, "SHF.LettuceBagSeed");
    table.insert(SuburbsDistributions.SeedBag.items, 20);
end