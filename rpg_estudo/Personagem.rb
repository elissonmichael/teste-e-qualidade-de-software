class Personagem
    attr_reader :nome, :tipo, :ataque_basico, :vida, :vivo
    def initialize(nome, tipo, ataque_basico, vida)
        @nome = nome
        @tipo = tipo
        @ataque_basico = ataque_basico
        @vida = vida
        @status = true
    end

    def atacar(personagem)
        personagem.perde_vida(@ataque_basico)
    end

    def perde_vida(valor)
        @vida -= valor
        if @vida <= 0
            morrer()
        end
    end

    def morrer()
        @vivo = false
    end

    def assassinar(guilda)
        guilda.remover_aleatorio()
    end
end