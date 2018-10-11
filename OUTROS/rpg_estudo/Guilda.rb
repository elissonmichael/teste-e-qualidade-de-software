class Guilda
    attr_reader :personagens
    def initialize()
        @personagens = []
    end

    def adicionar_personagem(personagem)
        unless checar_personagem(personagem)
        @personagens << personagem
        end
    end

    def remover_personagem(personagem)
        if checar_personagem(personagem)
        @personagens.delete(personagem)
        else nil
        end
    end

    def total_de_personagens()
        @personagens.size()
    end

    def forca_total()
        @personagens.map(&:ataque_basico).sum
    end

    def vida_total()
        @personagens.map(&:vida).sum
    end

    def remover_aleatorio()
        @personagens.shuffle!.delete(@personagens.first)
    end

    private

    def checar_personagem(personagem)
       # @personagens.select{|p|p.nome == personagem.nome}.empty?
       @personagens.include?(personagem)
    end
    
end