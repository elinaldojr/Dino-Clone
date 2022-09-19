Jogo = Classe:extend()

function Jogo:new()
   dino = Dino()

   listaCactos = {}
   tempoCacto = 0
end

function Jogo:update(dt)
   dino:update(dt)

   tempoCacto = tempoCacto + dt

   if tempoCacto > 1.5 then 
      local cacto = Cacto()
      table.insert(listaCactos, cacto)

      tempoCacto = 0
   end

   for i, cacto in pairs(listaCactos) do
      cacto:update(dt)

      if verificaColisao(dino, cacto) then
         table.remove(listaCactos, i)
         dino.vidas = dino.vidas - 1
      end
   end
end

function Jogo:draw()
   dino:draw()

   for i, cacto in pairs(listaCactos) do
      cacto:draw()
   end
end

function verificaColisao(A, B)
   if A.x < B.x + B.largura and
      A.x + A.largura > B.x and 
      A.y < B.y + B.altura and 
      A.y + A.altura > B.y then
         return true
      end
end