class Arvore
    attr_accessor :idade, :altura, :frutas, :viva

    def initialize(idade = 0, altura = 0, frutas = 0, viva = true)
        @idade = idade
        @altura = altura
        @frutas = frutas
    end
    def passar_um_ano
        @idade += 1 
        @altura += 0.5 
        dar_fruta() if viva?
        @frutas = 0 unless viva?
    end

    def dar_fruta()
        @frutas +=1 if self.viva? and @idade >= 2 
    end    

    def pegar_uma_fruta()
        @frutas -=1 if @frutas > 0
    end
    def viva?()
        @idade < 100? true:false 
    end
end