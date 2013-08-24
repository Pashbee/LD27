player = class:new()


function player:init( pspawnx,pspawny )

	self.x = pspawnx
	self.y = pspawny
	self.width = 20
	self.height = 50
	self.speed = 4
	self.xvel = 0
	self.yvel = 0
	self.friction = 8
	self.directionR = true 
	self.directionD = true
	--self.playerAnimeFrame = {}
	--self.imageNum = 1
	--self.currentPic = self.playerAnimFrame[self.imageNum]


end 


function player:update()




end

function player:control(dt)

	self.x = self.x + self.xvel
	self.xvel = self.xvel * (1 - math.min(dt*self.friction, 1))
	if love.keyboard.isDown("right") and self.xvel < 100 then
		self.xvel = self.xvel + self.speed * dt
		if not self.directionR then
			self.directionR = true
		end
		self:WalkingAnim(dt)
	end

	if love.keyboard.isDown("left") and self.xvel > -100 then
		self.xvel = self.xvel - self.speed * dt
		if self.directionR then
			self.directionR = not self.directionR
		end
		self:WalkingAnim(dt)
	end
	
	self.y = self.y + self.yvel
	self.yvel = self.yvel * (1 - math.min(dt*self.friction, 1))
	if love.keyboard.isDown("up") and self.yvel < 100 then
		self.yvel = self.yvel - self.speed * dt
		if self.directionD then
			self.directionD = not self.directionD
		end
		self:WalkingAnim(dt)
	end

	if love.keyboard.isDown("down") and self.yvel > -100 then
		self.yvel = self.yvel + self.speed * dt
		if not self.directionD then
			self.directionD = true
		end
		self:WalkingAnim(dt)
	end 
end

function player:WalkingAnim(dt)


end 



function player:collisionCheck()


end 



function player:draw()

--love.graphics.rectangle( "fill",self.x,self.y,self.width,self.height )
	love.graphics.drawq(sprsheet_wizard,spr_wizard_f1,self.x,self.y)


end 


