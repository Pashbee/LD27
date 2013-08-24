debugstatus = class:new()

function debugstatus:init(stat)
	self.active = stat
end


function debugstatus:draw()
	local msx, msy = love.mouse.getPosition( )
	

	love.graphics.setColor(255, 255, 255)
	if self.active then
		love.graphics.print("Current FPS: "..tostring(love.timer.getFPS( )),PlayerCam.x + 10, PlayerCam.y + 10)
		love.graphics.print("Mouse X POS: "..tostring(msx), PlayerCam.x + 10,PlayerCam.y + 25)
		love.graphics.print("Mouse Y POS: "..tostring(msy), PlayerCam.x + 10,PlayerCam.y + 40)
		love.graphics.print("PlayerCamX: "..tostring(PlayerCam.x), PlayerCam.x + 10,PlayerCam.y + 55)
		love.graphics.print("PlayerCamY: "..tostring(PlayerCam.y), PlayerCam.x + 10,PlayerCam.y + 70)
		love.graphics.print("Hero X: "..tostring(Hero.x), PlayerCam.x + 10,PlayerCam.y + 85)
		love.graphics.print("Hero Y: "..tostring(Hero.y), PlayerCam.x + 10,PlayerCam.y + 100)		
	end
	love.graphics.setColor(255,255,255)
end

function debugstatus:keypressed(key)
	-- this will toggle the debug settings. Settings to be drawn will be in draw function.
	if key == "f1" then 
		self.active = not self.active 
	end 
	
end
