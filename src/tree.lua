trees = {}

	

function treeSpawn( treex,treey )

	table.insert(trees, { x = treex, y = treey, w = 110, h = 120})


end

function treeUpdate()
	local treeSpawnChance = math.random(1,1000)
	-- This function will spawn trees based on player location
	-- need to keep an eye on draw performance to decide when to draw them I guess

	


end 


function treeDraw()

	for i,v in ipairs(trees) do
		love.graphics.draw(spr_tree_f1,v["x"],v["y"])

	end 


end