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

-- crafting skills
function Recipe.OnGiveXP.SHF_Woodwork(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Woodwork, 100);
end
function Recipe.OnGiveXP.SHF_Cooking(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Cooking, 100);
end
function Recipe.OnGiveXP.SHF_Farming(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Farming, 100);
end
function Recipe.OnGiveXP.SHF_Doctor(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Doctor, 100);
end
function Recipe.OnGiveXP.SHF_Electricity(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Electricity, 100);
end
function Recipe.OnGiveXP.SHF_MetalWelding(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.MetalWelding, 100);
end
function Recipe.OnGiveXP.SHF_Mechanics(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Mechanics, 100);
end
function Recipe.OnGiveXP.SHF_Tailoring(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Tailoring, 100);
end
function Recipe.OnGiveXP.SHF_Sprinting(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Sprinting, 100);
end
function Recipe.OnGiveXP.SHF_Nimble(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Nimble, 100);
end


function Recipe.OnGiveXP.SHFTest10(recipe, ingredients, result, player)
	local xp = 100
	if true then

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
function Recipe.OnGiveXP.SHF_Dancing(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Dancing, 100);
end

-- Lifestyle: Hobbies
function Recipe.OnGiveXP.SHF_Meditation(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Meditation, 100);
end

-- aiming
function Recipe.OnGiveXP.SHF_Aiming(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Aiming, 100);
end
function Recipe.OnGiveXP.SHF_Reloading(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Reloading, 100);
end

-- Lifestyle: Hobbies
function Recipe.OnGiveXP.SHF_Music(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Music, 100);
end

-- str
function Recipe.OnGiveXP.SHF_Strength(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Strength, 3200);
end
function Recipe.OnGiveXP.SHF_Fitness(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Fitness, 3200);
end