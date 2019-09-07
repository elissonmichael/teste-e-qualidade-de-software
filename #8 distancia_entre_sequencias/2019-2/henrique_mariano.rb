class DistanciaEntreSequencias
    def self.calcular(palavra1 , palavra2)
        if palavra1.size == palavra2.size
            resposta = 0
            for letra in 0..palavra1.size - 1
                if palavra1[letra] != palavra2[letra]
                    resposta += 1
                end
            end
            return resposta
        else
            raise ArgumentError
        end    
        
    end
end
