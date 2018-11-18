class Arvore
    attr_reader :idade, :altura, :frutas

    def initialize
        @idade = 0
        @altura = 0
        @frutas = 0 
        @pegar_fruta = 0
    end

    def passar_um_ano
        @altura += 0.5
        @idade+= 1 

    if self.viva? && idade > 2 

        @frutas = 10 
    else
        @frutas = 0 

        end
    end

    def viva?
        @idade <= 99
    end

    def pegar_uma_fruta

        @pegar_fruta += 1 
        @frutas -= 1 if !@frutas.equal?(0)

    end

    

end