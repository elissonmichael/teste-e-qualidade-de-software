class Resistor
    COLORS = %w(
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
        vetor.map {|color| COLORS.index(color)}.join.to_i
    end
end