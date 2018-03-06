class Frase
    
    def initialize  frase
        @frase = frase
    end

    def conte_palavras
        normalizaFrase
        palavras = @frase.split

        count = Hash.new

        palavras.each { |palavra| count[palavra] = palavras.count(palavra)}

        count

    end

    private 

    def normalizaFrase
        @frase.gsub!(/[^a-zA-Z0-9]/, " ")
        normalizaMaiusculas
    end

    def normalizaMaiusculas
        @frase = @frase.downcase
    end

end