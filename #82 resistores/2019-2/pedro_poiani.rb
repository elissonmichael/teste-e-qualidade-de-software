
class Testecores
    
    def self.value(color)
        id_color = %w[preto marrom vermelho
        
        laranja amarelo verde
    
        azul violeta cinza
    
        branco
      ]
     
      color.map { |color| id_color.index(color) }.join.to_i
    
    end
  end
