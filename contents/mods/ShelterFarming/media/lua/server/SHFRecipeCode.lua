function Recipe.OnGiveXP.SHFFarming3(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Farming, 3);
end

function Recipe.OnGiveXP.SHFFarming5(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Farming, 5);
end

function Recipe.OnGiveXP.SHFFarming10(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Farming, 10);
end

function Recipe.OnGiveXP.SHFCooking3(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Cooking, 3);
end

function Recipe.OnGiveXP.SHFCooking5(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Cooking, 5);
end

function Recipe.OnGiveXP.SHFCooking10(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Cooking, 10);
end

-- here is all skills in game ????
function Recipe.OnGiveXP.SHFTest10(recipe, ingredients, result, player)
	local xp = 100
	if true then
		
		-- crafting skills
		player:getXp():AddXP(Perks.Woodwork, xp);
		-- player:getXp():AddXP(Perks.Cooking, xp * 4);
		-- player:getXp():AddXP(Perks.Farming, xp);
		player:getXp():AddXP(Perks.Doctor, xp);
		player:getXp():AddXP(Perks.Electricity, xp);
		player:getXp():AddXP(Perks.MetalWelding, xp);
		player:getXp():AddXP(Perks.Mechanics, xp);
		-- player:getXp():AddXP(Perks.Tailoring, xp * 2);

		-- fight
		player:getXp():AddXP(Perks.Axe, xp * 2);
		-- player:getXp():AddXP(Perks.Blunt, xp );
		player:getXp():AddXP(Perks.Spear, xp * 3);
		-- player:getXp():AddXP(Perks.LongBlade, xp);
		-- player:getXp():AddXP(Perks.SmallBlade, xp);
		-- player:getXp():AddXP(Perks.SmallBlunt, xp);

		-- weapon
		-- player:getXp():AddXP(Perks.Aiming, xp);
		-- player:getXp():AddXP(Perks.Reloading, xp);


		-- player:getXp():AddXP(Perks.Fishing, xp);
		-- player:getXp():AddXP(Perks.Trapping, xp);
		-- player:getXp():AddXP(Perks.PlantScavenging, xp);

		-- player:getXp():AddXP(Perks.Sprinting, 10);
		-- player:getXp():AddXP(Perks.Nimble, 15);

		-- player:getXp():AddXP(Perks.Maintenance, 25);

		-- player:getXp():AddXP(Perks.Blacksmith, xp);
	end
end

-- Lifestyle: Hobbies
function Recipe.OnGiveXP.SHFTest12(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Dancing, 450);
end

-- Lifestyle: Hobbies
function Recipe.OnGiveXP.SHFTest13(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Meditation, 450);
end

-- aiming
function Recipe.OnGiveXP.SHFTest14(recipe, ingredients, result, player)
	-- weapon
	player:getXp():AddXP(Perks.Aiming, 250);
	player:getXp():AddXP(Perks.Reloading, 260);
	MapObjectTestFarming()
end

-- Lifestyle: Hobbies
function Recipe.OnGiveXP.SHFTest15(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Music, 450);
end

-- str
function Recipe.OnGiveXP.SHFTest16(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Strength, 3540);
    player:getXp():AddXP(Perks.Fitness, 2540);
end