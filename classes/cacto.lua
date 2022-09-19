Cacto = Classe:extend()

function Cacto:new()
   self.img = love.graphics.newImage("recursos/imagens/cacto.png")
   self.largura = self.img:getWidth()
   self.altura = self.img:getHeight()
   self.x = LARGURA_TELA
   self.y = ALTURA_TELA - self.altura - 50
end

function Cacto:update(dt)
   self.x = self.x - 250*dt
end

function Cacto:draw()
   love.graphics.draw(self.img, self.x, self.y)
end