function love.load()
    font = love.graphics.newFont("Copyduck.ttf", 30)  -- Usando o caminho relativo
    bac_color = {0, 0, 1}  -- Azul
    toc = 0
end

function love.draw()
    love.graphics.clear(bac_color)
    
    love.graphics.setColor(1, 1, 1)  -- Define a cor do texto para branco
    love.graphics.setFont(font)       -- Define a fonte a ser usada

    local texto = "cuki"
    local larguraTela = love.graphics.getWidth()
    local alturaTela = love.graphics.getHeight()

    -- Calcular largura e altura do texto
    local larguraTexto = font:getWidth(texto)
    local alturaTexto = font:getHeight()

    -- Calcular a posição para centralizar o texto
    local x = (larguraTela - larguraTexto) / 2
    local y = (alturaTela - alturaTexto) / 2
  
    -- Desenhar o texto centralizado
    love.graphics.print(texto, x, y)

    -- Desenhar o valor de toc
    love.graphics.print(toc, 200, 100)
end

function love.update(dt)
    -- Você pode adicionar lógica de física aqui se necessário
    -- O parâmetro dt é o tempo decorrido desde a última atualização
end

function love.mousepressed(x, y, button, istouch, presses)
    if button == 1 then  -- Botão esquerdo do mouse
        toc = toc + 1
        -- Alterar a cor de fundo para um tom diferente
        bac_color = {math.random(), math.random(), math.random()}
    end
end