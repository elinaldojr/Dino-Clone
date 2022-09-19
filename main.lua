LARGURA_TELA, ALTURA_TELA = love.graphics.getDimensions()

function love.load()
   Classe = require "classes/classic"
   require "cenas/jogo"
   require "classes/dino"
   require "classes/cacto"

   jogo = Jogo() --new

   love.graphics.setBackgroundColor(1, 1, 1)
end

function love.update(dt)
   jogo:update(dt)
end

function love.draw()
   jogo:draw()
end