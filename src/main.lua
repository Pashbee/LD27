require "class"
require "debugstatus"
require "camera" 
require "collision"
require "timer"
require "score"
require "floatingcombattext"
require "player"
require "resources"
require "world"
require "tree"




function love.load()

	-- love.mouse.setVisible(false)
	PlayerCam = camera:new()
	DB = debugstatus:new(true)
	Hero = player:new( love.graphics.getWidth() / 2,love.graphics.getHeight() / 2 )
	Level = world:new()

	treeSpawn(100,200)
	treeSpawn(200,400)
	treeSpawn(500,200)
	love.graphics.setBackgroundColor(106,172,43)
end

function love.update(dt)
	PlayerCam:follow(Hero)
	Hero:control(dt)
	treeUpdate()
end

function love.draw()
	PlayerCam:set()
	--Level:draw()
	Hero:draw()
	treeDraw()
	DB:draw()
	-- love.graphics.draw(spr_mcursor_f1, msx - spr_mcursor_f1:getWidth()/2, msy - spr_mcursor_f1:getHeight()/2)
	PlayerCam:unset()
end

function love.keypressed(key)
	if key == "escape" then
		love.event.push("quit")
	end 
end

function love.keyreleased(key)
	
end 

function love.mousepressed(x, y, button)
   
end