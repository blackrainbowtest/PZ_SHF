function Recipe.OnGiveXP.SHFFarming3(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Farming, 3);
end