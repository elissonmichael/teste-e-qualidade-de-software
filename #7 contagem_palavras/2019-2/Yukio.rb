class Frase
    def initialize(palavra)
        @palavra = palavra.downcase.delete("\n!!,&@$%^&:'?").split(" ")
    end
    def conte_palavras
        hash = Hash.new(0)
        @palavra.each { |palavras| hash[palavras] += 1 }
        return hash
    end
end