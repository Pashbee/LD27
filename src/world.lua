world = class:new()

function world:init()
	


end 


function world:draw()
	local startblockx = PlayerCam.x - 25
	local startblocky = PlayerCam.y
	local blockx = startblockx
	local blocky = startblocky
	local blockxMPos = blockx + love.graphics.getWidth()
	local blockyMPos = blocky + love.graphics.getHeight()
	local blockxcount = love.graphics.getWidth() / 25
	local blockycount = love.graphics.getHeight() / 25


	for i = 1, blockxcount * blockycount do
		blockx = blockx + 25
		love.graphics.drawq(sprsheet_world, sprworld_grassblock,blockx,blocky)
		if blockx >= blockxMPos then
			blockx = startblockx
			blocky = blocky + 25 
		end 
		
	end 

end 


function world:update()




end