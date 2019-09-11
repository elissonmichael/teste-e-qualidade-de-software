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
        atributos
     end

        def gerar_forca
            dado = []
            i = 0
            while i < 4
                dado[i] = rand(1..6)
                i = i + 1; 
            end
            dado.delete_at(dado.index(dado.min))
            @forca = dado.sum
         end

         def gerar_destreza
            dado = []
            i = 0
                while i < 4
                    dado[i] = rand(1..6)
                    i = i + 1
                end
            dado.delete_at(dado.index(dado.min))
            @destreza = dado.sum
        end

        def gerar_constituicao
            dado = []
            i = 0
                while i < 4
                    dado[i] = rand(1..6)
                    i = i + 1
                end
            dado.delete_at(dado.index(dado.min))
            @constituicao = dado.sum
        end

        def modificador_constituicao
            hp = (@constituicao - 10)
            modificador = (hp/2).round(half: :up)
            
            @vida = (10 + modificador)
        end

        def gerar_inteligencia
            dado = []
            i = 0
            while i < 4
                dado[i] = rand(1..6)
                i = i + 1
            end
            dado.delete_at(dado.index(dado.min))
            @inteligencia = dado.sum
        end

        def gerar_sabedoria
            dado = []
            i = 0
                while i < 4
                    dado[i] = rand(1..6)
                    i = i + 1
                end
            dado.delete_at(dado.index(dado.min))
            @sabedoria = dado.sum
        end

        def gerar_carisma
            dado = []
            i = 0
                while i < 4
                    dado[i] = rand(1..6)
                    i = i + 1
                end
            dado.delete_at(dado.index(dado.min))
            @carisma = dado.sum
        end

    def atributos
        puts "Nome: #{@nome}"
        puts "Força: #{@forca}"
        puts "Destreza: #{@destreza}"
        puts "Hp: #{@vida}"
        puts "Inteligencia: #{@inteligencia}"
        puts "Sabedoria: #{@sabedoria}"
        puts "Carisma: #{@carisma}"
    end




    matheus = Personagem.new("Matheus")
    
   
    
    
    
  
end


