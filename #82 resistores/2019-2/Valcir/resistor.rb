class Resistor
    RESISTORES = %w(
        preto
        marrom
        vermelho
        laranja
        amarelo
        verde
        azul
        violeta
        cinza
        branco
      )

     def valor(vetor)
        vetor.map {|color| RESISTORES.index(color)}.join.to_i
    end
end 