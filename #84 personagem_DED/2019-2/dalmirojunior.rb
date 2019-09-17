class Personagem
   
    attr_reader :nome,:destreza, :inteligencia, :vida, :forca, :sabedoria, :carisma
    
    def initialize(nome)
        @nome = nome
        criar_forca
        criar_destreza
        criar_constituicao
        modificador_constituicao
        criar_inteligencia
        criar_sabedoria
        criar_carisma
        atributos
     end

     def criar_forca
        dado = []
        i = 0
        while i < 4
            dado[i] = rand(1..6)
            i = i + 1; 
        end
            dado.delete_at(dado.index(dado.min))
             @forca = dado.sum
         end

        def criar_constituicao
            dado = []
            i = 0
            while i < 4
                dado[i] = rand(1..6)
                i = i + 1
            end
            dado.delete_at(dado.index(dado.min))
            @constituicao = dado.sum
    end

    def criar_destreza
        dado = []
        i = 0
        while i < 4
            dado[i] = rand(1..6)
            i = i + 1
        end
        dado.delete_at(dado.index(dado.min))
        @destreza = dado.sum
    end

    def modificador_constituicao
        hp = (@constituicao) - (10)
        @modificador = (hp) / (2)
        @vida = (10) + (@modificador)
    end

    def criar_inteligencia
            dado = []
            i = 0
            while i < 4
                dado[i] = rand(1..6)
                i = i + 1
            end
            dado.delete_at(dado.index(dado.min))
            @inteligencia = dado.sum
    end

    def criar_sabedoria
        dado = []
        i = 0
        while i < 4
            dado[i] = rand(1..6)
            i = i + 1
        end
        dado.delete_at(dado.index(dado.min))
        @sabedoria = dado.sum
    end

    def criar_carisma
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
    p "Nome: #{@nome}"
    p "Força: #{@forca}"
    p "Inteligencia: #{@inteligencia}"
    p "Carisma: #{@carisma}"
    p "Sabedoria: #{@sabedoria}"
    p "Destreza: #{@destreza}"
    p "Hp: #{@vida}"
    
    end

    bixin = Personagem.new("Dalmiro")

end