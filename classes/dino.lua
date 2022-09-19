Dino = Classe:extend()

function Dino:new()
   self.img = love.graphics.newImage("recursos/imagens/dino.png")
   self.largura = self.img:getWidth()
   self.altura = self.img:getHeight()
   self.x = 50
   self.y = ALTURA_TELA - self.altura - 50
   self.vel_y = 0
   self.g = 15
   self.no_chao = true
   self.vidas = 3
end

function Dino:update(dt)
   self.y = self.y + self.vel_y*dt

   if self.no_chao then -- no chão
      if love.keyboard.isDown("space") then
         self.vel_y = -500
         self.no_chao = false
      end
   else --no ar
      self.vel_y = self.vel_y + self.g

      if self.y > ALTURA_TELA - self.altura - 50 then
         self.y = ALTURA_TELA - self.altura - 50
         self.vel_y = 0
         self.no_chao = true
      end
   end
end

function Dino:draw()
   love.graphics.draw(self.img, self.x, self.y)

   love.graphics.setColor(0,0,0)
   love.graphics.print("Vidas: ".. self.vidas, 50, 50)
   love.graphics.setColor(1,1,1)
end