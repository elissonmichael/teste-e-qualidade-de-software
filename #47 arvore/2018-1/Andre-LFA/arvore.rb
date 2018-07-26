class Arvore
    attr_reader :idade, :altura, :frutas
    def initialize
        @idade = 0
        @altura = 0
        @frutas = 0 
        @frutas_colhidas = 0
    end 

    def passar_um_ano
        if self.viva? && @idade > 2 
            @idade+=1
            @frutas = 10 
        else 
            @frutas = 0
            @idade+= 1 
        end 
    end  

    def pegar_uma_fruta
        @frutas -= 1 
        @frutas_colhidas += 1 
    end 

    def viva?
        @idade <= 5 
    end
end 
