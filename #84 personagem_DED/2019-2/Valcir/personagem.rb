class Personagem
   
    attr_reader :nome, :vida, :forca, :destreza, :inteligencia, :sabedoria, :carisma
    
    def initialize(nome)
        @nome = nome
        gerar_forca
        gerar_destreza
        gerar_constituicao
        modificador_constituicao
        gerar_inteligencia
        gerar_sabedoria
        gerar_carisma
        
     end

     def rodar_dado
        dado = []
        i = 0
        while 1<4
            dado[i] = rand(1..6)
            i = i +1
        end
        dado.delete_at(dado.index(dado.min))
        return dado.sum
    end
   

        def gerar_forca
        
            @forca = rodar_dado
         end

         def gerar_destreza
           
            @destreza = rodar_dado
        end

        def gerar_constituicao
           
            @constituicao = rodar_dado
        end

        def modificador_constituicao
            hp = (@constituicao - 10)
            modificar_hp = (hp/2).round(half: :up)
            
            @vida = (10 + modificar_hp)
        end

        def gerar_inteligencia
           
            @inteligencia = rodar_dado
        end

        def gerar_sabedoria
          
            @sabedoria = rodar_dado
        end

        def gerar_carisma
          
            @carisma = rodar_dado
        end


    
end
