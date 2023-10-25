function Recipe.OnGiveXP.SHFFarming3(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Farming, 3);
end

function Recipe.OnGiveXP.SHFFarming5(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Farming, 5);
end

function Recipe.OnGiveXP.SHFFarming10(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Farming, 10);
end